# vectorSpan_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dda9eda9-3352-fe6a-51ea-c512cabd125a",
  "kind": "lemma",
  "lexical_name": "vectorSpan_of_subsingleton",
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
  "slug": "vectorspan-of-subsingleton--9e9d4bef1abe33bbf50f8f59",
  "source": {
    "blob": "28f186245aab4571bac1ccc537c76c90f7a9befe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 101,
    "path": "GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e9d4bef1abe33bbf50f8f590fe8c915f8049bf59accfa3227e97f0f3c2c8c40",
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

Occurrence: `result:dda9eda9-3352-fe6a-51ea-c512cabd125a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vectorSpan_of_subsingleton {s : Set P} (h : s.Subsingleton) : vectorSpan k s = ⊥ := by
  rcases h.eq_empty_or_singleton with rfl | ⟨p, rfl⟩ <;> simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Defs/Variantfe296f41d929f723f8bc21d7dc324bb5e52fd17aad5b9b68869bc58d2fa92c74.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f186245aab4571bac1ccc537c76c90f7a9befe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
