# eLpNorm_const_lt_top_iff_enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3bb2e900bc730c504bc5bcece4c801a7c7ff9286",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15e9cafe-f5bb-552e-591c-6bc52633c555",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b6c4050-9bc1-8d11-4c09-d88db58be5ea",
  "kind": "theorem",
  "lexical_name": "eLpNorm_const_lt_top_iff_enorm",
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
  "slug": "elpnorm-const-lt-top-iff-enorm--3de3500fe698e4b26919507a",
  "source": {
    "blob": "3bb2e900bc730c504bc5bcece4c801a7c7ff9286",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3de3500fe698e4b26919507a707d73d611a61dba89fc008584db0fbf42d6229c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6c4050-9bc1-8d11-4c09-d88db58be5ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_const_lt_top_iff_enorm {c : ε''} (hc' : ‖c‖ₑ ≠ ∞)
    {p : ℝ≥0∞} (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞) :
    eLpNorm (fun _ : α ↦ c) p μ < ∞ ↔ c = 0 ∨ μ Set.univ < ∞ := by
  have hp : 0 < p.toReal := ENNReal.toReal_pos hp_ne_zero hp_ne_top
  by_cases hμ : μ = 0
  · simp only [hμ, Measure.coe_zero, Pi.zero_apply, or_true, ENNReal.zero_lt_top,
      eLpNorm_measure_zero]
  by_cases hc : c = 0
  · simp only [hc, true_or, eq_self_iff_true, ENNReal.zero_lt_top, eLpNorm_zero']
  rw [eLpNorm_const' c hp_ne_zero hp_ne_top]
  obtain hμ_top | hμ_ne_top := eq_or_ne (μ .univ) ∞
  · simp [hc, hμ_top, hp]
  rw [ENNReal.mul_lt_top_iff]
  simpa [hμ, hc, hμ_ne_top, hμ_ne_top.lt_top, hc, hc'.lt_top] using
    ENNReal.rpow_lt_top_of_nonneg (inv_nonneg.mpr hp.le) hμ_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant7b9c9c7159baa8d9c8f1c4720fa33c95f7bbb1b867ad44a3ede22a4b4bda213f.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bb2e900bc730c504bc5bcece4c801a7c7ff9286` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
