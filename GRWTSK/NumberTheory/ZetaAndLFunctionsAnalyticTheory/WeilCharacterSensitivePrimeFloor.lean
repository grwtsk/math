/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFullFrobeniusWindowReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveAndSpectralDiffusers
import Mathlib.Tactic

/-!
# Character-sensitive Weil prime mass and a source-exact lower comparison

Source inspected at grwtsk/math@445401c9714cafb94ff619d71be0195f017ac4bc:
  FullFrobeniusWindowReturn, blob fd9a80041216731566c85f009549a64760fce2ef;
  SourcePrimeCorrelation, blob 6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6;
  CharacterWeilWindowBounds, blob 668ff53ae7c8a905ef5b6d827517ba8cb1142558;
  WeilConductorFrontier, blob ac9bf37f07ef22d7ca75b918baeea3161df028b7;
  PrimitiveAndSpectralDiffusion, blob f2013ef97e19e92369c5be015d8cb7546abf8cad.
  Pinned Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.

The consuming target is the ACTUAL
  DirichletStageChain.PrimitiveStageLower chi primitive nonprincipal j
and the complete arithmetic source
  WeilQuadraticForm.primitiveArithmeticValue chi primitive nonprincipal T f.
For native modulus N and original DirichletCharacter chi, define
  M_chi(T) = 2 * sum_{q in activePrimePowers T} primeWeight(q) * norm(chi q).
This is a character-sensitive, finite, nonnegative prime mass. The
original activePrimePowers T includes EVERY integer in the strict
cutoff; the von Mangoldt weight and character norm automatically
remove non-prime-powers and ramified terms, respectively. This
does NOT replace the source sum with a new inventory.

For the EXACT source correlation C_f(r) = integral conj(f(t))*f(t+r),
Cauchy--Schwarz and translation invariance give
  norm C_f(log q) <= SourcePrimeCorrelation.energy f.
Consequently:
  |fullProjectedWindow chi T C_f| <= M_chi(T)*energy f,
  M_chi(T) <= LowSchur.primeMass T.
Unlike the prior conductor-independent prime mass, M_chi excludes the
native zero-character sectors, so the inequality may be strict.

The original archimedean gamma jump integral is nonnegative when it
is integrable, yielding the ACTUAL conditional coercive lower bound
  primitiveArithmeticValue chi T f
    >= (gammaConstant N (gammaParity chi) - M_chi(T))*energy f.
This is more specific than replacing the prime term by the larger
universal mass. If M_chi(T) <= gammaConstant N (gammaParity chi),
the actual primitive source is nonnegative for this T and admissible f.
At an individual stage j it suffices for the ORIGINAL
PrimitiveStageLower that
  M_chi(j+1) <= gammaConstant N (gammaParity chi) + (1/2)^j.
The bounded window and j are NOT removed; no all-stage premise is
proven. Since M_chi(T) grows with T, this scalar bound alone does not
discharge all small-conductor stages or prove Dirichlet GRH.

The finite source-preserving Involution.heatComplex does NOT create
new positivity; the SAME lower bound is transported by
PrimitiveAndSpectralDiffusion.completePrimitive_return. No norm of
the heated coordinates is silently identified with physical L2.

Hostile finite check at T=1 (exp 2 cutoff): original primeMass is
approximately 5.8524684, whereas the unit-character phase mass is
4.5839002 at N=3, and 3.1443751 at N=15. The missing terms are
precisely the ramified p=3, and p=3,5, respectively. These approximate
values are illustrative, not a certified source sign.

Mathematical source: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1 (3.19)--(3.20);
the native primitive character comparison is Fiorilli--Miller
(2012), eq. (2.2), as recorded in OddRootProjection.
The proof is classical Cauchy--Schwarz and gamma-shift positivity,
not a claim of theorem novelty.

No zeta pole, conductor, gamma parity, finite signed residual,
all-sector GRH statement, spectral gap or null-geodesic predicate is
replaced. This quantitative sufficient bound does not prove RH or
Dirichlet GRH. Lean/kernel/axiom/independent review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CharacterSensitiveFrobeniusFloor

open LowSchur CharacterWindow SourcePrimeCorrelation OddRootProjection
open FullFrobeniusWindowReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveAndSpectralDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.TypedSourceDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.FiniteInvariantDiffusion
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

variable {N : ℕ} [NeZero N]

/-- The source-weighted magnitude of exactly the native character phases.
It is a FINITE quantity for each literal support window. -/
def characterPrimeMass (chi : DirichletCharacter ℂ N) (T : ℝ) : ℝ :=
  2 * ∑ q ∈ activePrimePowers T, primeWeight q * ‖chi q‖

