-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BundledTypeIIBilinearPacketFactorization.Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BundledTypeIIBilinearPacketFactorization.Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:3aecf689b7793ca2052f430f/workspace/lib/Surface/Core/ConductorThreeDeltaRicciSurgeryData.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVaughanDelta
public import Surface.Core.TypeII.BilinearPacket
public import Surface.Core.TypeII.CorrelationFlow
public import Surface.Core.TypeII.SpatialCarrier
public import Surface.Core.TypeII.WangZahlDiffuse
import Mathlib.Tactic

/-!
# Corrected conductor-three delta/incidence-surgery data

This module replaces the scalar-readout surgery assembly with the intrinsic
bipartite Vaughan pairing.  Structural data and analytic estimates are kept
on opposite sides of the API:

* `ConductorThreeDeltaRicciSurgeryData` contains exact delta provenance,
  packet factorization, a distinct three-dimensional carrier, coupled flow,
  exact block surgery, quantized events, and strict complexity decrease;
* terminal, flow-defect, and cross-neck estimates are separately named
  propositions;
* no inhabitant of the final program and no Type II maximal estimate is
  constructed here.

The canonical analytic evolution is the residual-aware
`CorrelationCompatibleFlow`.  `IncidenceCurvatureFlow` is an optional finite
adapter and is not smooth Ricci flow.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BundledTypeIIBilinearPacketFactorization.Variant037f4af48e388cafb91105086c07f03dbd081b66c6385a31167ee68b776376c7

public section

namespace Surface.Core.ConductorThreeDeltaRicci

noncomputable section

open scoped BigOperators ComplexConjugate InnerProductSpace InnerProduct
open MeasureTheory
open Surface.Core.ConductorThreeVaughanDelta
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeWangZahlTTStar
open Surface.Core.TypeII

/-! ## Bundled scale data -/

/-- Universe-safe bundle for one exact bipartite packet factorization. -/
structure BundledTypeIIBilinearPacketFactorization (N : ℕ) where
  Left : Type
  Right : Type
  LeftPacketSpace : Type
  RightPacketSpace : Type
  leftFintype : Fintype Left
  rightFintype : Fintype Right
  leftDecidableEq : DecidableEq Left
  rightDecidableEq : DecidableEq Right
  leftPacketNormed : NormedAddCommGroup LeftPacketSpace
  leftPacketInner : InnerProductSpace ℂ LeftPacketSpace
  leftPacketComplete : CompleteSpace LeftPacketSpace
  rightPacketNormed : NormedAddCommGroup RightPacketSpace
  rightPacketInner : InnerProductSpace ℂ RightPacketSpace
  rightPacketComplete : CompleteSpace RightPacketSpace
  factorization : @TypeIIBilinearPacketFactorization N Left Right
    LeftPacketSpace RightPacketSpace leftFintype rightFintype
    leftDecidableEq rightDecidableEq leftPacketNormed leftPacketInner
    leftPacketComplete rightPacketNormed rightPacketInner rightPacketComplete

attribute [instance] BundledTypeIIBilinearPacketFactorization.leftFintype
attribute [instance] BundledTypeIIBilinearPacketFactorization.rightFintype
attribute [instance] BundledTypeIIBilinearPacketFactorization.leftDecidableEq
attribute [instance] BundledTypeIIBilinearPacketFactorization.rightDecidableEq
attribute [instance] BundledTypeIIBilinearPacketFactorization.leftPacketNormed
attribute [instance] BundledTypeIIBilinearPacketFactorization.leftPacketInner
attribute [instance] BundledTypeIIBilinearPacketFactorization.leftPacketComplete
attribute [instance] BundledTypeIIBilinearPacketFactorization.rightPacketNormed
attribute [instance] BundledTypeIIBilinearPacketFactorization.rightPacketInner
attribute [instance] BundledTypeIIBilinearPacketFactorization.rightPacketComplete

