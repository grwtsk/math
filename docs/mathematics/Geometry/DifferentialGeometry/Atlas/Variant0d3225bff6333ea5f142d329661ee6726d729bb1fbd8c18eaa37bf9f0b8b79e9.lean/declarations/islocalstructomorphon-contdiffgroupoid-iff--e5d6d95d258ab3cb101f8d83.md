# isLocalStructomorphOn_contDiffGroupoid_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69d39c49485332b8258b44fea609205d8e143431",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd12ae26-13aa-2bb3-106a-182a1ea3029b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:507a3cdc-8fb7-8b55-6d0e-78b324e81acd",
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
  "slug": "islocalstructomorphon-contdiffgroupoid-iff--e5d6d95d258ab3cb101f8d83",
  "source": {
    "blob": "69d39c49485332b8258b44fea609205d8e143431",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 264,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d6d95d258ab3cb101f8d83658cae5027c2d06330d76757b8607bc88cf06f41",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:507a3cdc-8fb7-8b55-6d0e-78b324e81acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocalStructomorphOn_contDiffGroupoid_iff (f : OpenPartialHomeomorph M M') :
    LiftPropOn (contDiffGroupoid n I).IsLocalStructomorphWithinAt f f.source ↔
      ContMDiffOn I I n f f.source ∧ ContMDiffOn I I n f.symm f.target := by
  constructor
  · intro h
    refine ⟨isLocalStructomorphOn_contDiffGroupoid_iff_aux h,
      isLocalStructomorphOn_contDiffGroupoid_iff_aux ?_⟩
    -- todo: we can generalize this part of the proof to a lemma
    intro X hX
    let x := f.symm X
    have hx : x ∈ f.source := f.symm.mapsTo hX
    let c := chartAt H x
    let c' := chartAt H X
    obtain ⟨-, hxf⟩ := h x hx
    refine ⟨(f.symm.continuousAt hX).continuousWithinAt, fun h2x => ?_⟩
    obtain ⟨e, he, h2e, hef, hex⟩ :
      ∃ e : OpenPartialHomeomorph H H,
        e ∈ contDiffGroupoid n I ∧
          e.source ⊆ (c.symm ≫ₕ f ≫ₕ c').source ∧
            EqOn (c' ∘ f ∘ c.symm) e e.source ∧ c x ∈ e.source := by
      have h1 : c' = chartAt H (f x) := by simp only [x, c', f.right_inv hX]
      have h2 : c' ∘ f ∘ c.symm = ⇑(c.symm ≫ₕ f ≫ₕ c') := rfl
      have hcx : c x ∈ c.symm ⁻¹' f.source := by simp only [c, hx, mfld_simps]
      rw [h2]
      rw [← h1, h2, OpenPartialHomeomorph.isLocalStructomorphWithinAt_iff'] at hxf
      · exact hxf hcx
      · dsimp [x, c]; mfld_set_tac
      · apply Or.inl
        simp only [c, hx, h1, mfld_simps]
    have h2X : c' X = e (c (f.symm X)) := by
      rw [← hef hex]
      dsimp only [Function.comp_def]
      have hfX : f.symm X ∈ c.source := by simp only [c, x, mfld_simps]
      rw [c.left_inv hfX, f.right_inv hX]
    have h3e : EqOn (c ∘ f.symm ∘ c'.symm) e.symm (c'.symm ⁻¹' f.target ∩ e.target) := by
      have h1 : EqOn (c.symm ≫ₕ f ≫ₕ c').symm e.symm (e.target ∩ e.target) := by
        apply EqOn.symm
        refine e.isImage_source_target.symm_eqOn_of_inter_eq_of_eqOn ?_ ?_
        · rw [inter_self, inter_eq_right.mpr h2e]
        · rw [inter_self]; exact hef.symm
      have h2 : e.target ⊆ (c.symm ≫ₕ f ≫ₕ c').target := by
        intro x hx; rw [← e.right_inv hx, ← hef (e.symm.mapsTo hx)]
        exact OpenPartialHomeomorph.mapsTo _ (h2e <| e.symm.mapsTo hx)
      rw [inter_self] at h1
      rwa [inter_eq_right.mpr]
      refine h2.trans ?_
      mfld_set_tac
    refine ⟨e.symm, StructureGroupoid.symm _ he, h3e, ?_⟩
    rw [h2X]; exact e.mapsTo hex
  · -- We now show the converse: an open partial homeomorphism `f : M → M'` which is `C^n` in both
    -- directions is a local structomorphism.  We do this by proposing
    -- `((chart_at H x).symm.trans f).trans (chart_at H (f x))` as a candidate for a structomorphism
    -- of `H`.
    rintro ⟨h₁, h₂⟩ x hx
    refine ⟨(h₁ x hx).continuousWithinAt, ?_⟩
    let c := chartAt H x
    let c' := chartAt H (f x)
    rintro (hx' : c x ∈ c.symm ⁻¹' f.source)
    -- propose `(c.symm.trans f).trans c'` as a candidate for a local structomorphism of `H`
    refine ⟨(c.symm.trans f).trans c', ⟨?_, ?_⟩, (?_ : EqOn (c' ∘ f ∘ c.symm) _ _), ?_⟩
    · -- regularity of the candidate local structomorphism in the forward direction
      intro y hy
      simp only [mfld_simps] at hy
      have H : ContMDiffWithinAt I I n f (f ≫ₕ c').source ((extChartAt I x).symm y) := by
        refine (h₁ ((extChartAt I x).symm y) ?_).mono ?_
        · simp only [c, hy, mfld_simps]
        · mfld_set_tac
      have hy' : (extChartAt I x).symm y ∈ c.source := by simp only [c, hy, mfld_simps]
      have hy'' : f ((extChartAt I x).symm y) ∈ c'.source := by
        simp only [c, hy, mfld_simps]
      rw [contMDiffWithinAt_iff_of_mem_source hy' hy''] at H
      convert! H.2.mono _
      · simp only [c, hy, mfld_simps]
      · dsimp [c, c']; mfld_set_tac
    · -- regularity of the candidate local structomorphism in the reverse direction
      intro y hy
      simp only [mfld_simps] at hy
      have H : ContMDiffWithinAt I I n f.symm (f.symm ≫ₕ c).source
          ((extChartAt I (f x)).symm y) := by
        refine (h₂ ((extChartAt I (f x)).symm y) ?_).mono ?_
        · simp only [c', hy, mfld_simps]
        · mfld_set_tac
      have hy' : (extChartAt I (f x)).symm y ∈ c'.source := by simp only [c', hy, mfld_simps]
      have hy'' : f.symm ((extChartAt I (f x)).symm y) ∈ c.source := by
        simp only [c', hy, mfld_simps]
      rw [contMDiffWithinAt_iff_of_mem_source hy' hy''] at H
      convert! H.2.mono _
      · simp only [c', hy, mfld_simps]
      · dsimp [c, c']; mfld_set_tac
    -- now check the candidate local structomorphism agrees with `f` where it is supposed to
    · simp only [mfld_simps]; apply eqOn_refl
    · simp only [c, c', hx', mfld_simps]

end IsLocalStructomorph

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F] {G : Type*} [TopologicalSpace G]
  {J : ModelWithCorners 𝕜 F G} {N : Type*} [TopologicalSpace N] [ChartedSpace G N]
  {n : ℕ∞ω} {f : M → N} {s : Set M}
  {φ : OpenPartialHomeomorph M H} {ψ : OpenPartialHomeomorph N G}

/-- This is a smooth analogue of `OpenPartialHomeomorph.continuousWithinAt_writtenInExtend_iff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant0d3225bff6333ea5f142d329661ee6726d729bb1fbd8c18eaa37bf9f0b8b79e9.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d39c49485332b8258b44fea609205d8e143431` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