theorem characterPrimeMass_nonneg
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    0 ≤ characterPrimeMass chi T := by
  unfold characterPrimeMass
  exact mul_nonneg (by norm_num)
    (Finset.sum_nonneg (fun q _ =>
      mul_nonneg (primeWeight_nonneg q) (norm_nonneg _)))

/-- The actual character loses ramified terms, so this cannot exceed
the original modulus-independent absolute prime-mass allowance. -/
theorem characterPrimeMass_le_primeMass
    (chi : DirichletCharacter ℂ N) (T : ℝ) :
    characterPrimeMass chi T ≤ primeMass T := by
  unfold characterPrimeMass primeMass
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  apply Finset.sum_le_sum
  intro q hq
  simpa only [mul_one] using
    (mul_le_mul_of_nonneg_left (chi.norm_le_one q) (primeWeight_nonneg q))

/-- Exact termwise bound: retain the original complex conjugation and
its full phase magnitude BEFORE taking a real absolute value. -/
theorem abs_twistedPrime_le_characterPrimeMass
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    (C : ℕ → ℂ) (E : ℝ)
    (hC : ∀ q ∈ activePrimePowers T, ‖C q‖ ≤ E) :
    |twistedPrime T chi C| ≤ characterPrimeMass chi T * E := by
  have hterm (q : ℕ) (hq : q ∈ activePrimePowers T) :
      |(conj (chi q) * C q).re| ≤ ‖chi q‖ * E := by
    calc
      _ ≤ ‖conj (chi q) * C q‖ := Complex.abs_re_le_norm _
      _ = ‖chi q‖ * ‖C q‖ := by rw [norm_mul]; simp
      _ ≤ ‖chi q‖ * E :=
        mul_le_mul_of_nonneg_left (hC q hq) (norm_nonneg _)
  calc
    |twistedPrime T chi C| =
        2 * |∑ q ∈ activePrimePowers T,
          primeWeight q * (conj (chi q) * C q).re| := by
            rw [twistedPrime, abs_mul]
            norm_num
    _ ≤ 2 * ∑ q ∈ activePrimePowers T,
        |primeWeight q * (conj (chi q) * C q).re| :=
          mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ 2 * ∑ q ∈ activePrimePowers T,
        primeWeight q * (‖chi q‖ * E) := by
          apply mul_le_mul_of_nonneg_left _ (by norm_num)
          apply Finset.sum_le_sum
          intro q hq
          rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q)]
          exact mul_le_mul_of_nonneg_left (hterm q hq) (primeWeight_nonneg q)
    _ = characterPrimeMass chi T * E := by
          unfold characterPrimeMass
          simp_rw [← mul_assoc]
          rw [← Finset.sum_mul]
          ring

/-- This strengthens the EXISTING absolute prime bound on the SAME
whole-line L2 function and native autocorrelation, not a finite sample. -/
theorem abs_twistedPrime_le_characterPrimeMass_energy
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    |twistedPrime T chi
      (fun q => correlation f (Real.log (q : ℝ)))| ≤
        characterPrimeMass chi T * energy f := by
  exact abs_twistedPrime_le_characterPrimeMass chi T
    (fun q => correlation f (Real.log (q : ℝ))) (energy f)
    (fun q hq => norm_correlation_le_energy hf (Real.log (q : ℝ)))

/-- The full source-returning character-projector expression inherits
the bound with NO changes to cutoff, phases or weights. -/
theorem abs_fullProjectedWindow_le_characterPrimeMass_energy
    (chi : DirichletCharacter ℂ N) (T : ℝ)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) :
    |fullProjectedWindow N chi T
        (fun q => correlation f (Real.log (q : ℝ)))| ≤
      characterPrimeMass chi T * energy f := by
  rw [fullProjectedWindow_eq_twistedPrime]
  exact abs_twistedPrime_le_characterPrimeMass_energy chi T hf

private theorem sourceEnergy_nonneg (f : ℝ → ℂ) :
    0 ≤ energy f :=
  integral_nonneg (fun _ => sq_nonneg _)

private theorem gammaShiftDensity_nonneg
    (a : ℕ) (f : ℝ → ℂ) {r : ℝ} (hr : 0 < r) :
    0 ≤ gammaCorrectionDensity a f r := by
  unfold gammaCorrectionDensity parityKernel
  have h : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  exact mul_nonneg
    (div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr h.le))
    (sourceEnergy_nonneg _)

