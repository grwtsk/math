# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6` · SHA-256 `c7f908dc86dec82fc8601457211dd8fc6ea5a0a6bce1e595010bb82129cffcf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.FiniteDivisorSummatoryBound
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoprimeObstruction
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalKernelBound
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic

/-!
# Large-index centered divisibility-tail incidences

For `r > 1`, the centering anchor is absent from the divisibility tail.
Every remaining term is encoded injectively by

`(n,d) ↦ (n / r, d / r)`,

landing in the ordinary positive-divisor incidence set up to `4X / r`.
This is the finite counting input for the large-`r` part of the signed
coprime Möbius-square expansion.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction
open GRWTSK.NumberTheory.FiniteDivisorCounting

/-- Exact octave/modulus incidences contributing to the divisibility tail at `r`. -/
def centeredTailIncidenceSet
    (X r : ℕ) : Finset (ℕ × ℕ) :=
  ((octaveIndexSet X).product (modulusIndexSet X)).filter fun p =>
    r ∣ p.2 ∧ p.2 ∣ p.1

@[simp]
theorem mem_centeredTailIncidenceSet_iff
    {X r : ℕ} {p : ℕ × ℕ} :
    p ∈ centeredTailIncidenceSet X r ↔
      p.1 ∈ octaveIndexSet X ∧
      p.2 ∈ modulusIndexSet X ∧
      r ∣ p.2 ∧ p.2 ∣ p.1 := by
  simp [centeredTailIncidenceSet, and_left_comm, and_assoc]

/-- Above `r=1`, the anchor correction disappears and the divisibility tail is
the exact signed sum over the incidence set. -/
theorem centeredDivisibilityTail_eq_incidenceSum
    {X r : ℕ}
    (hr : 1 < r)
    (w : ℕ → ℝ) :
    centeredDivisibilityTail X w r =
      ∑ p ∈ centeredTailIncidenceSet X r,
        w p.1 * mobiusLogTerm p.1 p.2 := by
  classical
  unfold centeredDivisibilityTail
  calc
    (∑ d ∈ modulusIndexSet X,
      if r ∣ d then centeredModulusCoefficient X w d else 0) =
      ∑ d ∈ modulusIndexSet X,
        if r ∣ d then genuineModulusCoefficient X w d else 0 := by
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hrd : r ∣ d
      · have hd1 : d ≠ 1 := by
          intro h
          subst d
          have hrle : r ≤ 1 := Nat.le_of_dvd Nat.one_pos hrd
          omega
        simp [hrd, centeredModulusCoefficient, hd1]
      · simp [hrd]
    _ =
      ∑ n ∈ octaveIndexSet X,
        ∑ d ∈ modulusIndexSet X,
          if r ∣ d ∧ d ∣ n then
            w n * mobiusLogTerm n d
          else 0 := by
      unfold genuineModulusCoefficient
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro d hd
      by_cases hrd : r ∣ d <;>
        by_cases hdn : d ∣ n <;>
          simp [hrd, hdn]
    _ =
      ∑ p ∈ (octaveIndexSet X).product (modulusIndexSet X),
        if r ∣ p.2 ∧ p.2 ∣ p.1 then
          w p.1 * mobiusLogTerm p.1 p.2
        else 0 := by
      rw [Finset.sum_product]
    _ =
      ∑ p ∈ centeredTailIncidenceSet X r,
        w p.1 * mobiusLogTerm p.1 p.2 := by
      rw [← Finset.sum_filter]
      rfl

/-- Quotient incidence attached to an exact tail incidence. -/
def centeredTailIncidenceMap
    (r : ℕ) (p : ℕ × ℕ) : Σ _a : ℕ, ℕ :=
  ⟨p.1 / r, p.2 / r⟩

