# Assignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a605d800b7402704835a0acc0e12f1ed2141737b7717134bb9feb43a8afa3d5e",
  "kind": "structure",
  "lexical_name": "Assignment",
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
  "slug": "assignment--74dc50897be07dd314b546a7",
  "source": {
    "blob": "1554b4b24b81ef8f05da33096ea28fac856e6a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74dc50897be07dd314b546a7b3778d86cba871241b0fc87cd3f361911b7e8825",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a605d800b7402704835a0acc0e12f1ed2141737b7717134bb9feb43a8afa3d5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Assignment where
  entityId : EntityId
  disposition : PrimaryDisposition
  references : Finset Reference
  sourceDigest : Digest
  semanticFingerprint : Digest
  evidence : AssignmentEvidence
  evidenceDigest : Digest
  deriving DecidableEq

namespace PrimaryDisposition

/-- The primary concept, when the disposition has one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Assignment/Variant169ccb670f2736678f723ea5cd54353bc2d563c1fc68d4747070e8ed6cd7da66.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1554b4b24b81ef8f05da33096ea28fac856e6a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
