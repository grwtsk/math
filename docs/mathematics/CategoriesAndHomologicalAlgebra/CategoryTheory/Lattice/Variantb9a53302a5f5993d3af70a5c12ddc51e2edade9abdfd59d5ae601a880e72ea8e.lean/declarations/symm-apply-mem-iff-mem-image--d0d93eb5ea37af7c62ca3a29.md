# symm_apply_mem_iff_mem_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b76e9db851fcb3fa332f44a2a9a755a4419ad5c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 693,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab8a2762-2504-97c5-5a53-195b662ba1f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d56d21b4-6dcc-dd35-72eb-69778b484e9c",
  "kind": "theorem",
  "lexical_name": "symm_apply_mem_iff_mem_image",
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
  "slug": "symm-apply-mem-iff-mem-image--d0d93eb5ea37af7c62ca3a29",
  "source": {
    "blob": "b76e9db851fcb3fa332f44a2a9a755a4419ad5c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 693,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d93eb5ea37af7c62ca3a297c14a9e88a7e5b00890fd196910204b8ba557af8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d56d21b4-6dcc-dd35-72eb-69778b484e9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_apply_mem_iff_mem_image {α β : Type*} (e : α ≃ β) (s : Set α) (x : β) :
    e.symm x ∈ s ↔ x ∈ e '' s :=
  ⟨fun h => ⟨e.symm x, h, by simp⟩, by
    rintro ⟨a, m, rfl⟩
    simpa using m⟩
#align category_theory.subobject.symm_apply_mem_iff_mem_image CategoryTheory.Subobject.symm_apply_mem_iff_mem_image

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variantb9a53302a5f5993d3af70a5c12ddc51e2edade9abdfd59d5ae601a880e72ea8e.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76e9db851fcb3fa332f44a2a9a755a4419ad5c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
