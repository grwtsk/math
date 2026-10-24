# _root_.GRWTSK.Analysis.MeasureTheory.ConvolutionIntegrandBoundRightOfLeOfSubset.Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.HasCompactSupport.convolutionExistsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc676bfb-0610-bf70-e346-ec109e59768e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ConvolutionIntegrandBoundRightOfLeOfSubset.Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.HasCompactSupport.convolutionExistsAt",
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
  "slug": "root-grwtsk-analysis-measuretheory-convolutionintegrandboundrightofleofs--fb1d17ff12ae381182478b7a",
  "source": {
    "blob": "dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 306,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb1d17ff12ae381182478b7af999f121cd62c32e03e3ac1c29e035651b5758da",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc676bfb-0610-bf70-e346-ec109e59768e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.ConvolutionIntegrandBoundRightOfLeOfSubset.Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.HasCompactSupport.convolutionExistsAt {x₀ : G}
    (h : HasCompactSupport fun t => L (f t) (g (x₀ - t))) (hf : LocallyIntegrable f μ)
    (hg : Continuous g) : ConvolutionExistsAt f g x₀ L μ := by
  let u := (Homeomorph.neg G).trans (Homeomorph.addRight x₀)
  let v := (Homeomorph.neg G).trans (Homeomorph.addLeft x₀)
  apply ((u.isCompact_preimage.mpr h).bddAbove_image hg.norm.continuousOn).convolutionExistsAt' L
    isClosed_closure.measurableSet subset_closure (hf.integrableOn_isCompact h)
  have A : AEStronglyMeasurable (g ∘ v)
      (μ.restrict (tsupport fun t : G => L (f t) (g (x₀ - t)))) := by
    apply (hg.comp v.continuous).continuousOn.aestronglyMeasurable_of_isCompact h
    exact (isClosed_tsupport _).measurableSet
  convert!
    ((v.continuous.measurable.measurePreserving
              (μ.restrict (tsupport fun t => L (f t) (g (x₀ - t))))).aestronglyMeasurable_comp_iff
          v.measurableEmbedding).1
      A
  ext x
  simp only [v, Homeomorph.neg, sub_eq_add_neg, val_toAddUnits_apply, Homeomorph.trans_apply,
    Equiv.neg_apply, Homeomorph.homeomorph_mk_coe, Homeomorph.coe_addLeft]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
