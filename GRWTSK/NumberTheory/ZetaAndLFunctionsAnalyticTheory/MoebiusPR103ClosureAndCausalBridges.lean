/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Research/formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongFixedPowerPR103
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteSignedProfileClassicalPNT
import Mathlib

/-!
# PR103 original zeta adapter, finite complex Abel, and causal calculus

THE EXTERNAL SOURCE: GTimG/QuasiRiemannTracker PR103 merged at
8b1a0167c8e324099884152181e3fb2206510e88,
Candidate/Main.lean blob 808d04cec892449707d23e81f94179e2738fdf1a.
A lexical scan of all 237 submitted modules found no proof-placeholder
or trusted-postulate declarations; one benign term occurs in a comment.
The source imports upstream Submissions modules outside this inventory.
No independent full-closure kernel replay has been performed in this session.
The PR author reports local compilation; repository CI jobs test and deploy
the website, not the Lean proof. No source-pinned admission receipt for PR103
was found in the verifier local-results record.

This candidate supplies concrete proof bodies for:
* Exact mod-one Dirichlet L to riemannZeta type transfer.
* Complex finite Abel summation of TRUE moebiusReal coefficients.
* Integer-to-real cutoff/floor power estimate.
* Original pickupVelocity -> wholePickup -> pickupEnergy power transfer
  using the already-proved original local integrability and continuity.
* Scalar polynomial absorption from the pinned Mathlib exp Taylor bound.

CRITICAL REMAINING COMPLETION: the STANDARD analytic theorem that
a globally zero-free zeta half-plane with strict margin supplies
the original Mertens power estimate by Perron/contour, including
vertical reciprocal-zeta growth and truncation, is NOT proved here.
It remains the existing named ZeroFreeToMertensPowerBridge PROP.
The full original complete-core source packet bound is another separate
UNPROVED-in-Lean proposition, despite its written paper proof.

No added trusted declaration, proof placeholder, native trust or root import.
No RH conclusion.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103
open GRWTSK.NumberTheory.Moebius.CompleteSignedProfilePNT
open GRWTSK.NumberTheory.LiouvillePR103FixedPower

/-- EXACT external Candidate.bound type, recorded as a Prop, not a locally
imported theorem or trusted declaration.
The OAI Dirichlet L source remains external to the default math library.
The principal-character pole is not treated as an ordinary zero. -/
def PR103DirichletStatement : Prop :=
  ∀ {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) {s : ℂ},
    externalPR103Theta < s.re →
      ¬ (χ = 1 ∧ s = 1) →
      _root_.DirichletCharacter.LFunction χ s ≠ 0

/-- Fully specified mod-one adapter. This is REAL source work: the
statement no longer assumes a zeta nonvanishing provider independent
of the exact submitted all-moduli Dirichlet L theorem. -/
theorem PR103_mod_one_zeta_of_exact_candidate
    (hCandidate : PR103DirichletStatement) :
    ExternalPR103ZetaNonvanishing := by
  intro s hs hnotone
  have hpole :
      ¬ ((1 : DirichletCharacter ℂ 1) = 1 ∧ s = 1) := by
    intro hh
    exact hnotone hh.2
  have hz := hCandidate (1 : DirichletCharacter ℂ 1) hs hpole
  simpa only [DirichletCharacter.LFunction_modOne_eq] using hz

/-- Finite Abel is purely algebraic and true over the COMPLEX
coefficient ring, not an imposed arithmetic growth hypothesis. -/
theorem complex_finite_abel (a w : ℕ → ℂ) (N : ℕ) :
    (∑ j ∈ Finset.range N, a (j + 1) * w (j + 1)) =
      (∑ j ∈ Finset.range N, a (j + 1)) * w (N + 1) +
      ∑ k ∈ Finset.range N,
        (∑ j ∈ Finset.range (k + 1), a (j + 1)) *
          (w (k + 1) - w (k + 2)) := by
  induction N with
  | zero =>
      simp
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      simp only [Finset.sum_range_succ]
      ring

/-- The ACTUAL original integer Mobius Dirichlet partial sum.
All zero squareful coefficients are retained. -/
def complexOriginalMertensPrefix (N : ℕ) : ℂ :=
  ∑ j ∈ Finset.range N, (moebiusReal (j + 1) : ℂ)

def originalComplexMobiusDirichlet (s : ℂ) (N : ℕ) : ℂ :=
  ∑ j ∈ Finset.range N,
    (moebiusReal (j + 1) : ℂ) * ((j + 1 : ℕ) : ℂ) ^ (-s)

/-- A genuine finite source bridge on the path to Perron:
no asymptotic bound, analytic continuation or zero-free theorem
is silently inferred from this finite identity. -/
theorem originalComplexMobiusDirichlet_abel (s : ℂ) (N : ℕ) :
    originalComplexMobiusDirichlet s N =
      complexOriginalMertensPrefix N * (((N + 1 : ℕ) : ℂ) ^ (-s)) +
      ∑ k ∈ Finset.range N,
        complexOriginalMertensPrefix (k + 1) *
          ((((k + 1 : ℕ) : ℂ) ^ (-s)) -
            (((k + 2 : ℕ) : ℂ) ^ (-s))) := by
  simpa only [originalComplexMobiusDirichlet,
    complexOriginalMertensPrefix] using
      complex_finite_abel
        (fun n => (moebiusReal n : ℂ))
        (fun n => (n : ℂ) ^ (-s)) N

