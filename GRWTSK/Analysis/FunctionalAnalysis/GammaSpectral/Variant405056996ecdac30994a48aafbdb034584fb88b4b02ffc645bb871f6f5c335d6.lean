-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ConductorOneCharacter.Variantabbd221edc90d961ba15f473790657916dea9b2604c52003657ef29ed27cede5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abbd221edc90d961ba15f473790657916dea9b2604c52003657ef29ed27cede5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ConductorOneCharacter.Variantabbd221edc90d961ba15f473790657916dea9b2604c52003657ef29ed27cede5","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"abbd221edc90d961ba15f473790657916dea9b2604c52003657ef29ed27cede5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Tests/GammaSpectral.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Arithmetic
import DAF.Fold
import DAF.Hilbert
import Mathlib.Tactic.NormNum

/-!
# Gamma, Dirichlet, and finite spectral regression tests

These examples exercise the exact finite constructors and their
kernel-checked laws.  They do not instantiate the analytic unbounded-operator,
global trace-formula, or zero-spectrum capability boundaries.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ConductorOneCharacter.Variantabbd221edc90d961ba15f473790657916dea9b2604c52003657ef29ed27cede5

noncomputable section

namespace DAF.Tests.GammaSpectral

open scoped ComplexConjugate Kronecker

private def conductorOneCharacter : Arithmetic.PrimitiveDirichletCharacter where
  conductor := 1
  conductor_pos := by norm_num
  character := 1
  primitive := DirichletCharacter.isPrimitive_one_level_one
  parity := 0
  parityLaw := by
    rw [MulChar.one_apply (isUnit_of_subsingleton _)]
    norm_num

private def primeTwoSpoke : Arithmetic.FinitePrimeSpoke where
  prime := 2
  primeCertified := Nat.prime_two
  exponent := 1
  exponent_pos := by norm_num
  coefficient := -3

/-! The concrete character inhabits the exact primitive profile. -/

example : conductorOneCharacter.conductor = 1 := rfl

example : conductorOneCharacter.parityExponent < 2 :=
  conductorOneCharacter.parityExponent_lt_two

example : conductorOneCharacter.conjugate.conjugate = conductorOneCharacter :=
  conductorOneCharacter.conjugate_conjugate

example :
    (Arithmetic.PrimitiveDirichletCharacter.CharacterOrbit.mk
      conductorOneCharacter).cardinal = 1 ∨
    (Arithmetic.PrimitiveDirichletCharacter.CharacterOrbit.mk
      conductorOneCharacter).cardinal = 2 :=
  Arithmetic.PrimitiveDirichletCharacter.CharacterOrbit.cardinal_eq_one_or_two _

/-! Exact character normalization and projector laws. -/

example : ‖conductorOneCharacter.characterVector‖ = 1 :=
  conductorOneCharacter.characterVector_norm

example : IsIdempotentElem conductorOneCharacter.characterProjector :=
  conductorOneCharacter.characterProjector_idempotent

example :
    conductorOneCharacter.characterProjector.adjoint =
      conductorOneCharacter.characterProjector :=
  conductorOneCharacter.characterProjector_selfAdjoint

example :
    conductorOneCharacter.characterProjector =
      (Matrix.toEuclideanCLM
        (n := Arithmetic.CharacterIndex conductorOneCharacter) (𝕜 := ℂ))
        (Arithmetic.characterRegularAverageMatrix conductorOneCharacter) :=
  conductorOneCharacter.characterProjector_eq_regularAverage

/-! Exact Gamma nonvanishing, reflection, conjugation, and spindle laws. -/

example (t : ℝ) : Arithmetic.criticalGammaFactor conductorOneCharacter t ≠ 0 :=
  Arithmetic.criticalGammaFactor_ne_zero conductorOneCharacter t

example (t : ℝ) :
    Arithmetic.criticalLine (-t) = star (Arithmetic.criticalLine t) :=
  Arithmetic.criticalLine_neg t

example (t : ℝ) :
    ‖Arithmetic.gammaRotor conductorOneCharacter t‖ = 1 :=
  Arithmetic.gammaRotor_unitary conductorOneCharacter t

