# aeval_self_charpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf61c7c7392d447d564072994f8f88a2952017a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddbf7fb1-e26c-d9f6-8702-7b22a7cfbe98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0d9fe57-adaf-e2de-80dc-f27b25063184",
  "kind": "theorem",
  "lexical_name": "aeval_self_charpoly",
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
  "slug": "aeval-self-charpoly--1f12329f53c207fc14a70cc8",
  "source": {
    "blob": "bf61c7c7392d447d564072994f8f88a2952017a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 216,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f12329f53c207fc14a70cc8c679062b4ac11ee075070dbfe6f48fab0720b577",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0d9fe57-adaf-e2de-80dc-f27b25063184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_self_charpoly (M : Matrix n n R) : aeval M M.charpoly = 0 := by
  -- We begin with the fact $χ_M(t) I = adjugate (t I - M) * (t I - M)$,
  -- as an identity in `Matrix n n R[X]`.
  have h : M.charpoly • (1 : Matrix n n R[X]) = adjugate (charmatrix M) * charmatrix M :=
    (adjugate_mul _).symm
  -- Using the algebra isomorphism `Matrix n n R[X] ≃ₐ[R] Polynomial (Matrix n n R)`,
  -- we have the same identity in `Polynomial (Matrix n n R)`.
  apply_fun matPolyEquiv at h
  simp only [map_mul, matPolyEquiv_charmatrix] at h
  -- Because the coefficient ring `Matrix n n R` is non-commutative,
  -- evaluation at `M` is not multiplicative.
  -- However, any polynomial which is a product of the form $N * (t I - M)$
  -- is sent to zero, because the evaluation function puts the polynomial variable
  -- to the right of any coefficients, so everything telescopes.
  apply_fun fun p => p.eval M at h
  rw [eval_mul_X_sub_C] at h
  -- Now $χ_M (t) I$, when thought of as a polynomial of matrices
  -- and evaluated at some `N` is exactly $χ_M (N)$.
  rw [matPolyEquiv_smul_one, eval_map] at h
  -- Thus we have $χ_M(M) = 0$, which is the desired result.
  exact h

set_option backward.defeqAttrib.useBackward true in
/--
A version of `Matrix.charpoly_mul_comm` for rectangular matrices.
See also `Matrix.charpoly_mul_comm_of_le` which has just `(A * B).charpoly` as the LHS.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant27999a02f480995bda68950253125f44cefcfaff12b25cd837e6dd9b16f8d506.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf61c7c7392d447d564072994f8f88a2952017a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
