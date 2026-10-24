# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0b4bf1f10b9793bc61740b445a73be1f052421b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0b4bf1f10b9793bc61740b445a73be1f052421b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_Iic_eq_lintegral_Iio_add_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/lintegral-iic-eq-lintegral-iio-add-icc--8568fe2c1549302416a6fdc5.md) | 32 | `result-track:8568fe2c1549302416a6fdc5ba669f5e43d3ff6ae46685135cb97ae535ae1ae1` |
| 2 | `def` | [gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdfreal--68bf19e75247fdb7a1a816d7.md) | 45 | `declaration-track:68bf19e75247fdb7a1a816d7ab8569900d5ec28ae1614b1ad8fa04f1aacdc29b` |
| 3 | `def` | [gammaPDF](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdf--7bdd535b54dfec8ede94700a.md) | 50 | `declaration-track:7bdd535b54dfec8ede94700a01dfe746e73ee2658db386ee800040ce19a44016` |
| 4 | `lemma` | [gammaPDF_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdf-eq--2c5d5736a2a75653b773819b.md) | 53 | `result-track:2c5d5736a2a75653b773819b59b500adc8937cec6cdebe36a6162e52ba965d2a` |
| 5 | `lemma` | [gammaPDF_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdf-of-neg--ff823f9b814659ae175e6abb.md) | 58 | `result-track:ff823f9b814659ae175e6abbb47bcb3919bff10daf132b3c07c368f4c3462565` |
| 6 | `lemma` | [gammaPDF_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdf-of-nonneg--dfbad7c061f1fd9c06e93c86.md) | 61 | `result-track:dfbad7c061f1fd9c06e93c86945ca058ca29482f3d2c8daff1858ed52548ca8b` |
| 7 | `lemma` | [lintegral_gammaPDF_of_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/lintegral-gammapdf-of-nonpos--b0040423591c9bf40a8b7ef4.md) | 66 | `result-track:b0040423591c9bf40a8b7ef4d216aed66537243223b2f293a13157bde408081c` |
| 8 | `lemma` | [measurable_gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/measurable-gammapdfreal--bed07e1789cc38c685d6891b.md) | 76 | `result-track:bed07e1789cc38c685d6891b13309abc923263a97f2d7a221722f16325120eaf` |
| 9 | `lemma` | [stronglyMeasurable_gammaPDFReal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/stronglymeasurable-gammapdfreal--c9b17d05e8a6d70bb30b5cd3.md) | 82 | `result-track:c9b17d05e8a6d70bb30b5cd37be2bd0f1d2853b2a9d96e387f6af7c576628831` |
| 10 | `lemma` | [gammaPDFReal_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdfreal-pos--73c3e96d2a363c1087cd02e8.md) | 87 | `result-track:73c3e96d2a363c1087cd02e8339c0a0929f94d87bb457b038740b8a4bb7c344e` |
| 11 | `lemma` | [gammaPDFReal_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammapdfreal-nonneg--5fffa9743d8c85fec2b7a028.md) | 93 | `result-track:5fffa9743d8c85fec2b7a028e46e3000f71c5ce0e1d7b0f08a1f10eff6673e80` |
| 12 | `lemma` | [lintegral_gammaPDF_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/lintegral-gammapdf-eq-one--c10afb8346c542263aefcb27.md) | 102 | `result-track:c10afb8346c542263aefcb2783523e3bc02b80b0b536cd6f20486357f604ed04` |
| 13 | `def` | [gammaMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/gammameasure--16f6f20926753223fc9294f5.md) | 128 | `declaration-track:16f6f20926753223fc9294f5ffecf518e75e90b3b8bab8088bdec58ac33b2aa4` |
| 14 | `lemma` | [isProbabilityMeasure_gammaMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/isprobabilitymeasure-gammameasure--935d47dbe83462ee13ef2b35.md) | 131 | `result-track:935d47dbe83462ee13ef2b359f09aee8d890ca6fff77dc494c58ec8c973b2aa9` |
| 15 | `lemma` | [cdf_gammaMeasure_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/cdf-gammameasure-eq-integral--7012fc537a4e13f7e3464c50.md) | 137 | `result-track:7012fc537a4e13f7e3464c50237cea35e4234b21efc092fa03408b3706f8af50` |
| 16 | `lemma` | [cdf_gammaMeasure_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variant47e67d7e4bcb1bc37098891d5e57ac86cf53311943b18a06fe87a2d4062913e2.lean/declarations/cdf-gammameasure-eq-lintegral--8b1166b7baad05724fcbb3c0.md) | 145 | `result-track:8b1166b7baad05724fcbb3c0fd2f1b303008c314a66fbde9ab7ae129b1978950` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