/-- Positivity is proved ONLY for the existing archimedean density
on the exact integration domain, with its integrability hypothesis. -/
theorem gammaShiftIntegral_nonneg (a : ℕ) (f : ℝ → ℂ)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Set.Ioi 0)) :
    0 ≤ ∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity a f r := by
  have hzero : Integrable (fun _ : ℝ => (0 : ℝ))
      (volume.restrict (Set.Ioi 0)) := integrable_zero _ _ _
  simpa using integral_mono_ae hzero harch
    ((ae_restrict_mem measurableSet_Ioi).mono
      (fun r hr => gammaShiftDensity_nonneg a f hr))

/-- The ACTUAL primitive signed Weil arithmetic value has a
character-sensitive lower estimate; no changed test normalization,
conductor substitute or gamma/pole cancellation is introduced. -/
theorem primitiveArithmeticValue_ge_characterMass
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
        characterPrimeMass chi T) * energy f ≤
      primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  have hprime :=
    (le_abs_self _).trans
      (abs_twistedPrime_le_characterPrimeMass_energy chi T hf)
  have hgamma := gammaShiftIntegral_nonneg (gammaParity chi) f harch
  unfold primitiveArithmeticValue
  nlinarith

/-- The same genuine lower estimate applies to the full
character-PROJECTED Frobenius return, because the return is exact. -/
theorem projectedPrimitive_ge_characterMass
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
        characterPrimeMass chi T) * energy f ≤
      projectedPrimitiveArithmeticValue N chi hprimitive hnonprincipal T f := by
  rw [projectedPrimitiveArithmeticValue_eq_source]
  exact primitiveArithmeticValue_ge_characterMass chi
    hprimitive hnonprincipal T hf harch

/-- A source-faithful SUFFICIENT criterion for positivity at ONE
given window T. This numerical inequality is not declared true. -/
theorem primitiveArithmeticValue_nonneg_of_characterMass
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) f) (Set.Ioi 0))
    (hmargin : characterPrimeMass chi T ≤
      gammaConstant N (gammaParity chi)) :
    0 ≤ primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  have hcoeff : 0 ≤
      gammaConstant N (gammaParity chi) - characterPrimeMass chi T := by
    linarith
  exact (mul_nonneg hcoeff (sourceEnergy_nonneg f)).trans
    (primitiveArithmeticValue_ge_characterMass chi
      hprimitive hnonprincipal T hf harch)

/-- A concrete INDIVIDUAL original Dirichlet stage is supplied by a
sharper windowwise coefficient inequality. This does not supply the
required inequality for every j or every conductor. -/
theorem primitiveStageLower_of_characterMass
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ)
    (hmargin : characterPrimeMass chi ((j : ℝ) + 1) ≤
      gammaConstant N (gammaParity chi) + (1 / 2 : ℝ) ^ j) :
    PrimitiveStageLower chi hprimitive hnonprincipal j := by
  intro f hf
  rcases hf with ⟨hT, hdiff, hcompact, hodd, hLp, hsupport, harch⟩
  have hE : 0 ≤ energy (liftReal f) := sourceEnergy_nonneg _
  have hcoeff :
      -((1 / 2 : ℝ) ^ j) ≤
      gammaConstant N (gammaParity chi) -
        characterPrimeMass chi ((j : ℝ) + 1) := by
    linarith
  exact (mul_le_mul_of_nonneg_right hcoeff hE).trans
    (primitiveArithmeticValue_ge_characterMass chi
      hprimitive hnonprincipal ((j : ℝ) + 1) hLp harch)

/-- The actual finite complex-coordinate diffuser changes coordinates
reversibly, NOT the signed source lower inequality. No heated
coefficient norm is equated with the physical whole-line L2 norm. -/
theorem completePrimitiveHeated_ge_characterMass
    {M : ℕ} (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) (v : Fin M → ℂ)
    (hf : MemLp (complexSineTest T v) 2 volume)
    (harch : IntegrableOn
      (gammaCorrectionDensity (gammaParity chi) (complexSineTest T v))
      (Set.Ioi 0)) :
    (gammaConstant N (gammaParity chi) -
        characterPrimeMass chi T) *
      energy (complexSineTest T v) ≤
      completePrimitiveHeated chi hprimitive hnonprincipal T d
        (d.heatComplex v) := by
  rw [completePrimitive_return]
  exact primitiveArithmeticValue_ge_characterMass chi
    hprimitive hnonprincipal T hf harch

end GRWTSK.NumberTheory.WeilQuadraticForm.CharacterSensitiveFrobeniusFloor
