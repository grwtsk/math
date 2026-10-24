# rect_invGammaℝ_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96bd1bc274ce2ce54309784184b38eeb568d6650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaa28e06-c76c-a331-902e-59b583a8376b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87252297-1c5b-9ebd-34ff-4a5b67ed22f1",
  "kind": "theorem",
  "lexical_name": "rect_invGammaℝ_one_sub",
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
  "slug": "rect-invgamma-one-sub--ca849fbf345f15118e43c140",
  "source": {
    "blob": "96bd1bc274ce2ce54309784184b38eeb568d6650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca849fbf345f15118e43c14024668182a4c62711f5a57bb60b7fb32a01d9a1e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87252297-1c5b-9ebd-34ff-4a5b67ed22f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rect_invGammaℝ_one_sub :
    RectangleIntegral' (fun s => Hfn k s * logDeriv (fun z => invGammaℝ (1 - z)) s) (zc c R) (wc c R) = Hfn k 1 := by
  classical
  have han : ∀ s : ℂ, AnalyticAt ℂ (fun z => invGammaℝ (1 - z)) s := fun s =>
    (analyticAt_invGammaℝ _).comp (analyticAt_const.sub analyticAt_id)
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv (zc_le_wc_re hc1 hc2) (zc_le_wc_im hR)
    (f := fun z => invGammaℝ (1 - z)) (g := Hfn k) (fun s _ => han s) (Hfn_analyticOnNhd hk hkc _)
    (fun s hs => invGammaℝ_ne_zero_iff.mpr
      (Gammaℝ_one_sub_ne_zero_of_mem hc1 hc2 hR (rectangleBorder_subset_rectangle _ _ hs)
        (border_ne_zero_one hc1 hc2 hR hs).2))
    {1} (fun s hs => by
      rw [Finset.mem_singleton, invGammaℝ_eq_zero_iff]
      constructor
      · intro h; by_contra h1; exact Gammaℝ_one_sub_ne_zero_of_mem hc1 hc2 hR hs h1 h
      · rintro rfl; simp [Gammaℝ_eq_zero_iff])
    (by simpa using one_mem_rect hc1 hc2 hR)
  rw [key, Finset.sum_singleton, analyticOrderNatAt_invGammaℝ_one_sub_one]
  simp

/-- (c) (1/2πi)∮ H·q′/q = H(0) + H(1), q = s(s−1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96bd1bc274ce2ce54309784184b38eeb568d6650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
