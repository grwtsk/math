# inv_kronecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c902cf18353ddd4d165a05b38a5105833f73d95e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 716,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:595ef929-5605-67d4-7777-6db71e9cc979",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16d0e05e-7d1d-6537-efee-3ef240471dd2",
  "kind": "theorem",
  "lexical_name": "inv_kronecker",
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
  "slug": "inv-kronecker--79edbba18bf12588d2dd77c9",
  "source": {
    "blob": "c902cf18353ddd4d165a05b38a5105833f73d95e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 748,
    "line": 716,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonsingularInverse/Variant8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79edbba18bf12588d2dd77c972a843fde0696c84824ba8af48fa379f2eed55ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonsingularInverse/Variant8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16d0e05e-7d1d-6537-efee-3ef240471dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–748.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_kronecker [Fintype m] [DecidableEq m]
    (A : Matrix m m α) (B : Matrix n n α) : (A ⊗ₖ B)⁻¹ = A⁻¹ ⊗ₖ B⁻¹ := by
  -- handle the special cases where either matrix is not invertible
  by_cases hA : IsUnit A.det
  swap
  · cases isEmpty_or_nonempty n
    · subsingleton
    have hAB : ¬IsUnit (A ⊗ₖ B).det := by
      refine mt (fun hAB => ?_) hA
      rw [det_kronecker] at hAB
      exact (isUnit_pow_iff Fintype.card_ne_zero).mp (isUnit_of_mul_isUnit_left hAB)
    rw [nonsing_inv_apply_not_isUnit _ hA, zero_kronecker, nonsing_inv_apply_not_isUnit _ hAB]
  by_cases hB : IsUnit B.det; swap
  · cases isEmpty_or_nonempty m
    · subsingleton
    have hAB : ¬IsUnit (A ⊗ₖ B).det := by
      refine mt (fun hAB => ?_) hB
      rw [det_kronecker] at hAB
      exact (isUnit_pow_iff Fintype.card_ne_zero).mp (isUnit_of_mul_isUnit_right hAB)
    rw [nonsing_inv_apply_not_isUnit _ hB, kronecker_zero, nonsing_inv_apply_not_isUnit _ hAB]
  -- otherwise follows trivially from `mul_kronecker_mul`
  · apply inv_eq_right_inv
    rw [← mul_kronecker_mul, ← one_kronecker_one, mul_nonsing_inv _ hA, mul_nonsing_inv _ hB]


/-! ### More results about determinants -/


section Det

variable [Fintype m] [DecidableEq m]

/-- A variant of `Matrix.det_units_conj`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonsingularInverse/Variant8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonsingularInverse/Variant8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c902cf18353ddd4d165a05b38a5105833f73d95e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
