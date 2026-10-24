# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullLineConvolution.Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4547ec3b7fe71e549068ee4365fc0a43501f4b0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4547ec3b7fe71e549068ee4365fc0a43501f4b0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullh--29e58ad862772a0532d27304.md) | 12 | `declaration-track:29e58ad862772a0532d273047345fc9b8b4e061a9664825b2c3e6754ddc24310` |
| 2 | `def` | [fullShift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullshift--9d93885cb0ea9fca9e53c3cb.md) | 14 | `declaration-track:9d93885cb0ea9fca9e53c3cb8ea0ee89e064a31d3f1fc8ac985b8a00880126cf` |
| 3 | `theorem` | [fullShift_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullshift-ae--7fde9b455af1b190fab3d516.md) | 17 | `result-track:7fde9b455af1b190fab3d516f8de72142b49a217bd158f1153c8702314f1a418` |
| 4 | `theorem` | [fullShift_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullshift-continuous--fd8df58e39c69db7a6561804.md) | 21 | `result-track:fd8df58e39c69db7a6561804056f83acf62eaa4ad163d0a8a9d7b168d2ba3d61` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/weighted-shift-integrable--e497d24048d0396dbdf3ac4e.md) | 29 | `result-track:e497d24048d0396dbdf3ac4e23dd5b63e20074f0f9ab7bf3c8e829ce9fbc229a` |
| 6 | `def` | [vector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/vector--655dd395380a256826237cf3.md) | 38 | `declaration-track:655dd395380a256826237cf328479fe1e728cfcb99bfa07cf35d88a98ee99c09` |
| 7 | `theorem` | [vector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/vector-norm-le--e79e561b35a37a888262786d.md) | 40 | `result-track:e79e561b35a37a888262786d976ec875a98d71859efc1113e293472069840307` |
| 8 | `theorem` | [vector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/vector-add--884bf87586d5755d2f17a791.md) | 47 | `result-track:884bf87586d5755d2f17a79125817be35101d9aea50873fc2dd4583dbb1f2b2e` |
| 9 | `theorem` | [vector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/vector-smul--13f17d6828606aa4357a5004.md) | 52 | `result-track:13f17d6828606aa4357a5004cff8e1f01b419ee58a190cf62efb168d3e03626a` |
| 10 | `def` | [linearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/linearmap--00817954099100cdf8648c84.md) | 56 | `declaration-track:00817954099100cdf8648c8490d14ae315d58325f2cd38f0ba8d907390e9beda` |
| 11 | `def` | [fullConvolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullconvolution--08c44bcd6db7a3b7248ccd9b.md) | 61 | `declaration-track:08c44bcd6db7a3b7248ccd9b5cce6b594bd34f80b6dfe687550e98c8a8b95b77` |
| 12 | `theorem` | [fullConvolution_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullconvolution-apply--69ce89bdcecd6bd0ca5e16b5.md) | 64 | `result-track:69ce89bdcecd6bd0ca5e16b5f84103287911de3c6a17862f021cd73f84f5a7d5` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullconvolution-norm-le--0c77e617e9005efe9281e3a8.md) | 67 | `result-track:0c77e617e9005efe9281e3a8553fbe08b2677e58d3d729031d6d64afe3d8ac97` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullconvolution-sub-kernel--9a2e55538d78afe76c6f4d3b.md) | 71 | `result-track:9a2e55538d78afe76c6f4d3b376c71f55e221e4072ad0b8c76fe15bd76a04686` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/fullconvolution-norm-sub-le--7ff0ef013b4120dcc1dd69cc.md) | 79 | `result-track:7ff0ef013b4120dcc1dd69ccf23ad0aaac05636c38331c0aa66abbd08f28d0ec` |
| 16 | `def` | [actualFull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/actualfull--3f31eec65242b5fc40dedc2c.md) | 84 | `declaration-track:3f31eec65242b5fc40dedc2c8cbaf4335405be15c6d04f31d7b8a599d11a7e6b` |
| 17 | `theorem` | [actualFull_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/actualfull-apply--464139b3d290776da866d079.md) | 86 | `result-track:464139b3d290776da866d0794cf87c0361f0137496392cd3394d397885e4dcaa` |
| 18 | `theorem` | [actualFull_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variant41f12a4892c3cf0f29771b1252c8a1dc4f432afdb4b8cce93ed27045bdab40dc.lean/declarations/actualfull-norm-le--f7d1d71122130c0910c6d5c4.md) | 89 | `result-track:f7d1d71122130c0910c6d5c431a07ce8916f25559f46b9b5a795af9a69edb9a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
