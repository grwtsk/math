# _root_.GRWTSK.Analysis.MeasureTheory.ConvolutionIntegrandBoundRightOfLeOfSubset.Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.BddAbove.continuous_convolution_right_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:876aad64-f4d8-3307-6702-a4dec7cbcfe9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.ConvolutionIntegrandBoundRightOfLeOfSubset.Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.BddAbove.continuous_convolution_right_of_integrable",
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
  "slug": "root-grwtsk-analysis-measuretheory-convolutionintegrandboundrightofleofs--50b39db746c108db11bebe0f",
  "source": {
    "blob": "dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 661,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b39db746c108db11bebe0fa896734fe2485c9a714f468209353d404f3ccc65",
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

Occurrence: `result:876aad64-f4d8-3307-6702-a4dec7cbcfe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.ConvolutionIntegrandBoundRightOfLeOfSubset.Variant19e9427ba088c3f56cbbde1e29bfbf5e21b5cc7d49b2eb2033008ececeff6702.BddAbove.continuous_convolution_right_of_integrable
    [FirstCountableTopology G] [SecondCountableTopologyEither G E']
    (hbg : BddAbove (range fun x => ‖g x‖)) (hf : Integrable f μ) (hg : Continuous g) :
    Continuous (f ⋆[L, μ] g) := by
  refine continuous_iff_continuousAt.mpr fun x₀ => ?_
  have : ∀ᶠ x in 𝓝 x₀, ∀ᵐ t : G ∂μ, ‖L (f t) (g (x - t))‖ ≤ ‖L‖ * ‖f t‖ * ⨆ i, ‖g i‖ := by
    filter_upwards with x; filter_upwards with t
    apply_rules [L.le_of_opNorm₂_le_of_le, le_rfl, le_ciSup hbg (x - t)]
  refine continuousAt_of_dominated ?_ this (by fun_prop) ?_
  · exact Eventually.of_forall fun x =>
      hf.aestronglyMeasurable.convolution_integrand_snd' L hg.aestronglyMeasurable
  · filter_upwards with t; fun_prop

end Group

section CommGroup

variable [AddCommGroup G]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
