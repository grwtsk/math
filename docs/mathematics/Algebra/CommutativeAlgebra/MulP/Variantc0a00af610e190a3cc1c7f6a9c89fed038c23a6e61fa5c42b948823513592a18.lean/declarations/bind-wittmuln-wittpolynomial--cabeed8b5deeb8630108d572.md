# bind₁_wittMulN_wittPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50459b14-033c-84a1-9282-8cdc6bdf6980",
  "kind": "theorem",
  "lexical_name": "bind₁_wittMulN_wittPolynomial",
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
  "slug": "bind-wittmuln-wittpolynomial--cabeed8b5deeb8630108d572",
  "source": {
    "blob": "f239ad00aabdcc2ef2aae1902c5dc1b9395e9eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cabeed8b5deeb8630108d572e3de8ca766b7b2f52e951e826eb31d8c3f26504b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50459b14-033c-84a1-9282-8cdc6bdf6980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind₁_wittMulN_wittPolynomial (n k : ℕ) :
    bind₁ (wittMulN p n) (wittPolynomial p ℤ k) = n * wittPolynomial p ℤ k := by
  induction' n with n ih
  · simp [wittMulN, Nat.cast_zero, zero_mul, bind₁_zero_wittPolynomial]
  · rw [wittMulN, ← bind₁_bind₁, wittAdd, wittStructureInt_prop]
    simp only [map_add, Nat.cast_succ, bind₁_X_right]
    rw [add_mul, one_mul, bind₁_rename, bind₁_rename]
    simp only [ih, Function.uncurry, Function.comp_def, bind₁_X_left, AlgHom.id_apply,
      Matrix.cons_val_zero, Matrix.head_cons, Matrix.cons_val_one]

end

end WittVector
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MulP/Variantc0a00af610e190a3cc1c7f6a9c89fed038c23a6e61fa5c42b948823513592a18.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f239ad00aabdcc2ef2aae1902c5dc1b9395e9eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
