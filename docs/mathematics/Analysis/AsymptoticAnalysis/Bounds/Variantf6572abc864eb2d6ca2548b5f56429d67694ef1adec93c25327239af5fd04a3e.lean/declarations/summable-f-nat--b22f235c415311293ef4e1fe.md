# summable_f_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "784ecab95ef493db2cd246f0ba7e6b0a2555bccf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb6a5c9f-0dea-1286-f45f-b90788d8e175",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6333f293-b5d6-7886-dc45-b8cd15513d24",
  "kind": "lemma",
  "lexical_name": "summable_f_nat",
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
  "slug": "summable-f-nat--b22f235c415311293ef4e1fe",
  "source": {
    "blob": "784ecab95ef493db2cd246f0ba7e6b0a2555bccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 85,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b22f235c415311293ef4e1feb31a90618bd8e455f16226f29aef95143734e2dc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6333f293-b5d6-7886-dc45-b8cd15513d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_f_nat (k : ℕ) (a : ℝ) {t : ℝ} (ht : 0 < t) : Summable (f_nat k a t) := by
  have : Summable fun n : ℕ ↦ n ^ k * exp (-π * (n + a) ^ 2 * t) := by
    refine (((summable_pow_mul_jacobiTheta₂_term_bound (|a| * t) ht k).mul_right
      (rexp (-π * a ^ 2 * t))).comp_injective Nat.cast_injective).of_norm_bounded _ (fun n ↦ ?_)
    simp_rw [mul_assoc, Function.comp_apply, ← Real.exp_add, norm_mul, norm_pow, Int.cast_abs,
      Int.cast_natCast, norm_eq_abs, Nat.abs_cast, abs_exp]
    refine mul_le_mul_of_nonneg_left ?_ (pow_nonneg (Nat.cast_nonneg _) _)
    rw [exp_le_exp, ← sub_nonneg]
    rw [show -π * (t * n ^ 2 - 2 * (|a| * (t * n))) + -π * (a ^ 2 * t) - -π * ((n + a) ^ 2 * t)
         = π * t * n * (|a| + a) * 2 by ring]
    refine mul_nonneg (mul_nonneg (by positivity) ?_) two_pos.le
    rw [← neg_le_iff_add_nonneg]
    apply neg_le_abs
  apply (this.mul_left (2 ^ k)).of_norm_bounded_eventually_nat
  simp_rw [← mul_assoc, f_nat, norm_mul, norm_eq_abs, abs_exp,
    mul_le_mul_iff_of_pos_right (exp_pos _), ← mul_pow, abs_pow, two_mul]
  filter_upwards [eventually_ge_atTop (Nat.ceil |a|)] with n hn
  gcongr
  exact (abs_add_le ..).trans (add_le_add (Nat.abs_cast _).le (Nat.ceil_le.mp hn))

section k_eq_zero

/-!
## Sum over `ℕ` with `k = 0`

Here we use direct comparison with a geometric series.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ecab95ef493db2cd246f0ba7e6b0a2555bccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
