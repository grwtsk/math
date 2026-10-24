# abs_weighted_sum_le_of_shift_prefix_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c39f1f0-7e53-7426-34fb-5e2090a092d4",
  "kind": "theorem",
  "lexical_name": "abs_weighted_sum_le_of_shift_prefix_bound",
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
  "slug": "abs-weighted-sum-le-of-shift-prefix-bound--edca522eca7f478f607e789b",
  "source": {
    "blob": "f8e744cbdb96b5038bb19c69ea1bfc2ab8e1fc53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 110,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edca522eca7f478f607e789bb218e808addcc60e47648cf2a9e4763af7bd1eff",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c39f1f0-7e53-7426-34fb-5e2090a092d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_weighted_sum_le_of_shift_prefix_bound
    (x q : ℕ → ℝ) (N : ℕ) {U : ℝ}
    (hU : 0 ≤ U)
    (hprefix : ∀ n : ℕ, n ≤ N →
      |∑ k ∈ Finset.range n, x k| ≤ U)
    (hdrop : ∀ t : ℕ, t < N → 0 ≤ q t - q (t + 1))
    (hterminal : q N = 0) :
    |∑ k ∈ Finset.range N, x k * q k| ≤ U * q 0 := by
  rw [finite_abel_prefix_mean, hterminal, mul_zero, add_zero]
  calc
    |∑ t ∈ Finset.range N,
        (∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))| ≤
      ∑ t ∈ Finset.range N,
        |(∑ k ∈ Finset.range (t + 1), x k) *
          (q t - q (t + 1))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = ∑ t ∈ Finset.range N,
        |∑ k ∈ Finset.range (t + 1), x k| *
          (q t - q (t + 1)) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [abs_mul, abs_of_nonneg (hdrop t (Finset.mem_range.mp ht))]
    _ ≤ ∑ t ∈ Finset.range N,
        U * (q t - q (t + 1)) := by
      apply Finset.sum_le_sum
      intro t ht
      exact mul_le_mul_of_nonneg_right
        (hprefix (t + 1) (Nat.succ_le_iff.mpr (Finset.mem_range.mp ht)))
        (hdrop t (Finset.mem_range.mp ht))
    _ = U * (∑ t ∈ Finset.range N, (q t - q (t + 1))) := by
      rw [← Finset.mul_sum]
    _ = U * (q 0 - q N) := by
      rw [finite_weight_drop_telescope_mean]
    _ = U * q 0 := by rw [hterminal, sub_zero]

/-- One shift-wise envelope pays the corresponding weighted shift contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicMeanMertensTwoPointPrefix.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e744cbdb96b5038bb19c69ea1bfc2ab8e1fc53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
