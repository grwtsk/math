/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import Cryptids.Semantics.Riemann95
import GRWTSK.OperatorTheory.WeightedHistoryGram

/-! # The spectral halting test for the literal Riemann95 machine

The history is indexed by the number of native instructions issued from the
blank initializer. The spectral test uses the complex operator spectrum.
The external source pin and proof details are in Riemann95HistorySpectrum.md.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Riemann95History

open ConjectureMachines
open GRWTSK.OperatorTheory.WeightedHistory

noncomputable section

private theorem nSteps_succ_right (n : ℕ) (c : Cfg 95 2) :
    Riemann95.nSteps (n + 1) c = (Riemann95.nSteps n c).bind (step Riemann95.machine) := by
  induction n generalizing c with
  | zero => cases h : step Riemann95.machine c <;> simp [Riemann95.nSteps, h]
  | succ n ih =>
    change (step Riemann95.machine c).bind (Riemann95.nSteps (n + 1)) =
      ((step Riemann95.machine c).bind (Riemann95.nSteps n)).bind
        (step Riemann95.machine)
    cases h : step Riemann95.machine c with
    | none => rfl
    | some c' => exact ih c'

private theorem reaches_iff_nSteps (a b : Cfg 95 2) :
    StateTransition.Reaches (step Riemann95.machine) a b ↔
      ∃ n, Riemann95.nSteps n a = some b := by
  constructor
  · intro h
    induction h using Relation.ReflTransGen.head_induction_on with
    | refl => exact ⟨0, rfl⟩
    | head hab _ ih =>
      obtain ⟨n, hn⟩ := ih
      rw [Option.mem_def] at hab
      exact ⟨n + 1, by simpa [Riemann95.nSteps, hab] using hn⟩
  · rintro ⟨n, hn⟩
    rw [Riemann95.BootCertificate.nSteps_eq] at hn
    exact Zf380.nSteps_reaches hn

private theorem terminal_iff :
    Halts Riemann95.candidate ↔
      ∃ (n : ℕ) (c : Cfg 95 2),
        Riemann95.nSteps n ConjectureMachines.init = some c ∧
        step Riemann95.machine c = none := by
  change (StateTransition.eval (step Riemann95.machine) ConjectureMachines.init).Dom ↔ _
  constructor
  · intro h
    obtain ⟨c, hc⟩ := Part.dom_iff_mem.mp h
    obtain ⟨hr, hs⟩ := StateTransition.mem_eval.mp hc
    obtain ⟨n, hn⟩ := (reaches_iff_nSteps _ _).mp hr
    exact ⟨n, c, hn, hs⟩
  · rintro ⟨n, c, hn, hs⟩
    exact Part.dom_iff_mem.mpr ⟨c, StateTransition.mem_eval.mpr
      ⟨(reaches_iff_nSteps _ _).mpr ⟨n, hn⟩, hs⟩⟩

/-- The native configuration after exactly `n` successful instructions. -/
def configuration (n : ℕ) : Option (Cfg 95 2) :=
  Riemann95.nSteps n ConjectureMachines.init

theorem configuration_succ (n : ℕ) :
    configuration (n+1) = (configuration n).bind (step Riemann95.machine) :=
  nSteps_succ_right n _

/-- Time zero is the blank configuration. A terminal configuration is still live. -/
def live (n : ℕ) : Bool := (configuration n).isSome

private theorem live_zero : live 0 = true := rfl

private theorem live_prefix (n : ℕ) (hn : live (n+1) = true) : live n = true := by
  cases h : configuration n with
  | none => simp [live, configuration_succ, h] at hn
  | some c => simp [live, h]

theorem terminated_iff_halts :
    (∃ n, live n = false) ↔ Halts Riemann95.candidate := by
  rw [terminal_iff]
  change (∃ n, (configuration n).isSome = false) ↔
    ∃ n c, configuration n = some c ∧ step Riemann95.machine c = none
  constructor
  · rintro ⟨n, hn⟩
    have hn' : configuration n = none := by
      cases h : configuration n <;> simp_all
    clear hn
    induction n with
    | zero => cases hn'
    | succ n ih =>
      have hs := configuration_succ n
      cases hc : configuration n with
      | none => exact ih hc
      | some c => exact ⟨n, c, hc, by simpa [hs, hc] using hn'⟩
  · rintro ⟨n, c, hc, hstop⟩
    exact ⟨n+1, by simp [configuration_succ, hc, hstop]⟩

/-- The bounded self-adjoint operator of the blank-tape Riemann95 history. -/
def H_R95 : GRWTSK.OperatorTheory.WeightedHistory.End := gram live

theorem H_R95_isSelfAdjoint : IsSelfAdjoint H_R95 := gram_isSelfAdjoint _

theorem H_R95_nonneg : 0 ≤ H_R95 := gram_nonneg _

/-- Zero is a spectral point precisely when the literal 95-state machine halts. -/
theorem zero_in_spectrum_iff_halts :
    (0 : ℂ) ∈ spectrum ℂ H_R95 ↔ Halts Riemann95.candidate :=
  (zero_in_spectrum_iff_terminated live live_zero live_prefix).trans terminated_iff_halts

/-- The pinned arithmetic return turns spectral exclusion of zero into RH. -/
theorem zero_notMem_spectrum_iff_riemannHypothesis :
    (0 : ℂ) ∉ spectrum ℂ H_R95 ↔ _root_.RiemannHypothesis := by
  rw [zero_in_spectrum_iff_halts, Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis,
      not_not]

end

end GRWTSK.NumberTheory.Riemann95History