/-- Geometry at one arithmetic scale.  Hypergraph incidence and the
three-dimensional carrier are distinct fields connected only by the
explicit shading-realization proof. -/
structure TypeIIScaleSurgeryData (N : ℕ) where
  packetData : BundledTypeIIBilinearPacketFactorization N
  interaction : TypeIIInteractionData
    (Sum packetData.Left packetData.Right)
  packetDirection : Sum packetData.Left packetData.Right →
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  packetDirection_unit : ∀ atom, ‖packetDirection atom‖ = 1
  packetShading : Sum packetData.Left packetData.Right → Set
    Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
  packetShading_measurable : ∀ atom, MeasurableSet (packetShading atom)
  /-- Faithful adapters from the abstract left/right packet spaces into the
  concrete spatial `L²(ℝ³)` used by the tube geometry. -/
  leftSpatialization : packetData.LeftPacketSpace →L[ℂ]
    Surface.Core.PrimeWalkLosslessSpatial.SpatialL2
  rightSpatialization : packetData.RightPacketSpace →L[ℂ]
    Surface.Core.PrimeWalkLosslessSpatial.SpatialL2
  leftSpatialization_isometry : Isometry leftSpatialization
  rightSpatialization_isometry : Isometry rightSpatialization
  /-- Each synthesized basis packet is localized in the shading assigned to
  the same arithmetic index.  Almost-everywhere support is the correct
  statement for `L²` equivalence classes. -/
  leftPacket_ae_zero_outside_shading : ∀ left,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inl left) →
        leftSpatialization
          (packetData.factorization.leftSynthesis
            (EuclideanSpace.single left 1)) point = 0
  rightPacket_ae_zero_outside_shading : ∀ right,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ packetShading (.inr right) →
        rightSpatialization
          (packetData.factorization.rightSynthesis
            (EuclideanSpace.single right 1)) point = 0
  spatialCarrier : TypeIISpatialCarrier3
    (Sum packetData.Left packetData.Right)
  carrier_realizes_shading : spatialCarrier.RealizesShadings packetShading
  /-- Nonzero analytic incidence must be witnessed by a geometric
  hyperedge containing the corresponding left and right packet atoms. -/
  interaction_realizes_packet_incidence : ∀ x left right,
    packetData.factorization.packetMatrix x left right ≠ 0 →
      ∃ edge ∈ interaction.incidenceHypergraph.hyperedges,
        Sum.inl left ∈ edge ∧ Sum.inr right ∈ edge

/-! ## Exact local states and the initial arithmetic pairing -/

/-- Natural-valued event complexity.  Flow may occur within an event, but a
recursive child is admitted only after this quantized rank decreases. -/
structure QuantizedTypeIIComplexity where
  unprocessedScales : ℕ
  badClusters : ℕ
  activeInteractions : ℕ
deriving DecidableEq, Repr

@[expose]
def QuantizedTypeIIComplexity.rank
    (complexity : QuantizedTypeIIComplexity) : ℕ :=
  complexity.unprocessedScales + complexity.badClusters +
    complexity.activeInteractions

/-- One exact factorization state.  There is no scalar readout. -/
structure TypeIIBilinearSurgeryState {N : ℕ}
    (scale : TypeIIScaleSurgeryData N) where
  leftCoefficient : EuclideanSpace ℂ scale.packetData.Left
  rightCoefficient : EuclideanSpace ℂ scale.packetData.Right
  leftSynthesis : EuclideanSpace ℂ scale.packetData.Left →L[ℂ]
    scale.packetData.LeftPacketSpace
  rightSynthesis : EuclideanSpace ℂ scale.packetData.Right →L[ℂ]
    scale.packetData.RightPacketSpace
  leftVector : scale.packetData.LeftPacketSpace
  rightVector : scale.packetData.RightPacketSpace
  leftVector_from_coefficients : leftVector =
    ∑ left : scale.packetData.Left, leftCoefficient left •
      leftSynthesis (EuclideanSpace.single left 1)
  rightVector_from_coefficients : rightVector =
    ∑ right : scale.packetData.Right, rightCoefficient right •
      rightSynthesis (EuclideanSpace.single right 1)
  incidence : ℕ → scale.packetData.RightPacketSpace →L[ℂ]
    scale.packetData.LeftPacketSpace
  residualMatrix : ℕ → Matrix scale.packetData.Left scale.packetData.Right ℂ
  cutoffMatrix : ℕ → Matrix scale.packetData.Left scale.packetData.Right ℂ
  exactFactorization : ∀ x left right,
    cutoffMatrix x left right =
      inner ℂ (leftSynthesis (EuclideanSpace.single left 1))
        (incidence x
          (rightSynthesis (EuclideanSpace.single right 1))) +
      residualMatrix x left right
  leftPacket_ae_zero_outside_shading : ∀ left,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ scale.packetShading (.inl left) →
        scale.leftSpatialization
          (leftSynthesis (EuclideanSpace.single left 1)) point = 0
  rightPacket_ae_zero_outside_shading : ∀ right,
    ∀ᵐ point : Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint
        ∂(volume : Measure
          Surface.Core.PrimeWalkSpatialEncoding.SpatialPoint),
      point ∉ scale.packetShading (.inr right) →
        scale.rightSpatialization
          (rightSynthesis (EuclideanSpace.single right 1)) point = 0
  interaction_realizes_incidence : ∀ x left right,
    inner ℂ (leftSynthesis (EuclideanSpace.single left 1))
        (incidence x (rightSynthesis (EuclideanSpace.single right 1))) ≠ 0 →
      ∃ edge ∈ scale.interaction.incidenceHypergraph.hyperedges,
        Sum.inl left ∈ edge ∧ Sum.inr right ∈ edge
  complexity : QuantizedTypeIIComplexity

/-- The intrinsic signed correlation represented by one state. -/
@[expose]
def TypeIIBilinearSurgeryState.signedPairing {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) (x : ℕ) : ℂ :=
  -inner ℂ state.leftVector (state.incidence x state.rightVector) -
    typeIIMatrixPairing state.leftCoefficient (state.residualMatrix x)
      state.rightCoefficient

