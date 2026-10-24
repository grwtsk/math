# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BanachHilbert.Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7` · SHA-256 `8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Oracle.Naming.CyclicCubical
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Exact cubical–Banach–Hilbert bridge

This module keeps the Boolean cube, its real quantitative realization, and the
compactified Hilbert carrier as separately typed objects.  It proves the exact
arithmetic identities used by downstream tensor compilation; it does not turn
floating-point tensors into theorem authority.
-/

namespace Mathematics.Cubical

open scoped BigOperators
open Finset
open Mathematics.Oracle.Naming

/-- The exact combinatorial stable-bitfield type. -/
abbrev StableBitfield (n : Nat) := BitField n

/-- The declared coordinatewise realization of a bitfield in real space. -/
def realize {n : Nat} (b : StableBitfield n) : Fin n → ℝ :=
  fun i ↦ if b i then 1 else 0

/-- The exact number of coordinates at which two bitfields differ. -/
def hammingCount {n : Nat} (b c : StableBitfield n) : Nat :=
  ∑ i, if b i ≠ c i then 1 else 0

/-- The real-valued Hamming count, useful before a final cast back to `Nat`. -/
def hammingReal {n : Nat} (b c : StableBitfield n) : ℝ :=
  ∑ i, if b i ≠ c i then 1 else 0

/-- Manhattan distance of the declared real realization. -/
def manhattanDistance {n : Nat} (b c : StableBitfield n) : ℝ :=
  ∑ i, |realize b i - realize c i|

/-- Squared Euclidean (Hilbert) distance of the declared real realization. -/
def hilbertDistanceSq {n : Nat} (b c : StableBitfield n) : ℝ :=
  ∑ i, (realize b i - realize c i) ^ 2

@[simp]
theorem hammingReal_eq_natCast {n : Nat} (b c : StableBitfield n) :
    hammingReal b c = (hammingCount b c : ℝ) := by
  classical
  simp [hammingReal, hammingCount]

private theorem abs_realize_sub {n : Nat} (b c : StableBitfield n) (i : Fin n) :
    |realize b i - realize c i| = if b i ≠ c i then 1 else 0 := by
  cases hbi : b i <;> cases hci : c i <;>
    simp [realize, hbi, hci]

private theorem sq_realize_sub {n : Nat} (b c : StableBitfield n) (i : Fin n) :
    (realize b i - realize c i) ^ 2 =
      if b i ≠ c i then 1 else 0 := by
  cases hbi : b i <;> cases hci : c i <;>
    simp [realize, hbi, hci]

/-- On stable bitfields, Manhattan distance is exactly Hamming distance. -/
theorem manhattanDistance_eq_hamming {n : Nat} (b c : StableBitfield n) :
    manhattanDistance b c = (hammingCount b c : ℝ) := by
  rw [← hammingReal_eq_natCast]
  apply Finset.sum_congr rfl
  intro i _
  exact abs_realize_sub b c i

/-- On stable bitfields, squared Hilbert distance is exactly Hamming distance. -/
theorem hilbertDistanceSq_eq_hamming {n : Nat} (b c : StableBitfield n) :
    hilbertDistanceSq b c = (hammingCount b c : ℝ) := by
  rw [← hammingReal_eq_natCast]
  apply Finset.sum_congr rfl
  intro i _
  exact sq_realize_sub b c i

/-- The common exact invariant behind the Manhattan and Hilbert views. -/
theorem manhattanDistance_eq_hilbertDistanceSq
    {n : Nat} (b c : StableBitfield n) :
    manhattanDistance b c = hilbertDistanceSq b c := by
  rw [manhattanDistance_eq_hamming, hilbertDistanceSq_eq_hamming]

/-- The exact nearer-endpoint relation, retaining both endpoints at `1/2`. -/
def IsNearestBit (x : ℝ) (b : Bool) : Prop :=
  if b then (1 / 2 : ℝ) ≤ x else x ≤ 1 / 2

/-- A bitfield is an anchor when every coordinate is an exact nearer endpoint. -/
def IsAnchor {n : Nat} (x : Fin n → ℝ) (b : StableBitfield n) : Prop :=
  ∀ i, IsNearestBit (x i) (b i)

/-- Squared point-to-bitfield cost in the declared Hilbert realization. -/
def squaredPointCost {n : Nat}
    (x : Fin n → ℝ) (b : StableBitfield n) : ℝ :=
  ∑ i, (x i - realize b i) ^ 2

