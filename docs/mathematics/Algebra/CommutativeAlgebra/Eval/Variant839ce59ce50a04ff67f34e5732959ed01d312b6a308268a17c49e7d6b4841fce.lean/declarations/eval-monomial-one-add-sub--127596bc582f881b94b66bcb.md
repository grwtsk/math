# eval_monomial_one_add_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fa93862-aee9-0cd5-39c4-919a88854f54",
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
  "slug": "eval-monomial-one-add-sub--127596bc582f881b94b66bcb",
  "source": {
    "blob": "c803964f6b2b62797c4854e566346e08ac1196b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 421,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:127596bc582f881b94b66bcb1051991ed6afef22f469e907fca576d0c9bc1b4c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fa93862-aee9-0cd5-39c4-919a88854f54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_monomial_one_add_sub [CommRing S] (d : ℕ) (y : S) :
    eval (1 + y) (monomial d (d + 1 : S)) - eval y (monomial d (d + 1 : S)) =
      ∑ x_1 : ℕ in range (d + 1), ↑((d + 1).choose x_1) * (↑x_1 * y ^ (x_1 - 1)) := by
  have cast_succ : (d + 1 : S) = ((d.succ : ℕ) : S) := by simp only [Nat.cast_succ]
  rw [cast_succ, eval_monomial, eval_monomial, add_comm, add_pow]
  -- Porting note: `apply_congr` hadn't been ported yet, so `congr` & `ext` is used.
  conv_lhs =>
    congr
    · congr
      · skip
      · congr
        · skip
        · ext
          rw [one_pow, mul_one, mul_comm]
  rw [sum_range_succ, mul_add, Nat.choose_self, Nat.cast_one, one_mul, add_sub_cancel, mul_sum,
    sum_range_succ', Nat.cast_zero, zero_mul, mul_zero, add_zero]
  refine sum_congr rfl fun y _hy => ?_
  rw [← mul_assoc, ← mul_assoc, ← Nat.cast_mul, Nat.succ_mul_choose_eq, Nat.cast_mul,
    Nat.add_sub_cancel]
#align polynomial.eval_monomial_one_add_sub Polynomial.eval_monomial_one_add_sub

/-- `Polynomial.eval` as linear map -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant839ce59ce50a04ff67f34e5732959ed01d312b6a308268a17c49e7d6b4841fce.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c803964f6b2b62797c4854e566346e08ac1196b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
