# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt06.Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1b6dcdde921d817df81804e864bfd7c2bc796f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1b6dcdde921d817df81804e864bfd7c2bc796f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/outerweight--bb43e9e2d14052ef7ac54cdc.md) | 18 | `declaration-track:bb43e9e2d14052ef7ac54cdc90e1f1297cfe9d259bcfb3a0fc575d3b5f34deac` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/exponentweight--91994fec4dd305b136db7083.md) | 20 | `declaration-track:91994fec4dd305b136db70831769c516e4f56f28a9e00ea7f57f7c47896bd182` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/momentatom--a5c06bf031459a76f96e35c0.md) | 22 | `declaration-track:a5c06bf031459a76f96e35c04a87f819c05ac3adc580c174ac35b2e289d811d1` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/primemomentatom--2da9825048c382ebb37ffae0.md) | 25 | `declaration-track:2da9825048c382ebb37ffae034a393d17af6208db22a90a90b54b859d51f5702` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/properpowermoment--3f9e8d54d9060d74026129b2.md) | 27 | `declaration-track:3f9e8d54d9060d74026129b2d674c051a7fb7ec73e7c95c678bcbca05cc4b212` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/properpowerb1--8e5dec4bda9056c218cf8fa4.md) | 29 | `declaration-track:8e5dec4bda9056c218cf8fa4e8488dd57cd74852089e9d926736ab2698cdb912` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/properpowerb2--7e4292097bb25bb025539af9.md) | 31 | `declaration-track:7e4292097bb25bb025539af96d2c13cb809c58ea40869711a9ad3622c7d824ae` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/outerweight-nonneg--945334d2a4c955ef0262ef75.md) | 33 | `result-track:945334d2a4c955ef0262ef759a31e965ffc33408cc9157006b865a3b4268147b` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/exponentweight-nonneg--88ac31c9330e8a2aa8e2aa21.md) | 41 | `result-track:88ac31c9330e8a2aa8e2aa21d1073e0fb75193d9552f899af9b6b5fd0ce75ddb` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/momentatom-nonneg--ce39474bd29cb04fbc65ed17.md) | 45 | `result-track:ce39474bd29cb04fbc65ed179358da80f9b2f5c04dd9ac958875c556348c2bf9` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/outerweight-summable--f26a1fff3a79b7d706a70ea7.md) | 53 | `result-track:f26a1fff3a79b7d706a70ea7e69259e7c9cbe8ce637502ca6d507f9a4488acde` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/exponentweight-summable--1ea0929936dc0b361e249f9b.md) | 83 | `result-track:1ea0929936dc0b361e249f9bc072212343911fe540ab465b45f7cc81cfd0ba1c` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/momentatom-le-product--54011ded3df304219d0310ff.md) | 92 | `result-track:54011ded3df304219d0310ff24941fe442dd9e43992767d42ff9edbfc2344efd` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/prime-outerweight-summable--2802ce4ce5b1c2618502a56a.md) | 113 | `result-track:2802ce4ce5b1c2618502a56acc129566c92e6467438fb23f10ff7e2565653bb2` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/primemomentatom-summable--23ea7138e586f2fd8782b20b.md) | 117 | `result-track:23ea7138e586f2fd8782b20b6ed4f77fe9cbe61025cc432549924bc076929dc4` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/primemomentatom-inner-summable--89f4de99243e79ce20e6d55b.md) | 124 | `result-track:89f4de99243e79ce20e6d55bd1c67ed3b22faf28b65bd344b1c3c802c701483f` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/primemomentatom-outer-summable--ded21d0cedf2f805f5486797.md) | 129 | `result-track:ded21d0cedf2f805f5486797e0f9c2ba8f0553adbf31f12d7e662dac17764168` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/properpowermoment-nonneg--50916859f64c22ec98590774.md) | 134 | `result-track:50916859f64c22ec98590774a01bb259a4765742cb9c8a205dcca5640cd19acc` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/finiteproperpowermoment-le-b1--eb56a195e3b48f7cfb4ab08d.md) | 137 | `result-track:eb56a195e3b48f7cfb4ab08d3dbbef830edcfa04135a137267cea205491a0338` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/properpowerb1-gt-nine-quarters--62938134a946d1aa5ca927f3.md) | 166 | `result-track:62938134a946d1aa5ca927f39e9d8aa1e605222ce0e6526ba6976a1ec6a7d600` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt06/Variant6616e10f48cff0ae1967380c7b752c7701361f932f5515f74d40b72b0958d51c.lean/declarations/arithmeticconstant-gt-one-five-hundred--95198f464627caa01f6f5833.md) | 169 | `result-track:95198f464627caa01f6f5833908400aac4e6ab37a6beb84bdf10d6708103a59c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
