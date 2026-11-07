/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilTypedSourceDiffusers
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSpectralCertificates

/-!
# Full individual primitive L-source and finite Weil-factor diffusers

The preceding typed module preserves the character-twisted prime term.
This source adds its COMPLETE original primitiveArithmeticValue:
  gammaConstant(q,gammaParity chi) * SourcePrimeCorrelation.energy(f)
  + integral gammaCorrectionDensity(gammaParity chi)(f)
  - CharacterWindow.twistedPrime(T,chi,correlation_f).
No term is omitted and no individual chi phase is replaced by its
real paired average. The physical L2(dt) norm, zero extension,
parity a(chi), primitive conductor and nonprincipal hypothesis are
retained EXACTLY. The finite sine synthesis is complex-valued.
The source return is by inverse diffusion of its coefficients, not
a proof of a global character-sector sign.

For REAL odd finite sine tests, the original DirichletStageChain
Admissible type is retained under inversion exactly. This does not
claim every zero-extended sine polynomial is C2 compact or admissible;
the source type's ContDiff 2 and original support requirements still
must be supplied. No direct implication from a finite matrix to
the completed primitive L-zero divisor is asserted.

The other Weil meaning in the repository is a finite pure Frobenius
factor, WeilSpectralCertificates.factorProduct as. Diffusion does NOT
average its reciprocal roots. Instead its diagonal finite source
operator D_as(v)_i = as[i] * v_i is conjugated by exact inverse heat,
with a proved eigenvector/eigenvalue correspondence for every lambda.
This preserves the actual finite spectrum under similarity, while
identification of factorProduct with a geometric zeta factor, purity,
radius and zero circle remains in the original spectral source scope.

The finite rational Markov heat is not a diffusion of analytic zeros,
not an infinite weighted spectral semigroup, and not countable
branch-coverage heat. The existing finite-rational Lossless codec
and countable coverage tail in WeilTypedSourceDiffusers retain
their original evidence scope.

Source: Connes--Consani--Moscovici arXiv:2511.22755v1; DLMF 25.15;
Fiorilli--Miller (2012) eq. (2.2); Deligne, La conjecture de Weil I
(1974) for independent geometric purity context. No new purity claim.
Compared source pin grwtsk/math@9404b5698d0da5ee97d289a830f76ab75e3ef84f.

SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveAndSpectralDiffusion

open FiniteInvariantDiffusion
open FiniteInvariantDiffusion.Involution
open TypedSourceDiffusion
open DirichletStageChain
open SourcePrimeCorrelation
open GRWTSK.Analysis.GeometricProduct

/-! ## Individual complete primitive nonprincipal Dirichlet source -/

/-- The original entire source, INCLUDING its gamma density, conductor,
parity, physical mass and every signed chi prime-power contribution. -/
def completePrimitiveHeated {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) (w : Fin M → ℂ) : ℝ :=
  primitiveArithmeticValue chi hp hn T
    (complexSineTest T (d.recoverComplex w))

theorem completePrimitive_return {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) (v : Fin M → ℂ) :
    completePrimitiveHeated chi hp hn T d (d.heatComplex v) =
      primitiveArithmeticValue chi hp hn T (complexSineTest T v) := by
  simp only [completePrimitiveHeated, d.recover_heatComplex]

theorem completePrimitive_negative_survives {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) (v : Fin M → ℂ)
    (hneg : primitiveArithmeticValue chi hp hn T
      (complexSineTest T v) < 0) :
    completePrimitiveHeated chi hp hn T d (d.heatComplex v) < 0 := by
  simpa only [completePrimitive_return] using hneg

/-- Entire-source sign equivalence on this finite complex-sine TEST CLASS.
This does not extend the result to arbitrary L2 or C2 tests. -/
theorem completePrimitive_nonneg_iff {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) :
    (∀ w, 0 ≤ completePrimitiveHeated chi hp hn T d w) ↔
      (∀ v, 0 ≤ primitiveArithmeticValue chi hp hn T
        (complexSineTest T v)) := by
  constructor
  · intro h v
    simpa only [completePrimitive_return] using h (d.heatComplex v)
  · intro h w
    exact h (d.recoverComplex w)

/-! ## Original primitive real-odd admissibility and cofinal stage test -/

/-- The full source expression on a REAL finite sine test, with actual
Dirichlet parity, no change from the DirichletStageChain.liftReal type. -/
def realPrimitiveStageHeated {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (j : ℕ) (d : Involution (Fin M)) (w : Fin M → ℝ) : ℝ :=
  primitiveArithmeticValue chi hp hn ((j : ℝ) + 1)
    (liftReal (OddSineForm.finiteSine ((j : ℝ) + 1) (d.recoverReal w)))

theorem realPrimitiveStage_return {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q)
    (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (j : ℕ) (d : Involution (Fin M)) (v : Fin M → ℝ) :
    realPrimitiveStageHeated chi hp hn j d (d.heatReal v) =
      primitiveArithmeticValue chi hp hn ((j : ℝ) + 1)
        (liftReal (OddSineForm.finiteSine ((j : ℝ) + 1) v)) := by
  simp only [realPrimitiveStageHeated, d.recover_heatReal]

/-- No regularity, boundary or gamma-energy premise is generated by heat.
If the ORIGINAL smooth compact odd source test is admissible, then the
test recovered from its diffused coefficients is exactly that test. -/
theorem realPrimitiveAdmissible_return {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ)
    (d : Involution (Fin M)) (v : Fin M → ℝ)
    (hv : Admissible chi T (OddSineForm.finiteSine T v)) :
    Admissible chi T
      (OddSineForm.finiteSine T (d.recoverReal (d.heatReal v))) := by
  simpa only [d.recover_heatReal] using hv

/-! ## Finite pure Frobenius Weil factor: preserve eigenvalues by SIMILARITY,
not by averaging the reciprocal roots or analytic zeros. -/

/-- Same list of actual reciprocal root coefficients as in the existing
WeilSpectralCertificates.factorProduct. This is its diagonal action. -/
def finiteFactorAction (as : List ℂ)
    (v : Fin as.length → ℂ) : Fin as.length → ℂ :=
  fun i => as.get i * v i

def finiteFactorHeated (as : List ℂ)
    (d : Involution (Fin as.length))
    (w : Fin as.length → ℂ) : Fin as.length → ℂ :=
  d.diffusedOperator (finiteFactorAction as) w

theorem finiteFactor_eigen_iff (as : List ℂ)
    (d : Involution (Fin as.length))
    (lambda : ℂ) (v : Fin as.length → ℂ) :
    (finiteFactorAction as v = fun i => lambda * v i) ↔
      (finiteFactorHeated as d (d.heatComplex v) =
        fun i => lambda * d.heatComplex v i) :=
  d.eigenvalue_return (finiteFactorAction as) lambda v

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimitiveAndSpectralDiffusion
