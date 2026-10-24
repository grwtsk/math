# Complete source: GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b434cfac8e8defaaf20c5e36387c564910a74ca0` · SHA-256 `419335ab0e8fdb8a183766283fba7ee97ad1aab06a8f92736c87b6a82ab46818`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
import Mathlib.Data.Nat.Periodic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact residue-class decomposition at a Goldbach rational center

At a positive denominator `q`, the rational-center phase depends only on the
frequency modulo `q`. The finite prime-log exponential sum is therefore
partitioned exactly into its residue-class fibres.

This is only finite algebra and the canonical additive-character normalization.
It supplies no prime number theorem in arithmetic progressions, no replacement
of a residue-class sum by a smooth main term, no major-arc estimate, no
minor-arc estimate, and no Goldbach theorem.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition

open scoped BigOperators Real
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcSeparation
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates

noncomputable section

/-- The rational-center character phase for one natural frequency. -/
def goldbachRationalPhase (a q n : ℕ) : ℂ :=
  unitCharacter (n : ℤ) (goldbachRationalArcCenter a q)

/-- The prime-log exponential sum restricted to one residue class modulo `q`. -/
def goldbachResidueClassPrimeSum
    (N q r : ℕ) (β : ℝ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1) with n % q = r,
    (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β

/-- The exact residue-class reconstruction of the centered exponential sum. -/
def goldbachResidueClassExponentialKernel
    (N a q : ℕ) (β : ℝ) : ℂ :=
  ∑ r ∈ Finset.range q,
    goldbachRationalPhase a q r *
      goldbachResidueClassPrimeSum N q r β

/-- The exact residue-class reconstruction of the centered circle integrand. -/
def goldbachResidueClassCircleKernel
    (N a q : ℕ) (β : ℝ) : ℂ :=
  goldbachResidueClassExponentialKernel N a q β *
    goldbachResidueClassExponentialKernel N a q β *
      unitCharacter (-(N : ℤ))
        (goldbachRationalArcCenter a q) *
      unitCharacter (-(N : ℤ)) β

/-- The exact residue-class circle model as a function of the original unit
frequency coordinate. -/
def goldbachResidueClassCircleModel
    (N a q : ℕ) (x : ℝ) : ℂ :=
  goldbachResidueClassCircleKernel N a q
    (goldbachRationalArcOffset a q x)

/-- The denominator frequency has trivial phase at `a/q`. -/
theorem unitCharacter_denominator_at_rational
    {a q : ℕ} (hq : 0 < q) :
    unitCharacter (q : ℤ) (goldbachRationalArcCenter a q) = 1 := by
  have hqC : (q : ℂ) ≠ 0 := by
    exact_mod_cast hq.ne'
  simp only [unitCharacter, fourier_coe_apply,
    goldbachRationalArcCenter, Complex.ofReal_one, Int.cast_natCast, div_one,
    Complex.ofReal_div, Complex.ofReal_natCast]
  rw [show
      2 * (Real.pi : ℂ) * Complex.I * (q : ℂ) *
          ((a : ℂ) / (q : ℂ)) =
        ((a : ℤ) : ℂ) *
          (2 * (Real.pi : ℂ) * Complex.I) by
      push_cast
      field_simp [hqC] <;> ring,
    Complex.exp_int_mul_two_pi_mul_I]

/-- The rational-center phase is periodic in the natural frequency with
period `q`. -/
theorem goldbachRationalPhase_periodic
    {a q : ℕ} (hq : 0 < q) :
    Function.Periodic (goldbachRationalPhase a q) q := by
  intro n
  unfold goldbachRationalPhase
  rw [show ((n + q : ℕ) : ℤ) = (n : ℤ) + (q : ℤ) by omega,
    unitCharacter_add,
    unitCharacter_denominator_at_rational hq,
    mul_one]

/-- The rational-center phase depends only on the frequency modulo the positive
denominator. -/
theorem goldbachRationalPhase_mod
    {a q n : ℕ} (hq : 0 < q) :
    goldbachRationalPhase a q n =
      goldbachRationalPhase a q (n % q) := by
  exact ((goldbachRationalPhase_periodic hq).map_mod_nat n).symm

/-- The underlying character at the rational center may be replaced by its
modulo-`q` phase. -/
theorem unitCharacter_at_rational_eq_phase_mod
    {a q n : ℕ} (hq : 0 < q) :
    unitCharacter (n : ℤ) (goldbachRationalArcCenter a q) =
      goldbachRationalPhase a q (n % q) := by
  simpa [goldbachRationalPhase] using
    (goldbachRationalPhase_mod (a := a) (q := q) (n := n) hq)

/-- The finite prime-log sum is the exact sum of its modulo-`q` fibres. -/
theorem goldbachPrimeSum_eq_sum_residueClasses
    (N q : ℕ) (hq : 0 < q) (β : ℝ) :
    (∑ n ∈ Finset.range (N + 1),
        (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β) =
      ∑ r ∈ Finset.range q,
        goldbachResidueClassPrimeSum N q r β := by
  unfold goldbachResidueClassPrimeSum
  exact (Finset.sum_fiberwise_of_maps_to
    (s := Finset.range (N + 1))
    (t := Finset.range q)
    (g := fun n : ℕ => n % q)
    (fun n hn => Finset.mem_range.mpr (Nat.mod_lt n hq))
    (fun n : ℕ =>
      (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β)).symm

/-- Exact residue-class reconstruction of the centered prime-log exponential
sum. -/
theorem goldbachCenteredExponentialSum_eq_residueClassKernel
    (N a q : ℕ) (hq : 0 < q) (β : ℝ) :
    goldbachCenteredExponentialSum N a q β =
      goldbachResidueClassExponentialKernel N a q β := by
  unfold goldbachCenteredExponentialSum
    goldbachExponentialSum
    goldbachResidueClassExponentialKernel
    goldbachResidueClassPrimeSum
  simp_rw [unitCharacter_add_argument]
  calc
    (∑ n ∈ Finset.range (N + 1),
        (primeLogWeight n : ℂ) *
          (unitCharacter (n : ℤ) (goldbachRationalArcCenter a q) *
            unitCharacter (n : ℤ) β)) =
      ∑ n ∈ Finset.range (N + 1),
        goldbachRationalPhase a q (n % q) *
          ((primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β) := by
        apply Finset.sum_congr rfl
        intro n hn
        rw [unitCharacter_at_rational_eq_phase_mod hq]
        ring
    _ = ∑ r ∈ Finset.range q,
        ∑ n ∈ Finset.range (N + 1) with n % q = r,
          goldbachRationalPhase a q (n % q) *
            ((primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β) := by
        exact (Finset.sum_fiberwise_of_maps_to
          (s := Finset.range (N + 1))
          (t := Finset.range q)
          (g := fun n : ℕ => n % q)
          (fun n hn => Finset.mem_range.mpr (Nat.mod_lt n hq))
          (fun n : ℕ =>
            goldbachRationalPhase a q (n % q) *
              ((primeLogWeight n : ℂ) *
                unitCharacter (n : ℤ) β))).symm
    _ = ∑ r ∈ Finset.range q,
        goldbachRationalPhase a q r *
          ∑ n ∈ Finset.range (N + 1) with n % q = r,
            (primeLogWeight n : ℂ) * unitCharacter (n : ℤ) β := by
        apply Finset.sum_congr rfl
        intro r hr
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro n hn
        have hmod : n % q = r := (Finset.mem_filter.mp hn).2
        rw [hmod]

/-- Exact residue-class reconstruction of the exponential sum at every real
frequency, not only points already presented in local coordinates. -/
theorem goldbachExponentialSum_eq_residueClassKernel
    (N a q : ℕ) (hq : 0 < q) (x : ℝ) :
    goldbachExponentialSum N x =
      goldbachResidueClassExponentialKernel N a q
        (goldbachRationalArcOffset a q x) := by
  rw [goldbachExponentialSum_recenter]
  exact goldbachCenteredExponentialSum_eq_residueClassKernel
    N a q hq (goldbachRationalArcOffset a q x)

/-- Exact residue-class reconstruction of the centered Goldbach circle
integrand. -/
theorem goldbachCenteredCircleIntegrand_eq_residueClassKernel
    (N a q : ℕ) (hq : 0 < q) (β : ℝ) :
    goldbachCenteredCircleIntegrand N a q β =
      goldbachResidueClassCircleKernel N a q β := by
  unfold goldbachCenteredCircleIntegrand
    goldbachResidueClassCircleKernel
  rw [goldbachCenteredExponentialSum_eq_residueClassKernel N a q hq]

/-- The residue-class circle model is pointwise equal to the exact Goldbach
circle integrand. -/
theorem goldbachCircleIntegrand_eq_residueClassModel
    (N a q : ℕ) (hq : 0 < q) (x : ℝ) :
    goldbachCircleIntegrand N x =
      goldbachResidueClassCircleModel N a q x := by
  unfold goldbachResidueClassCircleModel
  rw [goldbachCircleIntegrand_recenter]
  exact goldbachCenteredCircleIntegrand_eq_residueClassKernel
    N a q hq (goldbachRationalArcOffset a q x)

/-- The exact residue-class kernel is independent of which integral lift is
used to describe a point on the rational arc. -/
theorem goldbachCircleIntegrand_at_lift_eq_residueClassKernel
    (N a q : ℕ) (hq : 0 < q) (k : ℤ) (β : ℝ) :
    goldbachCircleIntegrand N
        (goldbachLiftedRationalArcCenter a q k + β) =
      goldbachResidueClassCircleKernel N a q β := by
  rw [goldbachCircleIntegrand_at_lift]
  exact goldbachCenteredCircleIntegrand_eq_residueClassKernel
    N a q hq β

end
end GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
```
