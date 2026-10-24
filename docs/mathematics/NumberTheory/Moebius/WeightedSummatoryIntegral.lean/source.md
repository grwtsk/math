# Complete source: GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca7fa70f797788aa2f0162c3c26e24f5f65b3906` · SHA-256 `637bd9c75b1aed2342019a3737685b45c6257cc20269e4531ce20639021a3396`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.AbelSummation
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.Omega

/-!
# CCC prescribed weighted Möbius pickup

The arithmetic coefficients are Mathlib's actual integer Möbius function, cast
to the reals. Every arithmetic prefix starts at one and includes its upper
cutoff. The integral and finite pickup are separately defined; exact adapters
must identify them before a finite-source certificate can certify the integral
target. No arithmetic cancellation estimate or Riemann-hypothesis premise is
introduced.

Research direction and conceptual selection: grwtsk contributors.
Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupSource

open MeasureTheory Set

noncomputable section

/-- The prescribed Möbius coefficient, with the actual integer function. -/
def moebiusCoefficient (n : ℕ) : ℝ := ((ArithmeticFunction.moebius n : ℤ) : ℝ)

@[simp]
theorem moebius_coefficient_zero : moebiusCoefficient 0 = 0 := by
  simp [moebiusCoefficient]

@[simp]
theorem moebius_coefficient_one : moebiusCoefficient 1 = 1 := by
  simp [moebiusCoefficient]

