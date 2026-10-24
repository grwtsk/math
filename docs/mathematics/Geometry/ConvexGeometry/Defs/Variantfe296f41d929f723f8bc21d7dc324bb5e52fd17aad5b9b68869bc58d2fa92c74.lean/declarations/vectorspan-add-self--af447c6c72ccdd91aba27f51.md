# vectorSpan_add_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:289d141d-a6d6-57fc-2870-5ec3cda8d656",
  "kind": "lemma",
  "lexical_name": "vectorSpan_add_self",
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
  "slug": "vectorspan-add-self--af447c6c72ccdd91aba27f51",
  "source": {
    "blob": "28f186245aab4571bac1ccc537c76c90f7a9befe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 538,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af447c6c72ccdd91aba27f5146db7da0abeb4f2a6723c41391d0b60eb77113fa",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289d141d-a6d6-57fc-2870-5ec3cda8d656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vectorSpan_add_self (s : Set V) : (vectorSpan k s : Set V) + s = affineSpan k s := by
  ext
  simp [mem_add, coe_affineSpan, spanPoints]
  grind

variable {k}

/-- Adding a point in the affine span and a vector in the spanning submodule produces a point in the
affine span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f186245aab4571bac1ccc537c76c90f7a9befe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
