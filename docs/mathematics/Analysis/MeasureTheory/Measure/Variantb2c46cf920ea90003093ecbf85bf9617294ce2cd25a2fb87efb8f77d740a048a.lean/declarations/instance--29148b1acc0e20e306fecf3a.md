# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d18763270e6bf86eb9af6032b6ad937d37fdf606085573b342925c8e7cc72532",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--29148b1acc0e20e306fecf3a",
  "source": {
    "blob": "fb82569e9cc2ae3352c2c649980780e00a65fff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 89,
    "path": "GRWTSK/Analysis/MeasureTheory/Measure/Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29148b1acc0e20e306fecf3ab491429e63ba84ac53232a6ddc5cc3b94cbd3973",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measure/Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d18763270e6bf86eb9af6032b6ad937d37fdf606085573b342925c8e7cc72532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SMulInvariantMeasure (GL (Fin 2) ℝ) ℍ volume := by
  -- It suffices to show `volume (g • s) = volume s` for measurable sets `s`. First
  -- we write this as a lintegral over subsets of `ℂ`.
  refine ((smulInvariantMeasure_tfae _ _).out 3 1).mp fun g s hs ↦ ?_
  rw [volume_eq_lintegral, volume_eq_lintegral, ← Set.image_smul, Set.image_image]
  -- We want to apply the Jacobian change-of-variable formula.
  have hinj : Set.InjOn (fun z ↦ ↑(g • ofComplex z) : ℂ → ℂ) (UpperHalfPlane.coe '' s) :=
    .image_of_comp <| by simp
  have main := MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul
      volume (measurableEmbedding_coe.measurableSet_image.mpr hs)
      (Set.forall_mem_image.mpr fun z hz ↦
        (hasStrictFDerivAt_smul g _).hasFDerivAt.hasFDerivWithinAt)
      hinj
      (fun z ↦ ↑((1 / ‖z.im‖₊) ^ 2 : NNReal))
  convert! main using 1
  · simp [Set.image_image]
  · apply setLIntegral_congr_fun (measurableEmbedding_coe.measurableSet_image.mpr hs)
    rintro _ ⟨τ, -, rfl⟩
    simp only [← Real.enorm_eq_ofReal_abs, enorm_eq_nnnorm]
    have : ‖(SignType.sign g.val.det : ℝ)‖₊ = 1 := by
      rcases g.det_ne_zero.lt_or_gt with h | h <;> simp [h]
    have := g.det_ne_zero
    have := denom_ne_zero g τ
    norm_cast
    ext
    simp [det_smulFDeriv, *, im_smul_eq_div_normSq, Complex.normSq_eq_norm_sq, field]

end UpperHalfPlane

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measure/Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measure/Variantb2c46cf920ea90003093ecbf85bf9617294ce2cd25a2fb87efb8f77d740a048a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb82569e9cc2ae3352c2c649980780e00a65fff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
