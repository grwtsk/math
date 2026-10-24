# _root_.Submodule.vadd_set_subset_vadd_set_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28c38f9604cea2534ae88428e9e1c4b629463b11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68dfc95d-642c-772e-061c-8c7603ce869a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4cf7856-d69a-8567-0b4e-605f64ed5fda",
  "kind": "theorem",
  "lexical_name": "_root_.Submodule.vadd_set_subset_vadd_set_iff",
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
  "slug": "root-submodule-vadd-set-subset-vadd-set-iff--ca17dc2dd17423e9ccae88d5",
  "source": {
    "blob": "28c38f9604cea2534ae88428e9e1c4b629463b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca17dc2dd17423e9ccae88d5ca2d0872aa78b444db5819caa0f96287a3951005",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4cf7856-d69a-8567-0b4e-605f64ed5fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Submodule.vadd_set_subset_vadd_set_iff :
    x +ᵥ (U : Set M) ⊆ y +ᵥ (U : Set M) ↔ x ≡ y [SMOD U] := by
  rw [SModEq.sub_mem]
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [Set.vadd_set_subset_iff_subset_neg_vadd_set, vadd_vadd, neg_add_eq_sub] at h
    simpa [Set.mem_vadd_set_iff_neg_vadd_mem] using h U.zero_mem
  · rw [Set.vadd_set_subset_iff_subset_neg_vadd_set, vadd_vadd, neg_add_eq_sub]
    intro z hz
    simpa [Set.mem_vadd_set_iff_neg_vadd_mem] using U.add_mem h hz

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantef8c9200e0c40bdb47d830d4c627577c546fa577bf2fe32e34562230513147d2.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c38f9604cea2534ae88428e9e1c4b629463b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