example (t : ℝ) :
    (Arithmetic.GammaSpindleDirac conductorOneCharacter t).IsHermitian :=
  Arithmetic.gammaSpindleDirac_selfAdjoint conductorOneCharacter t

example (t : ℝ) :
    Arithmetic.GammaSpindleDirac conductorOneCharacter.conjugate t =
      Arithmetic.GammaSpindleDirac conductorOneCharacter t :=
  Arithmetic.gammaSpindleDirac_characterConjugate conductorOneCharacter t

example (t : ℝ) :
    Arithmetic.GammaSpindleDirac conductorOneCharacter t *
        Arithmetic.GammaSpindleDirac conductorOneCharacter t =
      !![((t ^ 2 +
          (Arithmetic.gammaSpindleProfile conductorOneCharacter t) ^ 2 : ℝ) : ℂ), 0;
         0, ((t ^ 2 +
          (Arithmetic.gammaSpindleProfile conductorOneCharacter t) ^ 2 : ℝ) : ℂ)] :=
  Arithmetic.gammaSpindleDirac_sq conductorOneCharacter t

example (t : ℝ) :
    0 ≤ t ^ 2 +
      (Arithmetic.gammaSpindleProfile conductorOneCharacter t) ^ 2 :=
  Arithmetic.gammaSpindle_square_nonnegative conductorOneCharacter t

example (t : ℝ) :
    Arithmetic.gammaSpindleProfile conductorOneCharacter (-t) =
      Arithmetic.gammaSpindleProfile conductorOneCharacter t :=
  Arithmetic.gammaSpindleProfile_even conductorOneCharacter t

/-! The finite functional-equation real structure is an actual antiunitary
involution and intertwines the orbit Gamma action. -/

private def unitFunctionalEquationDatum :
    Arithmetic.FunctionalEquationDatum Unit where
  characterOrbit := ⟨conductorOneCharacter⟩
  rootNumber := 1
  rootNumber_norm := by simp
  reflection := Equiv.refl Unit
  reflection_involutive := by simp
  spectralValue := fun _ ↦ 0
  spectral_reflection := by simp

example :
    Arithmetic.FunctionalEquationDatum.IsFiniteAntiunitary
      unitFunctionalEquationDatum.functionalEquationRealStructure :=
  unitFunctionalEquationDatum.functionalEquationRealStructure_antiunitary

example
    (vector : Arithmetic.FunctionalEquationDatum.OrbitHilbert Unit) :
    unitFunctionalEquationDatum.functionalEquationRealStructure
        (unitFunctionalEquationDatum.orbitGammaAction vector) =
      unitFunctionalEquationDatum.orbitGammaAction
        (unitFunctionalEquationDatum.functionalEquationRealStructure vector) :=
  unitFunctionalEquationDatum.functionalEquationRealStructure_intertwines vector

/-! The concrete negative-coefficient prime spoke remains Hermitian. -/

example :
    (Arithmetic.finitePrimeSpokeBlock
      conductorOneCharacter primeTwoSpoke).IsHermitian :=
  Arithmetic.finitePrimeSpokeBlock_selfAdjoint
    conductorOneCharacter primeTwoSpoke

/-! Total Hodge--Dirac and heat identities hold for every exact terrain. -/

example {Index : Type} [Fintype Index] [DecidableEq Index]
    (terrain : Hilbert.GradedTerrainComplex Index) (t : ℝ) :
    terrain.DAFTotalOperator
          (Arithmetic.GammaSpindleDirac conductorOneCharacter t) *
        terrain.DAFTotalOperator
          (Arithmetic.GammaSpindleDirac conductorOneCharacter t) =
      (terrain.complex.hodgeDirac * terrain.complex.hodgeDirac) ⊗ₖ
          (1 : Matrix (Fin 2) (Fin 2) ℂ) +
        (1 : Matrix Index Index ℂ) ⊗ₖ
          (Arithmetic.GammaSpindleDirac conductorOneCharacter t *
            Arithmetic.GammaSpindleDirac conductorOneCharacter t) :=
  terrain.dafGammaTotalOperator_sq conductorOneCharacter t

