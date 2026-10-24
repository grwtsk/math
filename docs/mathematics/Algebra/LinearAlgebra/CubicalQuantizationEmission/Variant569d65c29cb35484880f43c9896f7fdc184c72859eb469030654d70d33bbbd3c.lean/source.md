# Complete source: GRWTSK.Algebra.LinearAlgebra.CubicalQuantizationEmission.Variant569d65c29cb35484880f43c9896f7fdc184c72859eb469030654d70d33bbbd3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee2eca2eb3f8d6d4169523093d8eb478b9657a07` · SHA-256 `569d65c29cb35484880f43c9896f7fdc184c72859eb469030654d70d33bbbd3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.CubicalQuantization
import Surface.ContinuousAssurance.InvolutiveRelaxation

/-!
# Positive-relaxation to cubical quantization emission

Cubical emission observes one already-constructed state of a positive linear
relaxation trajectory.  Quantization is not a trajectory transition: it does
not alter the flow equation, the source state, or a reductively selected site
set.  Each emitted value is indexed by its exact degree and cell and retains
the cell's nonuniform resolution and matrix dimensions in its type.

The result also carries explicit evidence lineage.  Its assurance level,
authority, evidence class, and claim status are equal to those of the source;
quantization cannot promote any of them.
-/

universe u v

namespace Surface.ContinuousAssurance

/-- A typed encoder for one exact cell in a nonuniform cubical profile. -/
structure CubicalCellQuantizer
    {decomposition : FiniteCubicalDecomposition}
    (profile : CubicalQuantizationProfile decomposition)
    (k : Fin (profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val)
    (CellState : Type v) where
  encode :
    CellState →
      BitMatrix.QuantizedMatrix
        (profile.cellResolution k cell).value
        (profile.cellRows k cell)
        (profile.cellColumns k cell)

/--
Observation of one positive trajectory state as a higher-order cubical field.
All nonpromotion and provenance properties are explicit construction fields.
-/
structure CubicalQuantizationEmission
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {J : PositiveLinearInvolution State cone}
    (trajectory : PositiveRelaxationTrajectory State cone J)
    (decomposition : FiniteCubicalDecomposition) where
  sourceTime : Fin (trajectory.horizon + 1)
  profile : CubicalQuantizationProfile decomposition
  CellState :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1)),
      decomposition.Cell k.val → Type v
  observeCell :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      State → CellState k cell
  quantizer :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      CubicalCellQuantizer profile k cell (CellState k cell)
  emitted : HigherOrderCubicalQuantizedField decomposition profile
  emitted_spec :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      emitted k cell =
        (quantizer k cell).encode
          (observeCell k cell (trajectory.state sourceTime))
  sourceEvidence : ProgressiveEvidence
  emittedEvidence :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (_cell : decomposition.Cell k.val),
      ProgressiveEvidence
  emittedCellIdentity :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      (emittedEvidence k cell).source =
        some (decomposition.cellIdentity cell)
  emittedDerivesFromSource :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      sourceEvidence.identity ∈ (emittedEvidence k cell).derivesFrom
  emittedAuthority :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      (emittedEvidence k cell).authority = sourceEvidence.authority
  emittedAssurance :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      (emittedEvidence k cell).level = sourceEvidence.level
  emittedEvidenceClass :
    ∀ (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val),
      (emittedEvidence k cell).evidenceClass = sourceEvidence.evidenceClass
  sourceClaimStatus : ClaimStatus
  emittedClaimStatus : ClaimStatus
  claimStatusPreserved : emittedClaimStatus = sourceClaimStatus
  selectedSites : List ArtifactIdentity
  emittedSelectedSites : List ArtifactIdentity
  selectedSitesPreserved : emittedSelectedSites = selectedSites
  faceCheckRequest :
    ∀ {k : Nat}
      (_degreeBound : k + 1 ≤ profile.maximumEmittedDegree)
      (_parent : decomposition.Cell (k + 1))
      (_faceIndex : Fin (k + 1))
      (_orientation : CubicalFaceOrientation),
      CubicalFaceCheckRequest
  faceCheckPreservesSource :
    ∀ {k : Nat}
      (degreeBound : k + 1 ≤ profile.maximumEmittedDegree)
      (parent : decomposition.Cell (k + 1))
      (faceIndex : Fin (k + 1))
      (orientation : CubicalFaceOrientation),
      (faceCheckRequest degreeBound parent faceIndex orientation).check.PreservesSource
        sourceEvidence sourceClaimStatus
  knownLosses : List String
  affectedClaims : List ArtifactIdentity

