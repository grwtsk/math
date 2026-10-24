# hasDimensionLT_iff_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fc2d633ebaeaec4532adad38e94f15c44a367d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5edd7c96-1198-b536-cc5d-c86f51456559",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb8af32c-74cd-a9f4-7dff-590db0b189f1",
  "kind": "lemma",
  "lexical_name": "hasDimensionLT_iff_of_iso",
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
  "slug": "hasdimensionlt-iff-of-iso--ac25e5cd6f589aac3d48470e",
  "source": {
    "blob": "5fc2d633ebaeaec4532adad38e94f15c44a367d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 116,
    "path": "GRWTSK/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac25e5cd6f589aac3d48470e0cd0f375f4454eebbd234aa10eaaf675fb162a4c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb8af32c-74cd-a9f4-7dff-590db0b189f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDimensionLT_iff_of_iso {X Y : SSet.{u}} (e : X ≅ Y) (d : ℕ) :
    X.HasDimensionLT d ↔ Y.HasDimensionLT d :=
  ⟨fun _ ↦ hasDimensionLT_of_epi e.hom d, fun _ ↦ hasDimensionLT_of_epi e.inv d⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Dimension/Variant5addf43c4ed0fea76c188ddfddb493fdd5038ab0e4fddc623cfad9c418abcad3.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc2d633ebaeaec4532adad38e94f15c44a367d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
