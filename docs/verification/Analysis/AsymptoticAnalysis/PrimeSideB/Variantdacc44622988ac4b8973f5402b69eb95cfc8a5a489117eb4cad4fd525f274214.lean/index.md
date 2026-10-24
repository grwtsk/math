# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PrimeSideB.Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `562865ec2246891b67f3fba67e897c39c83cdf16`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideTemp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/isbigo--34fe7be5e99c2f75854a7bf1.md) | 45 | `result-track:34fe7be5e99c2f75854a7bf10b517b3fa0cdc87fdfecc479295a7e5204726ea4` |
| 2 | `lemma` | [of_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/of-isbigo--d888ff11b3698e3c693add52.md) | 53 | `result-track:d888ff11b3698e3c693add52b09021b8491d2c0a1b70aac093ceaddb174419ce` |
| 3 | `lemma` | [iff_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/iff-isbigo--c3b258f0942163a253921a38.md) | 62 | `result-track:c3b258f0942163a253921a38667fa4e3e322e9e6f739c5237f077026b218d99b` |
| 4 | `lemma` | [mono_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/mono-right--b764cc75c5a15acdf709370a.md) | 65 | `result-track:b764cc75c5a15acdf709370a9058cda3b4aa142331b380a1b0308c8f683c9997` |
| 5 | `lemma` | [mono_right'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/mono-right--b67c93810e7e8675d769a3ac.md) | 73 | `result-track:b67c93810e7e8675d769a3ac694b34796d265ec9341729b277fbdada1cebe955` |
| 6 | `lemma` | [of_eventually_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/of-eventually-le--24bebf407d0d6b0c1cea99b7.md) | 82 | `result-track:24bebf407d0d6b0c1cea99b73b982446122d93084aa39bd2dbfb535011fc9a0b` |
| 7 | `lemma` | [eventually_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-le--6b8bef14d5a3c606ed761283.md) | 87 | `result-track:6b8bef14d5a3c606ed7612839c314db07be4023a87aee97ec20644f866193025` |
| 8 | `lemma` | [add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/add--0969558f7c3f042cfefc81f0.md) | 92 | `result-track:0969558f7c3f042cfefc81f0a3ee9b2c4928a05f0d9398fcf87d1effc862b768` |
| 9 | `lemma` | [sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/sub--32f781b4808f83f164c076d1.md) | 102 | `result-track:32f781b4808f83f164c076d1c4738a946ab2e7609113f390e2a36201332be26a` |
| 10 | `lemma` | [const_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/const-mul--d2c92db86b9b7d69fce68600.md) | 112 | `result-track:d2c92db86b9b7d69fce68600e457ba4196af05b13d4ccd977517c42022af9b0e` |
| 11 | `lemma` | [of_abs_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/of-abs-le--3c064419742acb495e4b4683.md) | 122 | `result-track:3c064419742acb495e4b4683479b83d987cec0011583312e36cf491287106f4d` |
| 12 | `lemma` | [congr_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/congr-left--61e6e5e0da65b077c687cf7d.md) | 128 | `result-track:61e6e5e0da65b077c687cf7d63b2884e7212738c11bd815677b905477b0fdc27` |
| 13 | `lemma` | [majorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/majorant-nonneg--f601ae03fc9b6d02ec343eef.md) | 132 | `result-track:f601ae03fc9b6d02ec343eef4e449af3f0b385e59727f68930a44a6f156d37af` |
| 14 | `lemma` | [l_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/l-tendsto-attop--69f3fb8a4ea8fb33a9b74957.md) | 143 | `result-track:69f3fb8a4ea8fb33a9b74957f2158267062a39ce32b44f64f500a47e3e66887c` |
| 15 | `lemma` | [ell1_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/ell1-eq--8ad669cbfc19ea6e0adc6c15.md) | 147 | `result-track:8ad669cbfc19ea6e0adc6c159b3eef63fc30e22723dbd1cf9fc093c1a66705c0` |
| 16 | `lemma` | [two_log_two_sub_one_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/two-log-two-sub-one-pos--c56a89feeeadaa36649d2164.md) | 150 | `result-track:c56a89feeeadaa36649d2164ea812be7836fadb51be419677566c08269d39f07` |
| 17 | `lemma` | [l_lt_ell1](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/l-lt-ell1--2d04411c11a8bfffa5b3e4fa.md) | 154 | `result-track:2d04411c11a8bfffa5b3e4fa1eec20a138f30945bf6d01d1ebe76550c29b046e` |
| 18 | `lemma` | [ell1_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/ell1-tendsto-attop--c4d3be3753e72ed9b9b3e42c.md) | 157 | `result-track:c4d3be3753e72ed9b9b3e42c327b19765e4e62e595c579c37dab80611740c270` |
| 19 | `lemma` | [X_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/x-pos--3588b703c9a41d0bb4f718f0.md) | 162 | `result-track:3588b703c9a41d0bb4f718f02b451c9ba8f7b8e3ad11a5b2f29529612df16de1` |
| 20 | `lemma` | [X_eq_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/x-eq-rpow--430ba1d3ae4debddf218d2ce.md) | 165 | `result-track:430ba1d3ae4debddf218d2ce607408dcd9cf2cd4bdacee6254e228bbb3579268` |
| 21 | `lemma` | [L_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/l-tendsto-attop--481354065172f0b9a59c3f02.md) | 169 | `result-track:481354065172f0b9a59c3f0273a36670aaa0a187da09e661aa90ef5049189e48` |
| 22 | `lemma` | [log_l_tendsto_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/log-l-tendsto-attop--1a65fe198f4dfaad357c1e69.md) | 173 | `result-track:1a65fe198f4dfaad357c1e69bcda37f7d18bc6aa8ead9ca83b7b36b7194385d0` |
| 23 | `lemma` | [eventually_l_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-l-ge--d3668b14d923fc7f65378c78.md) | 176 | `result-track:d3668b14d923fc7f65378c785604f46e6a21c8498fe43b426a50a9ebd9101e14` |
| 24 | `lemma` | [eventually_log_l_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-log-l-ge--792cb41d5f7c9e349c6dcdc6.md) | 178 | `result-track:792cb41d5f7c9e349c6dcdc62d50bc525f6d81dfc4e12dd81302a2b1dfa4899d` |
| 25 | `lemma` | [eventually_L_ge](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-l-ge--b2f574e9e061af67c6a0dd78.md) | 181 | `result-track:b2f574e9e061af67c6a0dd78dd4e9eb5702541c3655801c106b96ef06cf2beed` |
| 26 | `lemma` | [l_le_ell1](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/l-le-ell1--84bf7818b0c85574c5a96bbe.md) | 184 | `result-track:84bf7818b0c85574c5a96bbe95aea3418490b46015703763dd1b46310cd7d2e5` |
| 27 | `lemma` | [eventually_ell1_le_two_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-ell1-le-two-l--1afd49cbea84dffca4d23479.md) | 186 | `result-track:1afd49cbea84dffca4d234797897c4751e462690d6bd72cefc45436da96748c8` |
| 28 | `lemma` | [L_le_l](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/l-le-l--b3ad390a79f680836747ed83.md) | 193 | `result-track:b3ad390a79f680836747ed838ba2f6a1a338ac914eb80417151d29cbb708e828` |
| 29 | `lemma` | [sqrt_X_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/sqrt-x-eq--2518370c5ad16639742271f7.md) | 197 | `result-track:2518370c5ad16639742271f762bfa840db4ba7cf7e4bec7cb360c89cc79ca135` |
| 30 | `lemma` | [sqrt_X_le_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/sqrt-x-le-rpow--d89044edc2b95fb4e0b46f28.md) | 202 | `result-track:d89044edc2b95fb4e0b46f289acabb6a7c9f3ad95b0a1321bc77a6508b05f7ab` |
| 31 | `lemma` | [eventually_X_le_T](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-x-le-t--0150f3b941a015abdbcca516.md) | 211 | `result-track:0150f3b941a015abdbcca5160b18b3307bbc3a8bd95c3a9be6ce072d37fa2efd` |
| 32 | `lemma` | [eventually_one_le_X](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/eventually-one-le-x--2d3e937a5418df4172a294a0.md) | 222 | `result-track:2d3e937a5418df4172a294a07e637a6d2ca80ecd0bd622a5147bd9ddee71a828` |
| 33 | `lemma` | [rpow_half_sub_one_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/rpow-half-sub-one-mul--8f0e4c26818e14afd3bb7224.md) | 226 | `result-track:8f0e4c26818e14afd3bb72248de9a6759c8b44da543b4151dd31d758bbb36d56` |
| 34 | `lemma` | [calE_summands_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/cale-summands-nonneg--459f67b6d0bf1885ab029c88.md) | 232 | `result-track:459f67b6d0bf1885ab029c88382e0f6a88094ff4b46cb72b23154b840920bf91` |
| 35 | `lemma` | [calE_ge_w_div_L](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/cale-ge-w-div-l--3013afa5d5b4967d982dd26f.md) | 241 | `result-track:3013afa5d5b4967d982dd26f5cd007e5b0d95e2539f0c81638f7a8e82e50174c` |
| 36 | `lemma` | [calE_ge_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/cale-ge-rpow--8c0df71093acaf1bd1cc1db4.md) | 247 | `result-track:8c0df71093acaf1bd1cc1db499cb3421599fd168434a3433e6728806d50c05a3` |
| 37 | `lemma` | [calE_ge_mid](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/cale-ge-mid--446b54748a339bf5ae26ea30.md) | 253 | `result-track:446b54748a339bf5ae26ea3030b21d326a63ba7a05da5c3baa3b389d2a01aaba` |
| 38 | `lemma` | [calE_nonneg_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/cale-nonneg-eventually--b08f8fc4af87c22e1460a6fc.md) | 258 | `result-track:b08f8fc4af87c22e1460a6fc5945046dde37cfcc83d0dec5c208651235d3bec8` |
| 39 | `theorem` | [calE_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/cale-tendsto-zero--812b33880a217fa92c4b5288.md) | 265 | `result-track:812b33880a217fa92c4b528899ed8ee7243943f83cbaa23f5d57543c076e9aba` |
| 40 | `structure` | [Data](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/data--12b1e69dcca9879cadb9bd74.md) | 323 | `declaration-track:12b1e69dcca9879cadb9bd746117f287038a8855ec2b2cf370f30ae452595fbe` |
| 41 | `structure` | [Facts](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/facts--0fb5cb6c040a99a5ad7239aa.md) | 357 | `declaration-track:0fb5cb6c040a99a5ad7239aac6c7784906b03e2a5964d8b94c284d12d2ade1f6` |
| 42 | `theorem` | [tr1](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/tr1--4527a297ac0a5de6a3a7ce9a.md) | 404 | `result-track:4527a297ac0a5de6a3a7ce9a807dd6609f74f941e3fd728a33150609d79c8819` |
| 43 | `lemma` | [Ncnt_lower](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/ncnt-lower--6c8f47ad8f2d838466d31c2c.md) | 408 | `result-track:6c8f47ad8f2d838466d31c2c3da34a2493d2ff5fb9b9ab7b589b05f63d1d106f` |
| 44 | `lemma` | [T_le_Ncnt](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/t-le-ncnt--016a482670911c08424db9a5.md) | 421 | `result-track:016a482670911c08424db9a54678eb8e29307478cfe8f0f8909867ccb3f504f9` |
| 45 | `lemma` | [Ncnt_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/ncnt-pos--a7ffefc62928107231167498.md) | 427 | `result-track:a7ffefc629281072311674985f3a2b7a3f8be4536b2d943627f2156c6b21ca42` |
| 46 | `theorem` | [tr1'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/tr1--f869881a4f5c5cc9fd9885ae.md) | 435 | `result-track:f869881a4f5c5cc9fd9885aebc3548f0b747cb89fc3ceba368c91465f3376282` |
| 47 | `lemma` | [regime](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/regime--a576c4203312eaaf2c2db090.md) | 475 | `result-track:a576c4203312eaaf2c2db0902db035575408e604361702a6062c44ba44be9282` |
| 48 | `theorem` | [tr2_first](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/tr2-first--bd3141c34e589a34cf5d05b4.md) | 485 | `result-track:bd3141c34e589a34cf5d05b4da58cc0580ecdfbf3423da96a4d341ccd6047172` |
| 49 | `lemma` | [tr2_pointwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/tr2-pointwise--ebcb4d10be4aff0ca3267edf.md) | 545 | `result-track:ebcb4d10be4aff0ca3267edf8ee68f2122a42c2045a884f25f8819f9743bc8e7` |
| 50 | `theorem` | [tr2](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/tr2--10d8057862ffa5af355e781e.md) | 654 | `result-track:10d8057862ffa5af355e781e0a51ca2b8fd7f1aa247cebd4a2ee8af216eceaae` |
| 51 | `lemma` | [ratio_pointwise](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/ratio-pointwise--35c6155e9dd390ba47628d99.md) | 682 | `result-track:35c6155e9dd390ba47628d9953ed2bdbd9478b910e4963c26ffc74130bf7215e` |
| 52 | `theorem` | [ratio](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/ratio--8cf23f3a12579caf354f8bce.md) | 775 | `result-track:8cf23f3a12579caf354f8bcecf5483a4342b8d9f088c729dc0750690fa5feb53` |
| 53 | `theorem` | [tracesBounds_of_facts](../../../../../mathematics/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/declarations/tracesbounds-of-facts--da304325b81bac5a66dcce04.md) | 809 | `result-track:da304325b81bac5a66dcce04e5ca3994d6bf2e8460138a7cf294de5847db074e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
