/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelCausalKernel
import GRWTSK.MeasureAndIntegration.UnsignedEnergyBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory

/-!
# Actual causal response and complete finite double-Abel gates

The original CCC.pickupResponse is used literally. No altered model
response, local source override, native verifier or new axiom is added.

The finite telescoping is a complete theorem candidate over arbitrary
real kernels with zero terminal faces. We separately derive those faces
from the actual causal birth condition. The mixed integrand positivity
is reduced to real reciprocal-square-root convexity at positive integer
indices and the real interval integral.

The weighted harmonic kernel moment is an additional independently
identified formalization obligation. No arithmetic rectangle supplier,
all-rate energy estimate, or RH proof is asserted here.
-/

namespace GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelCausalKernel

private theorem invsqrt_discrete_convex (n : ℕ) (hn : 1 ≤ n) :
    2 * (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ ≤
      (Real.sqrt (n : ℝ))⁻¹ +
        (Real.sqrt ((n + 2 : ℕ) : ℝ))⁻¹ := by
  let a : ℝ := Real.sqrt (n : ℝ)
  let b : ℝ := Real.sqrt ((n + 1 : ℕ) : ℝ)
  let c : ℝ := Real.sqrt ((n + 2 : ℕ) : ℝ)
  have ha : 0 < a := Real.sqrt_pos.2 (by exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hn))
  have hb : 0 < b := by dsimp [b]; positivity
  have hc : 0 < c := by dsimp [c]; positivity
  have hsq : 2 * b ^ 2 = a ^ 2 + c ^ 2 := by
    dsimp [a, b, c]
    rw [Real.sq_sqrt (Nat.cast_nonneg n),
      Real.sq_sqrt (Nat.cast_nonneg (n + 1)),
      Real.sq_sqrt (Nat.cast_nonneg (n + 2))]
    push_cast
    ring
  have hmid : a + c ≤ 2 * b := by
    nlinarith [sq_nonneg (a - c)]
  have hprod : 2 * a * c ≤ b * (a + c) := by
    have hp : 0 ≤ (2 * b - a - c) * (a + c) :=
      mul_nonneg (by linarith) (by positivity)
    nlinarith [sq_nonneg (a - c)]
  have hfrac : 2 / b ≤ (a + c) / (a * c) :=
    (div_le_div_iff₀ hb (mul_pos ha hc)).2 (by nlinarith [hprod])
  have hsum : a⁻¹ + c⁻¹ = (a + c) / (a * c) := by
    field_simp
    <;> ring
  change 2 * b⁻¹ ≤ a⁻¹ + c⁻¹
  rw [hsum]
  simpa only [div_eq_mul_inv] using hfrac

/-- Scalar midpoint convexity survives taking a positive part.
This is the precise gate required by the original causal birth rule. -/
private theorem max_midpoint_convex
    (x y z c : ℝ) (h : 2 * y ≤ x + z) :
    2 * max (y - c) 0 ≤ max (x - c) 0 + max (z - c) 0 := by
  have hx := le_max_left (x - c) 0
  have hz := le_max_left (z - c) 0
  have hx0 := le_max_right (x - c) 0
  have hz0 := le_max_right (z - c) 0
  by_cases hy : y - c ≤ 0
  · rw [max_eq_right hy]
    linarith
  · rw [max_eq_left (le_of_lt (lt_of_not_ge hy))]
    linarith

