# hasSum_choose_mul_geometric_of_norm_lt_one'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 552,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23239991-83c6-73e5-4487-e1f6dd352efc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51d38c56-4504-ea12-bde0-373a21b91125",
  "kind": "lemma",
  "lexical_name": "hasSum_choose_mul_geometric_of_norm_lt_one'",
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
  "slug": "hassum-choose-mul-geometric-of-norm-lt-one--4e45b7da6577f6ed9ff19bf0",
  "source": {
    "blob": "b033d8917bbd2c274f2bb55e6b07c46c9204db5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 552,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e45b7da6577f6ed9ff19bf08691b8c5ba96b82603dee18899c84571b59ea651",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51d38c56-4504-ea12-bde0-373a21b91125`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_choose_mul_geometric_of_norm_lt_one' (k : ℕ) {r : R} (hr : ‖r‖ < 1) :
    HasSum (fun n ↦ (n + k).choose k * r ^ n) ((1 - r)⁻¹ʳ ^ (k + 1)) := by
  induction k with
  | zero => simpa using hasSum_geom_series_inverse r hr
  | succ k ih =>
      have I1 : Summable (fun (n : ℕ) ↦ ‖(n + k).choose k * r ^ n‖) := by
        apply summable_norm_mul_geometric_of_norm_lt_one (k := k) hr
        apply isBigO_iff.2 ⟨2 ^ k, ?_⟩
        filter_upwards [Ioi_mem_atTop k] with n (hn : k < n)
        simp only [Real.norm_eq_abs, abs_cast, cast_pow, norm_pow]
        norm_cast
        calc (n + k).choose k
          _ ≤ (2 * n).choose k := choose_le_choose k (by lia)
          _ ≤ (2 * n) ^ k := Nat.choose_le_pow _ _
          _ = 2 ^ k * n ^ k := Nat.mul_pow 2 n k
      convert!
        hasSum_sum_range_mul_of_summable_norm' I1 ih.summable
          (summable_norm_geometric_of_norm_lt_one hr) (summable_geometric_of_norm_lt_one hr) with
        n
      · have : ∑ i ∈ Finset.range (n + 1), ↑((i + k).choose k) * r ^ i * r ^ (n - i) =
            ∑ i ∈ Finset.range (n + 1), ↑((i + k).choose k) * r ^ n := by
          apply Finset.sum_congr rfl (fun i hi ↦ ?_)
          simp only [Finset.mem_range] at hi
          rw [mul_assoc, ← pow_add, show i + (n - i) = n by lia]
        simp [this, ← sum_mul, ← Nat.cast_sum, sum_range_add_choose n k, add_assoc]
      · rw [ih.tsum_eq, (hasSum_geom_series_inverse r hr).tsum_eq, pow_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b033d8917bbd2c274f2bb55e6b07c46c9204db5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
