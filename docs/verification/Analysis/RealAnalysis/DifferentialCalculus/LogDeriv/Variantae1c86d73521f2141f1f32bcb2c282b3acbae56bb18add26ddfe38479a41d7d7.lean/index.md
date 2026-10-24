# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9731b3da6b149aa7febc55a407cdc7495d4643ed",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9731b3da6b149aa7febc55a407cdc7495d4643ed`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv--bf1084baaf7765a8761c4308.md) | 35 | `declaration-track:bf1084baaf7765a8761c4308ca09e985d0b5addeac7307a9d7ee9385dc05f5ac` |
| 2 | `theorem` | [logDeriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-apply--ba5a7910639b0d2771c6276e.md) | 38 | `result-track:ba5a7910639b0d2771c6276e96ee0c82b5f26e5cdb2b5e8350ccb3786b83f5a2` |
| 3 | `lemma` | [logDeriv_eq_zero_of_not_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-eq-zero-of-not-differentiableat--3091c79eb688d8b72fc322fa.md) | 40 | `result-track:3091c79eb688d8b72fc322fa30dfccc4db5a51e1ae01ceb3624d48dd08b0b742` |
| 4 | `theorem` | [logDeriv_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-id--d8df63749c64731955cbfa28.md) | 45 | `result-track:d8df63749c64731955cbfa28dd44cb78ba1dbda0ec19f5102525873e104beef3` |
| 5 | `theorem` | [logDeriv_id'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-id--d746c2284209b2ca85617f5b.md) | 48 | `result-track:d746c2284209b2ca85617f5beb405ffccfa03fa08476b5450346b79ec4295de7` |
| 6 | `theorem` | [logDeriv_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-const--987fac854e4d462a847b8b8a.md) | 51 | `result-track:987fac854e4d462a847b8b8ae68d89608a1b7d02de87560d84dd72090de9fa1e` |
| 7 | `theorem` | [logDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-mul--0928ce066404e1cbc90069ae.md) | 55 | `result-track:0928ce066404e1cbc90069aeacc7d1429d0b3058f19b454a23041d027b0ee43c` |
| 8 | `theorem` | [logDeriv_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-div--b8cf112f2a635f8c025d425c.md) | 61 | `result-track:b8cf112f2a635f8c025d425c0ad1d3a382f9cdeac8a6f942ac765eeda50f947f` |
| 9 | `theorem` | [logDeriv_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-mul-const--7f55b87e79a8694ea42303aa.md) | 68 | `result-track:7f55b87e79a8694ea42303aac6c08bc920ffbea07ceeee63271c264df02c87d7` |
| 10 | `theorem` | [logDeriv_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-const-mul--2ae398ed03a7a4b19e15ccad.md) | 72 | `result-track:2ae398ed03a7a4b19e15ccad19045e62b2259f3a1be410ef29369965d522e23a` |
| 11 | `theorem` | [logDeriv_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-prod--382f42214998ed3a719286fb.md) | 77 | `result-track:382f42214998ed3a719286fb8baa6c470ac757f3bc6f2c41f38eae8361810d7d` |
| 12 | `lemma` | [logDeriv_fun_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-fun-zpow--231229e720ff6d3f1a9d37ae.md) | 91 | `result-track:231229e720ff6d3f1a9d37ae130d698d886cc158072de76c89a8cb75695171d8` |
| 13 | `lemma` | [logDeriv_fun_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-fun-pow--fec0e2702ed02c05e3191061.md) | 101 | `result-track:fec0e2702ed02c05e319106185945dead34f325e3145b3c69cb838472aeecfa0` |
| 14 | `lemma` | [logDeriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-zpow--399027238160e2f802a378d3.md) | 106 | `result-track:399027238160e2f802a378d34a4f056ca20597e77c29ab9c0f6b65c4caf71a4d` |
| 15 | `lemma` | [logDeriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-pow--8638b0f56cd28f09294c7bd4.md) | 110 | `result-track:8638b0f56cd28f09294c7bd4547235f560e4cf1fdb0010900993cd65dc143f36` |
| 16 | `lemma` | [logDeriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-inv--acaaae849da88c43e00df33f.md) | 113 | `result-track:acaaae849da88c43e00df33fdbcd55831ea804066c751f1725f1bda62ee4b9d0` |
| 17 | `theorem` | [logDeriv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variantae1c86d73521f2141f1f32bcb2c282b3acbae56bb18add26ddfe38479a41d7d7.lean/declarations/logderiv-comp--c511b464f6488b4b3ea02d80.md) | 116 | `result-track:c511b464f6488b4b3ea02d80360a3e489c0f4070a7d8f7a921dbda500cb684ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