/-- The original if-at-birth response equals a positive part.
The equality is asserted ONLY at positive integer source labels. -/
theorem pickupResponse_eq_positivePart (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse n u =
      2 * max ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2)) 0 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hn)
  have hroot : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.2 hnpos
  have hexproot : 0 < Real.sqrt (Real.exp u) := by positivity
  have hs : Real.exp (-u / 2) = (Real.sqrt (Real.exp u))⁻¹ := by
    rw [← Real.exp_half]
    simpa only [neg_div, Real.exp_neg]
  by_cases h : Real.log (n : ℝ) ≤ u
  · have hnle : (n : ℝ) ≤ Real.exp u := (Real.log_le_iff_le_exp hnpos).mp h
    have hrootle : Real.sqrt (n : ℝ) ≤ Real.sqrt (Real.exp u) :=
      Real.sqrt_le_sqrt hnle
    have hdiff : 0 ≤ (Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2) := by
      rw [hs]
      exact sub_nonneg.mpr (one_div_le_one_div_of_le hroot hrootle)
    simp [pickupResponse, h, max_eq_left hdiff]
  · have hlt : Real.exp u < (n : ℝ) :=
      lt_of_not_ge (fun hle => h ((Real.log_le_iff_le_exp hnpos).mpr hle))
    have hrootle : Real.sqrt (Real.exp u) ≤ Real.sqrt (n : ℝ) :=
      Real.sqrt_le_sqrt hlt.le
    have hdiff : (Real.sqrt (n : ℝ))⁻¹ - Real.exp (-u / 2) ≤ 0 := by
      rw [hs]
      exact sub_nonpos.mpr (one_div_le_one_div_of_le hexproot hrootle)
    simp [pickupResponse, h, max_eq_right hdiff]