/-- Predicate form of membership in the complete squared-distance argmin. -/
def IsSquaredNearest {n : Nat}
    (x : Fin n → ℝ) (b : StableBitfield n) : Prop :=
  ∀ c, squaredPointCost x b ≤ squaredPointCost x c

private theorem nearestBit_cost_le
    {x : ℝ} {b : Bool} (h : IsNearestBit x b) (c : Bool) :
    (x - if b then 1 else 0) ^ 2 ≤
      (x - if c then 1 else 0) ^ 2 := by
  cases b <;> cases c <;> simp [IsNearestBit] at h ⊢ <;> nlinarith

/-- Every coordinatewise exact anchor is a global squared-distance minimizer. -/
theorem isSquaredNearest_of_isAnchor
    {n : Nat} {x : Fin n → ℝ} {b : StableBitfield n}
    (h : IsAnchor x b) :
    IsSquaredNearest x b := by
  intro c
  apply Finset.sum_le_sum
  intro i _
  simpa [squaredPointCost, realize] using
    nearestBit_cost_le (h i) (c i)

private def flipAt {n : Nat} (b : StableBitfield n) (i : Fin n) :
    StableBitfield n :=
  fun j ↦ if j = i then !(b j) else b j

/-- A global squared-distance minimizer must choose a nearer endpoint in every
coordinate.  The proof compares it with the bitfield obtained by one exact
coordinate flip; no heuristic tie-break is used. -/
theorem isAnchor_of_isSquaredNearest
    {n : Nat} {x : Fin n → ℝ} {b : StableBitfield n}
    (h : IsSquaredNearest x b) :
    IsAnchor x b := by
  intro i
  have hglobal := h (flipAt b i)
  have hb :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ (x j - realize b j) ^ 2) (Finset.mem_univ i)
  have hf :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ (x j - realize (flipAt b i) j) ^ 2) (Finset.mem_univ i)
  have herase :
      (∑ j ∈ Finset.univ.erase i, (x j - realize b j) ^ 2) =
        ∑ j ∈ Finset.univ.erase i,
          (x j - realize (flipAt b i) j) ^ 2 := by
    apply Finset.sum_congr rfl
    intro j hj
    have hji : j ≠ i := by
      simpa using (Finset.mem_erase.mp hj).1
    simp [flipAt, realize, hji]
  have hcoordinate :
      (x i - realize b i) ^ 2 ≤
        (x i - realize (flipAt b i) i) ^ 2 := by
    unfold squaredPointCost at hglobal
    rw [← hb, ← hf] at hglobal
    rw [herase] at hglobal
    linarith
  cases hbi : b i
  · simp [IsNearestBit, realize, flipAt, hbi] at hcoordinate ⊢
    nlinarith
  · simp [IsNearestBit, realize, flipAt, hbi] at hcoordinate ⊢
    nlinarith

/-- The exact anchor set is precisely the complete squared-distance argmin. -/
theorem isAnchor_iff_isSquaredNearest
    {n : Nat} {x : Fin n → ℝ} {b : StableBitfield n} :
    IsAnchor x b ↔ IsSquaredNearest x b :=
  ⟨isSquaredNearest_of_isAnchor, isAnchor_of_isSquaredNearest⟩

/-- The unrooted `ℓᵖ` objective.  For positive `p`, taking the positive
`p`th root does not change its minimizers. -/
noncomputable def lpPowerPointCost {n : Nat}
    (p : ℝ) (x : Fin n → ℝ) (b : StableBitfield n) : ℝ :=
  ∑ i, Real.rpow |x i - realize b i| p

/-- Predicate form of membership in the complete finite-`p` argmin. -/
def IsLpNearest {n : Nat}
    (p : ℝ) (x : Fin n → ℝ) (b : StableBitfield n) : Prop :=
  ∀ c, lpPowerPointCost p x b ≤ lpPowerPointCost p x c

private theorem nearestBit_abs_cost_le
    {x : ℝ} {b : Bool} (h : IsNearestBit x b) (c : Bool) :
    |x - if b then 1 else 0| ≤ |x - if c then 1 else 0| := by
  have hsquared := nearestBit_cost_le h c
  have habsSquared :
      |x - if b then 1 else 0| ^ 2 ≤
        |x - if c then 1 else 0| ^ 2 := by
    calc
      |x - if b then 1 else 0| ^ 2 =
          (x - if b then 1 else 0) ^ 2 := sq_abs _
      _ ≤ (x - if c then 1 else 0) ^ 2 := hsquared
      _ = |x - if c then 1 else 0| ^ 2 := (sq_abs _).symm
  exact
    (sq_le_sq₀ (abs_nonneg _) (abs_nonneg _)).mp habsSquared

