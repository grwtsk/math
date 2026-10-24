# ContMDiffOn.continuousOn_tangentMapWithin_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d18d3ea0-f99e-a0b7-a0d7-99c0fcd83313",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.continuousOn_tangentMapWithin_aux",
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
  "slug": "contmdiffon-continuouson-tangentmapwithin-aux--77dfb06b0bb3d9f3665f1ddd",
  "source": {
    "blob": "7528b846e9af74f060fc79ad358e0664528195cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 235,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77dfb06b0bb3d9f3665f1ddd470fe10da73d0dd36cfee2f6dd4c4eb6bd157336",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18d3ea0-f99e-a0b7-a0d7-99c0fcd83313`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContMDiffOn.continuousOn_tangentMapWithin_aux {f : H → H'} {s : Set H}
    (hf : ContMDiffOn I I' n f s) (hn : 1 ≤ n) (hs : UniqueMDiffOn I s) :
    ContinuousOn (tangentMapWithin I I' f s) (π E (TangentSpace I) ⁻¹' s) := by
  suffices h :
    ContinuousOn
      (fun p : H × E =>
        (f p.fst,
          (fderivWithin 𝕜 (writtenInExtChartAt I I' p.fst f) (I.symm ⁻¹' s ∩ range I)
                ((extChartAt I p.fst) p.fst) : E →L[𝕜] E') p.snd)) (Prod.fst ⁻¹' s)
  · have A := (tangentBundleModelSpaceHomeomorph H I).continuous
    rw [continuous_iff_continuousOn_univ] at A
    have B :=
      ((tangentBundleModelSpaceHomeomorph H' I').symm.continuous.comp_continuousOn h).comp' A
    have :
      univ ∩ tangentBundleModelSpaceHomeomorph H I ⁻¹' (Prod.fst ⁻¹' s) =
        π E (TangentSpace I) ⁻¹' s :=
      by ext ⟨x, v⟩; simp only [mfld_simps]
    rw [this] at B
    apply B.congr
    rintro ⟨x, v⟩ hx
    dsimp [tangentMapWithin]
    ext; · rfl
    simp only [mfld_simps]
    apply congr_fun
    apply congr_arg
    rw [MDifferentiableWithinAt.mfderivWithin (hf.mdifferentiableOn hn x hx)]
    rfl
  suffices h :
    ContinuousOn
      (fun p : H × E =>
        (fderivWithin 𝕜 (I' ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I) (I p.fst) : E →L[𝕜] E') p.snd)
      (Prod.fst ⁻¹' s)
  · dsimp [writtenInExtChartAt, extChartAt]
    exact (ContinuousOn.comp hf.continuousOn continuous_fst.continuousOn Subset.rfl).prod h
  suffices h : ContinuousOn (fderivWithin 𝕜 (I' ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I)) (I '' s)
  · have C := ContinuousOn.comp h I.continuous_toFun.continuousOn Subset.rfl
    have A : Continuous fun q : (E →L[𝕜] E') × E => q.1 q.2 :=
      isBoundedBilinearMapApply.continuous
    have B :
      ContinuousOn
        (fun p : H × E => (fderivWithin 𝕜 (I' ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I) (I p.1), p.2))
        (Prod.fst ⁻¹' s) := by
      apply ContinuousOn.prod _ continuous_snd.continuousOn
      refine C.comp continuousOn_fst ?_
      exact preimage_mono (subset_preimage_image _ _)
    exact A.comp_continuousOn B
  rw [contMDiffOn_iff] at hf
  let x : H := I.symm (0 : E)
  let y : H' := I'.symm (0 : E')
  have A := hf.2 x y
  simp only [I.image_eq, inter_comm, mfld_simps] at A ⊢
  apply A.continuousOn_fderivWithin _ hn
  convert hs.uniqueDiffOn_target_inter x using 1
  simp only [inter_comm, mfld_simps]
#align cont_mdiff_on.continuous_on_tangent_map_within_aux ContMDiffOn.continuousOn_tangentMapWithin_aux

/-- If a function is `C^n` on a domain with unique derivatives, then its bundled derivative is
`C^m` when `m+1 ≤ n`. In this auxiliary lemma, we prove this fact when the source and target space
are model spaces in models with corners. The general fact is proved in
`ContMDiffOn.contMDiffOn_tangentMapWithin` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7528b846e9af74f060fc79ad358e0664528195cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