theorem pickupResponse_nonneg_positive (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    0 ≤ pickupResponse n u := by
  rw [pickupResponse_eq_positivePart n hn u]
  exact mul_nonneg (by norm_num) (le_max_right _ _)

/-- The literal causal response is nonincreasing in its POSITIVE index. -/
theorem pickupResponse_antitone_positive (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    pickupResponse (n + 1) u ≤ pickupResponse n u := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hn)
  have hnext : (0 : ℝ) < (n + 1 : ℕ) := by positivity
  have hroot : Real.sqrt (n : ℝ) ≤ Real.sqrt ((n + 1 : ℕ) : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast (Nat.le_succ n))
  have hinv : (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ ≤
      (Real.sqrt (n : ℝ))⁻¹ :=
    one_div_le_one_div_of_le (Real.sqrt_pos.2 hnpos) hroot
  rw [pickupResponse_eq_positivePart n hn u,
    pickupResponse_eq_positivePart (n + 1) (by omega) u]
  exact mul_le_mul_of_nonneg_left (max_le_max_right _ (sub_le_sub_right hinv _))
    (by norm_num)

/-- Unconditional discrete convexity for the actual causal response.
No sign or arithmetic hypothesis is used. -/
theorem pickupResponse_discrete_convex
    (n : ℕ) (hn : 1 ≤ n) (u : ℝ) :
    2 * pickupResponse (n + 1) u ≤
      pickupResponse n u + pickupResponse (n + 2) u := by
  have hi := invsqrt_discrete_convex n hn
  have hh := max_midpoint_convex
    (Real.sqrt (n : ℝ))⁻¹
    (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹
    (Real.sqrt ((n + 2 : ℕ) : ℝ))⁻¹
    (Real.exp (-u / 2)) hi
  rw [pickupResponse_eq_positivePart n hn u,
    pickupResponse_eq_positivePart (n + 1) (by omega) u,
    pickupResponse_eq_positivePart (n + 2) (by omega) u]
  linarith

/-- Full pointwise mixed kernel positivity for the ACTUAL response,
including the two integer-index directions. -/
theorem actual_mixedIntegrand_nonneg (p q : ℕ)
    (hp : 1 ≤ p) (hq : 1 ≤ q) (u : ℝ) :
    0 ≤ mixedIntegrand (fun n => pickupResponse n u) p q := by
  rw [mixedIntegrand_decomposition]
  have hfirst : 0 ≤
      pickupResponse p u - pickupResponse (p + 1) u :=
    sub_nonneg.mpr (pickupResponse_antitone_positive p hp u)
  have hnext : 0 ≤
      pickupResponse (p + q) u - pickupResponse (p + q + 1) u :=
    sub_nonneg.mpr
      (pickupResponse_antitone_positive (p + q) (by omega) u)
  have hconvex := pickupResponse_discrete_convex (p + q) (by omega) u
  have hsecond :
      0 ≤
        (pickupResponse (p + q) u - pickupResponse (p + q + 1) u) -
          (pickupResponse (p + q + 1) u - pickupResponse (p + q + 2) u) := by
    linarith
  exact add_nonneg (mul_nonneg hfirst hnext)
    (mul_nonneg (pickupResponse_nonneg_positive (p + 1) (by omega) u) hsecond)

/-- The finite telescoping of any real kernel on a closed rectangle:
all four corner terms are retained until the two terminal faces vanish. -/
private theorem two_parameter_telescope
    (N m g : ℕ) (hm : 1 ≤ m) (hmN : m ≤ N)
    (hg : 1 ≤ g) (hgN : g ≤ N)
    (K : ℕ → ℕ → ℝ)
    (hrow : ∀ q, K (N + 1) q = 0)
    (hcol : ∀ p, K p (N + 1) = 0) :
    (∑ p ∈ Finset.Icc m N, ∑ q ∈ Finset.Icc g N,
      (K p q - K (p + 1) q - K p (q + 1) + K (p + 1) (q + 1))) =
        K m g := by
  classical
  have hinner (p : ℕ) :
      (∑ q ∈ Finset.Icc g N,
        (K p q - K (p + 1) q - K p (q + 1) + K (p + 1) (q + 1))) =
          K p g - K (p + 1) g := by
    have ht := Finset.sum_Icc_sub hgN
      (fun q => K p q - K (p + 1) q)
    calc
      _ = -(∑ q ∈ Finset.Icc g N,
            ((K p (q + 1) - K (p + 1) (q + 1)) -
              (K p q - K (p + 1) q))) := by
        rw [Finset.neg_sum]
        apply Finset.sum_congr rfl
        intro q _
        ring
      _ = K p g - K (p + 1) g := by
        rw [ht, hcol p, hcol (p + 1)]
        ring
  calc
    _ = ∑ p ∈ Finset.Icc m N, (K p g - K (p + 1) g) := by
      apply Finset.sum_congr rfl
      intro p _
      exact hinner p
    _ = -(∑ p ∈ Finset.Icc m N, (K (p + 1) g - K p g)) := by
      rw [Finset.neg_sum]
      apply Finset.sum_congr rfl
      intro p _
      ring
    _ = K m g := by
      rw [Finset.sum_Icc_sub hmN (fun p => K p g), hrow g]
      ring

/-- Elementary filter-to-closed-interval identity. -/
private theorem sum_Icc_if_ge
    (m N : ℕ) (hm : 1 ≤ m) (f : ℕ → ℝ) :
    (∑ k ∈ Finset.Icc 1 N, if m ≤ k then f k else 0) =
      ∑ k ∈ Finset.Icc m N, f k := by
  classical
  rw [← Finset.sum_filter]
  congr 1
  ext k
  simp only [Finset.mem_filter, Finset.mem_Icc]
  omega

/-- The original lattice-filtered tail is literally a double closed
interval, with no triangular source filter on the kernel itself. -/
private theorem tailOfOmega_eq_double_Icc
    (N m g : ℕ) (hm : 1 ≤ m) (hg : 1 ≤ g)
    (omega : ℕ → ℕ → ℝ) :
    tailOfOmega N omega m g =
      ∑ p ∈ Finset.Icc m N, ∑ q ∈ Finset.Icc g N, omega p q := by
  classical
  unfold tailOfOmega lattice prefixLE
  simp only [Finset.sum_product]
  calc
    (∑ p ∈ Finset.Icc 1 N, ∑ q ∈ Finset.Icc 1 N,
      if m ≤ p ∧ g ≤ q then omega p q else 0) =
        ∑ p ∈ Finset.Icc 1 N,
          if m ≤ p then
            (∑ q ∈ Finset.Icc 1 N, if g ≤ q then omega p q else 0)
          else 0 := by
      apply Finset.sum_congr rfl
      intro p _
      by_cases hp : m ≤ p <;> simp [hp]
    _ = ∑ p ∈ Finset.Icc 1 N,
          if m ≤ p then (∑ q ∈ Finset.Icc g N, omega p q)
          else 0 := by
      apply Finset.sum_congr rfl
      intro p _
      by_cases hp : m ≤ p
      · simp only [if_pos hp]
        exact sum_Icc_if_ge g N hg (omega p)
      · simp [hp]
    _ = ∑ p ∈ Finset.Icc m N, ∑ q ∈ Finset.Icc g N, omega p q :=
      sum_Icc_if_ge m N hm _

/-- Exact non-born response outside the dyadic cutoff. The original
causal weight is used, with no replacement by a model kernel. -/
theorem pickupResponse_zero_above_cutoff
    (N n : ℕ) (hN : 1 ≤ N) (hn : N < n)
    {u : ℝ} (hu : u ≤ Real.log (N : ℝ)) :
    pickupResponse n u = 0 := by
  have hNpos : (0 : ℝ) < N := by
    exact_mod_cast (Nat.lt_of_lt_of_le Nat.zero_lt_one hN)
  have hcast : (N : ℝ) < n := by exact_mod_cast hn
  have hlog := Real.log_lt_log hNpos hcast
  have hnot : ¬ Real.log (n : ℝ) ≤ u := not_le.mpr (lt_of_le_of_lt hu hlog)
  simp [pickupResponse, hnot]

/-- Left terminal face of the ACTUAL integrated kernel. -/
theorem causalKernel_left_terminal
    (N : ℕ) (hN : 1 ≤ N) (q : ℕ) :
    causalKernel (Real.log (N : ℝ)) (N + 1) q = 0 := by
  have hT : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  unfold causalKernel
  calc
    (∫ u in (0 : ℝ)..Real.log (N : ℝ),
      pickupResponse (N + 1) u * pickupResponse (N + 1 + q) u) =
        ∫ _u in (0 : ℝ)..Real.log (N : ℝ), (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      rw [pickupResponse_zero_above_cutoff N (N + 1) hN
          (by omega) hu.2]
      ring
    _ = 0 := by simp

/-- Right terminal face of the ACTUAL integrated kernel. -/
theorem causalKernel_right_terminal
    (N : ℕ) (hN : 1 ≤ N) (p : ℕ) :
    causalKernel (Real.log (N : ℝ)) p (N + 1) = 0 := by
  have hT : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  unfold causalKernel
  calc
    (∫ u in (0 : ℝ)..Real.log (N : ℝ),
      pickupResponse p u * pickupResponse (p + (N + 1)) u) =
        ∫ _u in (0 : ℝ)..Real.log (N : ℝ), (0 : ℝ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      rw [pickupResponse_zero_above_cutoff N (p + (N + 1)) hN
          (by omega) hu.2]
      ring
    _ = 0 := by simp

/-- The original KernelTailIdentity is discharged from two CLOSED
finite telescopes and the actual zero-response birth boundary. -/
theorem kernelTailIdentity_of_original_birth
    (N : ℕ) (hN : 1 ≤ N) : KernelTailIdentity N := by
  intro mg hmg
  have hmem := (Finset.mem_product.mp hmg)
  rcases hmem with ⟨hm, hg⟩
  obtain ⟨hm1, hmN⟩ := Finset.mem_Icc.mp hm
  obtain ⟨hg1, hgN⟩ := Finset.mem_Icc.mp hg
  let K : ℕ → ℕ → ℝ := causalKernel (Real.log (N : ℝ))
  have hrow : ∀ q, K (N + 1) q = 0 :=
    causalKernel_left_terminal N hN
  have hcol : ∀ p, K p (N + 1) = 0 :=
    causalKernel_right_terminal N hN
  change K mg.1 mg.2 =
    tailOfOmega N (causalOmega (Real.log (N : ℝ))) mg.1 mg.2
  rw [tailOfOmega_eq_double_Icc N mg.1 mg.2 hm1 hg1]
  change K mg.1 mg.2 =
    ∑ p ∈ Finset.Icc mg.1 N, ∑ q ∈ Finset.Icc mg.2 N,
      (K p q - K (p + 1) q - K p (q + 1) + K (p + 1) (q + 1))
  exact (two_parameter_telescope N mg.1 mg.2 hm1 hmN hg1 hgN K hrow hcol).symm

/-- The exact original weighted source is now returned without
a remaining analytic tail hypothesis: all kernel faces vanish. -/
theorem positiveGapAggregate_eq_rectangles
    (N : ℕ) (hN : 1 ≤ N) :
    positiveGapAggregate N =
      rectangularOmegaAggregate N (causalOmega (Real.log (N : ℝ))) :=
  positiveGapAggregate_eq_rectangles_of_tail N
    (kernelTailIdentity_of_original_birth N hN)


/-- Exact linearity of a four-corner interval integral, retaining all signs. -/
private theorem integral_four_corners
    (T : ℝ) (f₁ f₂ f₃ f₄ : ℝ → ℝ)
    (h₁ : IntervalIntegrable f₁ MeasureTheory.volume 0 T)
    (h₂ : IntervalIntegrable f₂ MeasureTheory.volume 0 T)
    (h₃ : IntervalIntegrable f₃ MeasureTheory.volume 0 T)
    (h₄ : IntervalIntegrable f₄ MeasureTheory.volume 0 T) :
    (∫ u in (0 : ℝ)..T, f₁ u) -
      (∫ u in (0 : ℝ)..T, f₂ u) -
        (∫ u in (0 : ℝ)..T, f₃ u) +
          (∫ u in (0 : ℝ)..T, f₄ u) =
      ∫ u in (0 : ℝ)..T, (f₁ u - f₂ u - f₃ u + f₄ u) := by
  have hfun :
      (fun u => f₁ u - f₂ u - f₃ u + f₄ u) =
        (fun u => (f₁ u - f₂ u) - (f₃ u - f₄ u)) := by
    funext u
    ring
  rw [hfun,
    intervalIntegral.integral_sub (h₁.sub h₂) (h₃.sub h₄),
    intervalIntegral.integral_sub h₁ h₂,
    intervalIntegral.integral_sub h₃ h₄]
  ring

/-- A literal equality of the actual integrated mixed kernel with
its four-corner pointwise integrand. No sign is lost by integration. -/
theorem causalOmega_eq_integral_mixed
    (T : ℝ) (p q : ℕ) (hp : 1 ≤ p) (hq : 1 ≤ q) :
    causalOmega T p q =
      ∫ u in (0 : ℝ)..T,
        mixedIntegrand (fun n => pickupResponse n u) p q := by
  have hpair (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) :
      IntervalIntegrable
        (fun u : ℝ => pickupResponse m u * pickupResponse n u)
        MeasureTheory.volume 0 T :=
    ((pickupResponse_continuous hm).mul
      (pickupResponse_continuous hn)).intervalIntegrable _ _
  have h := integral_four_corners T
    (fun u => pickupResponse p u * pickupResponse (p + q) u)
    (fun u => pickupResponse (p + 1) u * pickupResponse (p + q + 1) u)
    (fun u => pickupResponse p u * pickupResponse (p + q + 1) u)
    (fun u => pickupResponse (p + 1) u * pickupResponse (p + q + 2) u)
    (hpair p (p + q) hp (by omega))
    (hpair (p + 1) (p + q + 1) (by omega) (by omega))
    (hpair p (p + q + 1) hp (by omega))
    (hpair (p + 1) (p + q + 2) (by omega) (by omega))
  simpa only [causalOmega, causalKernel, mixedIntegrand,
    Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using h

/-- UNCONDITIONAL integral nonnegativity of the original causal
mixed difference, for nonnegative time and positive indices. -/
theorem causalOmega_nonneg_actual
    (T : ℝ) (hT : 0 ≤ T) (p q : ℕ)
    (hp : 1 ≤ p) (hq : 1 ≤ q) :
    0 ≤ causalOmega T p q := by
  rw [causalOmega_eq_integral_mixed T p q hp hq]
  exact intervalIntegral.integral_nonneg_of_forall hT
    (fun u => actual_mixedIntegrand_nonneg p q hp hq u)

/-- The kernel moment is a concrete numerical source observation,
not a new arithmetic hypothesis. -/
def sqrtWeightedOmegaMoment (N : ℕ) : ℝ :=
  ∑ pq ∈ lattice N,
    Real.sqrt ((pq.1 * pq.2 : ℕ) : ℝ) *
      causalOmega (Real.log (N : ℝ)) pq.1 pq.2

/-- The polynomial kernel-moment bound is the remaining analytic
Lean gate, stated as a Prop. The mathematical derivation is supplied
in the source review. No proof is claimed by its declaration. -/
def PolynomialKernelMoment : Prop :=
  ∀ N : ℕ, 2 ≤ N →
    sqrtWeightedOmegaMoment N ≤
      (Real.log (N : ℝ)) ^ 3 / 3 +
        4 * (Real.log (N : ℝ)) ^ 2 + 7 * Real.log (N : ℝ)

/-- If the remaining scalar harmonic-moment gate is provided,
the complete original signed rectangle average receives exactly
the prescribed polynomial loss. The arithmetic premise is separate. -/
theorem rectangularAggregate_le_of_moment_and_prefix
    (N : ℕ) (hN : 2 ≤ N) (B : ℝ) (hB : 0 ≤ B)
    (hmoment : PolynomialKernelMoment)
    (hrect : ∀ pq ∈ lattice N,
      rectangularPrefix N pq.1 pq.2 ≤
        B * Real.sqrt ((pq.1 * pq.2 : ℕ) : ℝ)) :
    positiveGapAggregate N ≤
      B * ((Real.log (N : ℝ)) ^ 3 / 3 +
        4 * (Real.log (N : ℝ)) ^ 2 + 7 * Real.log (N : ℝ)) := by
  rw [positiveGapAggregate_eq_rectangles N (by omega)]
  have hT : 0 ≤ Real.log (N : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (show 1 ≤ N by omega))
  have homega : ∀ pq ∈ lattice N,
      0 ≤ causalOmega (Real.log (N : ℝ)) pq.1 pq.2 := by
    intro pq hpq
    have hmem := Finset.mem_product.mp hpq
    exact causalOmega_nonneg_actual _ hT _ _
      (Finset.mem_Icc.mp hmem.1).1 (Finset.mem_Icc.mp hmem.2).1
  have hsum :
      rectangularOmegaAggregate N (causalOmega (Real.log (N : ℝ))) ≤
        B * sqrtWeightedOmegaMoment N := by
    unfold rectangularOmegaAggregate sqrtWeightedOmegaMoment
    calc
      _ ≤ ∑ pq ∈ lattice N,
        (B * Real.sqrt ((pq.1 * pq.2 : ℕ) : ℝ)) *
          causalOmega (Real.log (N : ℝ)) pq.1 pq.2 := by
        apply Finset.sum_le_sum
        intro pq hpq
        exact mul_le_mul_of_nonneg_right (hrect pq hpq) (homega pq hpq)
      _ = _ := by
        rw [← Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro pq _
        ring
  exact hsum.trans (mul_le_mul_of_nonneg_left (hmoment N hN) hB)

end GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
