# tsum_enorm_sub_ae_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "188f566e1455bea4f8e88435e067e8a5032f9ba5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eb5f1c5-de93-c621-1f38-fc76df3cda34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c1ba980-50b5-9672-83b6-6857a27262f0",
  "kind": "theorem",
  "lexical_name": "tsum_enorm_sub_ae_lt_top",
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
  "slug": "tsum-enorm-sub-ae-lt-top--1e0c7fb7067564c69be7bf02",
  "source": {
    "blob": "188f566e1455bea4f8e88435e067e8a5032f9ba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e0c7fb7067564c69be7bf02a37a1ec55b774b70dc23903f7e1876f474bc3dcb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c1ba980-50b5-9672-83b6-6857a27262f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tsum_enorm_sub_ae_lt_top {f : ℕ → α → E} (hf : ∀ n, AEStronglyMeasurable (f n) μ)
    {p : ℝ} (hp1 : 1 ≤ p) {B : ℕ → ℝ≥0∞} (hB : ∑' i, B i ≠ ∞)
    (h : (∫⁻ a, (∑' i, ‖f (i + 1) a - f i a‖ₑ) ^ p ∂μ) ^ (1 / p) ≤ ∑' i, B i) :
    ∀ᵐ x ∂μ, ∑' i, ‖f (i + 1) x - f i x‖ₑ < ∞ := by
  have hp_pos : 0 < p := zero_lt_one.trans_le hp1
  have h_integral : ∫⁻ a, (∑' i, ‖f (i + 1) a - f i a‖ₑ) ^ p ∂μ < ∞ := by
    have h_tsum_lt_top : (∑' i, B i) ^ p < ∞ := ENNReal.rpow_lt_top_of_nonneg hp_pos.le hB
    refine lt_of_le_of_lt ?_ h_tsum_lt_top
    rwa [one_div, ← ENNReal.le_rpow_inv_iff (by simp [hp_pos] : 0 < p⁻¹), inv_inv] at h
  have rpow_ae_lt_top : ∀ᵐ x ∂μ, (∑' i, ‖f (i + 1) x - f i x‖ₑ) ^ p < ∞ := by
    refine ae_lt_top' (AEMeasurable.pow_const ?_ _) h_integral.ne
    exact AEMeasurable.tsum fun n => ((hf (n + 1)).sub (hf n)).enorm
  refine rpow_ae_lt_top.mono fun x hx => ?_
  rwa [← ENNReal.lt_rpow_inv_iff hp_pos,
    ENNReal.top_rpow_of_pos (by simp [hp_pos] : 0 < p⁻¹)] at hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Complete/Variant309e1fe149c1c5496474e9657293e5d9051aa5da5242ed4794a58881521f4812.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `188f566e1455bea4f8e88435e067e8a5032f9ba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
