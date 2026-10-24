# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Defs.Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fa7443abf5828490a465a8cae4284194503f49d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fa7443abf5828490a465a8cae4284194503f49d`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CStarModule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/cstarmodule--7a3cb408f7cf7e765ae27b08.md) | 72 | `declaration-track:7a3cb408f7cf7e765ae27b08e9994a8d8f63c86322ed269436fe227b7ba1c595` |
| 2 | `lemma` | [inner_add_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-add-left--a60cb2d57c81cf34d4d98470.md) | 96 | `result-track:a60cb2d57c81cf34d4d98470d9a5e867c2194b5bf59981e9697ac6c42416c401` |
| 3 | `lemma` | [inner_op_smul_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-op-smul-left--8e4dc5df3cab151b7f63f9dd.md) | 101 | `result-track:8e4dc5df3cab151b7f63f9dd7aa1e502b3622b23dd383162cbe808bd7ae7addb` |
| 4 | `lemma` | [inner_smul_left_complex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-smul-left-complex--fe78ee7c3b0bba55cc08e3e7.md) | 109 | `result-track:fe78ee7c3b0bba55cc08e3e78e6373ac2dcd32cc058fb32dd58b450b063e001a` |
| 5 | `lemma` | [inner_smul_left_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-smul-left-real--3292993f6657fdc3f7535944.md) | 114 | `result-track:3292993f6657fdc3f75359442b9230bd0f6560523fa8faa6fb5e5ec0e51f4321` |
| 6 | `lemma` | [inner_smul_right_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-smul-right-real--f8f9c8e580204955149e2069.md) | 120 | `result-track:f8f9c8e580204955149e206997474319e626e170bd18dc16d7e3d9bcc4682fa0` |
| 7 | `def` | [innerₛₗ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner--29ee815c957e936a87ff3ca9.md) | 126 | `declaration-track:29ee815c957e936a87ff3ca9490dbd81f111a85cce536d939a4d1f7ca707d701` |
| 8 | `lemma` | [innerₛₗ_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-apply--4ab86374d782a944bb047a29.md) | 133 | `result-track:4ab86374d782a944bb047a29f2a929840b96c85d09fabc38ea520ca64a73120f` |
| 9 | `lemma` | [inner_zero_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-zero-right--8e3de2bd2af3a9fd74295186.md) | 135 | `result-track:8e3de2bd2af3a9fd742951866a767271fbda7c6a77e0256186905b8ffaedc3e7` |
| 10 | `lemma` | [inner_zero_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-zero-left--9de388b8daa288bca7463539.md) | 136 | `result-track:9de388b8daa288bca74635393adf9e1a3851a267ad5bde0ffa5376dc22a42071` |
| 11 | `lemma` | [inner_neg_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-neg-right--947172fc148dfee05e853826.md) | 137 | `result-track:947172fc148dfee05e8538268dfb6c3c6981879d081d79754369659f5c935bee` |
| 12 | `lemma` | [inner_neg_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-neg-left--a7c84d7534e0e540db02810c.md) | 138 | `result-track:a7c84d7534e0e540db02810cc54bed46d5bc39fc796052602a49a6aac555953c` |
| 13 | `lemma` | [inner_sub_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-sub-right--aa3987002126b3b866da0705.md) | 139 | `result-track:aa3987002126b3b866da0705004d81535ab395f236ea3a7524c8de2cc5984110` |
| 14 | `lemma` | [inner_sub_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-sub-left--cbbfbaddc07e88c91c0ef17e.md) | 141 | `result-track:cbbfbaddc07e88c91c0ef17e9347550675be706a78e2df9dfb178a87937a5e60` |
| 15 | `lemma` | [inner_sum_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-sum-right--3c23c3837154a1900b2243e2.md) | 145 | `result-track:3c23c3837154a1900b2243e284784221ac6b5d3bd37c777dbad10d9530139f95` |
| 16 | `lemma` | [inner_sum_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-sum-left--66789952ba2105fceb098f41.md) | 150 | `result-track:66789952ba2105fceb098f41fc0932d580dae5446adae55d8366edd2721f11a2` |
| 17 | `lemma` | [isSelfAdjoint_inner_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/isselfadjoint-inner-self--da59ab1294cd585f5671024f.md) | 157 | `result-track:da59ab1294cd585f5671024f5d7934537539149351530b11cc218e1ce337040c` |
| 18 | `def` | [norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm--73e317c274972b0b472ba04e.md) | 172 | `declaration-track:73e317c274972b0b472ba04e4018ac7921619766456b40b382b1aecccd170144` |
| 19 | `lemma` | [norm_sq_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-sq-eq--9713587efa259c26bc63ce83.md) | 180 | `result-track:9713587efa259c26bc63ce8339e9c50951abb6f545cb6bd7da488141a7d577a1` |
| 20 | `lemma` | [norm_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-nonneg--e96c462b987ee4b1e4b64acf.md) | 182 | `result-track:e96c462b987ee4b1e4b64acfb7ef87c6a069c3b5d0a910063b3586a4afbac3c0` |
| 21 | `lemma` | [norm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-pos--2c5448310f24ba4c49d420bf.md) | 184 | `result-track:2c5448310f24ba4c49d420bf99b978500b6de1f1260f61f40e0d26df62a8c6a7` |
| 22 | `lemma` | [norm_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-zero--e3db51a26e200ef37d30caa8.md) | 190 | `result-track:e3db51a26e200ef37d30caa8bc887d7e20342e28a47bf85eec5657ed44da917a` |
| 23 | `lemma` | [norm_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-zero-iff--e71636f1036e91a713dc3688.md) | 192 | `result-track:e71636f1036e91a713dc368800bc2128e27f24bea2891923b8bd783013de698a` |
| 24 | `lemma` | [inner_mul_inner_swap_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/inner-mul-inner-swap-le--bf20dc8467fa71500e213ce7.md) | 202 | `result-track:bf20dc8467fa71500e213ce70974fa8c8a94adb59863abb78d3138ed54531057` |
| 25 | `lemma` | [norm_inner_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-inner-le--d2d5da5879bf100f33fff3dd.md) | 232 | `result-track:d2d5da5879bf100f33fff3ddc21a726f21f25f49b2088c354ff92aa1aa30a093` |
| 26 | `lemma` | [norm_triangle](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-triangle--9f0da9f9aedd1ef161b5ebf2.md) | 248 | `result-track:9f0da9f9aedd1ef161b5ebf2a87cab7607529354ed665d229d93cb24f72753a2` |
| 27 | `lemma` | [normedSpaceCore](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/normedspacecore--b2e6c6977651800dab02944b.md) | 266 | `result-track:b2e6c6977651800dab02944bda5daa404066a7574abff8e42032c6af404c23b8` |
| 28 | `abbrev` | [normedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/normedaddcommgroup--9af81d9eec8d51453ae63e93.md) | 275 | `declaration-track:9af81d9eec8d51453ae63e93907335acaa65502a0d5818f11861d79e726677b8` |
| 29 | `lemma` | [norm_eq_csSup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/norm-eq-cssup--e0c55a63c4bce549d27e9ec9.md) | 279 | `result-track:e0c55a63c4bce549d27e9ec91f77fa6e7aeb7ee7dfb4589af20fa3cb4207f33b` |
| 30 | `def` | [innerSL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/innersl--deac1fc7a72d2dc41c3bf585.md) | 305 | `declaration-track:deac1fc7a72d2dc41c3bf585c5393d99c80270a237ce9b5dd4ac9edb8a7314a1` |
| 31 | `lemma` | [innerSL_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/innersl-apply--4200340827dfba9f0e2ac5b7.md) | 309 | `result-track:4200340827dfba9f0e2ac5b74c28009dac12d00e38080ecf3df50ecdff7ba328` |
| 32 | `lemma` | [continuous_inner](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant556edb63f855cce7ad186cf06c5e54bc843eb2e211cf18fc7276abaacb039c3b.lean/declarations/continuous-inner--157922f1e27152389984dbe0.md) | 312 | `result-track:157922f1e27152389984dbe0daf7fb6e897803985233e74342464aa0590e8647` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
