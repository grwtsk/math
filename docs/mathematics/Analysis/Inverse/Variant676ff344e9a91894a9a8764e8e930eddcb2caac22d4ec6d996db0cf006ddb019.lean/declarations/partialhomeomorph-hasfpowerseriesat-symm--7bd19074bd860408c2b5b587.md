# PartialHomeomorph.hasFPowerSeriesAt_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad39da27-70a6-b075-036e-c919a050feb7",
  "kind": "theorem",
  "lexical_name": "PartialHomeomorph.hasFPowerSeriesAt_symm",
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
  "slug": "partialhomeomorph-hasfpowerseriesat-symm--7bd19074bd860408c2b5b587",
  "source": {
    "blob": "c64d69d3cc3617cbc299981ad781813f657778d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 663,
    "path": "GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd19074bd860408c2b5b587aa9457eb2321987b077f223ef361a83783913b11",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad39da27-70a6-b075-036e-c919a050feb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PartialHomeomorph.hasFPowerSeriesAt_symm (f : PartialHomeomorph E F) {a : E}
    {i : E ≃L[𝕜] F} (h0 : a ∈ f.source) {p : FormalMultilinearSeries 𝕜 E F}
    (h : HasFPowerSeriesAt f p a) (hp : p 1 = (continuousMultilinearCurryFin1 𝕜 E F).symm i) :
    HasFPowerSeriesAt f.symm (p.leftInv i a) (f a) := by
  have A : HasFPowerSeriesAt (f.symm ∘ f) ((p.leftInv i a).comp p) a := by
    have : HasFPowerSeriesAt (ContinuousLinearMap.id 𝕜 E) ((p.leftInv i a).comp p) a := by
      rw [leftInv_comp _ _ _ hp]
      exact (ContinuousLinearMap.id 𝕜 E).hasFPowerSeriesAt a
    apply this.congr
    filter_upwards [f.open_source.mem_nhds h0] with x hx using by simp [hx]
  have B : ∀ᶠ (y : E) in 𝓝 0, HasSum (fun n ↦ (p.leftInv i a n) fun _ ↦ f (a + y) - f a)
      (f.symm (f (a + y))) := by
    simpa using A.eventually_hasSum_of_comp h (radius_leftInv_pos_of_radius_pos h.radius_pos hp)
  have C : ∀ᶠ (y : E) in 𝓝 a, HasSum (fun n ↦ (p.leftInv i a n) fun _ ↦ f y - f a)
      (f.symm (f y)) := by
    rw [← sub_eq_zero_of_eq (a := a) rfl] at B
    have : ContinuousAt (fun x ↦ x - a) a := by fun_prop
    simpa using this.preimage_mem_nhds B
  have D : ∀ᶠ (y : E) in 𝓝 (f.symm (f a)),
      HasSum (fun n ↦ (p.leftInv i a n) fun _ ↦ f y - f a) y := by
    simp only [h0, PartialHomeomorph.left_inv]
    filter_upwards [C, f.open_source.mem_nhds h0] with x hx h'x
    simpa [h'x] using hx
  have E : ∀ᶠ z in 𝓝 (f a), HasSum (fun n ↦ (p.leftInv i a n) fun _ ↦ f (f.symm z) - f a)
      (f.symm z) := by
    have : ContinuousAt f.symm (f a) := f.continuousAt_symm (f.map_source h0)
    exact this D
  have F : ∀ᶠ z in 𝓝 (f a), HasSum (fun n ↦ (p.leftInv i a n) fun _ ↦ z - f a) (f.symm z) := by
    filter_upwards [f.open_target.mem_nhds (f.map_source h0), E] with z hz h'z
    simpa [hz] using h'z
  rcases EMetric.mem_nhds_iff.1 F with ⟨r, r_pos, hr⟩
  refine ⟨min r (p.leftInv i a).radius, min_le_right _ _,
    lt_min r_pos (radius_leftInv_pos_of_radius_pos h.radius_pos hp), fun {y} hy ↦ ?_⟩
  have : y + f a ∈ EMetric.ball (f a) r := by
    simp only [EMetric.mem_ball, edist_eq_enorm_sub, sub_zero, lt_min_iff,
      add_sub_cancel_right] at hy ⊢
    exact hy.1
  simpa [add_comm] using hr this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c64d69d3cc3617cbc299981ad781813f657778d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
