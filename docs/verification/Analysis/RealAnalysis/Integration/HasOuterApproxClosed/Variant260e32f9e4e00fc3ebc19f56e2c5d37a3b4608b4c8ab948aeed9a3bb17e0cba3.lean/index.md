# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HasOuterApproxClosed.Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fd74e4a52be4c97af7fce549eeda09cc9218529",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fd74e4a52be4c97af7fce549eeda09cc9218529`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ThickenedIndicator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_lintegral_nn_filter_of_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/tendsto-lintegral-nn-filter-of-le-const--202037716d72c0925cc42c95.md) | 56 | `result-track:202037716d72c0925cc42c951471d8d1fbb6fa990f392205b7b413f54869ad90` |
| 2 | `theorem` | [measure_of_cont_bdd_of_tendsto_filter_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/measure-of-cont-bdd-of-tendsto-filter-indicator--325d418a3a5614b9cf5f171b.md) | 74 | `result-track:325d418a3a5614b9cf5f171bef8e39babfc2b09cc0e49d038d1c81a6fab46d11` |
| 3 | `theorem` | [measure_of_cont_bdd_of_tendsto_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/measure-of-cont-bdd-of-tendsto-indicator--7760c66c9485f1cfa20f4cc9.md) | 93 | `result-track:7760c66c9485f1cfa20f4cc94ccdcac547dc34ff4f3085e3679f5e0ea640525a` |
| 4 | `theorem` | [tendsto_lintegral_thickenedIndicator_of_isClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/tendsto-lintegral-thickenedindicator-of-isclosed--c161a07487ee508eeedd6601.md) | 107 | `result-track:c161a07487ee508eeedd66012818004a9044924856f3909d3c4c3edac8b5cc2e` |
| 5 | `class` | [HasOuterApproxClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/hasouterapproxclosed--c6c06103db5d8d1808f16c52.md) | 126 | `declaration-track:c6c06103db5d8d1808f16c523325b6ff54a3300093c1cf674dadb54eb3c674ad` |
| 6 | `def` | [_root_.IsClosed.apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/root-isclosed-apprseq--1c4f24e16b940d6d4c82468d.md) | 137 | `declaration-track:1c4f24e16b940d6d4c82468d60edfd6a0f42a410770be9f94e9baaed1b994b26` |
| 7 | `lemma` | [apprSeq_apply_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/apprseq-apply-le-one--0dbbe57b9e6af06540bc3d36.md) | 140 | `result-track:0dbbe57b9e6af06540bc3d360ef02dcb006c861bd1aa4e2962dee8c418551718` |
| 8 | `lemma` | [apprSeq_apply_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/apprseq-apply-eq-one--6f6141ccf4f159ba472effb3.md) | 144 | `result-track:6f6141ccf4f159ba472effb37c8b806fabbc42573a5d6e17391954bc4b8ffdc0` |
| 9 | `lemma` | [tendsto_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/tendsto-apprseq--6305c8256cce54c3acc99288.md) | 149 | `result-track:6305c8256cce54c3acc99288ef6f6d754ec143e6586d91bc664c63efc5a701f1` |
| 10 | `lemma` | [indicator_le_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/indicator-le-apprseq--fd17c63d4d87aec8ddea0e87.md) | 153 | `result-track:fd17c63d4d87aec8ddea0e879bd0a96112eea9d971815b7f9fed60c8a274fee5` |
| 11 | `theorem` | [measure_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/measure-le-lintegral--25407a0cda3e4b6258510162.md) | 162 | `result-track:25407a0cda3e4b6258510162cf49eb6e4d719c82eeb26bab734c49225a69da48` |
| 12 | `lemma` | [tendsto_lintegral_apprSeq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/tendsto-lintegral-apprseq--410dc5eb1b47662b7cfb636b.md) | 175 | `result-track:410dc5eb1b47662b7cfb636bb3144443d7d9377d0cc12aee1c7d1db2e68b7b86` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/instance--6f1f94f10b8acf2bc6a98eb8.md) | 183 | `declaration-track:6f1f94f10b8acf2bc6a98eb8cb48757891969270f8be14b85af7c7d10990b982` |
| 14 | `theorem` | [measure_isClosed_eq_of_forall_lintegral_eq_of_isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/measure-isclosed-eq-of-forall-lintegral-eq-of-isfinitemeasure--c0b6a732ecdeaf7947824afa.md) | 203 | `result-track:c0b6a732ecdeaf7947824afa6e395ea925f6e140af49ad5ddec18d3e18029816` |
| 15 | `theorem` | [ext_of_forall_lintegral_eq_of_IsFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/ext-of-forall-lintegral-eq-of-isfinitemeasure--abe493c4aa77e6ecbe595f5c.md) | 221 | `result-track:abe493c4aa77e6ecbe595f5c6409e1fdc59c8b131675601419709e13ef84755c` |
| 16 | `theorem` | [ext_of_forall_integral_eq_of_IsFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Variant260e32f9e4e00fc3ebc19f56e2c5d37a3b4608b4c8ab948aeed9a3bb17e0cba3.lean/declarations/ext-of-forall-integral-eq-of-isfinitemeasure--440d6576343d64793ce395ca.md) | 234 | `result-track:440d6576343d64793ce395ca13d284c75be81321e57078efed7a0f027d0f7274` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
