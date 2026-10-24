# condexpL1Clm_lpMeas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b2f2118875ab34e74ea461c86fcb23bd96a63aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df40bc21-533a-6125-8c2e-858bf351acd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2613739c-b34b-3f22-3320-84dfd26e7b49",
  "kind": "theorem",
  "lexical_name": "condexpL1Clm_lpMeas",
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
  "slug": "condexpl1clm-lpmeas--7ea66d38626543be9cf293ad",
  "source": {
    "blob": "8b2f2118875ab34e74ea461c86fcb23bd96a63aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 483,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea66d38626543be9cf293ad73b75d8e52521bf28f62bff4a6cae37d39cbfc05",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2613739c-b34b-3f22-3320-84dfd26e7b49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condexpL1Clm_lpMeas (f : lpMeas F' ℝ m 1 μ) :
    condexpL1Clm F' hm μ (f : α →₁[μ] F') = ↑f := by
  let g := lpMeasToLpTrimLie F' ℝ 1 μ hm f
  have hfg : f = (lpMeasToLpTrimLie F' ℝ 1 μ hm).symm g := by
    simp only [LinearIsometryEquiv.symm_apply_apply]
  rw [hfg]
  refine' @Lp.induction α F' m _ 1 (μ.trim hm) _ ENNReal.coe_ne_top (fun g : α →₁[μ.trim hm] F' =>
    condexpL1Clm F' hm μ ((lpMeasToLpTrimLie F' ℝ 1 μ hm).symm g : α →₁[μ] F') =
    ↑((lpMeasToLpTrimLie F' ℝ 1 μ hm).symm g)) _ _ _ g
  · intro c s hs hμs
    rw [@Lp.simpleFunc.coe_indicatorConst _ _ m, lpMeasToLpTrimLie_symm_indicator hs hμs.ne c,
      condexpL1Clm_indicatorConstLp]
    exact condexpInd_of_measurable hs ((le_trim hm).trans_lt hμs).ne c
  · intro f g hf hg _ hf_eq hg_eq
    rw [LinearIsometryEquiv.map_add]
    push_cast
    rw [map_add, hf_eq, hg_eq]
  · refine' isClosed_eq _ _
    · refine' (condexpL1Clm F' hm μ).continuous.comp (continuous_induced_dom.comp _)
      exact LinearIsometryEquiv.continuous _
    · refine' continuous_induced_dom.comp _
      exact LinearIsometryEquiv.continuous _
#align measure_theory.condexp_L1_clm_Lp_meas MeasureTheory.condexpL1Clm_lpMeas

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL1/Variantc82adc668dda3f358a15b50a4dc140e5868314e4fb0d8a66c4219478de310ddf.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2f2118875ab34e74ea461c86fcb23bd96a63aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
