# min_mul_length_le_sum_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:931a8549-f5f0-ba49-616b-c2534adc9b56",
  "kind": "theorem",
  "lexical_name": "min_mul_length_le_sum_nat",
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
  "slug": "min-mul-length-le-sum-nat--b21522ccac7d8f7ec5f7e443",
  "source": {
    "blob": "818b1ecd0a72048e4c53e074ae36a27651d66e86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21522ccac7d8f7ec5f7e4431c2b31eb3f270ef453c88a2a9a66445a9a255767",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:931a8549-f5f0-ba49-616b-c2534adc9b56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min_mul_length_le_sum_nat {xs : List Nat} (h : xs ≠ []) :
    xs.min h * xs.length ≤ xs.sum := by
  induction xs
  · contradiction
  · rename_i x xs ih
    cases xs
    · simp_all [List.min_singleton]
    · simp only [ne_eq, reduceCtorEq, not_false_eq_true, min_eq_get_min?,
      List.min?_cons (α := Nat), Option.get_some, length_cons,
      forall_const] at ih ⊢
      rw [Nat.mul_add, Nat.mul_one, Nat.add_comm]
      apply Nat.add_le_add
      · apply Nat.min_le_left
      · refine Nat.le_trans ?_ ih
        rw [Nat.mul_le_mul_right_iff (by omega)]
        apply Nat.min_le_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant38a28e002f2d429115423780d318624fc8ecafada75b6a3b92636c19249da851.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `818b1ecd0a72048e4c53e074ae36a27651d66e86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
