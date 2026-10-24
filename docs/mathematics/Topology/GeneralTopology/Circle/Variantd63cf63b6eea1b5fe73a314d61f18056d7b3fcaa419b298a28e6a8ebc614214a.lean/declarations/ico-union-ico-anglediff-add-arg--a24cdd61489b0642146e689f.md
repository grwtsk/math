# Ico_union_Ico_angleDiff_add_arg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b680ffae-7005-5b27-ba1f-0ed21dc683b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:074f3d9a-7ac1-54b3-b37d-c11ddcba44dd",
  "kind": "lemma",
  "lexical_name": "Ico_union_Ico_angleDiff_add_arg",
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
  "slug": "ico-union-ico-anglediff-add-arg--a24cdd61489b0642146e689f",
  "source": {
    "blob": "bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24cdd61489b0642146e689f9449c148062ee0b284c40755be5d43a145538c0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:074f3d9a-7ac1-54b3-b37d-c11ddcba44dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ico_union_Ico_angleDiff_add_arg (h : x ≠ y) :
    Ico x.val.arg (angleDiff x y + x.val.arg) ∪ Ico y.val.arg (angleDiff y x + y.val.arg) =
    Ico (min x.val.arg y.val.arg) (min x.val.arg y.val.arg + 2 * π) := by
  grind [arg_eq_arg, arg_lt_arg_add_two_pi y x, arg_lt_arg_add_two_pi x y]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variantd63cf63b6eea1b5fe73a314d61f18056d7b3fcaa419b298a28e6a8ebc614214a.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe3b0b7b766aa8eab8ed5552fe35d2be9688f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
