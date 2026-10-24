# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalResidue

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b1ac6239c36988faf6579aa0eb4370a3925e9c1` · SHA-256 `ea8946194c8abfb3e7edbdead0261c8c58fd942f0d1b587fcaec304c59b61c4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalFiniteEnergy
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Half-open centered residue interval. For even X it contains +X/2 and
excludes -X/2, removing the boundary duplication. -/
def greenCenteredResidueLower (X : ℕ) : ℤ :=
  -((X - 1) / 2 : ℕ)

def greenCenteredResidueUpper (X : ℕ) : ℤ :=
  (X / 2 : ℕ)

def GreenCanonicalResidueCondition (X : ℕ) (r : ℤ) : Prop :=
  greenCenteredResidueLower X ≤ r ∧ r ≤ greenCenteredResidueUpper X

/-- Canonical centered residue obtained by shifting the Euclidean remainder
when it lies above X/2. -/
def greenCanonicalResidue (X : ℕ) (k : ℤ) : ℤ :=
  let s := k.emod X
  if s ≤ (X / 2 : ℕ) then s else s - X

def greenCanonicalQuotient (X : ℕ) (k : ℤ) : ℤ :=
  (k - greenCanonicalResidue X k) / X

theorem greenCanonicalResidue_range
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    GreenCanonicalResidueCondition X (greenCanonicalResidue X k) := by
  unfold GreenCanonicalResidueCondition greenCanonicalResidue
    greenCenteredResidueLower greenCenteredResidueUpper
  let s : ℤ := k.emod X
  have hs0 : 0 ≤ s := Int.emod_nonneg _ (by omega : (X : ℤ) ≠ 0)
  have hsX : s < X := Int.emod_lt_of_pos _ (by omega : (0 : ℤ) < X)
  by_cases hs : s ≤ (X / 2 : ℕ)
  · simp [s, hs]
    constructor <;> omega
  · simp [s, hs]
    constructor <;> omega

theorem greenCanonicalResidue_mod
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    greenCanonicalResidue X k % X = k % X := by
  unfold greenCanonicalResidue
  let s : ℤ := k.emod X
  have hsX : s < X := Int.emod_lt_of_pos _ (by omega : (0 : ℤ) < X)
  by_cases hs : s ≤ (X / 2 : ℕ)
  · simp [s, hs, Int.emod_eq_of_lt (Int.emod_nonneg _ (by omega)) hsX]
  · simp [s, hs]
    rw [Int.sub_emod]
    simp [s]

theorem greenCanonical_decomposition
    {X : ℕ} (hX : 1 ≤ X) (k : ℤ) :
    k = (X : ℤ) * greenCanonicalQuotient X k +
      greenCanonicalResidue X k := by
  unfold greenCanonicalQuotient
  have hdiv :
      (X : ℤ) ∣ k - greenCanonicalResidue X k := by
    exact Int.dvd_iff_emod_eq_zero.mpr (by
      rw [Int.sub_emod, greenCanonicalResidue_mod hX]
      simp)
  rw [Int.ediv_mul_cancel hdiv]
  ring

/-- The half-open interval has width strictly less than X, giving uniqueness
of congruent representatives. -/
theorem greenCanonicalResidue_unique
    {X : ℕ} (hX : 1 ≤ X)
    {r s : ℤ}
    (hr : GreenCanonicalResidueCondition X r)
    (hs : GreenCanonicalResidueCondition X s)
    (hcong : r % X = s % X) :
    r = s := by
  have hdvd : (X : ℤ) ∣ r - s :=
    Int.dvd_iff_emod_eq_zero.mpr (by
      rw [Int.sub_emod, hcong]
      simp)
  obtain ⟨z, hz⟩ := hdvd
  unfold GreenCanonicalResidueCondition greenCenteredResidueLower
    greenCenteredResidueUpper at hr hs
  have hwidth : |r - s| < X := by
    omega
  rw [hz, abs_mul] at hwidth
  have hXpos : (0 : ℤ) < X := by omega
  by_cases hz0 : z = 0
  · subst z
    simp at hz
    exact sub_eq_zero.mp hz
  · have : (X : ℤ) ≤ |(X : ℤ) * z| := by
      rw [abs_mul, abs_of_pos hXpos]
      have : (1 : ℤ) ≤ |z| := Int.one_le_abs hz0
      nlinarith
    omega

theorem greenCanonicalResidue_eq_of_condition
    {X : ℕ} (hX : 1 ≤ X) (k r : ℤ)
    (hr : GreenCanonicalResidueCondition X r)
    (hcong : r % X = k % X) :
    greenCanonicalResidue X k = r := by
  apply greenCanonicalResidue_unique hX
  · exact greenCanonicalResidue_range hX k
  · exact hr
  · rw [greenCanonicalResidue_mod hX]
    exact hcong.symm

end GRWTSK.RiemannHypothesis
```
