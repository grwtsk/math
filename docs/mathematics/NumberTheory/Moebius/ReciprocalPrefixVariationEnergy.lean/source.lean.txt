/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel

/-!
# Cauchy energy for reciprocal-prefix variation

The exact zero-mass reciprocal-prefix kernel is separated into a square mass
of its deterministic weights and a square variation of the arithmetic prefix.
Finite Cauchy--Schwarz gives a positive block majorant.  Uniform control of
these majorant blocks is therefore a sufficient condition for the critical
vertical-line estimate.  No such arithmetic control is asserted here.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy

open GRWTSK.NumberTheory.Moebius.ReciprocalPrefix
open GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

/-- Endpoint-centered square variation of the reciprocal Möbius prefix. -/
def reciprocalPrefixVariationSquare (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n,
    (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2

/-- Square mass of the deterministic flux weights at time `u`. -/
def reciprocalFluxWeightSquareMass (u : ℝ) (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n, reciprocalFluxWeight u k ^ 2

/-- Positive Cauchy--Schwarz majorant for one reciprocal-variation block. -/
def reciprocalCauchyBlock (n : ℕ) : ℝ :=
  ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
    Real.exp (-u) *
      (4 * reciprocalFluxWeightSquareMass u n *
        reciprocalPrefixVariationSquare n)

/-- Finite Cauchy--Schwarz separates deterministic kernel mass from arithmetic
endpoint-centered square variation. -/
theorem reciprocalVariationBlock_le_cauchyBlock {n : ℕ} (hn : 1 ≤ n) :
    reciprocalVariationBlock n ≤ reciprocalCauchyBlock n := by
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) := by
    exact Real.strictMonoOn_log.monotoneOn
      (by change (0 : ℝ) < n; exact_mod_cast hn)
      (by change (0 : ℝ) < ((n + 1 : ℕ) : ℝ); positivity)
      (by exact_mod_cast Nat.le_succ n)
  unfold reciprocalVariationBlock reciprocalCauchyBlock
  have hf : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (2 * ∑ k ∈ Finset.range n,
          reciprocalFluxWeight u k *
            (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) ^ 2) := by
    unfold reciprocalFluxWeight
    fun_prop
  have hg : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (4 * reciprocalFluxWeightSquareMass u n *
          reciprocalPrefixVariationSquare n)) := by
    unfold reciprocalFluxWeightSquareMass reciprocalFluxWeight
    fun_prop
  apply intervalIntegral.integral_mono_on hlog
    (hf.intervalIntegrable _ _) (hg.intervalIntegrable _ _)
  intro u _hu
  have hcs := Finset.sum_mul_sq_le_sq_mul_sq (R := ℝ) (Finset.range n)
    (fun k => reciprocalFluxWeight u k)
    (fun k => pickupReciprocalPrefix k - pickupReciprocalPrefix n)
  change Real.exp (-u) *
      (2 * ∑ k ∈ Finset.range n,
        reciprocalFluxWeight u k *
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) ^ 2 ≤
    Real.exp (-u) *
      (4 * (∑ k ∈ Finset.range n, reciprocalFluxWeight u k ^ 2) *
        ∑ k ∈ Finset.range n,
          (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2)
  calc
    _ = Real.exp (-u) * 4 *
        (∑ k ∈ Finset.range n,
          reciprocalFluxWeight u k *
            (pickupReciprocalPrefix k - pickupReciprocalPrefix n)) ^ 2 := by ring
    _ ≤ Real.exp (-u) * 4 *
        ((∑ k ∈ Finset.range n, reciprocalFluxWeight u k ^ 2) *
          ∑ k ∈ Finset.range n,
            (pickupReciprocalPrefix k - pickupReciprocalPrefix n) ^ 2) := by
      gcongr
    _ = _ := by ring

/-- Uniform boundedness of partial sums of the positive Cauchy majorants. -/
def ReciprocalCauchyBlockUniform : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    ∀ N : ℕ, (∑ n ∈ Finset.Icc 1 N, reciprocalCauchyBlock n) ≤ C

theorem reciprocalVariationBlockUniform_of_cauchyBlockUniform
    (hC : ReciprocalCauchyBlockUniform) : ReciprocalVariationBlockUniform := by
  obtain ⟨C, hC0, hbound⟩ := hC
  refine ⟨C, hC0, ?_⟩
  intro N
  calc
    (∑ n ∈ Finset.Icc 1 N, reciprocalVariationBlock n) ≤
        ∑ n ∈ Finset.Icc 1 N, reciprocalCauchyBlock n := by
      apply Finset.sum_le_sum
      intro n hn
      exact reciprocalVariationBlock_le_cauchyBlock (Finset.mem_Icc.mp hn).1
    _ ≤ C := hbound N

/-- The separated reciprocal-prefix Cauchy budget is a sufficient arithmetic
input for the completed critical vertical-line estimate. -/
theorem criticalBoundary_of_reciprocalCauchyBlockUniform
    (hC : ReciprocalCauchyBlockUniform) : CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_iff_reciprocalVariationBlockUniform.mpr
    (reciprocalVariationBlockUniform_of_cauchyBlockUniform hC)

end GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy

#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy.reciprocalVariationBlock_le_cauchyBlock
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy.reciprocalVariationBlockUniform_of_cauchyBlockUniform
#print axioms GRWTSK.NumberTheory.Moebius.ReciprocalPrefixVariationEnergy.criticalBoundary_of_reciprocalCauchyBlockUniform
