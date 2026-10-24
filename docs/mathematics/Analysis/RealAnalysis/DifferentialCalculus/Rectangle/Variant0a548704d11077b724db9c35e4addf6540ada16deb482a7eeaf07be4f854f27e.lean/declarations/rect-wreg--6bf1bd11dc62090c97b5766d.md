# rect_Wreg

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
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbc099dc-e87e-79b0-67b2-fb7a5d614028",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c0132d7-3ccf-f7b3-5312-e6e84aaace35",
  "kind": "theorem",
  "lexical_name": "rect_Wreg",
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
  "slug": "rect-wreg--6bf1bd11dc62090c97b5766d",
  "source": {
    "blob": "96bd1bc274ce2ce54309784184b38eeb568d6650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf1bd11dc62090c97b5766de13ce2495ff8af7f17978b61a0af3c6a34739d61",
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

Occurrence: `result:5c0132d7-3ccf-f7b3-5312-e6e84aaace35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rect_Wreg (hW : ∀ s ∈ RectangleBorder (zc c R) (wc c R), hardyW s ≠ 0) :
    ∃ Z : Finset ℂ, ((Z : Set ℂ) = {ρ : ℂ | ρ ∈ Rectangle (zc c R) (wc c R) ∧ ρ ≠ 0 ∧ ρ ≠ 1 ∧ hardyW ρ = 0}) ∧
      RectangleIntegral' (fun s => Hfn k s * logDeriv Wreg s) (zc c R) (wc c R)
        = ∑ ρ ∈ Z, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ := by
  classical
  have hre := zc_le_wc_re (R := R) hc1 hc2
  have him := zc_le_wc_im (c := c) hR
  have hfA : AnalyticOnNhd ℂ Wreg (Rectangle (zc c R) (wc c R)) := fun s hs =>
    Wreg_analyticAt (re_bounds_of_mem hc1 hc2 hR hs).1 (re_bounds_of_mem hc1 hc2 hR hs).2
  -- membership in stripReg for non-polar rectangle points
  have hreg : ∀ s ∈ Rectangle (zc c R) (wc c R), s ≠ 0 → s ≠ 1 → s ∈ stripReg := fun s hs h0 h1 =>
    ⟨(re_bounds_of_mem hc1 hc2 hR hs).1, (re_bounds_of_mem hc1 hc2 hR hs).2, h0, h1⟩
  have hborder : ∀ s ∈ RectangleBorder (zc c R) (wc c R), Wreg s ≠ 0 := by
    intro s hs
    obtain ⟨h0, h1⟩ := border_ne_zero_one hc1 hc2 hR hs
    rw [Ne, Wreg_eq_zero_iff (hreg s (rectangleBorder_subset_rectangle _ _ hs) h0 h1)]
    exact hW s hs
  have hzB : zc c R ∈ RectangleBorder (zc c R) (wc c R) := Or.inl (Or.inl (Or.inl ⟨Set.left_mem_uIcc, rfl⟩))
  have hfin := Zeta23.Analytic.finite_zeros_rectangle hfA (rectangleBorder_subset_rectangle _ _ hzB) (hborder _ hzB)
  set Z : Finset ℂ := hfin.toFinset with hZdef
  have hZmem : ∀ ρ, ρ ∈ Z ↔ ρ ∈ Rectangle (zc c R) (wc c R) ∧ Wreg ρ = 0 := by
    intro ρ
    rw [hZdef, Set.Finite.mem_toFinset, Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff]
  -- zeros of Wreg in Q are exactly W's zeros off {0,1}
  have hchar : ∀ ρ, ρ ∈ Rectangle (zc c R) (wc c R) →
      (Wreg ρ = 0 ↔ ρ ≠ 0 ∧ ρ ≠ 1 ∧ hardyW ρ = 0) := by
    intro ρ hρ
    constructor
    · intro h
      have h0 : ρ ≠ 0 := by rintro rfl; rw [Wreg_zero] at h; norm_num at h
      have h1 : ρ ≠ 1 := by rintro rfl; rw [Wreg_one] at h; norm_num at h
      exact ⟨h0, h1, (Wreg_eq_zero_iff (hreg ρ hρ h0 h1)).mp h⟩
    · rintro ⟨h0, h1, h⟩
      exact (Wreg_eq_zero_iff (hreg ρ hρ h0 h1)).mpr h
  refine ⟨Z, ?_, ?_⟩
  · ext ρ
    rw [Finset.mem_coe, hZmem, Set.mem_setOf_eq]
    constructor
    · rintro ⟨hρ, h⟩; exact ⟨hρ, (hchar ρ hρ).mp h⟩
    · rintro ⟨hρ, h⟩; exact ⟨hρ, (hchar ρ hρ).mpr h⟩
  have key := Zeta23.Analytic.rectangleIntegral'_mul_logDeriv hre him hfA (Hfn_analyticOnNhd hk hkc _)
    hborder Z (fun s hs => by rw [hZmem]; exact ⟨fun h => ⟨hs, h⟩, fun h => h.2⟩)
    (fun ρ hρ => ((hZmem ρ).mp hρ).1)
  rw [key]
  refine Finset.sum_congr rfl (fun ρ hρ => ?_)
  obtain ⟨hρQ, hρ0⟩ := (hZmem ρ).mp hρ
  obtain ⟨h0, h1, -⟩ := (hchar ρ hρQ).mp hρ0
  rw [analyticOrderNatAt, analyticOrderNatAt, analyticOrderAt_Wreg (hreg ρ hρQ h0 h1)]

/-! ### §4. The border identities and linear combination -/

omit hk hkc in
/-- on ∂Q:  L₂ = ½ (G∘(1−·))′/(G∘(1−·)) − ½ G′/G. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96bd1bc274ce2ce54309784184b38eeb568d6650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