/-- Matrix of the state's current packet incidence in the coordinate bases
used by its exact factorization. -/
@[expose]
def TypeIIBilinearSurgeryState.packetMatrix {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) (x : ℕ) :
    Matrix scale.packetData.Left scale.packetData.Right ℂ :=
  fun left right ↦
    inner ℂ (state.leftSynthesis (EuclideanSpace.single left 1))
      (state.incidence x
        (state.rightSynthesis (EuclideanSpace.single right 1)))

/-- Expanding the coordinate sums recovers the intrinsic Hilbert pairing.
This holds for every state, not only the canonical initial state. -/
@[surface_novel, surface_published]
theorem TypeIIBilinearSurgeryState.matrixPairing_packetMatrix {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) (x : ℕ) :
    typeIIMatrixPairing state.leftCoefficient (state.packetMatrix x)
        state.rightCoefficient =
      inner ℂ state.leftVector (state.incidence x state.rightVector) := by
  classical
  rw [state.leftVector_from_coefficients,
    state.rightVector_from_coefficients]
  simp only [map_sum, map_smul, sum_inner, inner_sum, inner_smul_left,
    inner_smul_right, typeIIMatrixPairing,
    TypeIIBilinearSurgeryState.packetMatrix, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro left _
  apply Finset.sum_congr rfl
  intro right _
  ring

/-- Every admitted state represents its literal cutoff-matrix pairing.
The theorem prevents a later flow or surgery state from silently replacing
the arithmetic vectors by unrelated Hilbert-space vectors. -/
@[surface_novel, surface_published]
theorem TypeIIBilinearSurgeryState.signedPairing_eq_cutoffPairing {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) (x : ℕ) :
    state.signedPairing x =
      -typeIIMatrixPairing state.leftCoefficient
        (state.cutoffMatrix x) state.rightCoefficient := by
  have hmatrix : state.cutoffMatrix x =
      state.packetMatrix x + state.residualMatrix x := by
    ext left right
    exact state.exactFactorization x left right
  rw [hmatrix, typeIIMatrixPairing_add, state.matrixPairing_packetMatrix]
  rw [TypeIIBilinearSurgeryState.signedPairing]
  ring

/-- Unsigned interaction mass of the full local cutoff matrix. -/
@[expose]
def TypeIIBilinearSurgeryState.interactionMass {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) : ℝ :=
  ∑ left : scale.packetData.Left, ∑ right : scale.packetData.Right,
    ‖state.cutoffMatrix (2 * N) left right‖

@[surface_novel, surface_published]
theorem TypeIIBilinearSurgeryState.interactionMass_nonneg {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) :
    0 ≤ state.interactionMass := by
  exact Finset.sum_nonneg fun _ _ ↦
    Finset.sum_nonneg fun _ _ ↦ norm_nonneg _

/-- Canonical initial state obtained from the exact packet factorization. -/
@[expose]
def TypeIIScaleSurgeryData.initialState {N : ℕ}
    (scale : TypeIIScaleSurgeryData N) : TypeIIBilinearSurgeryState scale where
  leftCoefficient := scale.packetData.factorization.leftCoefficient
  rightCoefficient := scale.packetData.factorization.rightCoefficient
  leftSynthesis := scale.packetData.factorization.leftSynthesis
  rightSynthesis := scale.packetData.factorization.rightSynthesis
  leftVector := ∑ left : scale.packetData.Left,
    scale.packetData.factorization.leftCoefficient left •
      scale.packetData.factorization.leftSynthesis
        (EuclideanSpace.single left 1)
  rightVector := ∑ right : scale.packetData.Right,
    scale.packetData.factorization.rightCoefficient right •
      scale.packetData.factorization.rightSynthesis
        (EuclideanSpace.single right 1)
  leftVector_from_coefficients := rfl
  rightVector_from_coefficients := rfl
  incidence := scale.packetData.factorization.incidence
  residualMatrix := scale.packetData.factorization.residualMatrix
  cutoffMatrix := fun x ↦ typeIICutoffMatrix
    (fun left ↦ (scale.packetData.factorization.leftIndex left).1)
    (fun right ↦ (scale.packetData.factorization.rightIndex right).1) x
  exactFactorization := scale.packetData.factorization.exactFactorization
  leftPacket_ae_zero_outside_shading :=
    scale.leftPacket_ae_zero_outside_shading
  rightPacket_ae_zero_outside_shading :=
    scale.rightPacket_ae_zero_outside_shading
  interaction_realizes_incidence :=
    scale.interaction_realizes_packet_incidence
  complexity :=
    { unprocessedScales := Nat.log2 (2 * N) + 1
      badClusters := scale.interaction.incidenceHypergraph.hyperedges.card
      activeInteractions :=
        Fintype.card scale.packetData.Left * Fintype.card scale.packetData.Right }

/-- The initial intrinsic pairing is exactly the checked Vaughan Type II
prefix.  No operator norm or cancellation estimate is used. -/
@[surface_novel, surface_published]
theorem initialState_signedPairing {N : ℕ}
    (scale : TypeIIScaleSurgeryData N) (x : ℕ) (hx : x ≤ 2 * N) :
    (scale.initialState.signedPairing x) =
      (conductorThreeVaughanTypeIIPrefix N x : ℂ) := by
  simpa [TypeIIBilinearSurgeryState.signedPairing,
    TypeIIScaleSurgeryData.initialState,
    TypeIIBilinearPacketFactorization.packetPairing] using
      (typeII_eq_packetPairing_add_residual
        scale.packetData.factorization x hx).symm

/-! ## Sound quantized events -/

/-- Terminal alternatives specific to the Type II tree. -/
inductive TypeIITerminalClass
  | finiteBase
  | transverse
  | wangZahlDiffuse
  | lowRankParallel
deriving DecidableEq, Repr

/-- Non-vacuous two-block transversality certificate at the fixed scale. -/
structure TransverseTerminalCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N} where
  leftBlock : scale.packetData.Left → Bool
  rightBlock : scale.packetData.Right → Bool
  leftBlock_surjective : Function.Surjective leftBlock
  rightBlock_surjective : Function.Surjective rightBlock
  separation : ∀ left right,
    leftBlock left ≠ rightBlock right →
      (N + 1 : ℝ)⁻¹ ≤
        ‖scale.packetDirection (.inl left) -
          scale.packetDirection (.inr right)‖

