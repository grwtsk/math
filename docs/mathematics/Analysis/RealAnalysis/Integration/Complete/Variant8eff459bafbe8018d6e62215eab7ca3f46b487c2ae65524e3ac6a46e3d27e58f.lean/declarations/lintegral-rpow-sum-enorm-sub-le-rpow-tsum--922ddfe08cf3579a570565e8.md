# lintegral_rpow_sum_enorm_sub_le_rpow_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:000307a5-7d0e-aa4e-5785-fb9fddc625d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:670439c8-8c9d-a1aa-d335-9ae02aeb9f32",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_sum_enorm_sub_le_rpow_tsum",
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
  "slug": "lintegral-rpow-sum-enorm-sub-le-rpow-tsum--922ddfe08cf3579a570565e8",
  "source": {
    "blob": "653ef99a7abe7c1c5ab822e6100c93216680624b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:922ddfe08cf3579a570565e87e586c5c2e1fe3bce169621bb7dee8857d4faf36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:670439c8-8c9d-a1aa-d335-9ae02aeb9f32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem lintegral_rpow_sum_enorm_sub_le_rpow_tsum
    {f : ℕ → α → E} {p : ℝ} (hp1 : 1 ≤ p) {B : ℕ → ℝ≥0∞} (n : ℕ)
    (hn : eLpNorm' (fun x => ∑ i ∈ Finset.range (n + 1), ‖f (i + 1) x - f i x‖) p μ ≤ ∑' i, B i) :
    (∫⁻ a, (∑ i ∈ Finset.range (n + 1), ‖f (i + 1) a - f i a‖ₑ) ^ p ∂μ) ≤ (∑' i, B i) ^ p := by
  have hp_pos : 0 < p := zero_lt_one.trans_le hp1
  rw [← inv_inv p, @ENNReal.le_rpow_inv_iff _ _ p⁻¹ (by simp [hp_pos]), inv_inv p]
  simp_rw [eLpNorm'_eq_lintegral_enorm, one_div] at hn
  have h_nnnorm_nonneg :
    (fun a => ‖∑ i ∈ Finset.range (n + 1), ‖f (i + 1) a - f i a‖‖ₑ ^ p) = fun a =>
      (∑ i ∈ Finset.range (n + 1), ‖f (i + 1) a - f i a‖ₑ) ^ p := by
    ext1 a
    congr
    simp_rw [← ofReal_norm_eq_enorm]
    rw [← ENNReal.ofReal_sum_of_nonneg]
    · rw [Real.norm_of_nonneg _]
      exact Finset.sum_nonneg fun x _ => norm_nonneg _
    · exact fun x _ => norm_nonneg _
  rwa [h_nnnorm_nonneg] at hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant8eff459bafbe8018d6e62215eab7ca3f46b487c2ae65524e3ac6a46e3d27e58f.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653ef99a7abe7c1c5ab822e6100c93216680624b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