/-- The original COMPLEX finite source is exactly the previously
defined signed REAL Mobius prefix in the Complex scalar channel. -/
theorem complexOriginalMertensPrefix_eq_real (N : ℕ) :
    complexOriginalMertensPrefix N =
      (finiteMertensPrefix N : ℂ) := by
  simp [complexOriginalMertensPrefix, finiteMertensPrefix]

/-- An INTEGER original Mobius power estimate extends to EVERY
REAL cutoff with its unmodified floor convention and no loss in
the power exponent. The missing Perron theorem must produce the
INTEGER premise; this lemma does not postulate it. -/
theorem original_integer_to_real_Mertens_power
    (theta C : ℝ) (htheta : 0 ≤ theta) (hC : 0 ≤ C)
    (hInteger : ∀ N : ℕ, 1 ≤ N →
        |finiteMertensPrefix N| ≤ C * (N : ℝ) ^ theta) :
    ∀ x : ℝ, 1 ≤ x →
      |mertensPrefix x| ≤ C * x ^ theta := by
  intro x hx
  let N : ℕ := ⌊x⌋₊
  have hxnonneg : 0 ≤ x := by linarith
  have hN : 1 ≤ N := Nat.le_floor hx
  have hfloor : (N : ℝ) ≤ x := Nat.floor_le hxnonneg
  have hpow : (N : ℝ) ^ theta ≤ x ^ theta :=
    Real.rpow_le_rpow (Nat.cast_nonneg N) hfloor htheta
  have hsource : finiteMertensPrefix N = mertensPrefix x := by
    rw [finiteMertensPrefix_eq_source]
    simp [mertensPrefix, N]
  calc
    |mertensPrefix x| = |finiteMertensPrefix N| := by rw [hsource]
    _ ≤ C * (N : ℝ) ^ theta := hInteger N hN
    _ ≤ C * x ^ theta :=
      mul_le_mul_of_nonneg_left hpow hC

/-- Elementary real exponential integral, with explicit nonzero
parameter, proved via the pinned interval integral FTC. -/
private theorem integral_exp_scaled (rho a b : ℝ) (hrho : rho ≠ 0) :
    (∫ u in a..b, Real.exp (rho * u)) =
      (Real.exp (rho * b) - Real.exp (rho * a)) / rho := by
  have hd (u : ℝ) :
      HasDerivAt (fun t : ℝ => Real.exp (rho * t) / rho)
        (Real.exp (rho * u)) u := by
    convert (((hasDerivAt_id u).const_mul rho).exp.div_const rho) using 1 <;>
      (try rfl)
    dsimp only [id_eq, Pi.smul_apply, smul_eq_mul]
    field_simp [hrho]
  have hi : IntervalIntegrable
      (fun u : ℝ => Real.exp (rho * u)) volume a b :=
    (Real.continuous_exp.comp
      (continuous_const.mul continuous_id)).intervalIntegrable a b
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun u _ => hd u) hi]
  ring

