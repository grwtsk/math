# norm_eval_le_injectiveSeminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "616c6e2d435367899e4295f83e482632f448d292",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08e5628a-bab0-208c-db30-2938c7b82dba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b0b8f7e-ff0d-0a75-203f-6fa9fe00d7c4",
  "kind": "theorem",
  "lexical_name": "norm_eval_le_injectiveSeminorm",
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
  "slug": "norm-eval-le-injectiveseminorm--2df111e69045843c9e5812e9",
  "source": {
    "blob": "616c6e2d435367899e4295f83e482632f448d292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 108,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df111e69045843c9e5812e9abc709303e8b2bba012da79bb7a192023880a27d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0b8f7e-ff0d-0a75-203f-6fa9fe00d7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eval_le_injectiveSeminorm (f : ContinuousMultilinearMap 𝕜 E F) (x : ⨂[𝕜] i, E i) :
    ‖lift f.toMultilinearMap x‖ ≤ ‖f‖ * injectiveSeminorm x := by
    /- If `F` were in `Type (max uι u𝕜 uE)` (which is the type of `⨂[𝕜] i, E i`), then the
    property that we want to prove would hold by definition of `injectiveSeminorm`. This is
    not necessarily true, but we will show that there exists a normed vector space `G` in
    `Type (max uι u𝕜 uE)` and an injective isometry from `G` to `F` such that `f` factors
    through a continuous multilinear map `f'` from `E = Π i, E i` to `G`, to which we can apply
    the definition of `injectiveSeminorm`. The desired inequality for `f` then follows
    immediately.
    The idea is very simple: the multilinear map `f` corresponds by `PiTensorProduct.lift`
    to a linear map from `⨂[𝕜] i, E i` to `F`, say `l`. We want to take `G` to be the image of
    `l`, with the norm induced from that of `F`; to make sure that we are in the correct universe,
    it is actually more convenient to take `G` equal to the coimage of `l` (i.e. the quotient
    of `⨂[𝕜] i, E i` by the kernel of `l`), which is canonically isomorphic to its image by
    `LinearMap.quotKerEquivRange`. -/
  set G := (⨂[𝕜] i, E i) ⧸ LinearMap.ker (lift f.toMultilinearMap)
  set G' := LinearMap.range (lift f.toMultilinearMap)
  set e := LinearMap.quotKerEquivRange (lift f.toMultilinearMap)
  let := SeminormedAddCommGroup.induced G G' e
  let := NormedSpace.induced 𝕜 G G' e
  set f'₀ := lift.symm (e.symm.toLinearMap ∘ₗ LinearMap.rangeRestrict (lift f.toMultilinearMap))
  have hf'₀ : ∀ (x : Π (i : ι), E i), ‖f'₀ x‖ ≤ ‖f‖ * ∏ i, ‖x i‖ := fun x ↦ by
    change ‖e (f'₀ x)‖ ≤ _
    simp only [lift_symm, LinearMap.compMultilinearMap_apply, LinearMap.coe_comp,
        LinearEquiv.coe_coe, Function.comp_apply, LinearEquiv.apply_symm_apply, Submodule.coe_norm,
        LinearMap.codRestrict_apply, lift.tprod, ContinuousMultilinearMap.coe_coe, e, f'₀]
    exact f.le_opNorm x
  set f' := MultilinearMap.mkContinuous f'₀ ‖f‖ hf'₀
  have hnorm : ‖f'‖ ≤ ‖f‖ := (f'.opNorm_le_iff (norm_nonneg f)).mpr hf'₀
  have heq : e (lift f'.toMultilinearMap x) = lift f.toMultilinearMap x := by
    induction x using PiTensorProduct.induction_on with
    | smul_tprod =>
      simp only [lift_symm, map_smul, lift.tprod, ContinuousMultilinearMap.coe_coe,
      MultilinearMap.coe_mkContinuous, LinearMap.compMultilinearMap_apply, LinearMap.coe_comp,
      LinearEquiv.coe_coe, Function.comp_apply, LinearEquiv.apply_symm_apply, SetLike.val_smul,
      LinearMap.codRestrict_apply, f', f'₀]
    | add _ _ hx hy => simp only [map_add, Submodule.coe_add, hx, hy]
  suffices h : ‖lift f'.toMultilinearMap x‖ ≤ ‖f'‖ * injectiveSeminorm x by
    change ‖(e (lift f'.toMultilinearMap x)).1‖ ≤ _ at h
    rw [heq] at h
    exact h.trans (by gcongr)
  have hle : Seminorm.comp (normSeminorm 𝕜 (ContinuousMultilinearMap 𝕜 E G →L[𝕜] G))
      (toDualContinuousMultilinearMap G (𝕜 := 𝕜) (E := E)) ≤ injectiveSeminorm := by
    simp only [injectiveSeminorm]
    refine le_csSup dualSeminorms_bounded ?_
    rw [Set.mem_ofPred]
    existsi G, inferInstance, inferInstance
    rfl
  refine le_trans ?_ (mul_le_mul_of_nonneg_left (hle x) (norm_nonneg f'))
  simp only [Seminorm.comp_apply, coe_normSeminorm, ← toDualContinuousMultilinearMap_apply_apply]
  rw [mul_comm]
  exact ContinuousLinearMap.le_opNorm _ _

@[deprecated
  "`injectiveSeminorm` is deprecated in favor of the extensionally equal `projectiveSeminorm`"
  (since := "2026-06-10")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variantd10e5e75129f23944462f8f582da095f4a9e3e501fdc73f4fdde5f7c377c0f5e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `616c6e2d435367899e4295f83e482632f448d292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
