# CubicalQuantizationEmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d14bc761cd14e1b19a7f5f1c1fcf9addcd99b728cf301df22f7fb77b4a55adb",
  "kind": "structure",
  "lexical_name": "CubicalQuantizationEmission",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "cubicalquantizationemission--ef6d6033437462486d2df7d6",
  "source": {
    "blob": "ee2eca2eb3f8d6d4169523093d8eb478b9657a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant569d65c29cb35484880f43c9896f7fdc184c72859eb469030654d70d33bbbd3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef6d6033437462486d2df7d603bf8d43d78a72493a6d12c6c6112c7ccb7b26b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant569d65c29cb35484880f43c9896f7fdc184c72859eb469030654d70d33bbbd3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d14bc761cd14e1b19a7f5f1c1fcf9addcd99b728cf301df22f7fb77b4a55adb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant569d65c29cb35484880f43c9896f7fdc184c72859eb469030654d70d33bbbd3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant569d65c29cb35484880f43c9896f7fdc184c72859eb469030654d70d33bbbd3c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee2eca2eb3f8d6d4169523093d8eb478b9657a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
