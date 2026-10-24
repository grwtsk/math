# isLocalStructomorphOn_contDiffGroupoid_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e0b4668-0b49-412c-8d98-18c62e1b09d3",
  "kind": "theorem",
  "lexical_name": "isLocalStructomorphOn_contDiffGroupoid_iff",
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
  "slug": "islocalstructomorphon-contdiffgroupoid-iff--e6232abd980b9d6e84cc31e4",
  "source": {
    "blob": "606ffb771552285b2831ba6b0395f2331728ac9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2187,
    "line": 2096,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6232abd980b9d6e84cc31e44e4a21fe1305e0eff43f26e7ac5718d369208480",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e0b4668-0b49-412c-8d98-18c62e1b09d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2096–2187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalStructomorphOn_contDiffGroupoid_iff (f : LocalHomeomorph M M') :
    LiftPropOn (contDiffGroupoid ⊤ I).IsLocalStructomorphWithinAt f f.source ↔
      SmoothOn I I f f.source ∧ SmoothOn I I f.symm f.target := by
  constructor
  · intro h
    refine' ⟨isLocalStructomorphOn_contDiffGroupoid_iff_aux h,
      isLocalStructomorphOn_contDiffGroupoid_iff_aux _⟩
    -- todo: we can generalize this part of the proof to a lemma
    intro X hX
    let x := f.symm X
    have hx : x ∈ f.source := f.symm.mapsTo hX
    let c := chartAt H x
    let c' := chartAt H X
    obtain ⟨-, hxf⟩ := h x hx
    refine' ⟨(f.symm.continuousAt hX).continuousWithinAt, fun h2x => _⟩
    obtain ⟨e, he, h2e, hef, hex⟩ :
      ∃ e : LocalHomeomorph H H,
        e ∈ contDiffGroupoid ⊤ I ∧
          e.source ⊆ (c.symm ≫ₕ f ≫ₕ c').source ∧
            EqOn (c' ∘ f ∘ c.symm) e e.source ∧ c x ∈ e.source := by
      have h1 : c' = chartAt H (f x) := by simp only [f.right_inv hX]
      have h2 : c' ∘ f ∘ c.symm = ⇑(c.symm ≫ₕ f ≫ₕ c') := rfl
      have hcx : c x ∈ c.symm ⁻¹' f.source := by simp only [hx, mfld_simps]
      rw [h2]
      rw [← h1, h2, LocalHomeomorph.isLocalStructomorphWithinAt_iff'] at hxf
      · exact hxf hcx
      · mfld_set_tac
      · apply Or.inl
        simp only [hx, h1, mfld_simps]
    have h2X : c' X = e (c (f.symm X)) := by
      rw [← hef hex]
      dsimp only [Function.comp]
      have hfX : f.symm X ∈ c.source := by simp only [hX, mfld_simps]
      rw [c.left_inv hfX, f.right_inv hX]
    have h3e : EqOn (c ∘ f.symm ∘ c'.symm) e.symm (c'.symm ⁻¹' f.target ∩ e.target) := by
      have h1 : EqOn (c.symm ≫ₕ f ≫ₕ c').symm e.symm (e.target ∩ e.target) := by
        apply EqOn.symm
        refine' e.isImage_source_target.symm_eqOn_of_inter_eq_of_eqOn _ _
        · rw [inter_self, inter_eq_right_iff_subset.mpr h2e]
        · rw [inter_self]; exact hef.symm
      have h2 : e.target ⊆ (c.symm ≫ₕ f ≫ₕ c').target := by
        intro x hx; rw [← e.right_inv hx, ← hef (e.symm.mapsTo hx)]
        exact LocalHomeomorph.mapsTo _ (h2e <| e.symm.mapsTo hx)
      rw [inter_self] at h1
      rwa [inter_eq_right_iff_subset.mpr]
      refine' h2.trans _
      mfld_set_tac
    refine' ⟨e.symm, StructureGroupoid.symm _ he, h3e, _⟩
    rw [h2X]; exact e.mapsTo hex
  · -- We now show the converse: a local homeomorphism `f : M → M'` which is smooth in both
    -- directions is a local structomorphism.  We do this by proposing
    -- `((chart_at H x).symm.trans f).trans (chart_at H (f x))` as a candidate for a structomorphism
    -- of `H`.
    rintro ⟨h₁, h₂⟩ x hx
    refine' ⟨(h₁ x hx).continuousWithinAt, _⟩
    let c := chartAt H x
    let c' := chartAt H (f x)
    rintro (hx' : c x ∈ c.symm ⁻¹' f.source)
    -- propose `(c.symm.trans f).trans c'` as a candidate for a local structomorphism of `H`
    refine' ⟨(c.symm.trans f).trans c', ⟨_, _⟩, (_ : EqOn (c' ∘ f ∘ c.symm) _ _), _⟩
    · -- smoothness of the candidate local structomorphism in the forward direction
      intro y hy
      simp only [mfld_simps] at hy
      have H : ContMDiffWithinAt I I ⊤ f (f ≫ₕ c').source ((extChartAt I x).symm y) := by
        refine' (h₁ ((extChartAt I x).symm y) _).mono _
        · simp only [hy, mfld_simps]
        · mfld_set_tac
      have hy' : (extChartAt I x).symm y ∈ c.source := by simp only [hy, mfld_simps]
      have hy'' : f ((extChartAt I x).symm y) ∈ c'.source := by simp only [hy, mfld_simps]
      rw [contMDiffWithinAt_iff_of_mem_source hy' hy''] at H
      convert H.2.mono _
      · simp only [hy, mfld_simps]
      · mfld_set_tac
    · -- smoothness of the candidate local structomorphism in the reverse direction
      intro y hy
      simp only [mfld_simps] at hy
      have H : ContMDiffWithinAt I I ⊤ f.symm (f.symm ≫ₕ c).source ((extChartAt I (f x)).symm y)
      · refine' (h₂ ((extChartAt I (f x)).symm y) _).mono _
        · simp only [hy, mfld_simps]
        · mfld_set_tac
      have hy' : (extChartAt I (f x)).symm y ∈ c'.source := by simp only [hy, mfld_simps]
      have hy'' : f.symm ((extChartAt I (f x)).symm y) ∈ c.source := by simp only [hy, mfld_simps]
      rw [contMDiffWithinAt_iff_of_mem_source hy' hy''] at H
      convert H.2.mono _
      · simp only [hy, mfld_simps]
      · mfld_set_tac
    -- now check the candidate local structomorphism agrees with `f` where it is supposed to
    · simp only [mfld_simps]; apply eqOn_refl
    · simp only [hx', mfld_simps]
#align is_local_structomorph_on_cont_diff_groupoid_iff isLocalStructomorphOn_contDiffGroupoid_iff

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiff/Variant90ec973c3a2684525d6c9bf5a6669cbe516caaf9b2b1f0c40f5fd763b3eea93f.lean#L2096).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `606ffb771552285b2831ba6b0395f2331728ac9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
