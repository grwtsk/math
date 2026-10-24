# eval_monomial_one_add_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d810e78b13bda310ed88b71413dfc940aab64b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d82f99a2-114c-a9d5-1d25-e96ef3a9886b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71d7c0cf-3c52-f660-42b3-8e1513f020ea",
  "kind": "theorem",
  "lexical_name": "eval_monomial_one_add_sub",
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
  "slug": "eval-monomial-one-add-sub--405586145efd9c70f8e19239",
  "source": {
    "blob": "99d810e78b13bda310ed88b71413dfc940aab64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:405586145efd9c70f8e19239001b84c139649dd22a4bec5d4d0803c582291652",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71d7c0cf-3c52-f660-42b3-8e1513f020ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_monomial_one_add_sub [CommRing S] (d : ℕ) (y : S) :
    eval (1 + y) (monomial d (d + 1 : S)) - eval y (monomial d (d + 1 : S)) =
      ∑ x_1 ∈ range (d + 1), ↑((d + 1).choose x_1) * (↑x_1 * y ^ (x_1 - 1)) := by
  have cast_succ : (d + 1 : S) = ((d.succ : ℕ) : S) := by simp only [Nat.cast_succ]
  rw [cast_succ, eval_monomial, eval_monomial, add_comm, add_pow]
  simp only [one_pow, mul_one, mul_comm (y ^ _) (d.choose _)]
  rw [sum_range_succ, mul_add, Nat.choose_self, Nat.cast_one, one_mul, add_sub_cancel_right,
    mul_sum, sum_range_succ', Nat.cast_zero, zero_mul, mul_zero, add_zero]
  refine sum_congr rfl fun y _hy => ?_
  rw [← mul_assoc, ← mul_assoc, ← Nat.cast_mul, Nat.add_one_mul_choose_eq, Nat.cast_mul,
    Nat.add_sub_cancel]

end Eval

section Comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant81f41446155dd6c8a79d8090cd080bacfc6529e11b32a8dbf54d4399e5fc43c0.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d810e78b13bda310ed88b71413dfc940aab64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
