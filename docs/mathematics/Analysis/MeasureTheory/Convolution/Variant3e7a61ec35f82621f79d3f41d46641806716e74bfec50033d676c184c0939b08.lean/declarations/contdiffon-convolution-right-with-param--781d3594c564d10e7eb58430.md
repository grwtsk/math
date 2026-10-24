# contDiffOn_convolution_right_with_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1401,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffe316a0-8304-2949-af2b-369ca5116440",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88aa74dc-6c1d-c2d1-5094-b19c2099ea81",
  "kind": "theorem",
  "lexical_name": "contDiffOn_convolution_right_with_param",
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
  "slug": "contdiffon-convolution-right-with-param--781d3594c564d10e7eb58430",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1470,
    "line": 1401,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781d3594c564d10e7eb584301e6d968a5326f6670218dac7e04aed7449e929e2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88aa74dc-6c1d-c2d1-5094-b19c2099ea81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1401–1470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_convolution_right_with_param {f : G → E} {n : ℕ∞} (L : E →L[𝕜] E' →L[𝕜] F)
    {g : P → G → E'} {s : Set P} {k : Set G} (hs : IsOpen s) (hk : IsCompact k)
    (hgs : ∀ p, ∀ x, p ∈ s → x ∉ k → g p x = 0) (hf : LocallyIntegrable f μ)
    (hg : ContDiffOn 𝕜 n (↿g) (s ×ˢ univ)) :
    ContDiffOn 𝕜 n (fun q : P × G => (f ⋆[L, μ] g q.1) q.2) (s ×ˢ univ) := by
  /- The result is known when all the universes are the same, from
    `contDiffOn_convolution_right_with_param_aux`. We reduce to this situation by pushing
    everything through `ULift` continuous linear equivalences. -/
  let eG : Type max uG uE' uF uP := ULift.{max uE' uF uP} G
  borelize eG
  let eE' : Type max uE' uG uF uP := ULift.{max uG uF uP} E'
  let eF : Type max uF uG uE' uP := ULift.{max uG uE' uP} F
  let eP : Type max uP uG uE' uF := ULift.{max uG uE' uF} P
  have isoG : eG ≃L[𝕜] G := ContinuousLinearEquiv.ulift
  have isoE' : eE' ≃L[𝕜] E' := ContinuousLinearEquiv.ulift
  have isoF : eF ≃L[𝕜] F := ContinuousLinearEquiv.ulift
  have isoP : eP ≃L[𝕜] P := ContinuousLinearEquiv.ulift
  let ef := f ∘ isoG
  let eμ : MeasureTheory.Measure eG := Measure.map isoG.symm μ
  let eg : eP → eG → eE' := fun ep ex => isoE'.symm (g (isoP ep) (isoG ex))
  let eL :=
    ContinuousLinearMap.comp
      ((ContinuousLinearEquiv.arrowCongr isoE' isoF).symm : (E' →L[𝕜] F) →L[𝕜] eE' →L[𝕜] eF) L
  let R := fun q : eP × eG => (ef ⋆[eL, eμ] eg q.1) q.2
  have R_contdiff : ContDiffOn 𝕜 n R ((isoP ⁻¹' s) ×ˢ univ) := by
    have hek : IsCompact (isoG ⁻¹' k) := isoG.toHomeomorph.closedEmbedding.isCompact_preimage hk
    have hes : IsOpen (isoP ⁻¹' s) := isoP.continuous.isOpen_preimage _ hs
    refine' contDiffOn_convolution_right_with_param_aux eL hes hek _ _ _
    · intro p x hp hx
      simp only [(· ∘ ·), ContinuousLinearEquiv.prod_apply, LinearIsometryEquiv.coe_coe,
        ContinuousLinearEquiv.map_eq_zero_iff]
      exact hgs _ _ hp hx
    · apply (locallyIntegrable_map_homeomorph isoG.symm.toHomeomorph).2
      convert hf
      ext1 x
      simp only [ContinuousLinearEquiv.coe_toHomeomorph, (· ∘ ·),
        ContinuousLinearEquiv.apply_symm_apply]
    · apply isoE'.symm.contDiff.comp_contDiffOn
      apply hg.comp (isoP.prod isoG).contDiff.contDiffOn
      rintro ⟨p, x⟩ ⟨hp, -⟩
      simpa only [mem_preimage, ContinuousLinearEquiv.prod_apply, prod_mk_mem_set_prod_eq, mem_univ,
        and_true_iff] using hp
  have A : ContDiffOn 𝕜 n (isoF ∘ R ∘ (isoP.prod isoG).symm) (s ×ˢ univ) := by
    apply isoF.contDiff.comp_contDiffOn
    apply R_contdiff.comp (ContinuousLinearEquiv.contDiff _).contDiffOn
    rintro ⟨p, x⟩ ⟨hp, -⟩
    simpa only [mem_preimage, mem_prod, mem_univ, and_true_iff, ContinuousLinearEquiv.prod_symm,
      ContinuousLinearEquiv.prod_apply, ContinuousLinearEquiv.apply_symm_apply] using hp
  have : isoF ∘ R ∘ (isoP.prod isoG).symm = fun q : P × G => (f ⋆[L, μ] g q.1) q.2 := by
    apply funext
    rintro ⟨p, x⟩
    simp only [LinearIsometryEquiv.coe_coe, (· ∘ ·), ContinuousLinearEquiv.prod_symm,
      ContinuousLinearEquiv.prod_apply]
    simp only [convolution, coe_comp', ContinuousLinearEquiv.coe_coe, (· ∘ ·)]
    rw [ClosedEmbedding.integral_map, ← isoF.integral_comp_comm]
    swap; · exact isoG.symm.toHomeomorph.closedEmbedding
    congr 1
    ext1 a
    simp only [(· ∘ ·), ContinuousLinearEquiv.apply_symm_apply, coe_comp',
      ContinuousLinearEquiv.prod_apply, ContinuousLinearEquiv.map_sub,
      ContinuousLinearEquiv.arrowCongr, ContinuousLinearEquiv.arrowCongrSL_symm_apply,
      ContinuousLinearEquiv.coe_coe, Function.comp_apply, ContinuousLinearEquiv.apply_symm_apply]
  simp_rw [this] at A
  exact A
#align cont_diff_on_convolution_right_with_param contDiffOn_convolution_right_with_param

/-- The convolution `f * g` is `C^n` when `f` is locally integrable and `g` is `C^n` and compactly
supported. Version where `g` depends on an additional parameter in an open subset `s` of a
parameter space `P` (and the compact support `k` is independent of the parameter in `s`),
given in terms of composition with an additional smooth function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L1401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
