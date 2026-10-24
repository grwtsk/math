# det_fromBlocks₂₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e24cf1bd-a5e9-ea75-0d06-1b87b25e7698",
  "kind": "theorem",
  "lexical_name": "det_fromBlocks₂₂",
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
  "slug": "det-fromblocks--3d435d6aaa283ef0c242b4cc",
  "source": {
    "blob": "e59d6048d6cb307cdee7c9aa697c59463c0b30b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 418,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d435d6aaa283ef0c242b4cc58aab96096c77cdab8d70409780a2192f3ade6ae",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e24cf1bd-a5e9-ea75-0d06-1b87b25e7698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_fromBlocks₂₂ (A : Matrix m m α) (B : Matrix m n α) (C : Matrix n m α)
    (D : Matrix n n α) [Invertible D] :
    (Matrix.fromBlocks A B C D).det = det D * det (A - B * ⅟ D * C) := by
  have : fromBlocks A B C D =
      (fromBlocks D C B A).submatrix (Equiv.sumComm _ _) (Equiv.sumComm _ _) := by
    ext (i j)
    cases i <;> cases j <;> rfl
  rw [this, det_submatrix_equiv_self, det_fromBlocks₁₁]
#align matrix.det_from_blocks₂₂ Matrix.det_fromBlocks₂₂

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59d6048d6cb307cdee7c9aa697c59463c0b30b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
