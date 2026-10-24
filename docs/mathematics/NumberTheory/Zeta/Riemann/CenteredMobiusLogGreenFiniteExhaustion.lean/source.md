# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteExhaustion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30eb0ca9235540f1b7b9b7b95832d53d755d41a9` · SHA-256 `f19c396a98d15206d9dd1a3b2153db7efd63d52dd4b558a7d2d36d12b45bd8ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFrequencySymmetry
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def greenSymmetricFrequencyEnergy (X M : ℕ) : ℝ :=
  ∑ k ∈ (Finset.Icc (-(M : ℤ)) (M : ℤ)).erase 0,
    ‖greenCenteringResidual X k‖^2

/-- Quotient cutoff large enough for every |k|<=M. -/
def greenFrequencyQuotientCutoff (X M : ℕ) : ℕ :=
  M / X + 2

/-- Every finite symmetric frequency set is dominated by the hybrid
low/nonalias/alias exhaustion at a sufficiently large quotient cutoff.
Overcounting is intentional and harmless for this upper bound. -/
theorem greenSymmetricFrequencyEnergy_le_hybrid
    {X M : ℕ} (hX : 2 ≤ X) :
    greenSymmetricFrequencyEnergy X M ≤
      greenFiniteHybridResidualEnergy X
        (greenFrequencyQuotientCutoff X M) := by
  unfold greenSymmetricFrequencyEnergy
  let Q := greenFrequencyQuotientCutoff X M
  -- Map each frequency to a term in one of the three nonnegative hybrid sums.
  apply Finset.sum_le_sum_of_injOn
    (f := fun k : ℤ =>
      if greenFrequencyClass X k = .lowPrincipal then
        (0 : ℕ) × Int.natAbs k × (0 : ℕ)
      else if greenFrequencyClass X k = .exactAlias then
        (1 : ℕ) × Int.natAbs (greenCanonicalQuotient X k) × (0 : ℕ)
      else
        (2 : ℕ) × Int.natAbs (greenCanonicalQuotient X k) ×
          Int.natAbs (greenCanonicalResidue X k))
  · intro k hk
    have hk0 : k ≠ 0 := Finset.ne_of_mem_erase hk
    have hclass :
        greenFrequencyClass X k = .lowPrincipal ∨
        greenFrequencyClass X k = .exactAlias ∨
        greenFrequencyClass X k = .highNonalias := by
      cases h : greenFrequencyClass X k <;> simp [h]
    rcases hclass with hlow | halias | hhigh
    · have hl := (greenFrequencyClass_low_iff (by omega) k).mp hlow
      have hkres := canonical_low_eq_residue (by omega) hl.2
      have hrange := greenCanonicalResidue_range (by omega) k
      unfold GreenCanonicalResidueCondition greenCenteredResidueLower
        greenCenteredResidueUpper at hrange
      have hmem : k ∈ greenLowPrincipalHead X := by
        unfold greenLowPrincipalHead
        apply Finset.mem_erase.mpr
        refine ⟨hk0, Finset.mem_Icc.mpr ?_⟩
        omega
      exact ⟨hmem, le_rfl⟩
    · have ha := (greenFrequencyClass_alias_iff (by omega) k).mp halias
      have hdiv := (canonicalResidue_zero_iff_alias (by omega) k).mp ha
      obtain ⟨qz, hqz⟩ := hdiv
      have hq0 : qz ≠ 0 := by
        intro h
        subst qz
        simp at hqz
        exact hk0 hqz
      have hkM : Int.natAbs k ≤ M := by
        have hkI := Finset.mem_Icc.mp (Finset.mem_of_mem_erase hk)
        omega
      have hqQ : Int.natAbs qz ≤ Q := by
        unfold Q greenFrequencyQuotientCutoff
        have hXpos : 0 < X := by omega
        have habs : Int.natAbs k = Int.natAbs qz * X := by
          rw [hqz]
          simp [Int.natAbs_mul]
        omega
      -- Norm symmetry sends negative aliases to the positive alias term.
      exact ⟨Finset.mem_Icc.mpr ⟨Int.natAbs_pos.mpr hq0, hqQ⟩, by
        by_cases hqsign : 0 ≤ qz
        · have hkpos : k = ((Int.natAbs qz * X : ℕ) : ℤ) := by
            rw [hqz]
            simp [Int.natAbs_of_nonneg hqsign, mul_comm]
          rw [hkpos]
        · have hkneg : k = -((Int.natAbs qz * X : ℕ) : ℤ) := by
            rw [hqz]
            simp [Int.natAbs_of_nonpos (le_of_not_ge hqsign), mul_comm]
          rw [hkneg, sq_norm_greenCenteringResidual_neg]⟩
    · have hh := (greenFrequencyClass_high_iff (by omega) k).mp hhigh
      by_cases hqsign : 0 < greenCanonicalQuotient X k
      · obtain ⟨q, r, hq, hr, hrX, hkform⟩ :=
          canonical_high_positive_quotient_parameterization
            (by omega) hqsign hh.1
        have hqQ : q ≤ Q := by
          unfold Q greenFrequencyQuotientCutoff
          have hkM : Int.natAbs k ≤ M := by
            have hkI := Finset.mem_Icc.mp (Finset.mem_of_mem_erase hk)
            omega
          rcases hkform with hp | hm <;> omega
        exact ⟨⟨Finset.mem_Icc.mpr ⟨hr, hrX⟩,
          Finset.mem_Icc.mpr ⟨hq, hqQ⟩, hkform⟩, le_rfl⟩
      · have hqneg : greenCanonicalQuotient X k < 0 := by omega
        obtain ⟨q, r, hq, hr, hrX, hkform⟩ :=
          canonical_high_negative_quotient_parameterization
            (by omega) hqneg hh.1
        have hqQ : q ≤ Q := by
          unfold Q greenFrequencyQuotientCutoff
          have hkM : Int.natAbs k ≤ M := by
            have hkI := Finset.mem_Icc.mp (Finset.mem_of_mem_erase hk)
            omega
          rcases hkform with hp | hm <;> omega
        exact ⟨⟨Finset.mem_Icc.mpr ⟨hr, hrX⟩,
          Finset.mem_Icc.mpr ⟨hq, hqQ⟩, hkform⟩, by
            rw [sq_norm_greenCenteringResidual_neg]⟩
  · intro a ha b hb hab
    -- Canonical residue/quotient uniqueness makes the class encoding injective
    -- on the finite symmetric source.
    simp only at hab
    by_cases hca : greenFrequencyClass X a = .lowPrincipal <;>
      by_cases hcb : greenFrequencyClass X b = .lowPrincipal <;>
      by_cases haa : greenFrequencyClass X a = .exactAlias <;>
      by_cases habb : greenFrequencyClass X b = .exactAlias <;>
      simp [hca, hcb, haa, habb] at hab
    all_goals
      have da := greenCanonical_decomposition (by omega : 1 ≤ X) a
      have db := greenCanonical_decomposition (by omega : 1 ≤ X) b
      omega

end GRWTSK.RiemannHypothesis
```
