# norm_jacobiTheta_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77927975-802f-e574-6044-8a9dd006799e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afe89b28-f539-9503-e8e5-7d093bc40712",
  "kind": "theorem",
  "lexical_name": "norm_jacobiTheta_sub_one_le",
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
  "slug": "norm-jacobitheta-sub-one-le--7e65c1f6bdca916ccf8e8590",
  "source": {
    "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 135,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e65c1f6bdca916ccf8e859013f0e86d0ead82e7b24e9f07db8040f3535bd2cb",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afe89b28-f539-9503-e8e5-7d093bc40712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_jacobiTheta_sub_one_le {z : ℂ} (hz : 0 < im z) :
    ‖jacobiTheta z - 1‖ ≤ 2 / (1 - rexp (-π * z.im)) * rexp (-π * z.im) := by
  suffices ‖∑' n : ℕ, cexp (π * I * ((n : ℂ) + 1) ^ 2 * z)‖ ≤
      rexp (-π * z.im) / (1 - rexp (-π * z.im)) by
    calc
      ‖jacobiTheta z - 1‖ = ↑2 * ‖∑' n : ℕ, cexp (π * I * ((n : ℂ) + 1) ^ 2 * z)‖ := by
        rw [sub_eq_iff_eq_add'.mpr (jacobiTheta_eq_tsum_nat hz), norm_mul, Complex.norm_eq_abs,
          Complex.abs_two]
      _ ≤ 2 * (rexp (-π * z.im) / (1 - rexp (-π * z.im))) := by
        rwa [mul_le_mul_left (zero_lt_two' ℝ)]
      _ = 2 / (1 - rexp (-π * z.im)) * rexp (-π * z.im) := by rw [div_mul_comm, mul_comm]
  have : ∀ n : ℕ, ‖cexp (π * I * ((n : ℂ) + 1) ^ 2 * z)‖ ≤ rexp (-π * z.im) ^ (n + 1) := by
    intro n
    simpa only [Int.cast_add, Int.cast_one] using norm_exp_mul_sq_le hz (n + 1)
  have s : HasSum (fun n : ℕ =>
      rexp (-π * z.im) ^ (n + 1)) (rexp (-π * z.im) / (1 - rexp (-π * z.im))) := by
    simp_rw [pow_succ, div_eq_mul_inv, hasSum_mul_left_iff (Real.exp_ne_zero _)]
    exact hasSum_geometric_of_lt_1 (exp_pos (-π * z.im)).le
      (exp_lt_one_iff.mpr <| mul_neg_of_neg_of_pos (neg_lt_zero.mpr pi_pos) hz)
  have aux : Summable fun n : ℕ => ‖cexp (π * I * ((n : ℂ) + 1) ^ 2 * z)‖ :=
    summable_of_nonneg_of_le (fun n => norm_nonneg _) this s.summable
  exact
    (norm_tsum_le_tsum_norm aux).trans ((tsum_mono aux s.summable this).trans (le_of_eq s.tsum_eq))
#align norm_jacobi_theta_sub_one_le norm_jacobiTheta_sub_one_le

/-- The norm of `jacobiTheta τ - 1` decays exponentially as `im τ → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9c1567289b5f149eaaf978ba667ecff9488569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
