# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.CompareExp.Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d1b8e98970d66d73a4a4fe495d1f9abb10411c3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d1b8e98970d66d73a4a4fe495d1f9abb10411c3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsExpCmpFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/isexpcmpfilter--3fe74329e2e65dae8c5ddd87.md) | 42 | `declaration-track:3fe74329e2e65dae8c5ddd8770adb0d0ae0dc26a815b9af58acbd7139f79a17f` |
| 2 | `theorem` | [of_isBigO_im_re_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/of-isbigo-im-re-rpow--e028415125a79dbed3736e09.md) | 54 | `result-track:e028415125a79dbed3736e09e60c456e4c06bbf921b6052e14b32b325c2abd81` |
| 3 | `theorem` | [of_isBigO_im_re_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/of-isbigo-im-re-pow--9f80f5d217329ef6ab898e42.md) | 65 | `result-track:9f80f5d217329ef6ab898e42db7ea705fa81cdb5a19db012ed079f5a154675a2` |
| 4 | `theorem` | [of_boundedUnder_abs_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/of-boundedunder-abs-im--c86e06f8f0bd6e336f9a6f28.md) | 69 | `result-track:c86e06f8f0bd6e336f9a6f287cd8a9cb103f128b0e3d71ba166a2a372f7c1906` |
| 5 | `theorem` | [of_boundedUnder_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/of-boundedunder-im--8958d9397e833905122931cd.md) | 74 | `result-track:8958d9397e833905122931cda731b58756b34e68acd919ada27a001af065261e` |
| 6 | `theorem` | [eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/eventually-ne--713fa0048379637b620d8fa0.md) | 82 | `result-track:713fa0048379637b620d8fa08e50e767ab0a24b74e235bc2cab700661a61ee41` |
| 7 | `theorem` | [tendsto_abs_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/tendsto-abs-re--979ffbcfb161cda2b5da85b2.md) | 85 | `result-track:979ffbcfb161cda2b5da85b2b840b706ed2aaeaeef276b589b276ee00cd8a244` |
| 8 | `theorem` | [tendsto_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/tendsto-norm--059038dc8c2e9e0002c0b6ad.md) | 88 | `result-track:059038dc8c2e9e0002c0b6ada8a8a50a9a782791e02076d84092bab60500c68c` |
| 9 | `theorem` | [isLittleO_log_re_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-log-re-re--aaf9acfea4bc95c7fd94c09a.md) | 93 | `result-track:aaf9acfea4bc95c7fd94c09aaa9710c249d3e0366e983a97f382541876539095` |
| 10 | `theorem` | [isLittleO_im_pow_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-im-pow-exp-re--4b7ea07584b8d33b0e790b15.md) | 96 | `result-track:4b7ea07584b8d33b0e790b15c24858aa9cfa0ea30a69dd616e3a383549620e14` |
| 11 | `theorem` | [abs_im_pow_eventuallyLE_exp_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/abs-im-pow-eventuallyle-exp-re--f78c2e8d88a6370d96338657.md) | 107 | `result-track:f78c2e8d88a6370d963386576a92dda683478988b95f0da61e3d8c9db273883b` |
| 12 | `theorem` | [isLittleO_log_norm_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-log-norm-re--65dbb9b1c09cfb8f09f65d73.md) | 114 | `result-track:65dbb9b1c09cfb8f09f65d731cc377a818cc0d2fcbee5078d8bc33d047de9c63` |
| 13 | `lemma` | [isTheta_cpow_exp_re_mul_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/istheta-cpow-exp-re-mul-log--2f39d347b3c6ff2ab8969653.md) | 145 | `result-track:2f39d347b3c6ff2ab8969653183f016b6591a33eb5a317a6cabab944868119b3` |
| 14 | `theorem` | [isLittleO_cpow_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-cpow-exp--4f9ed5b2bc4bb0bfa1cca3a3.md) | 156 | `result-track:4f9ed5b2bc4bb0bfa1cca3a320cd6554fc18c44bf88d4dbdfc0503d83b1f95f4` |
| 15 | `theorem` | [isLittleO_cpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-cpow-mul-exp--861cf0b6b003f904fc14077b.md) | 170 | `result-track:861cf0b6b003f904fc14077b693daa16bcd8ac4769cff15491ace9c951da2d4f` |
| 16 | `theorem` | [isLittleO_exp_cpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-exp-cpow--be3588c8f5496f4d12e5ccd3.md) | 186 | `result-track:be3588c8f5496f4d12e5ccd3a718f3bd7e408a0c38a239649177b3d3b6d34749` |
| 17 | `theorem` | [isLittleO_pow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-pow-mul-exp--5d572ca3ce7b6459a49b083a.md) | 192 | `result-track:5d572ca3ce7b6459a49b083aa118136c6faf59de1077eb5cc946602d07dae51f` |
| 18 | `theorem` | [isLittleO_zpow_mul_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/CompareExp/Variant13d5ca7ba6f76fdf985332e2d7fff228e48302bc98ce73699a42ab551bf03e1c.lean/declarations/islittleo-zpow-mul-exp--737b4902a945a908b714517b.md) | 199 | `result-track:737b4902a945a908b714517bd368fc6eead89d45567bd5129c9001d29536fb3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