/-- This is the previously UNPROVED real calculus gate, now supplied
with a concrete SOURCE-EXACT Lean proof body. Its velocity integrability
and primitive continuity are EXISTING grwtsk mathematical declarations:
pickupVelocity_intervalIntegrable and wholePickup_continuous. -/
theorem pickupVelocityPowerEnergyTransfer_source_proof :
    PickupVelocityPowerEnergyTransfer := by
  intro rho C hrho hC hVelocity T hT
  have hFrac : 0 ≤ C / rho := div_nonneg hC hrho.le
  have hF (t : ℝ) (ht : 0 ≤ t) :
      |wholePickup t| ≤ (C / rho) * Real.exp (rho * t) := by
    have hAbs :
        |∫ u in (0 : ℝ)..t, pickupVelocity u| ≤
          ∫ u in (0 : ℝ)..t, |pickupVelocity u| :=
      intervalIntegral.abs_integral_le_integral_abs ht
    have hUpperInt : IntervalIntegrable
        (fun u : ℝ => C * Real.exp (rho * u))
        volume 0 t :=
      (continuous_const.mul
        (Real.continuous_exp.comp
          (continuous_const.mul continuous_id))).intervalIntegrable 0 t
    have hMono :
        (∫ u in (0 : ℝ)..t, |pickupVelocity u|) ≤
          ∫ u in (0 : ℝ)..t, C * Real.exp (rho * u) := by
      apply intervalIntegral.integral_mono_on ht
        (pickupVelocity_intervalIntegrable 0 t).abs hUpperInt
      intro u hu
      exact hVelocity u hu.1
    have hEval :
        (∫ u in (0 : ℝ)..t, C * Real.exp (rho * u)) =
          (C / rho) * (Real.exp (rho * t) - 1) := by
      rw [intervalIntegral.integral_const_mul,
        integral_exp_scaled rho 0 t (ne_of_gt hrho)]
      simp only [mul_zero, Real.exp_zero]
      ring
    calc
      |wholePickup t| =
          |∫ u in (0 : ℝ)..t, pickupVelocity u| := rfl
      _ ≤ ∫ u in (0 : ℝ)..t, |pickupVelocity u| := hAbs
      _ ≤ ∫ u in (0 : ℝ)..t, C * Real.exp (rho * u) := hMono
      _ = (C / rho) * (Real.exp (rho * t) - 1) := hEval
      _ ≤ (C / rho) * Real.exp (rho * t) := by
        nlinarith
  let A : ℝ := C / rho
  have hSq (u : ℝ) (hu : 0 ≤ u) :
      wholePickup u ^ 2 ≤ A ^ 2 * Real.exp ((2 * rho) * u) := by
    have h := hF u hu
    have hA : 0 ≤ A * Real.exp (rho * u) :=
      mul_nonneg hFrac (Real.exp_pos _).le
    have hq : |wholePickup u| ^ 2 ≤
        (A * Real.exp (rho * u)) ^ 2 :=
      (sq_le_sq₀ (abs_nonneg _) hA).mpr (by simpa only [A] using h)
    calc
      wholePickup u ^ 2 = |wholePickup u| ^ 2 := by rw [sq_abs]
      _ ≤ (A * Real.exp (rho * u)) ^ 2 := hq
      _ = A ^ 2 * Real.exp ((2 * rho) * u) := by
        have hExpSq :
            (Real.exp (rho * u)) ^ 2 =
              Real.exp ((2 * rho) * u) := by
          rw [pow_two, ← Real.exp_add]
          congr 1
          ring
        calc
          (A * Real.exp (rho * u)) ^ 2 =
              A ^ 2 * (Real.exp (rho * u)) ^ 2 := by ring
          _ = A ^ 2 * Real.exp ((2 * rho) * u) := by rw [hExpSq]
  have hUpperCont :
      Continuous (fun u : ℝ =>
        A ^ 2 * Real.exp ((2 * rho) * u)) := by
    fun_prop
  have hSet :
      (∫ u in Icc (0 : ℝ) T, wholePickup u ^ 2) ≤
        ∫ u in Icc (0 : ℝ) T,
          A ^ 2 * Real.exp ((2 * rho) * u) := by
    apply setIntegral_mono_on
      (wholePickup_continuous.pow 2).integrableOn_Icc
      hUpperCont.integrableOn_Icc measurableSet_Icc
    intro u hu
    exact hSq u hu.1
  have hEval :
      (∫ u in (0 : ℝ)..T,
        A ^ 2 * Real.exp ((2 * rho) * u)) =
      (A ^ 2 / (2 * rho)) *
        (Real.exp ((2 * rho) * T) - 1) := by
    rw [intervalIntegral.integral_const_mul,
      integral_exp_scaled (2 * rho) 0 T (by linarith)]
    simp only [mul_zero, Real.exp_zero]
    ring
  have hCoeff : A ^ 2 / (2 * rho) =
      C ^ 2 / (2 * rho ^ 3) := by
    dsimp [A]
    field_simp [ne_of_gt hrho]
    ring
  have hCoeffNonneg : 0 ≤ A ^ 2 / (2 * rho) := by
    positivity
  rw [integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le hT] at hSet
  calc
    pickupEnergy T ≤
        ∫ u in (0 : ℝ)..T,
          A ^ 2 * Real.exp ((2 * rho) * u) := by
      exact hSet
    _ = (A ^ 2 / (2 * rho)) *
        (Real.exp ((2 * rho) * T) - 1) := hEval
    _ ≤ (A ^ 2 / (2 * rho)) *
        Real.exp ((2 * rho) * T) := by
      nlinarith
    _ = (C ^ 2 / (2 * rho ^ 3)) *
        Real.exp ((2 * rho) * T) := by
      rw [hCoeff]

/-- Exact quadratic Taylor lower bound proves BOTH scalar absorption
inequalities used to pay the true original geometric exclusions. -/
theorem polynomialExponentialAbsorption_source_proof :
    ∀ a t : ℝ, 0 < a → 0 ≤ t →
      t ≤ Real.exp (a * t) / a ∧
      t ^ 2 ≤ 2 * Real.exp (a * t) / a ^ 2 := by
  intro a t ha ht
  have hx : 0 ≤ a * t := mul_nonneg ha.le ht
  have hTaylor := Real.quadratic_le_exp_of_nonneg hx
  constructor
  · apply (le_div_iff₀ ha).2
    nlinarith [sq_nonneg (a * t)]
  · apply (le_div_iff₀ (sq_pos_of_pos ha)).2
    nlinarith

end GRWTSK.NumberTheory.Moebius.PR103ClosureAndCausalBridges