example {Index : Type} [Fintype Index] [DecidableEq Index]
    (complex : Hilbert.FiniteBicomplex Index) :
    complex.totalDifferential * complex.totalDifferential = 0 :=
  complex.totalDifferential_sq_zero

example {Index : Type} [Fintype Index] [DecidableEq Index]
    (base : Hilbert.FiniteDifferentialComplex Index) :
    (Arithmetic.CharacterTwist.identity conductorOneCharacter base).twistedDifferential =
      base.differential :=
  Arithmetic.CharacterTwist.identity_twistedDifferential
    conductorOneCharacter base

example {Index : Type} [Fintype Index] [DecidableEq Index]
    (dirac : Hilbert.FiniteOperator Index Index) (s t : ℝ) :
    Hilbert.heatDiffuser dirac (s + t) =
      Hilbert.heatDiffuser dirac s * Hilbert.heatDiffuser dirac t :=
  Hilbert.heatDiffuser_add dirac s t

/-! A concrete three-point packet is nonzero and exactly normalized. -/

private def threePointPacket : Hilbert.SpectralPacketData (Fin 3) where
  spectralValue index := (index.val : ℝ) - 1
  center := 0
  width := 2
  width_pos := by norm_num

example (index : Fin 3) : 0 < threePointPacket.rawAmplitude index :=
  threePointPacket.rawAmplitude_pos index

example : threePointPacket.rawVector ≠ 0 :=
  threePointPacket.rawVector_ne_zero

example : ‖threePointPacket.vector‖ = 1 :=
  threePointPacket.vector_norm

private def midpoint : Hilbert.TerrainPoint 1 where
  cellId := ⟨"test:midpoint-cell"⟩
  coordinate := fun _ ↦ ⟨1 / 2, by constructor <;> norm_num⟩

private def pointedState : Hilbert.PointedSpindleState 1 (Fin 3) :=
  Hilbert.PointedSpindleState.canonical midpoint
    ⟨conductorOneCharacter⟩ threePointPacket

example : ‖pointedState.vector‖ = 1 := pointedState.vector_norm

example : pointedState.projection.adjoint = pointedState.projection :=
  pointedState.projection_selfAdjoint

example : IsIdempotentElem pointedState.projection :=
  pointedState.projection_idempotent

/-! Exact unitary folds preserve both harmonic vectors and heat evolution. -/

example {Index : Type} [Fintype Index] [DecidableEq Index]
    {terrain : Hilbert.GradedTerrainComplex Index}
    (fold : Fold.FoldUnitary terrain)
    {vector : Index → ℂ}
    (harmonic : Fold.IsHarmonic (terrain := terrain) vector) :
    Fold.IsHarmonic (terrain := terrain) (fold.operator.mulVec vector) :=
  fold.fold_preserves_harmonicSubspace harmonic

example {Index : Type} [Fintype Index] [DecidableEq Index]
    {terrain : Hilbert.GradedTerrainComplex Index}
    (fold : Fold.FoldUnitary terrain) (s : ℝ) :
    fold.operator * Hilbert.heatDiffuser terrain.complex.hodgeDirac s =
      Hilbert.heatDiffuser terrain.complex.hodgeDirac s * fold.operator :=
  fold.fold_intertwines_diffuser s

example {Index SpindleIndex : Type}
    [Fintype Index] [DecidableEq Index]
    [Fintype SpindleIndex] [DecidableEq SpindleIndex]
    {terrain : Hilbert.GradedTerrainComplex Index}
    (fold : Fold.FoldUnitary terrain)
    (spindle : Hilbert.FiniteOperator SpindleIndex SpindleIndex) :
    fold.liftedOperator * terrain.DAFTotalOperator spindle =
      terrain.DAFTotalOperator spindle * fold.liftedOperator :=
  fold.fold_intertwines_totalOperator spindle

end DAF.Tests.GammaSpectral
