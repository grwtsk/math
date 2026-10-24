# CubicalQuantizationEmission

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5b5094b7ef0cbb78e04609ef2f06f799755b2cbcd07c97f30468a695e518785",
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
  "slug": "cubicalquantizationemission--2c7469b321947cb00978dc3e",
  "source": {
    "blob": "89f8e5fdc8c51e1b5f8675d28abbb8583ccfbb9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant1db3654c1bfb305b58e5a4faf6dab921c8de9550108196584beac03dfab8e252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c7469b321947cb00978dc3eb0e998f692911aa2b27f03e5edbb87d7078cb553",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant1db3654c1bfb305b58e5a4faf6dab921c8de9550108196584beac03dfab8e252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5b5094b7ef0cbb78e04609ef2f06f799755b2cbcd07c97f30468a695e518785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–130.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant1db3654c1bfb305b58e5a4faf6dab921c8de9550108196584beac03dfab8e252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CubicalQuantizationEmission/Variant1db3654c1bfb305b58e5a4faf6dab921c8de9550108196584beac03dfab8e252.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f8e5fdc8c51e1b5f8675d28abbb8583ccfbb9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
