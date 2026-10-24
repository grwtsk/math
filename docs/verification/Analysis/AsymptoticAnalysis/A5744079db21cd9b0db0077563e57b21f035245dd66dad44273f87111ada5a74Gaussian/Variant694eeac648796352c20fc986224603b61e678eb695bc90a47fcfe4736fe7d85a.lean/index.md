# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian.Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9a5bb3161f7658c9687037c08d8eccac0e6f1b0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9a5bb3161f7658c9687037c08d8eccac0e6f1b0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianMode](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussianmode--b781481b38d81c2d41c8778b.md) | 16 | `declaration-track:b781481b38d81c2d41c8778bcac57fd189374cd03470c6e532bd4b76ca0a1bc2` |
| 2 | `theorem` | [exp_three_gt_sixteen](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/exp-three-gt-sixteen--ec7fdd3a0fdd371de9421f30.md) | 19 | `result-track:ec7fdd3a0fdd371de9421f30f17e9df121cfc1f97669fb3a8d59daa705310fea` |
| 3 | `theorem` | [gaussian_zero_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-zero-lt--90e81a4fa50fb99c92382f35.md) | 24 | `result-track:90e81a4fa50fb99c92382f3574f05ad9891b6acf1fce64ed6b79510fc5c3fb42` |
| 4 | `theorem` | [gaussian_ratio_small](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-ratio-small--c8c30974f23254f66a239466.md) | 35 | `result-track:c8c30974f23254f66a23946674f27e4fc270204d1586fc8a235cb1fe65b41ce6` |
| 5 | `theorem` | [gaussian_succ_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-succ-le--be755867528dea9c0b273c4a.md) | 46 | `result-track:be755867528dea9c0b273c4a4765229d5c50c9374ff4f2f2d374bad554b2f4da` |
| 6 | `theorem` | [gaussian_geometric_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-geometric-le--c51e42b814f0f9cb8f06b67a.md) | 68 | `result-track:c51e42b814f0f9cb8f06b67a11ba4dee74fd865e4a299b30a9196564bd850126` |
| 7 | `theorem` | [gaussian_three_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-three-summable--97498c00eb4b471bbcfddd93.md) | 79 | `result-track:97498c00eb4b471bbcfddd93292d1f00ce4e73d146166d551af5f80cae09c073` |
| 8 | `theorem` | [gaussian_three_tsum_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-three-tsum-lt--58e2d3f5f3b3ac952ff16619.md) | 87 | `result-track:58e2d3f5f3b3ac952ff166195c28f1e9bda97ecb677ddfb9fd640a23088e9e4e` |
| 9 | `theorem` | [gaussian_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-le-three--de28b830489c0cfdc3fb156f.md) | 96 | `result-track:de28b830489c0cfdc3fb156f09b935ff3e238a5ae859ebf36ed6d5d15170dfbb` |
| 10 | `theorem` | [gaussian_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-summable--cfe42cbe9a956452f27f5a5c.md) | 105 | `result-track:cfe42cbe9a956452f27f5a5c0eb4f58db064f20ffbdf2a3e0901628ca83b97b6` |
| 11 | `theorem` | [gaussian_mul_le_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-mul-le-three--f191e157637bd574bcde9f5b.md) | 109 | `result-track:f191e157637bd574bcde9f5b51af0dc2fb0d856d3a4eb767ffbdf338121222b8` |
| 12 | `theorem` | [gaussian_tail_sum_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Variant694eeac648796352c20fc986224603b61e678eb695bc90a47fcfe4736fe7d85a.lean/declarations/gaussian-tail-sum-bound--936c068d0b4cce31bc89c756.md) | 127 | `result-track:936c068d0b4cce31bc89c756899ac979630153f3a4af1e8aa3de461192d6917b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
