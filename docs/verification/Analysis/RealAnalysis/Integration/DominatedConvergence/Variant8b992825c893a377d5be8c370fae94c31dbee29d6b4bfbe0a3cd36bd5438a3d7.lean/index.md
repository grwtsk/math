# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9151af5679b358686392d6d28721e01382dcad0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9151af5679b358686392d6d28721e01382dcad0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.IsUniformGroup.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/tendsto-integral-of-dominated-convergence--179cfa506cef0bbd29a9977c.md) | 57 | `result-track:179cfa506cef0bbd29a9977cd990e49fb13cd4bc452b0bdae8f7e5d1e9c353ee` |
| 2 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/tendsto-integral-filter-of-dominated-convergence--ec75bd1a9efdabbfec8cf769.md) | 67 | `result-track:ec75bd1a9efdabbfec8cf76959b6fcb26b8fc72fe6f1f029cae8620a129b064e` |
| 3 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/hassum-integral-of-dominated-convergence--dc0b39214b68c7b39d6c7015.md) | 77 | `result-track:dc0b39214b68c7b39d6c70152521ddcf69e96a480a6873de2cd14df84fed0f50` |
| 4 | `theorem` | [integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/integral-tsum--d835258c83e8842e0eb1dbb1.md) | 88 | `result-track:d835258c83e8842e0eb1dbb14b6b98ff91a470205db93131b1858f6c8256efe2` |
| 5 | `lemma` | [hasSum_integral_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/hassum-integral-of-summable-integral-norm--efc7d5d32624a225f7744223.md) | 96 | `result-track:efc7d5d32624a225f7744223a4c837181e00d96a24ca0f2146a2e46bad62ec13` |
| 6 | `lemma` | [integral_tsum_of_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/integral-tsum-of-summable-integral-norm--d14e98327ed7d5ed4328fcd6.md) | 111 | `result-track:d14e98327ed7d5ed4328fcd674ae9d61da92d4cdb1fbaf901bf73415b2f18805` |
| 7 | `theorem` | [tendsto_integral_filter_of_norm_le_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/tendsto-integral-filter-of-norm-le-const--ab3121345f2f72a8982a3fe0.md) | 120 | `result-track:ab3121345f2f72a8982a3fe014f8638cd654143425eaf048250c4e433ba4e3a5` |
| 8 | `theorem` | [_root_.Antitone.tendsto_setIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/root-antitone-tendsto-setintegral--4175c6d041eb94c29b5b7dc0.md) | 137 | `result-track:4175c6d041eb94c29b5b7dc07e97baf63a7321fa5547db17203180d9c09145e8` |
| 9 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/tendsto-integral-filter-of-dominated-convergence--be647e2a68af70b4ff21c6ef.md) | 170 | `result-track:be647e2a68af70b4ff21c6ef0858ab81b22cd402dca30c77c86a40871a9ce915` |
| 10 | `theorem` | [_root_.TendstoUniformlyOn.tendsto_intervalIntegral_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/root-tendstouniformlyon-tendsto-intervalintegral-of-continuouson--78a63ddf418887dfa3bf8cc9.md) | 182 | `result-track:78a63ddf418887dfa3bf8cc9d670a236306d1d8eb2abd137dfae0529c8c69e50` |
| 11 | `theorem` | [hasSum_integral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/hassum-integral-of-dominated-convergence--aab0ca4065b3d345f0224432.md) | 203 | `result-track:aab0ca4065b3d345f0224432d069db891d4f3fd9a7125293c697c89379b25458` |
| 12 | `theorem` | [hasSum_intervalIntegral_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/hassum-intervalintegral-of-summable-norm--5eba9c4d987f27126e81c2dd.md) | 219 | `result-track:5eba9c4d987f27126e81c2dddf3e157cd4cad8940cee0ac9352c5e2197fec014` |
| 13 | `theorem` | [tsum_intervalIntegral_eq_of_summable_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/tsum-intervalintegral-eq-of-summable-norm--8f3ffa065d0bd2f9284500fc.md) | 238 | `result-track:8f3ffa065d0bd2f9284500fc0a3686b2c491fe45198489c309ba061b25a86a36` |
| 14 | `theorem` | [continuousWithinAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouswithinat-of-dominated-interval--06aadb28dcfb7e301c90b1f2.md) | 251 | `result-track:06aadb28dcfb7e301c90b1f212fb3e097fd34a29fc16bb43991c4c573331c27a` |
| 15 | `theorem` | [continuousAt_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuousat-of-dominated-interval--7cfc319b4b17f0a5cc637c63.md) | 265 | `result-track:7cfc319b4b17f0a5cc637c63121e447fc3e6607f1ed033a318ececbe5b3e3fc2` |
| 16 | `theorem` | [continuous_of_dominated_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuous-of-dominated-interval--4d07dc3cd453b2bf27528abb.md) | 278 | `result-track:4d07dc3cd453b2bf27528abb55d8428eefd8540ac10254d1d00149355d797893` |
| 17 | `theorem` | [continuousWithinAt_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouswithinat-primitive--46cf802ca81d7c0b4c1d2e84.md) | 298 | `result-track:46cf802ca81d7c0b4c1d2e84f5e8ee05f2343585d9e94c23c5bf91a9ec02005f` |
| 18 | `theorem` | [continuousAt_parametric_primitive_of_dominated](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuousat-parametric-primitive-of-dominated--e93eb10666cfba1cf7c7d8f2.md) | 364 | `result-track:e93eb10666cfba1cf7c7d8f28759064397fb958ee7e78e5dbca934b2aac743c2` |
| 19 | `theorem` | [continuousOn_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-primitive--17a1b6db6964ec7949204c09.md) | 439 | `result-track:17a1b6db6964ec7949204c09b2c033146962f56dae48d55f0c887d824d59e8b0` |
| 20 | `theorem` | [continuousOn_primitive_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-primitive-icc--87555d7019c365cb3afa930c.md) | 453 | `result-track:87555d7019c365cb3afa930cb8d812265613f37650ab6a57f3387c1d1bc1120a` |
| 21 | `theorem` | [continuousOn_primitive_interval'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-primitive-interval--3f07d6de45260275b366f306.md) | 462 | `result-track:3f07d6de45260275b366f306cf44029fcf39e929df36333984899274be4a21bb` |
| 22 | `theorem` | [continuousOn_primitive_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-primitive-interval--29fd3e1eb95b0885cb2c9179.md) | 468 | `result-track:29fd3e1eb95b0885cb2c9179e14e0a56c7f0c74456da9fc773976ba8c3ce11a0` |
| 23 | `theorem` | [continuousOn_primitive_interval_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-primitive-interval-left--a99ed90895fb0a9732015906.md) | 472 | `result-track:a99ed90895fb0a9732015906873c2a915f74f4d3449f40b2007c1ae2ba877427` |
| 24 | `theorem` | [continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuous-primitive--079f432bfc94142d6ae54c09.md) | 478 | `result-track:079f432bfc94142d6ae54c098ff1cf5d3bf7f309a89d45039a9470285da896df` |
| 25 | `theorem` | [_root_.MeasureTheory.Integrable.continuous_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/root-measuretheory-integrable-continuous-primitive--5732c4cca06172e2bb480f19.md) | 487 | `result-track:5732c4cca06172e2bb480f19ce6a0797bd169560defb463a6030cbcfa076a56a` |
| 26 | `theorem` | [continuous_parametric_primitive_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuous-parametric-primitive-of-continuous--d57a0ac076b6314974e3294c.md) | 493 | `result-track:d57a0ac076b6314974e3294c485c17fa74f221b2c871d8e6d27c67e164cf6105` |
| 27 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuous-parametric-intervalintegral-of-continuous--38920933bb39369646da72a4.md) | 598 | `result-track:38920933bb39369646da72a488059ee8594d901d32764ed984566b983b98e302` |
| 28 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuous-parametric-intervalintegral-of-continuous--103aa1850c679381797b3067.md) | 604 | `result-track:103aa1850c679381797b30674c761c3f30a5ae3a5d02a32e56b6703e48af06bd` |
| 29 | `theorem` | [continuousWithinAt_Ici_primitive_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouswithinat-ici-primitive-ioi--b6eae6774381fa6c712fb27f.md) | 620 | `result-track:b6eae6774381fa6c712fb27f81ad80f86d40cc7cdceff0ec6379bd0ea7f425d2` |
| 30 | `theorem` | [continuousOn_Ici_primitive_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-ici-primitive-ioi--e3253179230ee8b65508646d.md) | 638 | `result-track:e3253179230ee8b65508646d29842d1f87a1f2a376c27609216251855ffc4e46` |
| 31 | `theorem` | [continuousWithinAt_Iic_primitive_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouswithinat-iic-primitive-iio--47f8c72f05f086a4ad0165c6.md) | 655 | `result-track:47f8c72f05f086a4ad0165c691549b5393d4837d273bc85db7d92e6ca2317e14` |
| 32 | `theorem` | [continuousOn_Iic_primitive_Iio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-iic-primitive-iio--29d7647247b11ea44cbcb65d.md) | 673 | `result-track:29d7647247b11ea44cbcb65d68f1f3120f0e8d6e0644ea013201862056f05def` |
| 33 | `theorem` | [continuousOn_Ici_primitive_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-ici-primitive-ici--ac7f76d9bddbff0fdd0379ca.md) | 690 | `result-track:ac7f76d9bddbff0fdd0379ca1b40305a8356620476ae034922c45e7d2ca2587e` |
| 34 | `theorem` | [continuousOn_Iic_primitive_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant8b992825c893a377d5be8c370fae94c31dbee29d6b4bfbe0a3cd36bd5438a3d7.lean/declarations/continuouson-iic-primitive-iic--3c808e0c407909c664c38ee3.md) | 695 | `result-track:3c808e0c407909c664c38ee354237f028b8af75bb4b35434c7e5283467d7372d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