/-- Closed arithmetic prefix; zero is never a summation index. -/
def mertens (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, moebiusCoefficient n

/-- The actual original pickup, using the endpoint-equivalent Lebesgue `Ioc`
integral. The all-scale target concerns nonnegative real `T`. -/
def pickup (T : ℝ) : ℝ :=
  ∫ x in Ioc 1 (Real.exp T), mertens x / x ^ (3 / 2 : ℝ)

/-- Exact material-coordinate finite response, keeping signed prefix and flux
together with the same closed cutoff. -/
def finitePickupAt (x : ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
    moebiusCoefficient n * ((n : ℝ) ^ (-(1 / 2 : ℝ)) - x ^ (-(1 / 2 : ℝ)))

def finitePickup (T : ℝ) : ℝ := finitePickupAt (Real.exp T)

/-- The weight is evaluated only for atoms admitted by a separate closed prefix. -/
def atomWeight (x : ℝ) (n : ℕ) : ℝ :=
  2 * moebiusCoefficient n * ((n : ℝ) ^ (-(1 / 2 : ℝ)) - x ^ (-(1 / 2 : ℝ)))

@[simp]
theorem mertens_zero : mertens 0 = 0 := by simp [mertens]

@[simp]
theorem mertens_one : mertens 1 = 1 := by simp [mertens]

@[simp]
theorem pickup_zero : pickup 0 = 0 := by simp [pickup]

@[simp]
theorem finite_pickup_at_one : finitePickupAt 1 = 0 := by simp [finitePickupAt]

@[simp]
theorem finite_pickup_zero : finitePickup 0 = 0 := by simp [finitePickup]

/-- The two constituent prefixes remain together; no unsigned bound is taken. -/
theorem finite_pickup_prefix_flux (x : ℝ) :
    finitePickupAt x =
      2 * (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        moebiusCoefficient n * (n : ℝ) ^ (-(1 / 2 : ℝ))) -
        2 * mertens x * x ^ (-(1 / 2 : ℝ)) := by
  simp only [finitePickupAt, mertens, mul_sub, Finset.sum_sub_distrib,
    ← Finset.sum_mul]
  ring

/-- A touching upper atom is included by the cutoff and has zero current weight. -/
theorem upper_touching_atom_zero (n : ℕ) : atomWeight (n : ℝ) n = 0 := by
  simp [atomWeight]

/-- Subtraction preserves the complete lower-prefix contribution. In particular,
a lower touching atom has zero reset weight but a generally nonzero later weight. -/
theorem atom_reset_difference (lower current : ℝ) (n : ℕ) :
    atomWeight current n - atomWeight lower n =
      2 * moebiusCoefficient n *
        (lower ^ (-(1 / 2 : ℝ)) - current ^ (-(1 / 2 : ℝ))) := by
  unfold atomWeight
  ring

/-- The current contribution of a touching lower atom is retained exactly. -/
theorem lower_touching_atom_later_reading (current : ℝ) (n : ℕ) :
    atomWeight current n - atomWeight (n : ℝ) n =
      2 * moebiusCoefficient n *
        ((n : ℝ) ^ (-(1 / 2 : ℝ)) - current ^ (-(1 / 2 : ℝ))) :=
  atom_reset_difference (n : ℝ) current n

/-- Exact partition of a closed prefix into its closed lower prefix and strict
lower/closed upper remainder. This is a finite algebraic adapter, not cancellation. -/
theorem closed_prefix_split (f : ℕ → ℝ) {lower upper : ℝ}
    (hlower : 1 ≤ lower) (horder : lower ≤ upper) :
    (∑ n ∈ Finset.Icc 1 ⌊upper⌋₊, f n) =
      (∑ n ∈ Finset.Icc 1 ⌊lower⌋₊, f n) +
        ∑ n ∈ Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊, f n := by
  have hfloorLower : 1 ≤ ⌊lower⌋₊ := by
    simpa using Nat.floor_mono hlower
  have hfloorOrder : ⌊lower⌋₊ ≤ ⌊upper⌋₊ := Nat.floor_mono horder
  have hpartition : Finset.Icc 1 ⌊lower⌋₊ ∪ Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊ =
      Finset.Icc 1 ⌊upper⌋₊ := by
    ext n
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hdisjoint : Disjoint (Finset.Icc 1 ⌊lower⌋₊)
      (Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊) := by
    apply Finset.disjoint_left.mpr
    intro n hclosed hstrict
    exact (not_lt_of_ge (Finset.mem_Icc.mp hclosed).2) (Finset.mem_Ioc.mp hstrict).1
  rw [← hpartition, Finset.sum_union hdisjoint]

/-- Exact moving-reset algebra for the finite pickup. The lower touching atom
remains in `mertens lower`; the upper touching atom retains its zero weight. -/
theorem finite_pickup_reset {lower upper : ℝ} (hlower : 1 ≤ lower)
    (horder : lower ≤ upper) :
    finitePickupAt upper - finitePickupAt lower =
      2 * (lower ^ (-(1 / 2 : ℝ)) - upper ^ (-(1 / 2 : ℝ))) * mertens lower +
        2 * ∑ n ∈ Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊,
          moebiusCoefficient n *
            ((n : ℝ) ^ (-(1 / 2 : ℝ)) - upper ^ (-(1 / 2 : ℝ))) := by
  unfold finitePickupAt
  rw [closed_prefix_split _ hlower horder]
  have hlocal :
      (∑ n ∈ Finset.Icc 1 ⌊lower⌋₊,
        moebiusCoefficient n * ((n : ℝ) ^ (-(1 / 2 : ℝ)) - upper ^ (-(1 / 2 : ℝ)))) -
      (∑ n ∈ Finset.Icc 1 ⌊lower⌋₊,
        moebiusCoefficient n * ((n : ℝ) ^ (-(1 / 2 : ℝ)) - lower ^ (-(1 / 2 : ℝ)))) =
      (lower ^ (-(1 / 2 : ℝ)) - upper ^ (-(1 / 2 : ℝ))) * mertens lower := by
    rw [← Finset.sum_sub_distrib]
    unfold mertens
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    ring
  linear_combination 2 * hlocal

/-- The natural floor represents exactly the closed real arithmetic cutoff. -/
theorem mem_closed_prefix_iff {x : ℝ} (hx : 0 ≤ x) (n : ℕ) :
    n ∈ Finset.Icc 1 ⌊x⌋₊ ↔ 1 ≤ n ∧ (n : ℝ) ≤ x := by
  rw [Finset.mem_Icc, Nat.le_floor_iff hx]

/-- The strict lower and closed upper floor interval has the original real endpoints. -/
theorem mem_reset_remainder_iff {lower upper : ℝ} (hlower : 0 ≤ lower)
    (hupper : 0 ≤ upper) (n : ℕ) :
    n ∈ Finset.Ioc ⌊lower⌋₊ ⌊upper⌋₊ ↔ lower < (n : ℝ) ∧ (n : ℝ) ≤ upper := by
  rw [Finset.mem_Ioc, Nat.floor_lt hlower, Nat.le_floor_iff hupper]

/-- Mathlib's auxiliary zero-start prefix equals the prescribed one-start prefix.
The extra coefficient is proved zero, without altering either prescribed sum. -/
theorem zero_prefix_eq_mertens (x : ℝ) :
    (∑ n ∈ Finset.Icc 0 ⌊x⌋₊, moebiusCoefficient n) = mertens x := by
  have hset : Finset.Icc 0 ⌊x⌋₊ = insert 0 (Finset.Icc 1 ⌊x⌋₊) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  rw [hset, Finset.sum_insert (by simp)]
  simp [mertens]

theorem inverse_half_derivative (x : ℝ) :
    deriv (fun y : ℝ ↦ y ^ (-(1 / 2 : ℝ))) x =
      -(1 / 2 : ℝ) * x ^ (-(3 / 2 : ℝ)) := by
  have hexponent : -(1 / 2 : ℝ) - 1 = -(3 / 2 : ℝ) := by ring
  rw [Real.deriv_rpow_const, hexponent]

/-- The actual material integrand is integrable on every finite reading interval.
This statement is independent of the total-integral convention for a
nonintegrable function. -/
theorem material_integrand_integrable (x : ℝ) :
    IntegrableOn (fun y ↦ mertens y / y ^ (3 / 2 : ℝ)) (Icc 1 x) := by
  have hcontinuous : ContinuousOn (fun y : ℝ ↦ y ^ (-(3 / 2 : ℝ))) (Icc 1 x) :=
    continuousOn_id.rpow_const
      (fun y hy ↦ Or.inl (lt_of_lt_of_le zero_lt_one hy.1).ne')
  have hweighted := integrableOn_mul_sum_Icc moebiusCoefficient zero_le_one
    hcontinuous.integrableOn_Icc (m := 1)
  apply hweighted.congr_fun ?_ measurableSet_Icc
  intro y hy
  change y ^ (-(3 / 2 : ℝ)) * mertens y = mertens y / y ^ (3 / 2 : ℝ)
  rw [Real.rpow_neg (lt_of_lt_of_le zero_lt_one hy.1).le]
  ring

/-- Unconditional finite integration identity at every real material endpoint.
It specializes Mathlib's proved Abel theorem using the actual Möbius coefficients. -/
theorem material_integral_eq_finite {x : ℝ} (hx : 1 ≤ x) :
    (∫ y in Ioc 1 x, mertens y / y ^ (3 / 2 : ℝ)) = finitePickupAt x := by
  have hdiff : ∀ y ∈ Icc 1 x,
      DifferentiableAt ℝ (fun z : ℝ ↦ z ^ (-(1 / 2 : ℝ))) y := by
    intro y hy
    exact (Real.hasDerivAt_rpow_const
      (Or.inl (lt_of_lt_of_le zero_lt_one hy.1).ne')).differentiableAt
  have hderiv : deriv (fun y : ℝ ↦ y ^ (-(1 / 2 : ℝ))) =
      fun y ↦ -(1 / 2 : ℝ) * y ^ (-(3 / 2 : ℝ)) :=
    funext inverse_half_derivative
  have hcontinuous : ContinuousOn (fun y : ℝ ↦ y ^ (-(3 / 2 : ℝ))) (Icc 1 x) :=
    continuousOn_id.rpow_const
      (fun y hy ↦ Or.inl (lt_of_lt_of_le zero_lt_one hy.1).ne')
  have hint : IntegrableOn (deriv (fun y : ℝ ↦ y ^ (-(1 / 2 : ℝ)))) (Icc 1 x) := by
    rw [hderiv]
    exact (continuousOn_const.mul hcontinuous).integrableOn_Icc
  have habel := sum_mul_eq_sub_sub_integral_mul moebiusCoefficient zero_le_one hx hdiff hint
  have hzeroPrefixOne : (∑ n ∈ Finset.Icc 0 1, moebiusCoefficient n) = 1 := by
    simpa using zero_prefix_eq_mertens (1 : ℝ)
  simp only [zero_prefix_eq_mertens, Nat.floor_one, Real.one_rpow, hzeroPrefixOne, one_mul]
    at habel
  have hintegral :
      (∫ y in Ioc 1 x,
        deriv (fun z : ℝ ↦ z ^ (-(1 / 2 : ℝ))) y * mertens y) =
      -(1 / 2 : ℝ) * ∫ y in Ioc 1 x, mertens y / y ^ (3 / 2 : ℝ) := by
    calc
      _ = ∫ y in Ioc 1 x, -(1 / 2 : ℝ) * (mertens y / y ^ (3 / 2 : ℝ)) := by
        apply setIntegral_congr_fun measurableSet_Ioc
        intro y hy
        change deriv (fun z : ℝ ↦ z ^ (-(1 / 2 : ℝ))) y * mertens y =
          -(1 / 2 : ℝ) * (mertens y / y ^ (3 / 2 : ℝ))
        rw [inverse_half_derivative, Real.rpow_neg (lt_trans zero_lt_one hy.1).le]
        ring
      _ = _ := integral_const_mul _ _
  rw [hintegral] at habel
  have hfloor : 1 ≤ ⌊x⌋₊ := by simpa using Nat.floor_mono hx
  have hsum :
      (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        moebiusCoefficient n * (n : ℝ) ^ (-(1 / 2 : ℝ))) =
      1 + ∑ n ∈ Finset.Ioc 1 ⌊x⌋₊,
        (n : ℝ) ^ (-(1 / 2 : ℝ)) * moebiusCoefficient n := by
    rw [← Finset.Ioc_insert_left hfloor, Finset.sum_insert (by simp)]
    simp only [Nat.cast_one, Real.one_rpow, moebius_coefficient_one, one_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro n _
    exact mul_comm _ _
  rw [finite_pickup_prefix_flux, hsum, habel]
  ring

/-- The actual exact integral-to-finite proposition, discharged below. -/
def FiniteIntegrationIdentity : Prop :=
  ∀ T : ℝ, 0 ≤ T → pickup T = finitePickup T

/-- The original causal pickup equals the exact finite signed sum at every
nonnegative real time. This theorem asserts no growth estimate. -/
theorem finite_integration_identity : FiniteIntegrationIdentity := by
  intro T hT
  exact material_integral_eq_finite (by simpa using Real.exp_le_exp.mpr hT)

/-- The ordered interval integral agrees with the separately defined pickup
on every admissible nonnegative real time. -/
theorem pickup_eq_interval_integral {T : ℝ} (hT : 0 ≤ T) :
    pickup T = ∫ x in (1 : ℝ)..Real.exp T, mertens x / x ^ (3 / 2 : ℝ) := by
  have horder : 1 ≤ Real.exp T := by simpa using Real.exp_le_exp.mpr hT
  rw [intervalIntegral.integral_of_le horder]
  rfl

theorem exp_inverse_half (T : ℝ) :
    (Real.exp T) ^ (-(1 / 2 : ℝ)) = Real.exp (-T / 2) := by
  rw [Real.rpow_def_of_pos (Real.exp_pos T), Real.log_exp]
  congr 1
  ring

/-- The finite formula uses exactly the user's exponential cutoff flux. -/
theorem pickup_eq_closed_finite_sum {T : ℝ} (hT : 0 ≤ T) :
    pickup T = 2 * ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      moebiusCoefficient n *
        ((n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-T / 2)) := by
  rw [finite_integration_identity T hT]
  simp only [finitePickup, finitePickupAt, exp_inverse_half]

theorem square_inverse_half {A : ℝ} (hA : 0 ≤ A) :
    (A ^ 2) ^ (-(1 / 2 : ℝ)) = A⁻¹ := by
  rw [← Real.rpow_natCast_mul hA]
  simp only [Nat.cast_ofNat]
  have hexponent : (2 : ℝ) * -(1 / 2 : ℝ) = -1 := by ring
  rw [hexponent, Real.rpow_neg_one]

/-- Original moving-reset identity at every admissible real scale and time.
No upper time restriction is needed for this identity; only its actual ordering. -/
theorem pickup_original_reset {A t : ℝ} (hA : 1 ≤ A) (ht : 2 * Real.log A ≤ t) :
    pickup t - pickup (2 * Real.log A) =
      2 * (A⁻¹ - Real.exp (-t / 2)) * mertens (A ^ 2) +
        2 * ∑ n ∈ Finset.Ioc ⌊A ^ 2⌋₊ ⌊Real.exp t⌋₊,
          moebiusCoefficient n *
            ((n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-t / 2)) := by
  have hApos : 0 < A := by linarith
  have hreset : 0 ≤ 2 * Real.log A := by
    have hlog := Real.log_nonneg hA
    linarith
  have htpos : 0 ≤ t := le_trans hreset ht
  have hexpReset : Real.exp (2 * Real.log A) = A ^ 2 := by
    rw [two_mul, Real.exp_add, Real.exp_log hApos, pow_two]
  have horder : A ^ 2 ≤ Real.exp t := by
    rw [← hexpReset]
    exact Real.exp_le_exp.mpr ht
  rw [finite_integration_identity t htpos, finite_integration_identity _ hreset]
  simp only [finitePickup, hexpReset]
  rw [finite_pickup_reset (by nlinarith : 1 ≤ A ^ 2) horder,
    square_inverse_half (by linarith : 0 ≤ A), exp_inverse_half]

/-- The requested all-real polynomial bound remains an open arithmetic proposition. -/
def WholePickupPoly : Prop :=
  ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T : ℝ, 0 ≤ T → |pickup T| ≤ C * (1 + T) ^ p

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupSource
```
