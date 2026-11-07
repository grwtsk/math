/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteInvariantDiffusers
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCofinalHeadAssembly
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilSourcePrimeCorrelation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilWeightedFirstStage

/-!
# Diffusion returns on six genuine Weil source carrier types

1. The literal real zeta odd sine matrix: BOTH signed pole moments retained.
2. Primitive nonprincipal REAL conjugate-pair sine matrices: actual chi,
   conductor, parity, signed prime-power phases, NO pole.
3. INDIVIDUAL complex Dirichlet-character prime correlation: genuine
   antilinear-first L2 correlation with every prime power, no phase loss.
4. Full physical zero-extended zeta source on a finite odd sine test.
5. The weighted theta first-stage physical test f=sigma*u with separate
   physical source and coordinateMass u; never exchange those norms.
6. The original cofinal source-paid finite heads Fin N_j + Unit at
   T_j=j+1, shift beta_j=-2^-j; the auxiliary scalar pole is FIXED.

Every readout applies the EXACT inverse of the rational Markov Euler
diffuser before calling the unchanged original source. Consequently
the source-return and all-vector sign equivalence are exact, even for
indefinite matrices. No gamma kernel, prime inventory or analytic
zero is altered. The explicit cofinal consumer uses the EXISTING
rational Gram check and the entire source-paid finite-head certificate
to return to the original StageLower j. It does not construct such a
certificate. In particular T=2 positivity is still open.

The finite Frobenius/Weil reciprocal-root factor is protected by the
isospectral similarity proof in WeilFiniteInvariantDiffusers:
one must transport its underlying operator, not smooth the reciprocal
roots themselves. The completed zeta/Dirichlet zero divisor and the
infinite-dimensional theta semigroup have no exact finite Euler-code
replacement. No unproved analytic limit is inferred.

The representable finite source/sector/conductor/parity/support,
normalization and error records reuse rationalStageRecordCodec.
The exact code roundtrip preserves ALL supplied finite rational data
and the source/role token. The semantic identification of that token
with a true L-function is a separate proof, not compression magic.
Countable coverage heat has complete tail 2^-J; its positive weights
do not certify signs. This is not arithmetic Euler sign heat and is
not the original analytic spectral heat.

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)-(3.20); Fiorilli and Miller, Low-lying
zeros of Dirichlet L-functions (2012), (2.2).
Source base: grwtsk/math@9404b5698d0da5ee97d289a830f76ab75e3ef84f.
Analytical source, parity, domain and root returns retain their
recorded verification status. No new universal sign is claimed.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open Matrix MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TypedSourceDiffusion

open FiniteInvariantDiffusion
open FiniteInvariantDiffusion.Involution
open OddRootProjection OddSineForm OddLiteralWindow
open OddLiteralCofinal
open OddLiteralCofinal.CofinalHighComplement
open OddLiteralCofinal.CofinalHeadAssembly
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurDirectLowerBound
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory
open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage

/-! ## Original full zeta and primitive character-pair sine matrices -/

def zetaSineHeated {M : ℕ} (T : ℝ) (d : Involution (Fin M))
    (w : Fin M → ℝ) : ℝ :=
  d.diffusedRealQuadratic (zetaSineMatrix T M) w

theorem zetaSine_return {M : ℕ} (T : ℝ) (d : Involution (Fin M))
    (v : Fin M → ℝ) :
    zetaSineHeated T d (d.heatReal v) =
      quadratic (zetaSineMatrix T M) v :=
  d.realQuadratic_return (zetaSineMatrix T M) v

theorem zetaSine_sign_iff {M : ℕ} (T : ℝ) (d : Involution (Fin M)) :
    (∀ w, 0 ≤ zetaSineHeated T d w) ↔
      (∀ v, 0 ≤ quadratic (zetaSineMatrix T M) v) :=
  d.realQuadratic_nonneg_iff (zetaSineMatrix T M)

/-- Original primitive nonprincipal chi and its completed conjugate PAIR:
gammaParity chi, true conductor q, literal signed weights, no pole. -/
def primitivePairSineHeated {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) (w : Fin M → ℝ) : ℝ :=
  d.diffusedRealQuadratic (primitivePairSineMatrix chi hp hn T M) w