/-- Coordinatewise anchors minimize every positive finite `ℓᵖ` objective. -/
theorem isLpNearest_of_isAnchor
    {n : Nat} {p : ℝ} (hp : 0 < p)
    {x : Fin n → ℝ} {b : StableBitfield n}
    (h : IsAnchor x b) :
    IsLpNearest p x b := by
  intro c
  apply Finset.sum_le_sum
  intro i _
  apply Real.rpow_le_rpow (abs_nonneg _)
  · simpa [realize] using nearestBit_abs_cost_le (h i) (c i)
  · exact hp.le

/-- A positive finite `ℓᵖ` minimizer must be coordinatewise nearest. -/
theorem isAnchor_of_isLpNearest
    {n : Nat} {p : ℝ} (hp : 0 < p)
    {x : Fin n → ℝ} {b : StableBitfield n}
    (h : IsLpNearest p x b) :
    IsAnchor x b := by
  intro i
  have hglobal := h (flipAt b i)
  have hb :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ Real.rpow |x j - realize b j| p) (Finset.mem_univ i)
  have hf :=
    Finset.sum_erase_add Finset.univ
      (fun j ↦ Real.rpow |x j - realize (flipAt b i) j| p)
      (Finset.mem_univ i)
  have herase :
      (∑ j ∈ Finset.univ.erase i, Real.rpow |x j - realize b j| p) =
        ∑ j ∈ Finset.univ.erase i,
          Real.rpow |x j - realize (flipAt b i) j| p := by
    apply Finset.sum_congr rfl
    intro j hj
    have hji : j ≠ i := by
      simpa using (Finset.mem_erase.mp hj).1
    simp [flipAt, realize, hji]
  have hrpow :
      Real.rpow |x i - realize b i| p ≤
        Real.rpow |x i - realize (flipAt b i) i| p := by
    unfold lpPowerPointCost at hglobal
    rw [← hb, ← hf] at hglobal
    rw [herase] at hglobal
    linarith
  have habs :
      |x i - realize b i| ≤
        |x i - realize (flipAt b i) i| :=
    (Real.rpow_le_rpow_iff (abs_nonneg _) (abs_nonneg _) hp).mp hrpow
  have hsquared :=
    pow_le_pow_left₀ (abs_nonneg _) habs 2
  rw [sq_abs, sq_abs] at hsquared
  cases hbi : b i
  · simp [IsNearestBit, realize, flipAt, hbi] at hsquared ⊢
    nlinarith
  · simp [IsNearestBit, realize, flipAt, hbi] at hsquared ⊢
    nlinarith

/-- For every positive finite exponent, the exact argmin is the same complete
anchor set. -/
theorem isAnchor_iff_isLpNearest
    {n : Nat} {p : ℝ} (hp : 0 < p)
    {x : Fin n → ℝ} {b : StableBitfield n} :
    IsAnchor x b ↔ IsLpNearest p x b :=
  ⟨isLpNearest_of_isAnchor hp, isAnchor_of_isLpNearest hp⟩

/-- Coordinatewise squared norm on the finite real chart. -/
def chartNormSq {n : Nat} (x : Fin n → ℝ) : ℝ :=
  ∑ i, (x i) ^ 2

theorem chartNormSq_nonneg {n : Nat} (x : Fin n → ℝ) :
    0 ≤ chartNormSq x :=
  Finset.sum_nonneg fun _ _ ↦ sq_nonneg _

/-- The explicit inverse-stereographic Hilbert carrier. -/
noncomputable def inverseStereographic {n : Nat} (x : Fin n → ℝ) :
    (Fin n → ℝ) × ℝ :=
  (fun i ↦ 2 * x i / (1 + chartNormSq x),
    (chartNormSq x - 1) / (1 + chartNormSq x))

/-- Squared Hilbert norm on the product carrier `ℝⁿ ⊕ ℝ`. -/
def carrierNormSq {n : Nat} (y : (Fin n → ℝ) × ℝ) : ℝ :=
  (∑ i, (y.1 i) ^ 2) + y.2 ^ 2

