# rect_Lminus

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
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5c1ac57-834e-5102-dbd6-703c273674ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7e2affe-c121-0822-3f23-6806cf7aae63",
  "kind": "theorem",
  "lexical_name": "rect_Lminus",
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
  "slug": "rect-lminus--4845ae724be4e2a59d797b54",
  "source": {
    "blob": "96bd1bc274ce2ce54309784184b38eeb568d6650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 383,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4845ae724be4e2a59d797b540eaac96b298edf60f973f6f30e8c037afa4e6260",
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

Occurrence: `result:d7e2affe-c121-0822-3f23-6806cf7aae63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rect_Lminus :
    RectangleIntegral' (fun s => Hfn k s * (Lfn s - L2 s)) (zc c R) (wc c R) = (1 / 2 : ℂ) * (Hfn k 0 + Hfn k 1) := by
  have hb0 : ∀ s ∈ RectangleBorder (zc c R) (wc c R), Gammaℝ s ≠ 0 := fun s hs =>
    Gammaℝ_ne_zero_of_mem hc1 hc2 hR (rectangleBorder_subset_rectangle _ _ hs) (border_ne_zero_one hc1 hc2 hR hs).1
  have hb1 : ∀ s ∈ RectangleBorder (zc c R) (wc c R), Gammaℝ (1 - s) ≠ 0 := fun s hs =>
    Gammaℝ_one_sub_ne_zero_of_mem hc1 hc2 hR (rectangleBorder_subset_rectangle _ _ hs) (border_ne_zero_one hc1 hc2 hR hs).2
  have hcongr : Set.EqOn (fun s => Hfn k s * (Lfn s - L2 s))
      (fun s => Hfn k s * ((-(1/2:ℂ)) * logDeriv invGammaℝ s + (-(1/2:ℂ)) * logDeriv (fun z => invGammaℝ (1 - z)) s
        + (1:ℂ) * logDeriv mulSubOne s + (0:ℂ) * logDeriv mulSubOne s)) (RectangleBorder (zc c R) (wc c R)) := by
    intro s hs
    simp only
    rw [Lminus_border hc1 hc2 hR hs]; ring
  have hI1 := borderIntegrable_of_continuousOn hk hkc
    (continuousOn_logDeriv_border (fun s _ => analyticAt_invGammaℝ s) (fun s hs => invGammaℝ_ne_zero_iff.mpr (hb0 s hs)))
  have hI2 := borderIntegrable_of_continuousOn hk hkc
    (continuousOn_logDeriv_border (f := fun z => invGammaℝ (1 - z))
      (fun s _ => (analyticAt_invGammaℝ _).comp (analyticAt_const.sub analyticAt_id))
      (fun s hs => invGammaℝ_ne_zero_iff.mpr (hb1 s hs)))
  have hI3 := borderIntegrable_of_continuousOn hk hkc
    (continuousOn_logDeriv_border (f := mulSubOne) (fun s _ => differentiable_mulSubOne.analyticAt s)
      (fun s hs => by
        obtain ⟨h0, h1⟩ := border_ne_zero_one hc1 hc2 hR hs
        rw [Ne, mulSubOne_eq_zero_iff]; simp [h0, h1]))
  rw [RectangleIntegral'_congr hcongr, rect'_lincomb _ _ _ _ hI1 hI2 hI3 hI3,
    rect_invGammaℝ hk hkc hc1 hc2 hR, rect_invGammaℝ_one_sub hk hkc hc1 hc2 hR, rect_mulSubOne hk hkc hc1 hc2 hR]
  ring

/-- **(1/2πi)∮ H·(L₂ + W′/W) = Σ_{W(ρ)=0 in Q, ρ ∉ {0,1}} ord_ρ(W)·H(ρ) − (3/2)(H(0) + H(1))**, if W ≠ 0 on ∂Q. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96bd1bc274ce2ce54309784184b38eeb568d6650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
