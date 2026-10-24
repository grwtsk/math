# indefiniteDiagonal_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5398a77f3282c2f21325182ae26f06d5e822a79",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf35e9ad08767dd276ccde844d2ec1e74378baf450a94d325a29627a9ec7814f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ed54e74-82e0-7301-7d3c-971cc50bd3cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec13a3ef-a2f5-9b8b-3153-ce56d69e4402",
  "kind": "theorem",
  "lexical_name": "indefiniteDiagonal_assoc",
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
  "slug": "indefinitediagonal-assoc--a2cc2f0c7ed0e64e2cb0cdca",
  "source": {
    "blob": "b5398a77f3282c2f21325182ae26f06d5e822a79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 361,
    "path": "GRWTSK/Algebra/LinearAlgebra/Classical/Variantbf35e9ad08767dd276ccde844d2ec1e74378baf450a94d325a29627a9ec7814f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2cc2f0c7ed0e64e2cb0cdca45fb106bc2483045b3dda7e09f929d1f3c79b666",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Classical/Variantbf35e9ad08767dd276ccde844d2ec1e74378baf450a94d325a29627a9ec7814f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec13a3ef-a2f5-9b8b-3153-ce56d69e4402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indefiniteDiagonal_assoc :
    indefiniteDiagonal (Unit ⊕ l) l R =
      Matrix.reindexLieEquiv (Equiv.sumAssoc Unit l l).symm
        (Matrix.fromBlocks 1 0 0 (indefiniteDiagonal l l R)) := by
  ext ⟨⟨i₁ | i₂⟩ | i₃⟩ ⟨⟨j₁ | j₂⟩ | j₃⟩ <;>
    simp only [indefiniteDiagonal, Matrix.diagonal_apply, Equiv.sumAssoc_apply_inl_inl,
      Matrix.reindexLieEquiv_apply, Matrix.submatrix_apply, Equiv.symm_symm, Matrix.reindex_apply,
      Sum.elim_inl, ite_true, Matrix.one_apply_eq, Matrix.fromBlocks_apply₁₁,
      Equiv.sumAssoc_apply_inl_inr, ite_false, Matrix.fromBlocks_apply₁₂, Matrix.fromBlocks_apply₂₁,
      Matrix.fromBlocks_apply₂₂, Equiv.sumAssoc_apply_inr, Sum.elim_inr, Sum.inl_injective.eq_iff,
      Sum.inr_injective.eq_iff, reduceCtorEq] <;>
    congr 1

/-- An equivalence between two possible definitions of the classical Lie algebra of type B. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Classical/Variantbf35e9ad08767dd276ccde844d2ec1e74378baf450a94d325a29627a9ec7814f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Classical/Variantbf35e9ad08767dd276ccde844d2ec1e74378baf450a94d325a29627a9ec7814f.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5398a77f3282c2f21325182ae26f06d5e822a79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