/-- A non-vacuous unsigned Wang--Zahl application tied to the exact packet
labels, directions, and shadings of this arithmetic scale.  It still carries
no signed cancellation theorem. -/
structure WangZahlDiffuseCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N} where
  unsigned : UnsignedWangZahlDiffuseCertificate
    (Sum scale.packetData.Left scale.packetData.Right)
  tubes_eq_univ : unsigned.family.tubes = Finset.univ
  shading_eq : ∀ atom,
    unsigned.family.shading atom = scale.packetShading atom
  direction_eq : ∀ atom,
    (unsigned.family.tube atom).direction = scale.packetDirection atom

/-- Concrete low-rank factorization of every local incidence operator. -/
structure LowRankParallelCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale) where
  rank : ℕ
  rank_le_log : rank ≤ Nat.log2 N + 1
  rightFactor : ℕ → scale.packetData.RightPacketSpace →L[ℂ]
    EuclideanSpace ℂ (Fin rank)
  leftFactor : ℕ → EuclideanSpace ℂ (Fin rank) →L[ℂ]
    scale.packetData.LeftPacketSpace
  incidence_factorization : ∀ x,
    state.incidence x = (leftFactor x).comp (rightFactor x)

/-- Concrete finite-base certificate. -/
structure FiniteBaseCertificate {N : ℕ}
    (scale : TypeIIScaleSurgeryData N) : Prop where
  left_card_le : Fintype.card scale.packetData.Left ≤ 64
  right_card_le : Fintype.card scale.packetData.Right ≤ 64

/-- Structural evidence behind a terminal label. -/
inductive TerminalStructuralCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (state : TypeIIBilinearSurgeryState scale)
  | finiteBase (certificate : FiniteBaseCertificate scale)
  | transverse (certificate : TransverseTerminalCertificate (scale := scale))
  | wangZahlDiffuse
      (certificate : WangZahlDiffuseCertificate (scale := scale))
  | lowRankParallel (certificate : LowRankParallelCertificate state)

@[expose]
def TerminalStructuralCertificate.terminalClass
    {N : ℕ} {scale : TypeIIScaleSurgeryData N}
    {state : TypeIIBilinearSurgeryState scale}
    (certificate : TerminalStructuralCertificate state) :
    TypeIITerminalClass :=
  match certificate with
  | .finiteBase _ => .finiteBase
  | .transverse _ => .transverse
  | .wangZahlDiffuse _ => .wangZahlDiffuse
  | .lowRankParallel _ => .lowRankParallel

