# nonnegative_integral_integral_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95868659-432b-036c-9aa0-c2447457d6f2",
  "kind": "theorem",
  "lexical_name": "nonnegative_integral_integral_swap",
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
  "slug": "nonnegative-integral-integral-swap--85d7b943bd9f2c960a52c2fd",
  "source": {
    "blob": "b438bf19404fd1eee58dd6c18d0349dd81a6ea0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85d7b943bd9f2c960a52c2fd9d5f7fd85b023ac239b2a48813e03bba7adf63e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95868659-432b-036c-9aa0-c2447457d6f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonnegative_integral_integral_swap
    {f : α → β → ℝ}
    (hf : Measurable (Function.uncurry f))
    (hpos : ∀ x y, 0 ≤ f x y)
    (hleft : ∀ x, Integrable (f x) ν)
    (hright : ∀ y, Integrable (fun x => f x y) μ) :
    (∫ x, ∫ y, f x y ∂ν ∂μ) = ∫ y, ∫ x, f x y ∂μ ∂ν := by
  have hl (x : α) :
      ENNReal.ofReal (∫ y, f x y ∂ν) = ∫⁻ y, ENNReal.ofReal (f x y) ∂ν :=
    ofReal_integral_eq_lintegral_ofReal (hleft x)
      (Filter.Eventually.of_forall (hpos x))
  have hr (y : β) :
      ENNReal.ofReal (∫ x, f x y ∂μ) = ∫⁻ x, ENNReal.ofReal (f x y) ∂μ :=
    ofReal_integral_eq_lintegral_ofReal (hright y)
      (Filter.Eventually.of_forall fun x => hpos x y)
  rw [integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun x => integral_nonneg (hpos x))
      hf.stronglyMeasurable.integral_prod_right.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun y => integral_nonneg fun x => hpos x y)
      hf.stronglyMeasurable.integral_prod_left.aestronglyMeasurable]
  simp_rw [hl, hr]
  exact congrArg ENNReal.toReal (lintegral_lintegral_swap hf.ennreal_ofReal.aemeasurable)

#print axioms nonnegative_integral_integral_swap

end ThetaTransportScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b438bf19404fd1eee58dd6c18d0349dd81a6ea0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
