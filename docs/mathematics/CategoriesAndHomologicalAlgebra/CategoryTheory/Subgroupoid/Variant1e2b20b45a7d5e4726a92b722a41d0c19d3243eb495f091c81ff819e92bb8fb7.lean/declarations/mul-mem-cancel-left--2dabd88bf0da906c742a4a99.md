# mul_mem_cancel_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b8108218b024547c2d5d3573d3567d11971be0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61b0f790-58b4-19e0-d63e-ed17798c6201",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e56d1c12-c63a-63dc-c75b-06e010fc8f84",
  "kind": "theorem",
  "lexical_name": "mul_mem_cancel_left",
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
  "slug": "mul-mem-cancel-left--2dabd88bf0da906c742a4a99",
  "source": {
    "blob": "1b8108218b024547c2d5d3573d3567d11971be0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dabd88bf0da906c742a4a99c517ce430688624e45d271c389bc92949763ba83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e56d1c12-c63a-63dc-c75b-06e010fc8f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_mem_cancel_left {c d e : C} {f : c ⟶ d} {g : d ⟶ e} (hf : f ∈ S.arrows c d) :
    f ≫ g ∈ S.arrows c e ↔ g ∈ S.arrows d e := by
  constructor
  · rintro h
    suffices Groupoid.inv f ≫ f ≫ g ∈ S.arrows d e by
      simpa only [inv_eq_inv, IsIso.inv_hom_id_assoc] using this
    apply S.mul (S.inv hf) h
  · apply S.mul hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subgroupoid/Variant1e2b20b45a7d5e4726a92b722a41d0c19d3243eb495f091c81ff819e92bb8fb7.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b8108218b024547c2d5d3573d3567d11971be0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
