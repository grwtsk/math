# contMDiff_equivTangentBundleProd_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:747dc81b-f391-cf6b-df9c-5d568f1fc3e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42531b1f-179d-7732-dcb0-a17f76fed9b7",
  "kind": "lemma",
  "lexical_name": "contMDiff_equivTangentBundleProd_symm",
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
  "slug": "contmdiff-equivtangentbundleprod-symm--a50fb6e3cb2243dc2ad8a44e",
  "source": {
    "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 442,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a50fb6e3cb2243dc2ad8a44e54ff7f07c133d698aabed3267671c25482711382",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42531b1f-179d-7732-dcb0-a17f76fed9b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiff_equivTangentBundleProd_symm :
    ContMDiff (I.tangent.prod I'.tangent) (I.prod I').tangent n
      (equivTangentBundleProd I M I' M').symm := by
  /- Contrary to what one might expect, this proof is nontrivial. It is not a formalization issue:
  even on paper, I don't have a simple proof of the statement. The reason is that there is no nice
  functorial expression for the map from `TM × T'M` to `T (M × M')`, so I need to come back to
  the definition and break things into pieces.
  The argument goes as follows. Since we're looking at a map into a vector bundle whose basis map
  is smooth, it suffices to check the smoothness of the second component, in a chart. It lands in
  a product vector space `E × E'`, so it suffices to check that the composition with each projection
  to `E` and `E'` is smooth.
  We notice that the composition of this map with the first projection coincides with the projection
  `TM × TM' → TM` read in the target chart, which is smooth, so we're done.
  The issue is with checking differentiability everywhere (to justify that the derivative of a
  product is the product of the derivatives), and writing down things.
  -/
  rintro ⟨a, b⟩
  have U w w' : UniqueDiffWithinAt 𝕜 (Set.range (Prod.map I I')) (I w, I' w') := by
    simp only [range_prodMap]
    apply UniqueDiffWithinAt.prod
    · exact ModelWithCorners.uniqueDiffWithinAt_image I
    · exact ModelWithCorners.uniqueDiffWithinAt_image I'
  rw [contMDiffAt_totalSpace]
  simp only [equivTangentBundleProd, TangentBundle.trivializationAt_apply, mfld_simps,
    Equiv.coe_fn_symm_mk]
  refine ⟨?_, (contMDiffAt_prod_module_iff _).2 ⟨?_, ?_⟩⟩
  · exact ContMDiffAt.prodMap (contMDiffAt_proj (TangentSpace I))
      (contMDiffAt_proj (TangentSpace I'))
  · /- check that the composition with the first projection in the target chart is smooth.
    For this, we check that it coincides locally with the projection `pM : TM × TM' → TM` read in
    the target chart, which is obviously smooth. -/
    have smooth_pM : ContMDiffAt (I.tangent.prod I'.tangent) I.tangent n Prod.fst (a, b) :=
      contMDiffAt_fst
    apply ((contMDiffAt_totalSpace _ _).1 smooth_pM).2.congr_of_eventuallyEq
    filter_upwards [chart_source_mem_nhds (ModelProd (ModelProd H E) (ModelProd H' E')) (a, b)]
      with p hp
    -- now we have to check that the original map coincides locally with `pM` read in target chart.
    simp only [prodChartedSpace_chartAt, PartialHomeomorph.prod_toPartialEquiv,
      PartialEquiv.prod_source, Set.mem_prod, TangentBundle.mem_chart_source_iff] at hp
    let φ (x : E) := I ((chartAt H a.proj) ((chartAt H p.1.proj).symm (I.symm x)))
    have D0 : DifferentiableWithinAt 𝕜 φ (Set.range I) (I ((chartAt H p.1.proj) p.1.proj)) := by
      apply ContDiffWithinAt.differentiableWithinAt (n := 1) _ le_rfl
      apply contDiffWithinAt_ext_coord_change
      simp [hp.1]
    have D (w : TangentBundle I' M') :
        DifferentiableWithinAt 𝕜 (φ ∘ (Prod.fst : E × E' → E)) (Set.range (Prod.map ↑I ↑I'))
        (I ((chartAt H p.1.proj) p.1.proj), I' ((chartAt H' w.proj) w.proj)) :=
      DifferentiableWithinAt.comp (t := Set.range I) _ (by exact D0)
        differentiableWithinAt_fst (by simp [mapsTo_fst_prod])
    simp only [range_prodMap, ContinuousLinearMap.prod_apply, comp_def, comp_apply]
    rw [DifferentiableWithinAt.fderivWithin_prodMk (by exact D _) ?_ (U _ _)]; swap
    · let φ' (x : E') := I' ((chartAt H' b.proj) ((chartAt H' p.2.proj).symm (I'.symm x)))
      have D0' : DifferentiableWithinAt 𝕜 φ' (Set.range I')
          (I' ((chartAt H' p.2.proj) p.2.proj)) := by
        apply ContDiffWithinAt.differentiableWithinAt (n := 1) _ le_rfl
        apply contDiffWithinAt_ext_coord_change
        simp [hp.2]
      have D' : DifferentiableWithinAt 𝕜 (φ' ∘ Prod.snd) (Set.range (Prod.map I I'))
          (I ((chartAt H p.1.proj) p.1.proj), I' ((chartAt H' p.2.proj) p.2.proj)) :=
        DifferentiableWithinAt.comp (t := Set.range I') _ (by exact D0')
          differentiableWithinAt_snd (by simp [mapsTo_snd_prod])
      exact D'
    simp only [TangentBundle.trivializationAt_apply, mfld_simps]
    change fderivWithin 𝕜 (φ ∘ Prod.fst) _ _ _ = fderivWithin 𝕜 φ _ _ _
    rw [range_prodMap] at U
    rw [fderivWithin_comp _ (by exact D0) differentiableWithinAt_fst mapsTo_fst_prod (U _ _)]
    simp [fderivWithin_fst, U]
  · /- check that the composition with the second projection in the target chart is smooth.
    For this, we check that it coincides locally with the projection `pM' : TM × TM' → TM'` read in
    the target chart, which is obviously smooth. -/
    have smooth_pM' : ContMDiffAt (I.tangent.prod I'.tangent) I'.tangent n Prod.snd (a, b) :=
      contMDiffAt_snd
    apply ((contMDiffAt_totalSpace _ _).1 smooth_pM').2.congr_of_eventuallyEq
    filter_upwards [chart_source_mem_nhds (ModelProd (ModelProd H E) (ModelProd H' E')) (a, b)]
      with p hp
    -- now we have to check that the original map coincides locally with `pM'` read in target chart.
    simp only [prodChartedSpace_chartAt, PartialHomeomorph.prod_toPartialEquiv,
      PartialEquiv.prod_source, Set.mem_prod, TangentBundle.mem_chart_source_iff] at hp
    let φ (x : E') := I' ((chartAt H' b.proj) ((chartAt H' p.2.proj).symm (I'.symm x)))
    have D0 : DifferentiableWithinAt 𝕜 φ (Set.range I') (I' ((chartAt H' p.2.proj) p.2.proj)) := by
      apply ContDiffWithinAt.differentiableWithinAt _ le_rfl
      apply contDiffWithinAt_ext_coord_change
      simp [hp.2]
    have D (w : TangentBundle I M) :
        DifferentiableWithinAt 𝕜 (φ ∘ (Prod.snd : E × E' → E')) (Set.range (Prod.map ↑I ↑I'))
        (I ((chartAt H w.proj) w.proj), I' ((chartAt H' p.2.proj) p.2.proj)) :=
      DifferentiableWithinAt.comp (t := Set.range I') _ (by exact D0)
        differentiableWithinAt_snd (by simp [mapsTo_snd_prod])
    simp only [range_prodMap, ContinuousLinearMap.prod_apply, comp_def, comp_apply]
    rw [DifferentiableWithinAt.fderivWithin_prodMk ?_ (by exact D _) (U _ _)]; swap
    · let φ' (x : E) := I ((chartAt H a.proj) ((chartAt H p.1.proj).symm (I.symm x)))
      have D0' : DifferentiableWithinAt 𝕜 φ' (Set.range I)
          (I ((chartAt H p.1.proj) p.1.proj)) := by
        apply ContDiffWithinAt.differentiableWithinAt _ le_rfl
        apply contDiffWithinAt_ext_coord_change
        simp [hp.1]
      have D' : DifferentiableWithinAt 𝕜 (φ' ∘ Prod.fst) (Set.range (Prod.map I I'))
          (I ((chartAt H p.1.proj) p.1.proj), I' ((chartAt H' p.2.proj) p.2.proj)) :=
        DifferentiableWithinAt.comp (t := Set.range I) _ (by exact D0')
          differentiableWithinAt_fst (by simp [mapsTo_fst_prod])
      exact D'
    simp only [TangentBundle.trivializationAt_apply, mfld_simps]
    change fderivWithin 𝕜 (φ ∘ Prod.snd) _ _ _ = fderivWithin 𝕜 φ _ _ _
    rw [range_prodMap] at U
    rw [fderivWithin_comp _ (by exact D0) differentiableWithinAt_snd mapsTo_snd_prod (U _ _)]
    simp [fderivWithin_snd, U]

end EquivTangentBundleProd
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559d4d74dc5cc61540c8e679e6929a4787b6f381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
