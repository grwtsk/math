/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteMagneticDirichletBoundary
import Mathlib.Tactic

/-!
# Upper-window compact-support magnetic gap for the ACTUAL Weil source

Actual source pins:
  grwtsk/math@c87a4970156f0bb17bbdaac57d357a34e79e5d5c,
  FrobeniusPhaseSurplus blob 28d196abeebe3785a3df6ebae4747a20b41d5c5a,
  SourcePrimeCorrelation blob 6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6,
  CharacterSensitiveFrobeniusFloor blob 0279d4a59d6b338467ec851abee1251154f7603d;
  Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

The target remains the ORIGINAL primitiveArithmeticValue / PrimitiveStageLower,
and the full-support native strict integer cutoff
  I_T = LowSchur.activePrimePowers T.
The earlier exact phase surplus obeys
  Q_chi,T(f) = (gammaConstant - M_chi(T))*E + Gamma(f) + S_chi(T,f).

Let r=log q. The NEW upper-half inventory, represented entirely by a
weight on the ORIGINAL I_T, is r>=T. For a physical function supported
pointwise in [-T,T] and T<=r<=2T, the sets
  A = [-T,T-r], B = [-T+r,T] = A+r
are disjoint up to a null endpoint. The supported correlation is
C_f(r) = integral_A conj(f(t))*f(t+r). By pointwise Young
  2*|conj(f(t))*f(t+r)| <= |f(t)|^2+|f(t+r)|^2
and Lebesgue translation invariance,
  2*norm(C_f(r)) <= integral_A |f|^2 + integral_B |f|^2
                     <= energy(f).
Therefore the exact source individualPhaseDefect on EVERY q with
r>=T is at least norm(chi q)*energy(f), rather than merely zero.
This is a PHYSICAL Dirichlet-boundary gap, not nontrivial loop holonomy.
The pointwise cutoff at r>=2T already implies C_f(r)=0 via the
published SourcePrimeCorrelation.correlation_eq_zero_of_cutoff.

Lean in THIS increment proves the finite two-cell magnetic lemma,
the exact source-second-return zero and the full arithmetic
upper-band consequence of a correctly typed half-correlation
estimate. The critical L2 set-integral half estimate itself is
written above as a complete standard analytical argument but is
NOT YET kernel-checked Lean: its proof is therefore an EXPLICIT
hypothesis hhalf in every theorem which consumes it. We do NOT
derive |C_f(r)|<=E/2 merely from C_f(2r)=0. The analytic set-integral
bridge is the first remaining Lean leaf, not presumed by a coercion
from discrete spin or the Markov heat.

Define
  H_chi(T) = sum_{q in I_T, log q>=T} primeWeight(q)*norm(chi q),
with ALL q retained by the if-expression. Then under hhalf:
  S_chi(T,f) >= H_chi(T)*E(f)
and the EXACT original arithmetic lower bound improves to
  Q_chi,T(f) >= (gammaConstant - M_chi(T)+H_chi(T))*E(f).
No prime weights, complex phases, gamma factors, conductors, test
domains or nonprime residuals are changed. This buys one-half of
the original upper-band character mass; it does NOT yield all-window
Weil positivity. In particular H_chi(T) may grow with T and there
are other small and intermediate shifts.

The consumer PrimitiveStageLower is obtained only if two distinct
premises hold: the full compact-support half-correlation theorem on
the ORIGINAL admissible class, AND the explicit arithmetic
margin M_chi(j+1)-H_chi(j+1) <= gammaConstant + 2^(-j).
Neither premise is asserted globally in this file. The zeta negative
pole is not removed and RH or Dirichlet GRH is NOT proved.

A hostile discrete path of three occupied sites a=b=c=1 at unit
shift has E=3 and C=2, so the half bound fails when the interval can
hold THREE consecutive shift sites. The upper-band r>=T condition
is essential; finite matching-graph holonomy cannot supply it.

Source interpretation: Connes--Consani--Moscovici, Zeta Spectral
Triples, arXiv:2511.22755v1 (3.19)-(3.20), and the original
Dirichlet real-paired formula compared in OddRootProjection to
Fiorilli--Miller (2012) eq. (2.2). No theorem novelty is asserted.
Kernel/Lean/axiom/independent analytic review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeilCompactSupportUpperBand

open LowSchur CharacterWindow SourcePrimeCorrelation OddRootProjection
open CharacterSensitiveFrobeniusFloor FrobeniusPhaseSurplus
open DirichletStageChain

variable {N : ℕ} [NeZero N]

