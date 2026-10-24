# normalizedOverlapHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:238fdc6548f86ccddefd859624313a7bb24c0337ecc83c66e90c5cb45bf2d0c9",
  "kind": "def",
  "lexical_name": "normalizedOverlapHomeomorph",
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
  "slug": "normalizedoverlaphomeomorph--7b2844a12ff76393398e0574",
  "source": {
    "blob": "eb59a47773381d8349d660e1fea435dafb6c636f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 202,
    "path": "GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b2844a12ff76393398e05745cc42b9d5aa0eca32c8df24c823d4e645851b480",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:238fdc6548f86ccddefd859624313a7bb24c0337ecc83c66e90c5cb45bf2d0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedOverlapHomeomorph (I J : Fin k ↪o Fin n) :
    NormalizedPivotOverlap I J ≃ₜ NormalizedPivotOverlap J I where
  toFun := normalizedOverlapChange I J
  invFun := normalizedOverlapChange J I
  left_inv := normalizedOverlapChange_inverse I J
  right_inv := normalizedOverlapChange_inverse J I
  continuous_toFun := continuous_normalizedOverlapChange I J
  continuous_invFun := continuous_normalizedOverlapChange J I

section Cech

variable {X ι : Type*} [TopologicalSpace X]

/-- A degree has an index tuple and the retained points of its full overlap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb59a47773381d8349d660e1fea435dafb6c636f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
