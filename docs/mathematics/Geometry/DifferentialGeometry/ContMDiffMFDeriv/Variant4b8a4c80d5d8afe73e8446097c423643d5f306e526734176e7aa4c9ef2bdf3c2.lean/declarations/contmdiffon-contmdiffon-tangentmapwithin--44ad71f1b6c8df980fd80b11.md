# ContMDiffOn.contMDiffOn_tangentMapWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cff2caf-11dc-f641-4500-489d91e2593b",
  "kind": "theorem",
  "lexical_name": "ContMDiffOn.contMDiffOn_tangentMapWithin",
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
  "slug": "contmdiffon-contmdiffon-tangentmapwithin--44ad71f1b6c8df980fd80b11",
  "source": {
    "blob": "7528b846e9af74f060fc79ad358e0664528195cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 351,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44ad71f1b6c8df980fd80b112862316dbf2823f8e9e9d350fac8f9baee1113b9",
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

Occurrence: `result:4cff2caf-11dc-f641-4500-489d91e2593b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem ContMDiffOn.contMDiffOn_tangentMapWithin (hf : ContMDiffOn I I' n f s) (hmn : m + 1 ≤ n)
    (hs : UniqueMDiffOn I s) :
    ContMDiffOn I.tangent I'.tangent m (tangentMapWithin I I' f s)
      (π E (TangentSpace I) ⁻¹' s) := by
  /- The strategy of the proof is to avoid unfolding the definitions, and reduce by functoriality
    to the case of functions on the model spaces, where we have already proved the result.
    Let `l` and `r` be the charts to the left and to the right, so that we have
    ```
       l^{-1}      f       r
    H --------> M ---> M' ---> H'
    ```
    Then the tangent map `T(r ∘ f ∘ l)` is smooth by a previous result. Consider the composition
    ```
        Tl        T(r ∘ f ∘ l^{-1})         Tr^{-1}
    TM -----> TH -------------------> TH' ---------> TM'
    ```
    where `Tr^{-1}` and `Tl` are the tangent maps of `r^{-1}` and `l`. Writing `Tl` and `Tr^{-1}` as
    composition of charts (called `Dl` and `il` for `l` and `Dr` and `ir` in the proof below), it
    follows that they are smooth. The composition of all these maps is `Tf`, and is therefore smooth
    as a composition of smooth maps.
    -/
  have one_le_n : 1 ≤ n := (le_add_left le_rfl).trans hmn
  -- First step: local reduction on the space, to a set `s'` which is contained in chart domains.
  refine' contMDiffOn_of_locally_contMDiffOn fun p hp => _
  have hf' := contMDiffOn_iff.1 hf
  simp only [mfld_simps] at hp
  let l := chartAt H p.proj
  set Dl := chartAt (ModelProd H E) p with hDl
  let r := chartAt H' (f p.proj)
  let Dr := chartAt (ModelProd H' E') (tangentMapWithin I I' f s p)
  let il := chartAt (ModelProd H E) (tangentMap I I l p)
  let ir := chartAt (ModelProd H' E') (tangentMap I I' (r ∘ f) p)
  let s' := f ⁻¹' r.source ∩ s ∩ l.source
  let s'_lift := π E (TangentSpace I) ⁻¹' s'
  let s'l := l.target ∩ l.symm ⁻¹' s'
  let s'l_lift := π E (TangentSpace I) ⁻¹' s'l
  rcases continuousOn_iff'.1 hf'.1 r.source r.open_source with ⟨o, o_open, ho⟩
  suffices h : ContMDiffOn I.tangent I'.tangent m (tangentMapWithin I I' f s) s'_lift
  · refine' ⟨π E (TangentSpace I) ⁻¹' (o ∩ l.source), _, _, _⟩
    show IsOpen (π E (TangentSpace I) ⁻¹' (o ∩ l.source));
    exact (IsOpen.inter o_open l.open_source).preimage (FiberBundle.continuous_proj E _)
    show p ∈ π E (TangentSpace I) ⁻¹' (o ∩ l.source)
    · simp
      have : p.proj ∈ f ⁻¹' r.source ∩ s := by simp [hp]
      rw [ho] at this
      exact this.1
    · have : π E (TangentSpace I) ⁻¹' s ∩ π E (TangentSpace I) ⁻¹' (o ∩ l.source) = s'_lift := by
        dsimp only; rw [ho]; mfld_set_tac
      rw [this]
      exact h
  /- Second step: check that all functions are smooth, and use the chain rule to write the bundled
    derivative as a composition of a function between model spaces and of charts.
    Convention: statements about the differentiability of `a ∘ b ∘ c` are named `diff_abc`.
    Statements about differentiability in the bundle have a `_lift` suffix. -/
  have U' : UniqueMDiffOn I s' := by
    apply UniqueMDiffOn.inter _ l.open_source
    rw [ho, inter_comm]
    exact hs.inter o_open
  have U'l : UniqueMDiffOn I s'l := U'.uniqueMDiffOn_preimage (mdifferentiable_chart _ _)
  have diff_f : ContMDiffOn I I' n f s' := hf.mono (by mfld_set_tac)
  have diff_r : ContMDiffOn I' I' n r r.source := contMDiffOn_chart
  have diff_rf : ContMDiffOn I I' n (r ∘ f) s' := by
    refine ContMDiffOn.comp diff_r diff_f fun x hx => ?_
    simp only [mfld_simps] at hx; simp only [hx, mfld_simps]
  have diff_l : ContMDiffOn I I n l.symm s'l :=
    haveI A : ContMDiffOn I I n l.symm l.target := contMDiffOn_chart_symm
    A.mono (by mfld_set_tac)
  have diff_rfl : ContMDiffOn I I' n (r ∘ f ∘ l.symm) s'l := by
    apply ContMDiffOn.comp diff_rf diff_l
    mfld_set_tac
  have diff_rfl_lift :
    ContMDiffOn I.tangent I'.tangent m (tangentMapWithin I I' (r ∘ f ∘ l.symm) s'l) s'l_lift :=
    diff_rfl.contMDiffOn_tangentMapWithin_aux hmn U'l
  have diff_irrfl_lift :
    ContMDiffOn I.tangent I'.tangent m (ir ∘ tangentMapWithin I I' (r ∘ f ∘ l.symm) s'l) s'l_lift :=
    haveI A : ContMDiffOn I'.tangent I'.tangent m ir ir.source := contMDiffOn_chart
    ContMDiffOn.comp A diff_rfl_lift fun p _ => by simp only [mfld_simps]
  have diff_Drirrfl_lift :
    ContMDiffOn I.tangent I'.tangent m (Dr.symm ∘ ir ∘ tangentMapWithin I I' (r ∘ f ∘ l.symm) s'l)
      s'l_lift := by
    have A : ContMDiffOn I'.tangent I'.tangent m Dr.symm Dr.target := contMDiffOn_chart_symm
    refine ContMDiffOn.comp A diff_irrfl_lift fun p hp => ?_
    simp only [mfld_simps] at hp
    -- Porting note: added `rw` because `simp` can't see through some `ModelProd _ _ = _ × _`
    rw [mem_preimage, TangentBundle.mem_chart_target_iff]
    simp only [hp, mfld_simps]
  -- conclusion of this step: the composition of all the maps above is smooth
  have diff_DrirrflilDl :
    ContMDiffOn I.tangent I'.tangent m
      (Dr.symm ∘ (ir ∘ tangentMapWithin I I' (r ∘ f ∘ l.symm) s'l) ∘ il.symm ∘ Dl) s'_lift := by
    have A : ContMDiffOn I.tangent I.tangent m Dl Dl.source := contMDiffOn_chart
    have A' : ContMDiffOn I.tangent I.tangent m Dl s'_lift := by
      refine A.mono fun p hp => ?_
      simp only [mfld_simps] at hp
      simp only [hp, mfld_simps]
    have B : ContMDiffOn I.tangent I.tangent m il.symm il.target := contMDiffOn_chart_symm
    have C : ContMDiffOn I.tangent I.tangent m (il.symm ∘ Dl) s'_lift :=
      ContMDiffOn.comp B A' fun p _ => by simp only [mfld_simps]
    refine diff_Drirrfl_lift.comp C fun p hp => ?_
    simp only [mfld_simps] at hp
    simp only [hp, TotalSpace.proj, mfld_simps]
  /- Third step: check that the composition of all the maps indeed coincides with the derivative we
    are looking for -/
  have eq_comp :
      ∀ q ∈ s'_lift,
        tangentMapWithin I I' f s q =
          (Dr.symm ∘ ir ∘ tangentMapWithin I I' (r ∘ f ∘ l.symm) s'l ∘ il.symm ∘ Dl) q := by
    intro q hq
    simp only [mfld_simps] at hq
    have U'q : UniqueMDiffWithinAt I s' q.1 := by apply U'; simp only [hq, mfld_simps]
    have U'lq : UniqueMDiffWithinAt I s'l (Dl q).1 := by apply U'l; simp only [hq, mfld_simps]
    have A :
      tangentMapWithin I I' ((r ∘ f) ∘ l.symm) s'l (il.symm (Dl q)) =
        tangentMapWithin I I' (r ∘ f) s' (tangentMapWithin I I l.symm s'l (il.symm (Dl q))) := by
      refine' tangentMapWithin_comp_at (il.symm (Dl q)) _ _ (fun p hp => _) U'lq
      · apply diff_rf.mdifferentiableOn one_le_n
        simp only [hq, mfld_simps]
      · apply diff_l.mdifferentiableOn one_le_n
        simp only [hq, mfld_simps]
      · simp only [mfld_simps] at hp; simp only [hp, mfld_simps]
    have B : tangentMapWithin I I l.symm s'l (il.symm (Dl q)) = q := by
      have : tangentMapWithin I I l.symm s'l (il.symm (Dl q)) =
        tangentMap I I l.symm (il.symm (Dl q))
      · refine' tangentMapWithin_eq_tangentMap U'lq _
        -- Porting note: the arguments below were underscores.
        refine' mdifferentiableAt_atlas_symm I (chart_mem_atlas H (TotalSpace.proj p)) _
        simp only [hq, mfld_simps]
      rw [this, tangentMap_chart_symm, hDl]
      · simp only [hq, mfld_simps]
        have : q ∈ (chartAt (ModelProd H E) p).source := by simp only [hq, mfld_simps]
        exact (chartAt (ModelProd H E) p).left_inv this
      · simp only [hq, mfld_simps]
    have C :
      tangentMapWithin I I' (r ∘ f) s' q =
        tangentMapWithin I' I' r r.source (tangentMapWithin I I' f s' q) := by
      refine' tangentMapWithin_comp_at q _ _ (fun r hr => _) U'q
      · apply diff_r.mdifferentiableOn one_le_n
        simp only [hq, mfld_simps]
      · apply diff_f.mdifferentiableOn one_le_n
        simp only [hq, mfld_simps]
      · simp only [mfld_simps] at hr
        simp only [hr, mfld_simps]
    have D :
      Dr.symm (ir (tangentMapWithin I' I' r r.source (tangentMapWithin I I' f s' q))) =
        tangentMapWithin I I' f s' q := by
      have A :
        tangentMapWithin I' I' r r.source (tangentMapWithin I I' f s' q) =
          tangentMap I' I' r (tangentMapWithin I I' f s' q) := by
        apply tangentMapWithin_eq_tangentMap
        · apply IsOpen.uniqueMDiffWithinAt _ r.open_source; simp [hq]
        · exact mdifferentiableAt_atlas I' (chart_mem_atlas H' (f p.proj)) hq.1.1
      have : f p.proj = (tangentMapWithin I I' f s p).1 := rfl
      rw [A]
      dsimp
      rw [this, tangentMap_chart]
      · simp only [hq, mfld_simps]
        have :
          tangentMapWithin I I' f s' q ∈
            (chartAt (ModelProd H' E') (tangentMapWithin I I' f s p)).source :=
          by simp only [hq, mfld_simps]
        exact (chartAt (ModelProd H' E') (tangentMapWithin I I' f s p)).left_inv this
      · simp only [hq, mfld_simps]
    have E : tangentMapWithin I I' f s' q = tangentMapWithin I I' f s q := by
      refine' tangentMapWithin_subset (by mfld_set_tac) U'q _
      apply hf.mdifferentiableOn one_le_n
      simp only [hq, mfld_simps]
    dsimp only [(· ∘ ·)] at A B C D E ⊢
    simp only [A, B, C, D, ← E]
  exact diff_DrirrflilDl.congr eq_comp
#align cont_mdiff_on.cont_mdiff_on_tangent_map_within ContMDiffOn.contMDiffOn_tangentMapWithin

/-- If a function is `C^n` on a domain with unique derivatives, with `1 ≤ n`, then its bundled
derivative is continuous there. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant4b8a4c80d5d8afe73e8446097c423643d5f306e526734176e7aa4c9ef2bdf3c2.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7528b846e9af74f060fc79ad358e0664528195cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
