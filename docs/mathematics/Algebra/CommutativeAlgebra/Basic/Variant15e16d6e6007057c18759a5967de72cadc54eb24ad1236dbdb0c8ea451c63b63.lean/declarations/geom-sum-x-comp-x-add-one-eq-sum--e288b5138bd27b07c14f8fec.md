# geom_sum_X_comp_X_add_one_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2d95319974c8cecbcdd6b3c0ca4975e56f96109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0154e12-0649-534f-4812-33be71c123be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1c5e19e-5f19-1db4-a8c1-20d80e064bcb",
  "kind": "theorem",
  "lexical_name": "geom_sum_X_comp_X_add_one_eq_sum",
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
  "slug": "geom-sum-x-comp-x-add-one-eq-sum--e288b5138bd27b07c14f8fec",
  "source": {
    "blob": "f2d95319974c8cecbcdd6b3c0ca4975e56f96109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 224,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e288b5138bd27b07c14f8fecdbaa411acd357c55af5dfbb532f2a88c7baa53f1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c5e19e-5f19-1db4-a8c1-20d80e064bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geom_sum_X_comp_X_add_one_eq_sum (n : ℕ) :
    (∑ i ∈ range n, (X : R[X]) ^ i).comp (X + 1) =
      (Finset.range n).sum fun i : ℕ => (n.choose (i + 1) : R[X]) * X ^ i := by
  ext i
  trans (n.choose (i + 1) : R); swap
  · simp only [finsetSum_coeff, ← C_eq_natCast, coeff_C_mul_X_pow]
    rw [Finset.sum_eq_single i, ite_eq_left rfl]
    · simp +contextual only [@eq_comm _ i, ite_false,
        imp_true_iff]
    · simp +contextual only [Nat.lt_add_one_iff, Nat.choose_eq_zero_of_lt,
        Nat.cast_zero, Finset.mem_range, not_lt, ite_true, imp_true_iff]
  induction n generalizing i with
  | zero => dsimp; simp only [zero_comp, coeff_zero, Nat.cast_zero]
  | succ n ih =>
    simp only [geom_sum_succ', ih, add_comp, X_pow_comp, coeff_add, Nat.choose_succ_succ,
      Nat.cast_add, coeff_X_add_one_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2d95319974c8cecbcdd6b3c0ca4975e56f96109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