/-- A correlation-compatible flow connecting two exact states. -/
structure StateFlowCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (parent : TypeIIBilinearSurgeryState scale) where
  child : TypeIIBilinearSurgeryState scale
  flow : ResidualAwareCorrelationFlow
    (Left := scale.packetData.LeftPacketSpace)
    (Right := scale.packetData.RightPacketSpace)
  leftSynthesisEvolution : ℝ →
    EuclideanSpace ℂ scale.packetData.Left →L[ℂ]
      scale.packetData.LeftPacketSpace
  rightSynthesisEvolution : ℝ →
    EuclideanSpace ℂ scale.packetData.Right →L[ℂ]
      scale.packetData.RightPacketSpace
  left_evolution_from_synthesis : ∀ t,
    flow.leftEvolution t =
      ∑ left : scale.packetData.Left, parent.leftCoefficient left •
        leftSynthesisEvolution t (EuclideanSpace.single left 1)
  right_evolution_from_synthesis : ∀ t,
    flow.rightEvolution t =
      ∑ right : scale.packetData.Right, parent.rightCoefficient right •
        rightSynthesisEvolution t (EuclideanSpace.single right 1)
  leftSynthesis_initial : leftSynthesisEvolution 0 = parent.leftSynthesis
  rightSynthesis_initial : rightSynthesisEvolution 0 = parent.rightSynthesis
  leftSynthesis_final : leftSynthesisEvolution flow.finalTime =
    child.leftSynthesis
  rightSynthesis_final : rightSynthesisEvolution flow.finalTime =
    child.rightSynthesis
  left_initial : flow.leftEvolution 0 = parent.leftVector
  right_initial : flow.rightEvolution 0 = parent.rightVector
  incidence_initial : ∀ x, flow.incidenceEvolution 0 x = parent.incidence x
  residual_initial : ∀ x, flow.residualPairing 0 x =
    typeIIMatrixPairing parent.leftCoefficient (parent.residualMatrix x)
      parent.rightCoefficient
  left_final : flow.leftEvolution flow.finalTime = child.leftVector
  right_final : flow.rightEvolution flow.finalTime = child.rightVector
  incidence_final : ∀ x,
    flow.incidenceEvolution flow.finalTime x = child.incidence x
  residual_final : ∀ x, flow.residualPairing flow.finalTime x =
    typeIIMatrixPairing child.leftCoefficient (child.residualMatrix x)
      child.rightCoefficient
  leftCoefficient_preserved : child.leftCoefficient = parent.leftCoefficient
  rightCoefficient_preserved : child.rightCoefficient = parent.rightCoefficient
  cutoff_preserved : child.cutoffMatrix = parent.cutoffMatrix

/-- The residual-aware evolution starts at the parent's complete signed
pairing. -/
@[surface_novel, surface_published]
theorem StateFlowCertificate.fullSignedCorrelation_initial {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : StateFlowCertificate parent) (x : ℕ) :
    certificate.flow.fullSignedCorrelation 0 x = parent.signedPairing x := by
  rw [ResidualAwareCorrelationFlow.fullSignedCorrelation,
    certificate.left_initial, certificate.right_initial,
    certificate.incidence_initial, certificate.residual_initial]
  rfl

/-- The same exact correlation reaches the child at the certified endpoint. -/
@[surface_novel, surface_published]
theorem StateFlowCertificate.fullSignedCorrelation_final {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : StateFlowCertificate parent) (x : ℕ) :
    certificate.flow.fullSignedCorrelation certificate.flow.finalTime x =
      certificate.child.signedPairing x := by
  rw [ResidualAwareCorrelationFlow.fullSignedCorrelation,
    certificate.left_final, certificate.right_final,
    certificate.incidence_final, certificate.residual_final]
  rfl

/-- A complete signed-pairing endpoint estimate is a consequence of the
residual-aware derivative budget; it is not stored as an unrelated flow
field. -/
@[surface_novel, surface_published]
theorem StateFlowCertificate.signedPairing_endpoint_norm_le {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : StateFlowCertificate parent)
    {budget : ℝ} (hbudget : FullSignedDefectBudget certificate.flow budget)
    (x : ℕ) :
    ‖certificate.child.signedPairing x - parent.signedPairing x‖ ≤
      budget * certificate.flow.finalTime := by
  simpa [certificate.fullSignedCorrelation_initial x,
    certificate.fullSignedCorrelation_final x] using
      certificate.flow.endpoint_change_norm_le hbudget x