/-- The inverse-stereographic carrier lies exactly on the unit sphere. -/
theorem inverseStereographic_unit {n : Nat} (x : Fin n → ℝ) :
    carrierNormSq (inverseStereographic x) = 1 := by
  have hnonneg : 0 ≤ chartNormSq x := chartNormSq_nonneg x
  have hden : 1 + chartNormSq x ≠ 0 := by positivity
  have hfirst :
      (∑ i, (2 * x i / (1 + chartNormSq x)) ^ 2) =
        4 * chartNormSq x / (1 + chartNormSq x) ^ 2 := by
    calc
      (∑ i, (2 * x i / (1 + chartNormSq x)) ^ 2) =
          ∑ i, (4 / (1 + chartNormSq x) ^ 2) * (x i) ^ 2 := by
            apply Finset.sum_congr rfl
            intro i _
            field_simp
            ring
      _ = (4 / (1 + chartNormSq x) ^ 2) * chartNormSq x := by
            rw [← Finset.mul_sum]
            rfl
      _ = 4 * chartNormSq x / (1 + chartNormSq x) ^ 2 := by ring
  rw [carrierNormSq, inverseStereographic, hfirst]
  field_simp
  ring

/-- South and north poles of the compactified carrier. -/
def southPole {n : Nat} : (Fin n → ℝ) × ℝ := (0, -1)
def northPole {n : Nat} : (Fin n → ℝ) × ℝ := (0, 1)

@[simp]
theorem inverseStereographic_zero {n : Nat} :
    inverseStereographic (0 : Fin n → ℝ) = southPole := by
  ext i <;> simp [inverseStereographic, southPole, chartNormSq]

/-- A finite chart point and the added point at infinity are distinct constructors. -/
inductive CompactifiedChart (n : Nat) where
  | finite (x : Fin n → ℝ)
  | infinity

/-- The total carrier map; infinity exists only in the compactified type. -/
noncomputable def compactifiedCarrier {n : Nat} :
    CompactifiedChart n → (Fin n → ℝ) × ℝ
  | .finite x => inverseStereographic x
  | .infinity => northPole

@[simp]
theorem compactifiedCarrier_finite {n : Nat} (x : Fin n → ℝ) :
    compactifiedCarrier (.finite x) = inverseStereographic x := rfl

@[simp]
theorem compactifiedCarrier_infinity {n : Nat} :
    compactifiedCarrier (CompactifiedChart.infinity : CompactifiedChart n) =
      northPole := rfl

/-- Centered exact coordinates in `{−1,+1}ⁿ`. -/
def centeredInt {n : Nat} (b : StableBitfield n) : Fin n → ℤ :=
  fun i ↦ if b i then 1 else -1

/-- Integer numerator for the rational spherical encoding. -/
def sphereNumerator {n : Nat} (b : StableBitfield n) :
    (Fin n → ℤ) × ℤ :=
  (fun i ↦ 2 * centeredInt b i, (n : ℤ) - 1)

/-- Positive integer denominator for the rational spherical encoding. -/
def sphereDenominator (n : Nat) : ℤ := (n : ℤ) + 1

/-- Squared norm on the integer numerator carrier. -/
def integerCarrierNormSq {n : Nat} (y : (Fin n → ℤ) × ℤ) : ℤ :=
  (∑ i, (y.1 i) ^ 2) + y.2 ^ 2

private theorem centeredInt_sq {n : Nat} (b : StableBitfield n) (i : Fin n) :
    (centeredInt b i) ^ 2 = 1 := by
  cases h : b i <;> simp [centeredInt, h]

/-- Unit norm of the rational carrier is certified entirely in integers. -/
theorem sphereNumerator_norm_certificate
    {n : Nat} (b : StableBitfield n) :
    integerCarrierNormSq (sphereNumerator b) =
      sphereDenominator n ^ 2 := by
  have hsquares :
      (∑ i, (2 * centeredInt b i) ^ 2) = (4 : ℤ) * n := by
    calc
      (∑ i, (2 * centeredInt b i) ^ 2) = ∑ _i : Fin n, (4 : ℤ) := by
        apply Finset.sum_congr rfl
        intro i _
        rw [mul_pow, centeredInt_sq]
        norm_num
      _ = (4 : ℤ) * n := by simp [mul_comm]
  rw [integerCarrierNormSq, sphereNumerator, sphereDenominator, hsquares]
  push_cast
  ring

/-- Squared distance of two integer numerator carriers. -/
def integerCarrierDistanceSq {n : Nat}
    (x y : (Fin n → ℤ) × ℤ) : ℤ :=
  (∑ i, (x.1 i - y.1 i) ^ 2) + (x.2 - y.2) ^ 2

