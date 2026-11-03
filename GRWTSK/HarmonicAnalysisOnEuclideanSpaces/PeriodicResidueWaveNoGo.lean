/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
No new logical assumptions, native evaluation, root imports or RH implication. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.EuclideanCircleResidueWaveComparison
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# No residue-only half-wave evolution after winding is erased

The actual circle half-wave multiplier is `exp(-i 2πt|k|)` at integer mode k.
The q-sample of a one-mode Fourier wave depends initially only on k mod q.
At t = 1/(2q), mode k=0 still has phase 1 whereas k=q has phase -1.
They have the SAME initial samples on ZMod q. Hence no function whatsoever,
not even a nonlinear or discontinuous one, can advance EVERY original
integer single-frequency wave from initial q-samples alone to that time.

This is an obstruction on the genuine finite-observation map, not a
regularity estimate or claim about the algebraic CM Hodge sector. The
previous unfolded frequency, including integer winding, supplies the
necessary missing information; q-fold aliasing must not be declared
lossless or represented as an independent positive-energy sector.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.PeriodicResidueWaveNoGo

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.EuclideanCircleResidueWaveComparison

/-- One original integer-frequency wave observed on the q-point residue circle.
The angular frequency remains the actual integer k, not its residue. -/
def singleModeSample (q : ℕ) [NeZero q] (t : ℝ) (k : ℤ)
    (x : ZMod q) : ℂ :=
  circleHalfWavePhase t k * ZMod.stdAddChar ((k : ZMod q) * x)

/-- The time-zero sample forgets winding and depends only on k mod q. -/
theorem singleModeSample_zero (q : ℕ) [NeZero q] (k : ℤ)
    (x : ZMod q) :
    singleModeSample q 0 k x = ZMod.stdAddChar ((k : ZMod q) * x) := by
  simp [singleModeSample, circleHalfWavePhase]

/-- Strongest possible residue-only evolution contract: an arbitrary function
on complete q-sample vectors would advance every original pure integer mode.
It is intentionally not assumed linear, continuous, bounded or unitary. -/
def HasResidueOnlyEvolution (q : ℕ) [NeZero q] (t : ℝ) : Prop :=
  ∃ T : (ZMod q → ℂ) → (ZMod q → ℂ),
    ∀ k : ℤ, T (singleModeSample q 0 k) = singleModeSample q t k

/-- Descent to q-samples forces the phase of ANY two congruent integer
frequencies to coincide. This is a genuine necessary condition. -/
theorem phase_agreement_of_residue_evolution
    (q : ℕ) [NeZero q] (t : ℝ)
    (h : HasResidueOnlyEvolution q t)
    (k l : ℤ) (hkl : (k : ZMod q) = (l : ZMod q)) :
    circleHalfWavePhase t k = circleHalfWavePhase t l := by
  obtain ⟨T, hT⟩ := h
  have heq0 : singleModeSample q 0 k = singleModeSample q 0 l := by
    funext x
    simp [singleModeSample_zero, hkl]
  have heqt : singleModeSample q t k = singleModeSample q t l := by
    calc
      singleModeSample q t k = T (singleModeSample q 0 k) := (hT k).symm
      _ = T (singleModeSample q 0 l) := congrArg T heq0
      _ = singleModeSample q t l := hT l
  have hzero := congrFun heqt (0 : ZMod q)
  simpa [singleModeSample] using hzero

/-- The zero mode has phase one at every time. -/
@[simp] theorem circlePhase_zero (t : ℝ) :
    circleHalfWavePhase t 0 = 1 := by
  simp [circleHalfWavePhase]

/-- The nonzero integer winding k=q acquires phase -1 at half of its
own oscillation period. This is an exact π identity, not a numeric fixture. -/
theorem windingPhase_half (q : ℕ) [NeZero q] :
    circleHalfWavePhase (1 / (2 * (q : ℝ))) (q : ℤ) = -1 := by
  have hq : (q : ℝ) ≠ 0 := by exact_mod_cast (NeZero.ne q)
  have hcast : ((q : ℤ) : ℝ) = (q : ℝ) := by norm_cast
  have harg :
      (1 / (2 * (q : ℝ))) *
        (2 * Real.pi * |((q : ℤ) : ℝ)|) = Real.pi := by
    rw [hcast, abs_of_nonneg (by positivity : (0 : ℝ) ≤ q)]
    field_simp [hq]
    ring
  change Complex.exp
      (-Complex.I *
        (((1 / (2 * (q : ℝ))) *
           (2 * Real.pi * |((q : ℤ) : ℝ)|) : ℝ) : ℂ)) = -1
  rw [harg]
  have hrewrite : -Complex.I * (Real.pi : ℂ) = -((Real.pi : ℂ) * Complex.I) := by ring
  rw [hrewrite]
  exact Complex.exp_neg_pi_mul_I

/-- The periodic q-sample quotient is NOT a complete state for the original
half-wave at this time, for EVERY positive q. A winding/alias residual is
logically necessary; no spectral or arithmetic premise can erase it. -/
theorem no_residue_only_evolution_at_half_winding
    (q : ℕ) [NeZero q] :
    ¬ HasResidueOnlyEvolution q (1 / (2 * (q : ℝ))) := by
  intro h
  have hres : ((0 : ℤ) : ZMod q) = ((q : ℤ) : ZMod q) := by simp
  have hp := phase_agreement_of_residue_evolution q
    (1 / (2 * (q : ℝ))) h 0 (q : ℤ) hres
  rw [circlePhase_zero, windingPhase_half] at hp
  norm_num at hp

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.PeriodicResidueWaveNoGo
