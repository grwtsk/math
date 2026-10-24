# QuantizationFaceObstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd53b734d3ba635c9bce457ea81b39c5c34552e6e043ad68a5ea692bc238d573",
  "kind": "structure",
  "lexical_name": "QuantizationFaceObstruction",
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
  "slug": "quantizationfaceobstruction--7cd0fc8dd36a0fd2d3c15bfd",
  "source": {
    "blob": "db742b6c8a559c6be677decabda66708087ab293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 551,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cd0fc8dd36a0fd2d3c15bfd66379dd921fba275b14af9af61dc001bc59f94c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd53b734d3ba635c9bce457ea81b39c5c34552e6e043ad68a5ea692bc238d573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuantizationFaceObstruction where
  identity : ArtifactIdentity
  parentCell : ArtifactIdentity
  faceCell : ArtifactIdentity
  dimension : Nat
  faceIndex : Nat
  orientation : CubicalFaceOrientation
  sourceResolution : ResolutionBits
  targetResolution : ResolutionBits
  comparison : TransformationContract
  knownLosses : List String
  affectedClaims : List ArtifactIdentity
  evidence : ProgressiveEvidence
  sourceEvidence : ProgressiveEvidence
  sourceClaimStatus : ClaimStatus
  derives_from_source : sourceEvidence.identity ∈ evidence.derivesFrom
  assuranceLevel : AssuranceLevel
  authority : AuthorityClass
  status : ClaimStatus
  assurance_matches_evidence : assuranceLevel = evidence.level
  authority_matches_evidence : authority = evidence.authority
  assurance_matches_source : assuranceLevel = sourceEvidence.level
  authority_matches_source : authority = sourceEvidence.authority
  status_matches_source : status = sourceClaimStatus
  generatedRequiresAttention : Bool
  requiresAttention_spec : generatedRequiresAttention = true
  reductionStage : String

/-- A missing comparison map is retained as an unresolved, stable obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CubicalQuantization/Variantacfc698aa772aa560bb6753080ecd5db164b83ae688935f87c04281404442e46.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db742b6c8a559c6be677decabda66708087ab293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
