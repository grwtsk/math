# Complete source: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceFibres

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7e4ccda28428db2cd1d6494881833429a135f6d` · SHA-256 `849ec161044e436d28590541da8a6c3f16076025aab7339f8c491a86d84342b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #553. Direct stacked parent: draft PR #549 at
`5a6040ea181d22dfb630f774178db919a5c226db`.
-/
import GRWTSK.NumberTheory.Moebius.SquareDivisorMobiusNonsquarefreeCancellation
import Mathlib.Data.Nat.ModEq

/-!
# Congruence fibres for the divisor-square cross-collision sieve

The source-constructed squarefree sieve turns the lower-order collision branch
into

`mu(x) * mu(x+2h) * sum_(d^2 | x+h) mu(d)`.

For one endpoint `b`, the exact cross-collision support forces the midpoint
`x+h` into the half-open interval `[1,b)`.  Hence every relevant divisor
satisfies `1 <= d < b`, providing one fixed modulus range for the entire
endpoint.

The condition `d^2 | x+h` is exactly the congruence
`x+h ≡ 0 (mod d^2)`.  This module performs only that finite reindexing and
groups the signed endpoint correlations by the square modulus.

No congruence-restricted correlation estimate is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Midpoint selected by endpoint `b`, prefix length `n`, and base index
`a`. -/
def mertensCrossCollisionMidpoint (b n a : ℕ) : ℕ :=
  a + 1 + (b - n)

/-- On the exact cross-collision support the midpoint is positive and lies
strictly below the common endpoint. -/
theorem mertensCrossCollisionMidpoint_pos_lt_endpoint
    {b n a : ℕ}
    (hn : n ∈ Finset.Ico 1 b)
    (ha : a ∈ mertensEndpointCrossCollisionBaseSet b n) :
    0 < mertensCrossCollisionMidpoint b n a ∧
      mertensCrossCollisionMidpoint b n a < b := by
  unfold mertensEndpointCrossCollisionBaseSet at ha
  have hn' := Finset.mem_Ico.mp hn
  have ha' := Finset.mem_range.mp ha
  unfold mertensCrossCollisionMidpoint
  constructor <;> omega

/-- Fixed endpoint-wide set of candidate square divisors. -/
def fixedEndpointSquareDivisorSupport
    (b m : ℕ) : Finset ℕ :=
  (Finset.Ico 1 b).filter (fun d => d * d ∣ m)

/-- If `0<m<b`, the dynamic divisor-square support equals the endpoint-wide
fixed range filtered by the same square-divisibility condition. -/
theorem squareDivisorSupport_eq_fixedEndpointSupport
    {b m : ℕ} (hm : 0 < m) (hmb : m < b) :
    m.divisors.filter (fun d => d * d ∣ m) =
      fixedEndpointSquareDivisorSupport b m := by
  classical
  ext d
  unfold fixedEndpointSquareDivisorSupport
  simp only [Finset.mem_filter, Finset.mem_Ico]
  constructor
  · rintro ⟨hddiv, hsq⟩
    have hd_dvd : d ∣ m := Nat.dvd_of_mem_divisors hddiv
    have hdpos : 0 < d := Nat.pos_of_mem_divisors hddiv
    have hdle : d ≤ m := Nat.le_of_dvd hm hd_dvd
    exact ⟨⟨hdpos, hdle.trans_lt hmb⟩, hsq⟩
  · rintro ⟨⟨hdpos, hdb⟩, hsq⟩
    have hd_dvd_sq : d ∣ d * d := dvd_mul_right d d
    have hd_dvd : d ∣ m := hd_dvd_sq.trans hsq
    exact
      ⟨Nat.mem_divisors.mpr ⟨hd_dvd, ne_of_gt hm⟩, hsq⟩