namespace CubicalQuantizationEmission

variable
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {J : PositiveLinearInvolution State cone}
    {trajectory : PositiveRelaxationTrajectory State cone J}
    {decomposition : FiniteCubicalDecomposition}
    (emission : CubicalQuantizationEmission trajectory decomposition)

/-- The emitted source state is positive because it is a trajectory state. -/
theorem source_positive :
    trajectory.state emission.sourceTime ∈ cone.carrier :=
  trajectory.state_positive emission.sourceTime

/-- Every emitted cell result retains a direct source-lineage edge. -/
theorem derives_from_source
    (k : Fin (emission.profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) :
    emission.sourceEvidence.identity ∈
      (emission.emittedEvidence k cell).derivesFrom :=
  emission.emittedDerivesFromSource k cell

/-- Cubical degree and quantization do not strengthen evidence authority. -/
theorem authority_eq_source
    (k : Fin (emission.profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) :
    (emission.emittedEvidence k cell).authority =
      emission.sourceEvidence.authority :=
  emission.emittedAuthority k cell

/-- Cubical degree and quantization do not advance assurance level. -/
theorem assurance_eq_source
    (k : Fin (emission.profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) :
    (emission.emittedEvidence k cell).level =
      emission.sourceEvidence.level :=
  emission.emittedAssurance k cell

/-- Cubical degree and quantization do not change evidence-production class. -/
theorem evidenceClass_eq_source
    (k : Fin (emission.profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) :
    (emission.emittedEvidence k cell).evidenceClass =
      emission.sourceEvidence.evidenceClass :=
  emission.emittedEvidenceClass k cell

/-- Quantized emission preserves, rather than reclassifies, claim status. -/
theorem claim_status_unchanged :
    emission.emittedClaimStatus = emission.sourceClaimStatus :=
  emission.claimStatusPreserved

/-- Emission does not alter the reductively selected site identities. -/
theorem selected_sites_unchanged :
    emission.emittedSelectedSites = emission.selectedSites :=
  emission.selectedSitesPreserved

/--
The check for every declared face of every emitted positive-dimensional cell
is computed from its decidable request.  A missing comparison is therefore an
explicit obligation, and a failed predicate is an explicit obstruction.
-/
def faceCheck
    {k : Nat}
    (degreeBound : k + 1 ≤ emission.profile.maximumEmittedDegree)
    (parent : decomposition.Cell (k + 1))
    (faceIndex : Fin (k + 1))
    (orientation : CubicalFaceOrientation) : CubicalFaceCheck :=
  (emission.faceCheckRequest degreeBound parent faceIndex orientation).check

/-- Every declared emitted parent face has an explicit computed check. -/
theorem all_declared_parent_faces_checked
    {k : Nat}
    (degreeBound : k + 1 ≤ emission.profile.maximumEmittedDegree)
    (parent : decomposition.Cell (k + 1))
    (faceIndex : Fin (k + 1))
    (orientation : CubicalFaceOrientation) :
    Nonempty CubicalFaceCheck :=
  ⟨emission.faceCheck degreeBound parent faceIndex orientation⟩

/-- Every face outcome retains lineage and the source nonpromotion boundary. -/
theorem face_check_preserves_source
    {k : Nat}
    (degreeBound : k + 1 ≤ emission.profile.maximumEmittedDegree)
    (parent : decomposition.Cell (k + 1))
    (faceIndex : Fin (k + 1))
    (orientation : CubicalFaceOrientation) :
    (emission.faceCheck degreeBound parent faceIndex orientation).PreservesSource
      emission.sourceEvidence emission.sourceClaimStatus :=
  emission.faceCheckPreservesSource degreeBound parent faceIndex orientation

end CubicalQuantizationEmission

/-- Public nonpromotion statement for arbitrary emitted cubical degree. -/
theorem cubical_degree_does_not_increase_authority
    {State : Type u}
    [AddCommMonoid State]
    [Module ℝ State]
    {cone : PositiveCone State}
    {J : PositiveLinearInvolution State cone}
    {trajectory : PositiveRelaxationTrajectory State cone J}
    {decomposition : FiniteCubicalDecomposition}
    (emission : CubicalQuantizationEmission trajectory decomposition)
    (k : Fin (emission.profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) :
    (emission.emittedEvidence k cell).authority =
      emission.sourceEvidence.authority :=
  emission.authority_eq_source k cell

end Surface.ContinuousAssurance
```