private theorem centered_difference_sq {n : Nat}
    (b c : StableBitfield n) (i : Fin n) :
    (2 * centeredInt b i - 2 * centeredInt c i) ^ 2 =
      if b i ≠ c i then (16 : ℤ) else 0 := by
  cases hbi : b i <;> cases hci : c i <;>
    simp [centeredInt, hbi, hci]

/-- Spherical numerator distance is exactly sixteen times Hamming count. -/
theorem sphereNumerator_distance_certificate
    {n : Nat} (b c : StableBitfield n) :
    integerCarrierDistanceSq (sphereNumerator b) (sphereNumerator c) =
      16 * (hammingCount b c : ℤ) := by
  have hsum :
      (∑ i, (2 * centeredInt b i - 2 * centeredInt c i) ^ 2) =
        16 * (hammingCount b c : ℤ) := by
    simp only [hammingCount, Nat.cast_sum, Nat.cast_ite, Nat.cast_one,
      Nat.cast_zero]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    rw [centered_difference_sq]
    split <;> simp
  simp only [integerCarrierDistanceSq, sphereNumerator]
  rw [hsum]
  ring

/-- The origin beacon. -/
def zeroBeacon {n : Nat} : Fin n → ℝ := 0

/-- The `i`th standard stable beacon. -/
def standardBeacon {n : Nat} (i : Fin n) : Fin n → ℝ :=
  fun j ↦ if j = i then 1 else 0

/-- Exact squared range from a point to a beacon. -/
def squaredRange {n : Nat} (x beacon : Fin n → ℝ) : ℝ :=
  ∑ j, (x j - beacon j) ^ 2

@[simp]
theorem squaredRange_zero {n : Nat} (x : Fin n → ℝ) :
    squaredRange x zeroBeacon = chartNormSq x := by
  simp [squaredRange, zeroBeacon, chartNormSq]

theorem squaredRange_standard {n : Nat} (x : Fin n → ℝ) (i : Fin n) :
    squaredRange x (standardBeacon i) = chartNormSq x - 2 * x i + 1 := by
  classical
  calc
    squaredRange x (standardBeacon i) =
        ∑ j, ((x j) ^ 2 + if j = i then (1 - 2 * x j) else 0) := by
          apply Finset.sum_congr rfl
          intro j _
          by_cases hji : j = i
          · subst j
            simp [standardBeacon]
            ring
          · simp [standardBeacon, hji]
    _ = chartNormSq x + ∑ j, if j = i then (1 - 2 * x j) else 0 := by
          rw [Finset.sum_add_distrib]
          rfl
    _ = chartNormSq x + (1 - 2 * x i) := by simp
    _ = chartNormSq x - 2 * x i + 1 := by ring

/-- Squared ranges to `0,e₁,…,eₙ` reconstruct every coordinate exactly. -/
theorem reconstruct_coordinate_from_ranges
    {n : Nat} (x : Fin n → ℝ) (i : Fin n) :
    x i =
      (1 + squaredRange x zeroBeacon -
        squaredRange x (standardBeacon i)) / 2 := by
  rw [squaredRange_zero, squaredRange_standard]
  ring

/-- Exact derivative of squared range along a velocity vector. -/
def rangeRate {n : Nat}
    (x velocity beacon : Fin n → ℝ) : ℝ :=
  2 * ∑ j, (x j - beacon j) * velocity j

theorem rangeRate_zero_sub_standard
    {n : Nat} (x velocity : Fin n → ℝ) (i : Fin n) :
    rangeRate x velocity zeroBeacon -
        rangeRate x velocity (standardBeacon i) =
      2 * velocity i := by
  classical
  simp only [rangeRate, zeroBeacon, standardBeacon, Pi.zero_apply, sub_zero]
  have hsum :
      (∑ j, x j * velocity j) -
          ∑ j, (x j - if j = i then 1 else 0) * velocity j =
        velocity i := by
    rw [← Finset.sum_sub_distrib]
    simp only [← sub_mul]
    simp
  linarith

/-- Range-rate differences reconstruct translational velocity exactly. -/
theorem reconstruct_velocity_from_rangeRates
    {n : Nat} (x velocity : Fin n → ℝ) (i : Fin n) :
    velocity i =
      (rangeRate x velocity zeroBeacon -
        rangeRate x velocity (standardBeacon i)) / 2 := by
  rw [rangeRate_zero_sub_standard]
  ring

end Mathematics.Cubical
```