/-- The quotient map lands in the standard divisor-incidence set up to
`4X / r`. -/
theorem centeredTailIncidenceMap_mapsTo
    {X r : ℕ}
    (hr : 1 < r) :
    Set.MapsTo
      (centeredTailIncidenceMap r)
      (↑(centeredTailIncidenceSet X r) : Set (ℕ × ℕ))
      (↑(positiveDivisorIncidenceSet (4 * X / r)) :
        Set (Σ _a : ℕ, ℕ)) := by
  intro p hp
  rcases mem_centeredTailIncidenceSet_iff.mp hp with
    ⟨hn, hd, hrd, hdn⟩
  have hrpos : 0 < r := lt_trans Nat.zero_lt_one hr
  have hnpos : 0 < p.1 := (octave_mem_bounds hn).1
  have hrn : r ∣ p.1 := dvd_trans hrd hdn
  have hrle : r ≤ p.1 := Nat.le_of_dvd hnpos hrn
  have hapos : 0 < p.1 / r := Nat.div_pos hrle hrpos
  have hale : p.1 / r ≤ 4 * X / r :=
    Nat.div_le_div_right (octave_mem_bounds hn).2
  have hkdiv : p.2 / r ∣ p.1 / r :=
    (Nat.div_dvd_div_iff_right hrd hrn).2 hdn
  have ha0 : p.1 / r ≠ 0 := Nat.ne_of_gt hapos
  simp [positiveDivisorIncidenceSet, centeredTailIncidenceMap,
    Finset.mem_sigma, Finset.mem_Ioc, Nat.mem_divisors,
    hapos, hale, hkdiv, ha0]