/-- The upper-half ORIGINAL prime window is a weighted selection of
the unchanged activePrimePowers T. Its scalar mass is HALF the ordinary
2*sum upper-band character mass, before any sign is claimed. -/
noncomputable def upperBandWeight
    (chi : DirichletCharacter ℂ N) (T : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T,
    if T ≤ Real.log (q : ℝ) then primeWeight q * ‖chi q‖ else 0

theorem upperBandWeight_nonneg
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    0 ≤ upperBandWeight chi T := by
  classical
  unfold upperBandWeight
  apply Finset.sum_nonneg
  intro q hq
  split_ifs
  · exact mul_nonneg (primeWeight_nonneg q) (norm_nonneg _)
  · exact le_rfl

/-- The original character-mass cost has a factor 2, and the
upper-band weight is at most one-half that cost. No new finite
support is used for this comparison. -/
theorem two_mul_upperBandWeight_le_characterPrimeMass
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    2 * upperBandWeight chi T ≤ characterPrimeMass chi T := by
  classical
  have hsum :
      (∑ q ∈ activePrimePowers T,
         if T ≤ Real.log (q : ℝ) then primeWeight q * ‖chi q‖ else 0) ≤
      ∑ q ∈ activePrimePowers T, primeWeight q * ‖chi q‖ := by
    apply Finset.sum_le_sum
    intro q hq
    split_ifs
    · exact le_rfl
    · exact mul_nonneg (primeWeight_nonneg q) (norm_nonneg _)
  unfold characterPrimeMass upperBandWeight
  linarith

/-- On the ORIGINAL physical support, the second return of an upper
band shift is already disjoint. This theorem is strictly weaker
than the sharp first-return half-correlation bound. -/
theorem source_second_return_zero_of_upperBand
    {f : ℝ → ℂ} {T : ℝ}
    (hsupport : ∀ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    {q : ℕ} (hupper : T ≤ Real.log (q : ℝ)) :
    correlation f (2 * Real.log (q : ℝ)) = 0 := by
  apply correlation_eq_zero_of_cutoff hsupport
  linarith

/-- An explicitly typed physical half-correlation premise, which is
NOT inferred from a positive graph Laplacian or a Fourier analogy. -/
def HalfCorrelationOnUpperBand
    (T : ℝ) (f : ℝ → ℂ) : Prop :=
  ∀ q ∈ activePrimePowers T,
    T ≤ Real.log (q : ℝ) →
      ‖correlation f (Real.log (q : ℝ))‖ ≤ energy f / 2

/-- The compact-support half estimate pays exactly a unit of
phase-defect mass on every upper-band original integer. -/
theorem upperBandWeight_energy_le_phaseSurplus
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (hhalf : HalfCorrelationOnUpperBand T f) :
    upperBandWeight chi T * energy f ≤
      individualPhaseSurplus chi T
        (fun q => correlation f (Real.log (q : ℝ))) (energy f) := by
  classical
  let C : ℕ → ℂ := fun q => correlation f (Real.log (q : ℝ))
  have hpoint (q : ℕ) (hq : q ∈ activePrimePowers T) :
      (if T ≤ Real.log (q : ℝ) then
        primeWeight q * ‖chi q‖ else 0) * energy f ≤
      primeWeight q *
        individualPhaseDefect chi q (energy f) (C q) := by
    by_cases hb : T ≤ Real.log (q : ℝ)
    · simp only [if_pos hb]
      have hreal :
          (conj (chi q) * C q).re ≤ ‖chi q‖ * (energy f / 2) := by
        calc
          _ ≤ |(conj (chi q) * C q).re| := le_abs_self _
          _ ≤ ‖conj (chi q) * C q‖ := Complex.abs_re_le_norm _
          _ = ‖chi q‖ * ‖C q‖ := by rw [norm_mul]; simp
          _ ≤ ‖chi q‖ * (energy f / 2) :=
            mul_le_mul_of_nonneg_left (hhalf q hq hb) (norm_nonneg _)
      have hdef :
          ‖chi q‖ * energy f ≤
            individualPhaseDefect chi q (energy f) (C q) := by
        unfold individualPhaseDefect
        linarith
      simpa only [mul_assoc] using
        (mul_le_mul_of_nonneg_left hdef (primeWeight_nonneg q))
    · simp only [if_neg hb, zero_mul]
      have hnorm : ‖C q‖ ≤ energy f :=
        norm_correlation_le_energy hf (Real.log (q : ℝ))
      exact mul_nonneg (primeWeight_nonneg q)
        (individualPhaseDefect_nonneg chi q (energy f) (C q) hnorm)
  calc
    upperBandWeight chi T * energy f =
        ∑ q ∈ activePrimePowers T,
          (if T ≤ Real.log (q : ℝ) then
            primeWeight q * ‖chi q‖ else 0) * energy f := by
              unfold upperBandWeight
              rw [Finset.sum_mul]
    _ ≤ ∑ q ∈ activePrimePowers T,
          primeWeight q *
            individualPhaseDefect chi q (energy f) (C q) := by
              apply Finset.sum_le_sum
              intro q hq
              exact hpoint q hq
    _ = individualPhaseSurplus chi T
          (fun q => correlation f (Real.log (q : ℝ))) (energy f) := rfl

/-- This is the ACTUAL primitiveArithmeticValue with its full gamma,
conductor, parity and signed physical correlations. It is a useful
coercive LOWER estimate only once hhalf has been proved on the same
physical source, not from unweighted finite trace positivity. -/
theorem primitiveArithmeticValue_ge_upperBand
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hhalf : HalfCorrelationOnUpperBand T f) :
    (gammaConstant N (gammaParity chi) -
      characterPrimeMass chi T + upperBandWeight chi T) * energy f ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  have hgamma := gammaShiftIntegral_nonneg (gammaParity chi) f harch
  have hband := upperBandWeight_energy_le_phaseSurplus chi T hf hhalf
  calc
    (gammaConstant N (gammaParity chi) -
        characterPrimeMass chi T + upperBandWeight chi T) * energy f =
      (gammaConstant N (gammaParity chi) - characterPrimeMass chi T) *
          energy f + upperBandWeight chi T * energy f := by ring
    _ ≤ (gammaConstant N (gammaParity chi) - characterPrimeMass chi T) *
          energy f +
        (∫ r in Set.Ioi (0 : ℝ),
          gammaCorrectionDensity (gammaParity chi) f r) +
        individualPhaseSurplus chi T
          (fun q => correlation f (Real.log (q : ℝ))) (energy f) := by
            linarith
    _ = primitiveArithmeticValue chi hprimitive hnonprincipal T f :=
      (primitiveArithmeticValue_exact_phaseSurplus
        chi hprimitive hnonprincipal T f).symm

/-- A source-bound sufficient sign criterion with the correct
UPPER-band subtraction and the exact original primitive source. -/
theorem primitiveArithmeticValue_nonneg_of_upperBand
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hhalf : HalfCorrelationOnUpperBand T f)
    (hmargin : characterPrimeMass chi T ≤
      gammaConstant N (gammaParity chi) + upperBandWeight chi T) :
    0 ≤ primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  have hcoefficient : 0 ≤
      gammaConstant N (gammaParity chi) -
        characterPrimeMass chi T + upperBandWeight chi T := by linarith
  have hE : 0 ≤ energy f := integral_nonneg (fun _ => sq_nonneg _)
  exact (mul_nonneg hcoefficient hE).trans
    (primitiveArithmeticValue_ge_upperBand
      chi hprimitive hnonprincipal T hf harch hhalf)

