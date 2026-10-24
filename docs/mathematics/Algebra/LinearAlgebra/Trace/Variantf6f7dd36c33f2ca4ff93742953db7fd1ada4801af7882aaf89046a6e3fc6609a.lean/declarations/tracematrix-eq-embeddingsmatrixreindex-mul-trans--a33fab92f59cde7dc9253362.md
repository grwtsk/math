# traceMatrix_eq_embeddingsMatrixReindex_mul_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9aeab141-f0ef-977e-16d5-1768a1feb6e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d29c04f0-8871-4abf-4dc0-d5e4b68d52f8",
  "kind": "theorem",
  "lexical_name": "traceMatrix_eq_embeddingsMatrixReindex_mul_trans",
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
  "slug": "tracematrix-eq-embeddingsmatrixreindex-mul-trans--a33fab92f59cde7dc9253362",
  "source": {
    "blob": "fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 553,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a33fab92f59cde7dc9253362b6e2ce73dbe70c7e997b674105ff4b2fbc806c08",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d29c04f0-8871-4abf-4dc0-d5e4b68d52f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceMatrix_eq_embeddingsMatrixReindex_mul_trans [Fintype κ] (e : κ ≃ (L →ₐ[K] E)) :
    (traceMatrix K b).map (algebraMap K E) =
      embeddingsMatrixReindex K E b e * (embeddingsMatrixReindex K E b e)ᵀ := by
  rw [traceMatrix_eq_embeddingsMatrix_mul_trans, embeddingsMatrixReindex, reindex_apply,
    transpose_submatrix, ← submatrix_mul_transpose_submatrix, ← Equiv.coe_refl, Equiv.refl_symm]
#align algebra.trace_matrix_eq_embeddings_matrix_reindex_mul_trans Algebra.traceMatrix_eq_embeddingsMatrixReindex_mul_trans

end Field

end Algebra

open Algebra

variable (pb : PowerBasis K L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variantf6f7dd36c33f2ca4ff93742953db7fd1ada4801af7882aaf89046a6e3fc6609a.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc6ffb5e9fe55316eef44d6c7a3ae638ddbf617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
