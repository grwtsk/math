# convolution_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:726c3662-0660-5379-4238-c7fcfe240652",
  "kind": "theorem",
  "lexical_name": "convolution_assoc",
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
  "slug": "convolution-assoc--bd6c9381e92a9fbdcb2e8dc2",
  "source": {
    "blob": "4a985c84eb8940462e2fb30431e25d9e19d34b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1102,
    "line": 1054,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd6c9381e92a9fbdcb2e8dc256deed77f4748cf37da0d76c5078f750d527ecff",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:726c3662-0660-5379-4238-c7fcfe240652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1054–1102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_assoc (hL : ∀ (x : E) (y : E') (z : E''), L₂ (L x y) z = L₃ x (L₄ y z)) {x₀ : G}
    (hf : AEStronglyMeasurable f ν) (hg : AEStronglyMeasurable g μ) (hk : AEStronglyMeasurable k μ)
    (hfg : ∀ᵐ y ∂μ, ConvolutionExistsAt f g y L ν)
    (hgk : ∀ᵐ x ∂ν, ConvolutionExistsAt (fun x => ‖g x‖) (fun x => ‖k x‖) x (mul ℝ ℝ) μ)
    (hfgk :
      ConvolutionExistsAt (fun x => ‖f x‖) ((fun x => ‖g x‖) ⋆[mul ℝ ℝ, μ] fun x => ‖k x‖) x₀
        (mul ℝ ℝ) ν) :
    ((f ⋆[L, ν] g) ⋆[L₂, μ] k) x₀ = (f ⋆[L₃, ν] g ⋆[L₄, μ] k) x₀ := by
  refine' convolution_assoc' L L₂ L₃ L₄ hL hfg (hgk.mono fun x hx => hx.ofNorm L₄ hg hk) _
  -- the following is similar to `integrable.convolution_integrand`
  have h_meas :
    AEStronglyMeasurable (uncurry fun x y => L₃ (f y) (L₄ (g x) (k (x₀ - y - x))))
      (μ.prod ν) := by
    refine' L₃.aestronglyMeasurable_comp₂ hf.snd _
    refine' L₄.aestronglyMeasurable_comp₂ hg.fst _
    refine' (hk.mono' _).comp_measurable ((measurable_const.sub measurable_snd).sub measurable_fst)
    refine' QuasiMeasurePreserving.absolutelyContinuous _
    refine' QuasiMeasurePreserving.prod_of_left
      ((measurable_const.sub measurable_snd).sub measurable_fst) (eventually_of_forall fun y => _)
    dsimp only
    exact quasiMeasurePreserving_sub_left_of_right_invariant μ _
  have h2_meas :
    AEStronglyMeasurable (fun y => ∫ x, ‖L₃ (f y) (L₄ (g x) (k (x₀ - y - x)))‖ ∂μ) ν :=
    h_meas.prod_swap.norm.integral_prod_right'
  have h3 : map (fun z : G × G => (z.1 - z.2, z.2)) (μ.prod ν) = μ.prod ν :=
    (measurePreserving_sub_prod μ ν).map_eq
  suffices Integrable (uncurry fun x y => L₃ (f y) (L₄ (g x) (k (x₀ - y - x)))) (μ.prod ν) by
    rw [← h3] at this
    convert this.comp_measurable (measurable_sub.prod_mk measurable_snd)
    ext ⟨x, y⟩
    simp_rw [uncurry, Function.comp_apply, sub_sub_sub_cancel_right]
  simp_rw [integrable_prod_iff' h_meas]
  refine' ⟨((quasiMeasurePreserving_sub_left_of_right_invariant ν x₀).ae hgk).mono fun t ht =>
    (L₃ (f t)).integrable_comp <| ht.ofNorm L₄ hg hk, _⟩
  refine' (hfgk.const_mul (‖L₃‖ * ‖L₄‖)).mono' h2_meas
    (((quasiMeasurePreserving_sub_left_of_right_invariant ν x₀).ae hgk).mono fun t ht => _)
  · simp_rw [convolution_def, mul_apply', mul_mul_mul_comm ‖L₃‖ ‖L₄‖, ← integral_mul_left]
    rw [Real.norm_of_nonneg]
    · refine' integral_mono_of_nonneg (eventually_of_forall fun t => norm_nonneg _)
        ((ht.const_mul _).const_mul _) (eventually_of_forall fun s => _)
      simp only [← mul_assoc ‖L₄‖]
      apply_rules [ContinuousLinearMap.le_of_op_norm₂_le_of_le, le_rfl]
    exact integral_nonneg fun x => norm_nonneg _
#align convolution_assoc convolution_assoc

end Assoc

variable [NormedAddCommGroup G] [BorelSpace G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant05fe417f8c6dbfa13f48215ad2a97d9653e1f2701985ac230a7dcb88279b5b23.lean#L1054).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a985c84eb8940462e2fb30431e25d9e19d34b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