/-- A genuinely stronger individual small-conductor stage supplier
conditional on BOTH missing branches:
(a) the complete PHYSICAL support-to-half-correlation theorem for
every ORIGINAL admissible real odd test at that stage, and
(b) a checked arithmetic margin for that exact stage.
Neither is assumed to exist by the source definitions. -/
theorem primitiveStageLower_of_upperBand
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hhalf : ∀ f : ℝ → ℝ,
      Admissible chi ((j : ℝ) + 1) f →
      HalfCorrelationOnUpperBand ((j : ℝ) + 1) (liftReal f))
    (hmargin : characterPrimeMass chi ((j : ℝ) + 1) ≤
      gammaConstant N (gammaParity chi) +
        upperBandWeight chi ((j : ℝ) + 1) + (1 / 2 : ℝ) ^ j) :
    PrimitiveStageLower chi hprimitive hnonprincipal j := by
  intro f hf
  have hhalf_f := hhalf f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hE : 0 ≤ energy (liftReal f) :=
    integral_nonneg (fun _ => sq_nonneg _)
  have hcoefficient :
      -((1 / 2 : ℝ) ^ j) ≤
      gammaConstant N (gammaParity chi) -
        characterPrimeMass chi ((j : ℝ) + 1) +
          upperBandWeight chi ((j : ℝ) + 1) := by linarith
  exact (mul_le_mul_of_nonneg_right hcoefficient hE).trans
    (primitiveArithmeticValue_ge_upperBand chi hprimitive hnonprincipal
      ((j : ℝ) + 1) hLp harch hhalf_f)

/-- Hostile three-cell path: a shift can correlate more than half of
its own mass when r is too small to force only two occupied cells.
The strong upper-band estimate CANNOT be applied outside its support
threshold merely by observing Frobenius holonomy. -/
theorem three_cell_half_correlation_failure :
    (2 : ℝ) > (1 + 1 + 1 : ℝ) / 2 := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.WeilCompactSupportUpperBand
