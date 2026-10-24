# opObjEquiv_mem_degenerate_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38556196fdfa4879c02859703191a4a14a9bce29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:174d7608-bd6b-f721-1456-41f7b8d3703c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a99ded59-6a60-a812-587a-1560c02daad5",
  "kind": "lemma",
  "lexical_name": "opObjEquiv_mem_degenerate_iff",
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
  "slug": "opobjequiv-mem-degenerate-iff--8bf949d2afbf0206b7f642e7",
  "source": {
    "blob": "38556196fdfa4879c02859703191a4a14a9bce29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bf949d2afbf0206b7f642e7ce728af7b75b0e3e73b95796630e0f44045f5216",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99ded59-6a60-a812-587a-1560c02daad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opObjEquiv_mem_degenerate_iff (x : X.op _⦋n⦌) :
    opObjEquiv x ∈ X.degenerate n ↔ x ∈ X.op.degenerate n := by
  simp only [mem_degenerate_iff]
  refine exists_congr (fun m ↦ exists_congr (fun _ ↦ ?_))
  constructor
  · obtain ⟨x, rfl⟩ := opObjEquiv.symm.surjective x
    rintro ⟨f, _, y, rfl⟩
    exact ⟨SimplexCategory.rev.map f, inferInstance, opObjEquiv.symm y, by simp [op_map]⟩
  · rintro ⟨f, _, y, rfl⟩
    exact ⟨SimplexCategory.rev.map f, inferInstance, opObjEquiv y, by simp [op_map]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant4ab0eebfe5b5aa98c353cfdada49fc97fe11f631283d00c5a78b6cd7c7dd6d07.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38556196fdfa4879c02859703191a4a14a9bce29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