theorem primitivePairSine_return {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) (v : Fin M → ℝ) :
    primitivePairSineHeated chi hp hn T d (d.heatReal v) =
      quadratic (primitivePairSineMatrix chi hp hn T M) v :=
  d.realQuadratic_return (primitivePairSineMatrix chi hp hn T M) v

theorem primitivePairSine_sign_iff {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (d : Involution (Fin M)) :
    (∀ w, 0 ≤ primitivePairSineHeated chi hp hn T d w) ↔
      (∀ v, 0 ≤ quadratic (primitivePairSineMatrix chi hp hn T M) v) :=
  d.realQuadratic_nonneg_iff (primitivePairSineMatrix chi hp hn T M)

/-! ## Original UNPAIRED complex twisted prime source -/

/-- Actual complex sine synthesis with the original zero-extension basis. -/
def complexSineTest {M : ℕ} (T : ℝ)
    (v : Fin M → ℂ) (t : ℝ) : ℂ :=
  ∑ i, v i * (zeroExtendedSine T (i.val + 1) t : ℂ)

/-- Same individual Dirichlet character and complete signed prime term;
its L2 correlation is conjugate-linear in the first factor. -/
def individualTwistedPrime {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ) (v : Fin M → ℂ) : ℝ :=
  CharacterWindow.twistedPrime T chi
    (fun n => SourcePrimeCorrelation.correlation
      (complexSineTest T v) (Real.log (n : ℝ)))

def individualTwistedPrimeHeated {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ)
    (d : Involution (Fin M)) (w : Fin M → ℂ) : ℝ :=
  individualTwistedPrime chi T (d.recoverComplex w)

theorem individualTwistedPrime_return {q M : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (T : ℝ)
    (d : Involution (Fin M)) (v : Fin M → ℂ) :
    individualTwistedPrimeHeated chi T d (d.heatComplex v) =
      individualTwistedPrime chi T v := by
  simp only [individualTwistedPrimeHeated, d.recover_heatComplex]

/-! ## Original full physical and weighted-test sources -/

/-- The literal pole-inclusive source, not only its finite sine matrix. -/
def physicalZetaFiniteValue {M : ℕ} (T beta : ℝ)
    (v : Fin M → ℝ) : ℝ :=
  shiftedOddWeilEnergy T beta (finiteSine T v)

def physicalZetaHeated {M : ℕ} (T beta : ℝ)
    (d : Involution (Fin M)) (w : Fin M → ℝ) : ℝ :=
  physicalZetaFiniteValue T beta (d.recoverReal w)

theorem physicalZeta_return {M : ℕ} (T beta : ℝ)
    (d : Involution (Fin M)) (v : Fin M → ℝ) :
    physicalZetaHeated T beta d (d.heatReal v) =
      physicalZetaFiniteValue T beta v := by
  simp only [physicalZetaHeated, d.recover_heatReal]

/-- The theta-coordinate function u is finite-sine synthesized first.
The original physical test is sigma*u and keeps its source normalization. -/
def weightedPhysicalValue {M : ℕ} (sigma : ℝ → ℝ)
    (T : ℝ) (u : Fin M → ℝ) : ℝ :=
  shiftedOddWeilEnergy T 0 (physicalTest sigma (finiteSine T u))

def weightedPhysicalHeated {M : ℕ} (sigma : ℝ → ℝ)
    (T : ℝ) (d : Involution (Fin M)) (w : Fin M → ℝ) : ℝ :=
  weightedPhysicalValue sigma T (d.recoverReal w)

theorem weightedPhysical_return {M : ℕ} (sigma : ℝ → ℝ)
    (T : ℝ) (d : Involution (Fin M)) (u : Fin M → ℝ) :
    weightedPhysicalHeated sigma T d (d.heatReal u) =
      weightedPhysicalValue sigma T u := by
  simp only [weightedPhysicalHeated, d.recover_heatReal]

def weightedCoordinateMassHeated {M : ℕ} (T : ℝ)
    (d : Involution (Fin M)) (w : Fin M → ℝ) : ℝ :=
  coordinateMass (finiteSine T (d.recoverReal w))

theorem weightedCoordinateMass_return {M : ℕ} (T : ℝ)
    (d : Involution (Fin M)) (u : Fin M → ℝ) :
    weightedCoordinateMassHeated T d (d.heatReal u) =
      coordinateMass (finiteSine T u) := by
  simp only [weightedCoordinateMassHeated, d.recover_heatReal]

/-! ## Source-paid cofinal bordered heads with a separate scalar pole -/

def cofinalHeadHeated (j : ℕ)
    (d : Involution (Fin (stageHighIndex j)))
    (A : Matrix (HeadIndex j) (HeadIndex j) ℝ)
    (w : HeadIndex j → ℝ) : ℝ :=
  d.withPole.diffusedRealQuadratic A w

theorem cofinalHead_pole_fixed (j : ℕ)
    (d : Involution (Fin (stageHighIndex j))) (v : HeadIndex j → ℝ) :
    d.withPole.heatReal v (.inr ()) = v (.inr ()) := by
  change (3 * v (.inr ()) + v (.inr ())) / 4 = v (.inr ())
  ring

theorem cofinalHead_source_return (j : ℕ)
    (d : Involution (Fin (stageHighIndex j)))
    (A : Matrix (HeadIndex j) (HeadIndex j) ℝ)
    (v : HeadIndex j → ℝ) :
    cofinalHeadHeated j d A (d.withPole.heatReal v) =
      quadratic A v :=
  d.withPole.realQuadratic_return A v

theorem cofinalHead_sign_iff (j : ℕ)
    (d : Involution (Fin (stageHighIndex j)))
    (A : Matrix (HeadIndex j) (HeadIndex j) ℝ) :
    (∀ w, 0 ≤ cofinalHeadHeated j d A w) ↔
      (∀ v, 0 ≤ quadratic A v) :=
  d.withPole.realQuadratic_nonneg_iff A

/-- Use the genuine Boolean Gram checker; a fake positive heat packet
with no source-bound certificate cannot inhabit this hypothesis. -/
theorem checked_cofinal_head_heat_nonneg
    {j M L J : ℕ} {nu : Type*} [Fintype nu]
    (cert : StageHeadCertificate j M L J nu)
    (d : Involution (Fin (stageHighIndex j))) :
    ∀ w, 0 ≤ cofinalHeadHeated j d
      (fun i k => (cert.lower i k : ℝ)) w := by
  intro w
  unfold cofinalHeadHeated
  exact checked_rational_matrix_nonneg cert.lower cert.sign
    cert.sign_checked (d.withPole.recoverReal w)

/-- Source connection: the ORIGINAL pole-inclusive StageLower j follows
from the same exact Gram check, source-paid head and complete high floor.
This theorem does NOT assert that the needed cert exists. -/
theorem stageLower_of_diffused_source
    {j M L J : ℕ} {nu : Type*} [Fintype nu]
    (cert : StageHeadCertificate j M L J nu)
    (d : Involution (Fin (stageHighIndex j))) :
    StageLower j := by
  have hHeat := checked_cofinal_head_heat_nonneg cert d
  have hOriginal := (cofinalHead_sign_iff j d
    (fun i k => (cert.lower i k : ℝ))).mp hHeat
  intro f hf hfm hfo hfs henergy
  simpa [stageRadius, stageShift] using
    (shiftedOddWeilEnergy_nonneg_of_positive_lower
      cert.hNM cert.hML cert.hL cert.hLJ
      (stageRadius j) (stageRadius_pos j)
      (stageShift j) cert.s (1 / 5 : ℝ) cert.hs
      (by norm_num) (cofinal_highFloor j)
      cert.trial cert.trial_low (fun i k => (cert.lower i k : ℝ))
      hOriginal cert.source hf hfm hfo hfs henergy)

/-! ## Exact dependent finite record and separate exhaustive coverage -/

def typedWeilRecordCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

theorem typedWeilRecord_roundtrip
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    typedWeilRecordCodec.decode (typedWeilRecordCodec.encode record) =
      some record :=
  typedWeilRecordCodec.roundtrip record

theorem typedWeilRecord_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n)
    (record : Sigma (fun _ : List ℕ => List ℚ)) :
    ∃ k, Encodable.decode k = some record ∧
      0 < stageCoverageStep x k :=
  every_representable_branch_covered hx hm record

theorem typedWeil_unobserved_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) =
      (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.TypedSourceDiffusion