/-- The quotient incidence map is injective on the exact tail support. -/
theorem centeredTailIncidenceMap_injOn
    {X r : ℕ}
    (hr : 1 < r) :
    Set.InjOn
      (centeredTailIncidenceMap r)
      (↑(centeredTailIncidenceSet X r) : Set (ℕ × ℕ)) := by
  intro a ha b hb hab
  rcases mem_centeredTailIncidenceSet_iff.mp ha with
    ⟨hna, hda, hrda, hdna⟩
  rcases mem_centeredTailIncidenceSet_iff.mp hb with
    ⟨hnb, hdb, hrdb, hdnb⟩
  have hrna : r ∣ a.1 := dvd_trans hrda hdna
  have hrnb : r ∣ b.1 := dvd_trans hrdb hdnb
  have hfirst :
      a.1 / r = b.1 / r :=
    congrArg (fun z : Σ _a : ℕ, ℕ => z.1) hab
  have hsecond :
      a.2 / r = b.2 / r :=
    congrArg (fun z : Σ _a : ℕ, ℕ => z.2) hab
  apply Prod.ext
  · calc
      a.1 = r * (a.1 / r) := (Nat.mul_div_cancel' hrna).symm
      _ = r * (b.1 / r) := by rw [hfirst]
      _ = b.1 := Nat.mul_div_cancel' hrnb
  · calc
      a.2 = r * (a.2 / r) := (Nat.mul_div_cancel' hrda).symm
      _ = r * (b.2 / r) := by rw [hsecond]
      _ = b.2 := Nat.mul_div_cancel' hrdb

/-- Exact tail incidences are no more numerous than all positive divisor
incidences up to `4X/r`. -/
theorem centeredTailIncidenceSet_card_le
    {X r : ℕ}
    (hr : 1 < r) :
    (centeredTailIncidenceSet X r).card ≤
      (positiveDivisorIncidenceSet (4 * X / r)).card := by
  exact Finset.card_le_card_of_injOn
    (centeredTailIncidenceMap r)
    (centeredTailIncidenceMap_mapsTo hr)
    (centeredTailIncidenceMap_injOn hr)

/-- Every exact weighted incidence has size at most the octave logarithm. -/
theorem abs_weight_mul_mobiusLogTerm_le_log_four_mul_scale
    {X r : ℕ}
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1)
    {p : ℕ × ℕ}
    (hp : p ∈ centeredTailIncidenceSet X r) :
    |w p.1 * mobiusLogTerm p.1 p.2| ≤
      Real.log ((4 * X : ℕ) : ℝ) := by
  rcases mem_centeredTailIncidenceSet_iff.mp hp with
    ⟨hn, hd, hrd, hdn⟩
  have hwn := hw p.1 hn
  have hwabs : |w p.1| ≤ 1 := by
    rw [abs_of_nonneg hwn.1]
    exact hwn.2
  have hddiv : p.2 ∈ p.1.divisors := by
    exact Nat.mem_divisors.mpr
      ⟨hdn, Nat.ne_of_gt (octave_mem_bounds hn).1⟩
  have ht :=
    abs_mobiusLogTerm_le_log_four_mul_scale hn hddiv
  rw [abs_mul]
  calc
    |w p.1| * |mobiusLogTerm p.1 p.2| ≤
        1 * |mobiusLogTerm p.1 p.2| := by
      exact mul_le_mul_of_nonneg_right hwabs (abs_nonneg _)
    _ ≤ Real.log ((4 * X : ℕ) : ℝ) := by simpa using ht

/-- A large-index centered divisibility tail is bounded by a finite divisor
incidence mass times the octave logarithm. -/
theorem abs_centeredDivisibilityTail_le_incidenceMass_mul_log
    {X r : ℕ}
    (hX : 1 ≤ X)
    (hr : 1 < r)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    |centeredDivisibilityTail X w r| ≤
      positiveDivisorIncidenceMass (4 * X / r) *
        Real.log ((4 * X : ℕ) : ℝ) := by
  rw [centeredDivisibilityTail_eq_incidenceSum hr w]
  have hlognonneg :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hcardNat := centeredTailIncidenceSet_card_le (X := X) hr
  have hcardReal :
      ((centeredTailIncidenceSet X r).card : ℝ) ≤
        positiveDivisorIncidenceMass (4 * X / r) := by
    rw [← positiveDivisorIncidenceSet_card_cast]
    exact_mod_cast hcardNat
  calc
    |∑ p ∈ centeredTailIncidenceSet X r,
        w p.1 * mobiusLogTerm p.1 p.2| ≤
      ∑ p ∈ centeredTailIncidenceSet X r,
        |w p.1 * mobiusLogTerm p.1 p.2| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ _p ∈ centeredTailIncidenceSet X r,
        Real.log ((4 * X : ℕ) : ℝ) := by
      exact Finset.sum_le_sum fun p hp =>
        abs_weight_mul_mobiusLogTerm_le_log_four_mul_scale hw hp
    _ = ((centeredTailIncidenceSet X r).card : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by
      simp
    _ ≤ positiveDivisorIncidenceMass (4 * X / r) *
        Real.log ((4 * X : ℕ) : ℝ) := by
      exact mul_le_mul_of_nonneg_right hcardReal hlognonneg

/-- Explicit quotient-scale tail bound.  The only arithmetic input is the
finite divisor-summatory theorem. -/
theorem abs_centeredDivisibilityTail_le_quotient_log_product
    {X r : ℕ}
    (hX : 1 ≤ X)
    (hrmem : r ∈ modulusIndexSet X)
    (hr : 1 < r)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    |centeredDivisibilityTail X w r| ≤
      ((4 * X / r : ℕ) : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) := by
  let K : ℕ := 4 * X / r
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  have hrI := Finset.mem_Icc.mp hrmem
  have hrpos : 0 < r := lt_trans Nat.zero_lt_one hr
  have hK : 1 ≤ K := by
    unfold K
    exact (Nat.one_le_div_iff hrpos).2 hrI.2
  have hKle : K ≤ 4 * X := by
    unfold K
    exact Nat.div_le_self _ _
  have hlogKnonneg : 0 ≤ Real.log (K : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hK)
  have hlogKle : Real.log (K : ℝ) ≤ L := by
    unfold L
    exact Real.log_le_log
      (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hK))
      (by exact_mod_cast hKle)
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hmass :=
    positiveDivisorIncidenceMass_le (B := K) hK
  calc
    |centeredDivisibilityTail X w r| ≤
        positiveDivisorIncidenceMass K * L := by
      simpa [K, L] using
        abs_centeredDivisibilityTail_le_incidenceMass_mul_log
          hX hr hw
    _ ≤ ((K : ℝ) * (1 + Real.log (K : ℝ))) * L := by
      exact mul_le_mul_of_nonneg_right hmass hLnonneg
    _ ≤ ((K : ℝ) * (1 + L)) * L := by
      gcongr
    _ = ((4 * X / r : ℕ) : ℝ) * (1 + L) * L := by
      simp [K]
    _ = ((4 * X / r : ℕ) : ℝ) *
        (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) := by
      rfl

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```
