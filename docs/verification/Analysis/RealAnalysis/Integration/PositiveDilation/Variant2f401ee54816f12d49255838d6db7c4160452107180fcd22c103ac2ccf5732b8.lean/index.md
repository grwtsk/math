# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilation.Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a1ae31b07613482426b12d41e741673c76d3de",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a1ae31b07613482426b12d41e741673c76d3de`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/positivemeasure--dd30b1d929dcc820fa7a35bb.md) | 14 | `declaration-track:dd30b1d929dcc820fa7a35bb0f63595a0df1eca46a782e01b40225dcf2504be3` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/positivel2--98b6ff236eaa85f43908d728.md) | 15 | `declaration-track:98b6ff236eaa85f43908d728e30bc15ba80f4769a448936ee453534b7d0f7067` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilatefunc--5456f68726b658fa387f16d8.md) | 17 | `declaration-track:5456f68726b658fa387f16d847984fcce35d92673273605286e71ffeaee4a8cb` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/positivemeasure-map-mul--96eff0ef6a1592eb6b4999e2.md) | 19 | `result-track:96eff0ef6a1592eb6b4999e2f086a574ab1685d13c495715d800b8bb9881f0ed` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/positive-mul-quasi--1db0a0fd604c20436195bd03.md) | 28 | `result-track:1db0a0fd604c20436195bd03c7c5fcfd456d84954823db04245993bd0aad45c7` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilatefunc-memlp--b61a507bf413e1419f7cd2cc.md) | 34 | `result-track:b61a507bf413e1419f7cd2cce6e59d45af9750fb568ca6831d959ed569ebbbb2` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate--b97df22c7ac26d4a552b0ef6.md) | 41 | `declaration-track:b97df22c7ac26d4a552b0ef647cd6932388b63ac6fd39aaf329ad0bc9fdfdca5` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-ae--659826f832469de415122fee.md) | 44 | `result-track:659826f832469de415122fee3c8f149a21a759db2399e183c9d724fe3255fc2e` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/norm-sq-integral--ec1d629c2cce4fb987a58743.md) | 48 | `result-track:ec1d629c2cce4fb987a58743c227d70d55794506f15542d7e1db54af5301262b` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-norm-sq--9bbeb5f8ff40b8ce0f014a61.md) | 64 | `result-track:9bbeb5f8ff40b8ce0f014a615b7b146a28718e94952cb56899ffe80757eb8bc3` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-norm--e325fefa011ef53c4f1852d1.md) | 78 | `result-track:e325fefa011ef53c4f1852d17d6062c85959f939752cc43676d33917df2ccaa9` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-one--615686e5fa8948c1a0e2641d.md) | 81 | `result-track:615686e5fa8948c1a0e2641d61be2879ce7f03d60c0b782fde53a5a8afce42cb` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-comp--7d39d2df5b3ecbb8da772c09.md) | 86 | `result-track:7d39d2df5b3ecbb8da772c099466eb11a3b200ec8217d5f8ef6aeb64c6c8c4f0` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-inverse--930618276921c14e27cbaf56.md) | 98 | `result-track:930618276921c14e27cbaf56d2dfa9762a6b30cf4784f9580aa1a35bd69aa36f` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-add--4818bc053b01dc1e6b15c0ae.md) | 103 | `result-track:4818bc053b01dc1e6b15c0ae1bd8e16dbab81e6478652062ae05dc4638f6b0dd` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilate-smul--e99aada246b3743025364e69.md) | 113 | `result-track:e99aada246b3743025364e6913c225ebf59e355a92bd7b78a75eff9bcf4d5a16` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilationisometry--68440af922f58c8f8d80be53.md) | 124 | `declaration-track:68440af922f58c8f8d80be53142ce4b10fb9535c4ad1049de9113d2f3712e435` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variant2f401ee54816f12d49255838d6db7c4160452107180fcd22c103ac2ccf5732b8.lean/declarations/dilationequiv--72cd939a1604a45bdbeb7a26.md) | 130 | `declaration-track:72cd939a1604a45bdbeb7a2614843e4c3d3e1b1eca77ea90517cac04f25972e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
