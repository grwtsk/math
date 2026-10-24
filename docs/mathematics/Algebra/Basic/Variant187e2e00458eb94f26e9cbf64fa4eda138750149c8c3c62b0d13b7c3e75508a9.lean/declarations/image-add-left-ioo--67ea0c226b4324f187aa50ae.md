# image_add_left_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70f5d1ee-c4d7-943e-d112-54ec493dd7f5",
  "kind": "lemma",
  "lexical_name": "image_add_left_Ioo",
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
  "slug": "image-add-left-ioo--67ea0c226b4324f187aa50ae",
  "source": {
    "blob": "0f053a8eb34f4985984802079b9a0c4cbf7ab5f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 87,
    "path": "GRWTSK/Algebra/Basic/Variant187e2e00458eb94f26e9cbf64fa4eda138750149c8c3c62b0d13b7c3e75508a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ea0c226b4324f187aa50aec85b624a6ce8328b6284c25777bf785214e3b48b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant187e2e00458eb94f26e9cbf64fa4eda138750149c8c3c62b0d13b7c3e75508a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70f5d1ee-c4d7-943e-d112-54ec493dd7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma image_add_left_Ioo (a b c : α) : (Ioo a b).image (c + ·) = Ioo (c + a) (c + b) := by
  rw [← map_add_left_Ioo, map_eq_image, addLeftEmbedding, Embedding.coeFn_mk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant187e2e00458eb94f26e9cbf64fa4eda138750149c8c3c62b0d13b7c3e75508a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant187e2e00458eb94f26e9cbf64fa4eda138750149c8c3c62b0d13b7c3e75508a9.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f053a8eb34f4985984802079b9a0c4cbf7ab5f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
