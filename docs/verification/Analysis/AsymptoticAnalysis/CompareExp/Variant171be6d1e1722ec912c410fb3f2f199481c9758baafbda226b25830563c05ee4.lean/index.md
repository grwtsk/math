# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CompareExp.Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87d0099e13f287e6a3ff104c8d4e5c90dc1514e9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87d0099e13f287e6a3ff104c8d4e5c90dc1514e9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsExpCmpFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/isexpcmpfilter--08a6ca775c2911c6e17f1727.md) | 53 | `declaration-track:08a6ca775c2911c6e17f172731914f2289c09bab51a1111856a83cf2d8843744` |
| 2 | `theorem` | [of_isBigO_im_re_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/of-isbigo-im-re-rpow--dcbfc6180097daff81f7db66.md) | 67 | `result-track:dcbfc6180097daff81f7db66211a82e85cad0ac263647c22264d0b0e15b46633` |
| 3 | `theorem` | [of_isBigO_im_re_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/of-isbigo-im-re-pow--dcc8db5e8c5bb78549bd9499.md) | 80 | `result-track:dcc8db5e8c5bb78549bd94996c5918b3601c6e9c4812227cc97c11e90fe3c755` |
| 4 | `theorem` | [of_boundedUnder_abs_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/of-boundedunder-abs-im--c52951e7f965677ee9feda8d.md) | 86 | `result-track:c52951e7f965677ee9feda8d20d4cb5a779d54843775c2ee20fd440de7a1fc60` |
| 5 | `theorem` | [of_boundedUnder_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/of-boundedunder-im--9084cd9958eaedcadc81864f.md) | 93 | `result-track:9084cd9958eaedcadc81864fe6ad648ef162ff2631d78849e4bf93b65536dd06` |
| 6 | `theorem` | [eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/eventually-ne--ff8e9d75ab8121595b7d8e8b.md) | 103 | `result-track:ff8e9d75ab8121595b7d8e8b4be1d250a1bc9f315335f3a7584a743e1b6438a5` |
| 7 | `theorem` | [tendsto_abs_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/tendsto-abs-re--077c12fe4c720c15863de706.md) | 107 | `result-track:077c12fe4c720c15863de706aaebf1ac2cf8201426708f9ae604ee5b3b0c75d1` |
| 8 | `theorem` | [tendsto_abs](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/tendsto-abs--afe4a67204f81514e210485d.md) | 111 | `result-track:afe4a67204f81514e210485d9e15e8da63101ad91daeac8290e216886015e003` |
| 9 | `theorem` | [isLittleO_log_re_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-log-re-re--66f2e8c19081cccf2879ba24.md) | 115 | `result-track:66f2e8c19081cccf2879ba2437b11224a4f47ddc1c6ebc7f5713ace78899cccd` |
| 10 | `theorem` | [isLittleO_im_pow_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-im-pow-exp-re--d7bcce3b15bff2edd924c425.md) | 119 | `result-track:d7bcce3b15bff2edd924c425b433dc4fd3f4c3b21182bb09c2e4c9d0235975de` |
| 11 | `theorem` | [abs_im_pow_eventuallyLE_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/abs-im-pow-eventuallyle-exp-re--4bae584e2e540c98c68d1999.md) | 134 | `result-track:4bae584e2e540c98c68d1999ecd3eeab8ccf05eabb2ada3e5b59c4b26848409a` |
| 12 | `theorem` | [isLittleO_log_abs_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-log-abs-re--f921e196ed73603f5cb22fb0.md) | 142 | `result-track:f921e196ed73603f5cb22fb07f906e001a28654699ee942dcb2d2ce6f79e6685` |
| 13 | `theorem` | [isLittleO_cpow_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-cpow-exp--3b523c69e05df4b383ade716.md) | 178 | `result-track:3b523c69e05df4b383ade71646f794ad5a6ca5edb37b8a4b0da6b13d418cb71c` |
| 14 | `theorem` | [isLittleO_cpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-cpow-mul-exp--3c2f3a59a5654395e4223580.md) | 196 | `result-track:3c2f3a59a5654395e42235805413e129c8a8b8de74f8663c8307d98f40733b93` |
| 15 | `theorem` | [isLittleO_exp_cpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-exp-cpow--28cb312a6b894e41334c13f0.md) | 213 | `result-track:28cb312a6b894e41334c13f0900689a0d552a8a9069268f926953636faef07f7` |
| 16 | `theorem` | [isLittleO_pow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-pow-mul-exp--a17208d0633d086782ccca9c.md) | 220 | `result-track:a17208d0633d086782ccca9c4ee1c758c8eb8d454582b6298bfcb1e7150536f1` |
| 17 | `theorem` | [isLittleO_zpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant171be6d1e1722ec912c410fb3f2f199481c9758baafbda226b25830563c05ee4.lean/declarations/islittleo-zpow-mul-exp--d19b0559b59abe0f2efa6c3c.md) | 228 | `result-track:d19b0559b59abe0f2efa6c3c58f683c6d5a569ea1c1c707d2816a6a1cf5e3871` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
