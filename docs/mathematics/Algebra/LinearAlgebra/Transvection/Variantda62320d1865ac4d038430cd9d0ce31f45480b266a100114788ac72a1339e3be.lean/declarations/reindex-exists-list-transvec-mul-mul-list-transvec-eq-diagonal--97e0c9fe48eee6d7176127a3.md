# reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa0e078-9272-83f3-425e-c1e578835156",
  "kind": "theorem",
  "lexical_name": "reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal",
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
  "slug": "reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal--97e0c9fe48eee6d7176127a3",
  "source": {
    "blob": "851347c72252710a76c813eb44f1d73c3eb541bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 624,
    "path": "GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97e0c9fe48eee6d7176127a3dad34b00558ac49c99f7b028e2ee44b0ce8e42d1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa0e078-9272-83f3-425e-c1e578835156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal (M : Matrix p p 𝕜)
    (e : p ≃ n)
    (H :
      ∃ (L L' : List (TransvectionStruct n 𝕜)) (D : n → 𝕜),
        (L.map toMatrix).prod * Matrix.reindexAlgEquiv 𝕜 _ e M * (L'.map toMatrix).prod =
          diagonal D) :
    ∃ (L L' : List (TransvectionStruct p 𝕜)) (D : p → 𝕜),
      (L.map toMatrix).prod * M * (L'.map toMatrix).prod = diagonal D := by
  rcases H with ⟨L₀, L₀', D₀, h₀⟩
  refine ⟨L₀.map (reindexEquiv e.symm), L₀'.map (reindexEquiv e.symm), D₀ ∘ e, ?_⟩
  have : M = reindexAlgEquiv 𝕜 _ e.symm (reindexAlgEquiv 𝕜 _ e M) := by
    simp only [Equiv.symm_symm, submatrix_submatrix, reindex_apply, submatrix_id_id,
      Equiv.symm_comp_self, reindexAlgEquiv_apply]
  rw [this]
  simp only [toMatrix_reindexEquiv_prod, List.map_map, reindexAlgEquiv_apply]
  simp only [← reindexAlgEquiv_apply 𝕜, ← reindexAlgEquiv_mul, h₀]
  simp only [Equiv.symm_symm, reindex_apply, submatrix_diagonal_equiv, reindexAlgEquiv_apply]

/-- Any matrix can be reduced to diagonal form by elementary operations. Formulated here on `Type 0`
because we will make an induction using `Fin r`.
See `exists_list_transvec_mul_mul_list_transvec_eq_diagonal` for the general version (which follows
from this one and reindexing). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Transvection/Variantda62320d1865ac4d038430cd9d0ce31f45480b266a100114788ac72a1339e3be.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `851347c72252710a76c813eb44f1d73c3eb541bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