/-- Exact block surgery and its child states.  Cross correlation is not a
field here; it is the separate proposition below. -/
structure BlockEventCertificate {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    (parent : TypeIIBilinearSurgeryState scale) where
  surgery : TypeIIBlockSurgery N parent.cutoffMatrix scale.spatialCarrier
  spatialAssignment : BlockAssignmentsRealizeNeckSides surgery
  childState : surgery.Child → TypeIIBilinearSurgeryState scale
  child_cutoff : ∀ child,
    (childState child).cutoffMatrix = surgery.blockMatrix child
  child_leftCoefficient : ∀ child left,
    (childState child).leftCoefficient left =
      if surgery.leftBlock left = child then parent.leftCoefficient left else 0
  child_rightCoefficient : ∀ child right,
    (childState child).rightCoefficient right =
      if surgery.rightBlock right = child then parent.rightCoefficient right else 0

/-- Masking by a child block does not change the pairing of that block
matrix, because the block matrix has no support outside the child. -/
@[surface_novel, surface_published]
theorem BlockEventCertificate.child_matrixPairing {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : BlockEventCertificate parent)
    (child : certificate.surgery.Child) (x : ℕ) :
    typeIIMatrixPairing
        (certificate.childState child).leftCoefficient
        ((certificate.childState child).cutoffMatrix x)
        (certificate.childState child).rightCoefficient =
      typeIIMatrixPairing parent.leftCoefficient
        (certificate.surgery.blockMatrix child x)
        parent.rightCoefficient := by
  classical
  rw [certificate.child_cutoff child]
  simp only [typeIIMatrixPairing]
  apply Finset.sum_congr rfl
  intro left _
  apply Finset.sum_congr rfl
  intro right _
  by_cases hmatrix : certificate.surgery.blockMatrix child x left right = 0
  · simp [hmatrix]
  · have hsupport := certificate.surgery.blockMatrix_support
      child x left right hmatrix
    rw [certificate.child_leftCoefficient child left,
      certificate.child_rightCoefficient child right,
      if_pos hsupport.1, if_pos hsupport.2]

/-- Exact signed decomposition of a parent event into its child pairings and
the cross-neck term.  This theorem is bookkeeping only; bounding the cross
term remains `GlobalCrossNeckBudget`. -/
@[surface_novel, surface_published]
theorem BlockEventCertificate.signedPairing_decomposition {N : ℕ}
    {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (certificate : BlockEventCertificate parent) (x : ℕ) :
    parent.signedPairing x =
      (∑ child, (certificate.childState child).signedPairing x) -
        typeIIMatrixPairing parent.leftCoefficient
          (certificate.surgery.crossMatrix x) parent.rightCoefficient := by
  rw [parent.signedPairing_eq_cutoffPairing,
    certificate.surgery.cutoff_decomposition, typeIIMatrixPairing_add,
    typeIIMatrixPairing_sum]
  simp_rw [(certificate.childState _).signedPairing_eq_cutoffPairing,
    certificate.child_matrixPairing]
  rw [neg_add_rev]
  rw [← Finset.sum_neg_distrib]
  ring

/-- A proof-carrying structural event. -/
inductive TypeIIEvent {N : ℕ} {scale : TypeIIScaleSurgeryData N}
    (parent : TypeIIBilinearSurgeryState scale)
  | terminal (terminalClass : TypeIITerminalClass)
  | flow (certificate : StateFlowCertificate parent)
  | surgery (certificate : BlockEventCertificate parent)

/-- Child relation generated by a structural event. -/
@[expose]
def TypeIIEvent.IsChild {N : ℕ} {scale : TypeIIScaleSurgeryData N}
    {parent : TypeIIBilinearSurgeryState scale}
    (event : TypeIIEvent parent)
    (child : TypeIIBilinearSurgeryState scale) : Prop :=
  match event with
  | .terminal _ => False
  | .flow certificate => child = certificate.child
  | .surgery certificate => ∃ index, child = certificate.childState index

/-- Structural conductor-three surgery data.  It contains constructions and
exact invariants only; no terminal, defect, cross-neck, total-cost, or Type II
maximal estimate occurs in this structure. -/
structure ConductorThreeDeltaRicciSurgeryData where
  deltaBase : ∀ N : ℕ, 2 ≤ N → DeltaTypeIICoefficientBase N
  scaleData : ∀ N : ℕ, 2 ≤ N → TypeIIScaleSurgeryData N
  nextEvent : ∀ (N : ℕ) (hN : 2 ≤ N)
    (state : TypeIIBilinearSurgeryState (scaleData N hN)),
      TypeIIEvent state
  eventSound : ∀ (N : ℕ) (hN : 2 ≤ N)
    (state : TypeIIBilinearSurgeryState (scaleData N hN))
    (terminalClass : TypeIITerminalClass),
      nextEvent N hN state = TypeIIEvent.terminal terminalClass →
        ∃ certificate : TerminalStructuralCertificate state,
          certificate.terminalClass = terminalClass
  eventDecreasesComplexity : ∀ (N : ℕ) (hN : 2 ≤ N)
    (state child : TypeIIBilinearSurgeryState (scaleData N hN)),
      (nextEvent N hN state).IsChild child →
        child.complexity.rank < state.complexity.rank

/-- The source delta-ring element underlying one left packet coefficient in
the scale selected by the scheduler data. -/
@[expose]
def ConductorThreeDeltaRicciSurgeryData.deltaLeftCoefficient
    (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N)
    (left : (data.scaleData N hN).packetData.Left) :
    (data.deltaBase N hN).A :=
  (data.deltaBase N hN).liftedLeftCoefficient
    ((data.scaleData N hN).packetData.factorization.leftIndex left)

/-- The source delta-ring element underlying one right packet coefficient. -/
@[expose]
def ConductorThreeDeltaRicciSurgeryData.deltaRightCoefficient
    (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N)
    (right : (data.scaleData N hN).packetData.Right) :
    (data.deltaBase N hN).A :=
  (data.deltaBase N hN).liftedRightCoefficient
    ((data.scaleData N hN).packetData.factorization.rightIndex right)

/-- The delta provenance and the analytic packet factorization use the same
left coefficient after complex realization. -/
@[surface_novel, surface_published]
theorem ConductorThreeDeltaRicciSurgeryData.realization_deltaLeftCoefficient
    (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N)
    (left : (data.scaleData N hN).packetData.Left) :
    (data.deltaBase N hN).complexRealization
        (data.deltaLeftCoefficient N hN left) =
      (data.scaleData N hN).packetData.factorization.leftCoefficient left := by
  have hidentification := (data.scaleData N hN).packetData.factorization.leftCoefficient_identification left
  rw [hidentification]
  simpa [ConductorThreeDeltaRicciSurgeryData.deltaLeftCoefficient,
    conductorThreeVaughanLeft] using
      (data.deltaBase N hN).complexRealization_liftedLeft
        ((data.scaleData N hN).packetData.factorization.leftIndex left)

/-- The corresponding exact right-coefficient provenance theorem. -/
@[surface_novel, surface_published]
theorem ConductorThreeDeltaRicciSurgeryData.realization_deltaRightCoefficient
    (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N)
    (right : (data.scaleData N hN).packetData.Right) :
    (data.deltaBase N hN).complexRealization
        (data.deltaRightCoefficient N hN right) =
      (data.scaleData N hN).packetData.factorization.rightCoefficient right := by
  have hidentification := (data.scaleData N hN).packetData.factorization.rightCoefficient_identification right
  rw [hidentification]
  simpa [ConductorThreeDeltaRicciSurgeryData.deltaRightCoefficient,
    conductorThreeVaughanRight] using
      (data.deltaBase N hN).complexRealization_liftedRight
        ((data.scaleData N hN).packetData.factorization.rightIndex right)

/-- A finite recursive path generated by the deterministic event scheduler. -/
inductive EventPath (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N) :
    TypeIIBilinearSurgeryState (data.scaleData N hN) → ℕ → Prop
  | nil (state) : EventPath data N hN state 0
  | step {state child length}
      (isChild : (data.nextEvent N hN state).IsChild child)
      (tail : EventPath data N hN child length) :
      EventPath data N hN state (length + 1)

/-- Strict quantized descent gives a finite, but generally non-polylogarithmic,
upper bound on every event path. -/
@[surface_novel, surface_published]
theorem EventPath.length_le_rank
    {data : ConductorThreeDeltaRicciSurgeryData}
    {N : ℕ} {hN : 2 ≤ N}
    {state : TypeIIBilinearSurgeryState (data.scaleData N hN)}
    {length : ℕ} (path : EventPath data N hN state length) :
    length ≤ state.complexity.rank := by
  induction path with
  | nil => simp
  | step isChild tail inductionHypothesis =>
      have hdecrease := data.eventDecreasesComplexity _ _ _ _ isChild
      omega

/-- The entire finite event tree, including every branch of every block
surgery.  A path-depth estimate alone does not bound this object's size. -/
inductive EventTree (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N) :
    TypeIIBilinearSurgeryState (data.scaleData N hN) → Type 2
  | terminal {state terminalClass}
      (event_eq : data.nextEvent N hN state =
        TypeIIEvent.terminal terminalClass) :
      EventTree data N hN state
  | flow {state} (certificate : StateFlowCertificate state)
      (event_eq : data.nextEvent N hN state = TypeIIEvent.flow certificate)
      (childTree : EventTree data N hN certificate.child) :
      EventTree data N hN state
  | surgery {state} (certificate : BlockEventCertificate state)
      (event_eq : data.nextEvent N hN state =
        TypeIIEvent.surgery certificate)
      (childTrees : ∀ child,
        EventTree data N hN (certificate.childState child)) :
      EventTree data N hN state

/-- Strict natural-valued descent constructs a finite full event tree for
the deterministic scheduler.  Hence later whole-tree bounds cannot hold
vacuously merely because no tree was supplied. -/
noncomputable def EventTree.ofScheduler
    (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N)
    (state : TypeIIBilinearSurgeryState (data.scaleData N hN)) :
    EventTree data N hN state :=
  match hevent : data.nextEvent N hN state with
  | .terminal terminalClass => .terminal hevent
  | .flow certificate =>
      .flow certificate hevent
        (EventTree.ofScheduler data N hN certificate.child)
  | .surgery certificate =>
      .surgery certificate hevent fun child ↦
        EventTree.ofScheduler data N hN (certificate.childState child)
termination_by state.complexity.rank
decreasing_by
  · exact data.eventDecreasesComplexity N hN state certificate.child (by
      simp [hevent, TypeIIEvent.IsChild])
  · exact data.eventDecreasesComplexity N hN state
      (certificate.childState child) (by
        simp [hevent, TypeIIEvent.IsChild])

@[surface_novel, surface_published]
theorem EventTree.nonempty
    (data : ConductorThreeDeltaRicciSurgeryData)
    (N : ℕ) (hN : 2 ≤ N)
    (state : TypeIIBilinearSurgeryState (data.scaleData N hN)) :
    Nonempty (EventTree data N hN state) :=
  ⟨EventTree.ofScheduler data N hN state⟩

/-- Total number of scheduler events across all branches. -/
@[expose]
def EventTree.nodeCount
    {data : ConductorThreeDeltaRicciSurgeryData}
    {N : ℕ} {hN : 2 ≤ N}
    {state : TypeIIBilinearSurgeryState (data.scaleData N hN)} :
    EventTree data N hN state → ℕ
  | .terminal _ => 1
  | .flow _ _ childTree => 1 + childTree.nodeCount
  | .surgery _ _ childTrees =>
      1 + ∑ child, (childTrees child).nodeCount

/-! ## Independently named analytic obligations -/

/-- Coefficient-sensitive estimate for one fixed terminal class. -/
@[expose]
def TerminalClassBound (data : ConductorThreeDeltaRicciSurgeryData)
    (terminalClass : TypeIITerminalClass) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ (N : ℕ) (hN : 2 ≤ N)
      (state : TypeIIBilinearSurgeryState (data.scaleData N hN)),
      data.nextEvent N hN state = TypeIIEvent.terminal terminalClass →
      ∀ x : ℕ, x ≤ 2 * N →
        ‖state.signedPairing x‖ ≤ C * (N : ℝ) ^ (1 / 2 + ε)

@[expose]
def FiniteBaseTerminalBound
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  TerminalClassBound data .finiteBase

@[expose]
def TransverseTerminalBound
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  TerminalClassBound data .transverse

@[expose]
def WangZahlDiffuseTerminalBound
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  TerminalClassBound data .wangZahlDiffuse

@[expose]
def LowRankParallelTerminalBound
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  TerminalClassBound data .lowRankParallel

/-- The four terminal theorems remain separately visible. -/
@[expose]
def TerminalLeafBounds (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  FiniteBaseTerminalBound data ∧
    TransverseTerminalBound data ∧
    WangZahlDiffuseTerminalBound data ∧
    LowRankParallelTerminalBound data

/-- Integrated defect estimate for every chosen flow event. -/
@[expose]
def GlobalFlowDefectBudget
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ (N : ℕ) (hN : 2 ≤ N)
      (parent : TypeIIBilinearSurgeryState (data.scaleData N hN))
      (certificate : StateFlowCertificate parent),
      data.nextEvent N hN parent = TypeIIEvent.flow certificate →
      ∃ localBudget : ℝ,
        FullSignedDefectBudget certificate.flow localBudget ∧
        localBudget * certificate.flow.finalTime ≤
          C * (N : ℝ) ^ (1 / 2 + ε)

/-- Coefficient-sensitive cross-neck estimate for every chosen block event. -/
@[expose]
def GlobalCrossNeckBudget
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ (N : ℕ) (hN : 2 ≤ N)
      (parent : TypeIIBilinearSurgeryState (data.scaleData N hN))
      (certificate : BlockEventCertificate parent),
      data.nextEvent N hN parent = TypeIIEvent.surgery certificate →
      ∀ x : ℕ, x ≤ 2 * N →
        ‖bipartiteMatrixPairing parent.leftCoefficient
            (certificate.surgery.crossMatrix x) parent.rightCoefficient‖ ≤
          C * (N : ℝ) ^ (1 / 2 + ε)

/-- Balanced-cut control is independent of the exact block identity.  It is
needed because a depth bound alone does not control the total branching
mass of the surgery tree. -/
@[expose]
def BalancedCutMassBudget
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  ∃ contraction : ℝ, 0 ≤ contraction ∧ contraction < 1 ∧
    ∀ (N : ℕ) (hN : 2 ≤ N)
      (parent : TypeIIBilinearSurgeryState (data.scaleData N hN))
      (certificate : BlockEventCertificate parent),
      data.nextEvent N hN parent = TypeIIEvent.surgery certificate →
        (∑ child, (certificate.childState child).interactionMass) ≤
            parent.interactionMass ∧
          ∀ child, (certificate.childState child).interactionMass ≤
            contraction * parent.interactionMass

/-- A quantitative **whole-tree** event-count theorem is stronger than both
mere termination and a branch-depth bound.  It remains a separate
obligation, because a block event may have many children. -/
@[expose]
def PolylogarithmicEventBudget
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  ∃ C exponent : ℕ, 0 < exponent ∧
    ∀ (N : ℕ) (hN : 2 ≤ N)
      (tree : EventTree data N hN (data.scaleData N hN).initialState),
        tree.nodeCount ≤ C * (Nat.log2 N + 1) ^ exponent

/-- Corrected program proposition.  It is deliberately uninhabited here.
The structural data cannot manufacture any of its four analytic inputs. -/
@[expose]
def ConductorThreeDeltaRicciSurgeryProgram : Prop :=
  ∃ data : ConductorThreeDeltaRicciSurgeryData,
    TerminalLeafBounds data ∧
    GlobalFlowDefectBudget data ∧
    GlobalCrossNeckBudget data ∧
    BalancedCutMassBudget data ∧
    PolylogarithmicEventBudget data

end

end Surface.Core.ConductorThreeDeltaRicci