/-- Fixed-range form of the finite square-divisor Möbius sum. -/
theorem squareDivisorMobiusSum_eq_fixedEndpointRange
    {b m : ℕ} (hm : 0 < m) (hmb : m < b) :
    squareDivisorMobiusSum m =
      ∑ d ∈ Finset.Ico 1 b,
        if d * d ∣ m then moebiusReal d else 0 := by
  classical
  unfold squareDivisorMobiusSum
  rw [← Finset.sum_filter]
  rw [squareDivisorSupport_eq_fixedEndpointSupport hm hmb]
  unfold fixedEndpointSquareDivisorSupport
  rw [Finset.sum_filter]

/-- Exact congruence predicate corresponding to square divisibility. -/
def squareDivisorCongruence (d m : ℕ) : Prop :=
  Nat.ModEq (d * d) m 0

instance (d m : ℕ) : Decidable (squareDivisorCongruence d m) :=
  inferInstanceAs (Decidable (Nat.ModEq (d * d) m 0))

theorem squareDivisorCongruence_iff
    (d m : ℕ) :
    squareDivisorCongruence d m ↔ d * d ∣ m := by
  unfold squareDivisorCongruence
  exact Nat.modEq_zero_iff_dvd

/-- Fixed-range divisor-square sum written entirely as congruence selectors. -/
theorem squareDivisorMobiusSum_eq_fixedCongruenceRange
    {b m : ℕ} (hm : 0 < m) (hmb : m < b) :
    squareDivisorMobiusSum m =
      ∑ d ∈ Finset.Ico 1 b,
        if squareDivisorCongruence d m then moebiusReal d else 0 := by
  rw [squareDivisorMobiusSum_eq_fixedEndpointRange hm hmb]
  apply Finset.sum_congr rfl
  intro d _hd
  by_cases h : squareDivisorCongruence d m
  · have h' := (squareDivisorCongruence_iff d m).mp h
    simp [h, h']
  · have h' : ¬ d * d ∣ m := by
      exact mt (squareDivisorCongruence_iff d m).mpr h
    simp [h, h']

/-- Congruence-filtered base indices for one endpoint, prefix, and modulus
square. -/
def mertensEndpointCrossCongruenceBaseSet
    (b n d : ℕ) : Finset ℕ :=
  (mertensEndpointCrossCollisionBaseSet b n).filter
    (fun a =>
      squareDivisorCongruence d
        (mertensCrossCollisionMidpoint b n a))

/-- Signed two-endpoint Möbius correlation in one fixed square-modulus fibre. -/
def mertensEndpointCrossCongruenceFibre
    (b d : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCongruenceBaseSet b n d,
      mertensSquarefreeMidpointEndpointProduct (b - n) a

/-- Expanded congruence form before swapping the finite modulus sum outward. -/
def mertensEndpointCrossCollisionCongruenceExpandedEnergy
    (b : ℕ) : ℝ :=
  2 * ∑ n ∈ Finset.Ico 1 b,
    ∑ a ∈ mertensEndpointCrossCollisionBaseSet b n,
      ∑ d ∈ Finset.Ico 1 b,
        if squareDivisorCongruence d
            (mertensCrossCollisionMidpoint b n a) then
          moebiusReal d *
            mertensSquarefreeMidpointEndpointProduct (b - n) a
        else 0

/-- The divisor-square sieve energy is exactly its fixed-range congruence
expansion. -/
theorem mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded
    (b : ℕ) :
    mertensEndpointCrossCollisionDivisorSquareSieveEnergy b =
      mertensEndpointCrossCollisionCongruenceExpandedEnergy b := by
  classical
  unfold mertensEndpointCrossCollisionDivisorSquareSieveEnergy
    mertensEndpointCrossCollisionCongruenceExpandedEnergy
    mertensSquarefreeMidpointDivisorSieveTerm
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.sum_congr rfl
  intro a ha
  obtain ⟨hmpos, hmb⟩ :=
    mertensCrossCollisionMidpoint_pos_lt_endpoint hn ha
  change mertensSquarefreeMidpointEndpointProduct (b - n) a *
    squareDivisorMobiusSum (mertensCrossCollisionMidpoint b n a) = _
  rw [squareDivisorMobiusSum_eq_fixedCongruenceRange hmpos hmb]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _hd
  by_cases hc :
      squareDivisorCongruence d
        (mertensCrossCollisionMidpoint b n a)
  · simp [hc]
    ring
  · simp [hc]

/-- Endpoint energy after the finite Fubini swap: one signed correlation fibre
for each square modulus. -/
def mertensEndpointCrossCollisionCongruenceFibreEnergy
    (b : ℕ) : ℝ :=
  2 * ∑ d ∈ Finset.Ico 1 b,
    moebiusReal d * mertensEndpointCrossCongruenceFibre b d

/-- Exact finite Fubini reindexing of the congruence-expanded energy by the
square modulus. -/
theorem mertensEndpointCrossCollisionCongruenceExpandedEnergy_eq_fibres
    (b : ℕ) :
    mertensEndpointCrossCollisionCongruenceExpandedEnergy b =
      mertensEndpointCrossCollisionCongruenceFibreEnergy b := by
  classical
  unfold mertensEndpointCrossCollisionCongruenceExpandedEnergy
    mertensEndpointCrossCollisionCongruenceFibreEnergy
    mertensEndpointCrossCongruenceFibre
    mertensEndpointCrossCongruenceBaseSet
  apply congrArg (fun x : ℝ => 2 * x)
  simp_rw [Finset.sum_filter]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n _hn
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro d _hd
  apply Finset.sum_congr rfl
  intro a _ha
  by_cases hc :
      squareDivisorCongruence d
        (mertensCrossCollisionMidpoint b n a)
  · simp [hc]
  · simp [hc]

/-- Main endpoint identity: the divisor-square sieve is a signed sum over
square-modulus congruence fibres. -/
theorem mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres
    (b : ℕ) :
    mertensEndpointCrossCollisionDivisorSquareSieveEnergy b =
      mertensEndpointCrossCollisionCongruenceFibreEnergy b := by
  rw [mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded,
    mertensEndpointCrossCollisionCongruenceExpandedEnergy_eq_fibres]

/-- RH-facing reciprocal endpoint-weighted congruence-fibre observable. -/
def weightedMertensEndpointCrossCollisionCongruenceFibreEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointCrossCollisionCongruenceFibreEnergy b

/-- Exact weighted equality with the divisor-square sieve observable. -/
theorem weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy j =
      weightedMertensEndpointCrossCollisionCongruenceFibreEnergy j := by
  unfold weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy
    weightedMertensEndpointCrossCollisionCongruenceFibreEnergy
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro b _hb
  rw [mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres]

/-- Because #546 source-constructs the complete squarefree/divisor-square
identity, the original weighted cross-collision observable now has an
unconditional source-level equality to the congruence-fibre representation. -/
theorem weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionEnergy j =
      weightedMertensEndpointCrossCollisionCongruenceFibreEnergy j := by
  rw [weightedMertensEndpointCrossCollisionEnergy_eq_divisorSquareSieve
      squarefreeDivisorSquareMobiusIdentity,
    weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres]

/-- Source-facing all-scale condition on the exact congruence-fibre
representation. -/
def SubpolynomialWeightedMertensEndpointCongruenceCrossCollision : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensEndpointCrossCollisionCongruenceFibreEnergy j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- Exact equivalence with the previous squarefree-midpoint adapter surface. -/
theorem subpolynomialWeightedMertensEndpointCongruenceCrossCollision_iff_squarefreeMidpoint :
    SubpolynomialWeightedMertensEndpointCongruenceCrossCollision ↔
      SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision := by
  constructor
  · intro hCong δ hδ
    obtain ⟨C, hC, hscale⟩ := hCong δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint,
      weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres]
    exact hscale j
  · intro hMid δ hδ
    obtain ⟨C, hC, hscale⟩ := hMid δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres,
      weightedMertensEndpointCrossCollisionEnergy_eq_squarefreeMidpoint]
    exact hscale j

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.squareDivisorMobiusSum_eq_fixedCongruenceRange
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceFibres
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointCongruenceCrossCollision_iff_squarefreeMidpoint
```
