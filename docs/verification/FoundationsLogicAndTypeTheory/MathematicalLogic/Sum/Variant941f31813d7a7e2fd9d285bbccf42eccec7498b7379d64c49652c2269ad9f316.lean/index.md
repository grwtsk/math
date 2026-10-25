# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a4972bd90000423db62023f5ffddf29afef7531",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a4972bd90000423db62023f5ffddf29afef7531`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Coe` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psumEquivSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/psumequivsum--2f0a94a4d473802efad1e7c2.md) | 55 | `declaration-track:2f0a94a4d473802efad1e7c2c8264bfb89f42077d5a86e62e504f327efaed061` |
| 2 | `def` | [sumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr--dee85634e9e8479d0f4947f7.md) | 63 | `declaration-track:dee85634e9e8479d0f4947f70d5308963c1cf176307f3fd0a001fadda06bbba0` |
| 3 | `theorem` | [sumCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-trans--99a3b24a487d4b04ab346298.md) | 67 | `result-track:99a3b24a487d4b04ab3462989e83b1caee669b2516af166694576a06a46340a5` |
| 4 | `theorem` | [sumCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-symm--e9b4025bed2f1aff8903b157.md) | 73 | `result-track:e9b4025bed2f1aff8903b157e0852e8df257d50b213340fae8d94b55de1ea1b0` |
| 5 | `theorem` | [sumCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-refl--420d5f2d6d9e644bb189325a.md) | 78 | `result-track:420d5f2d6d9e644bb189325ae65d182f5aee332e058ffa742fb2b07fe74c3ab1` |
| 6 | `def` | [psumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/psumcongr--e1956e4a5e37cd35f5af333d.md) | 84 | `declaration-track:e1956e4a5e37cd35f5af333d8eb7e39e560536f088f7d199fdc4b2c3481cd43c` |
| 7 | `def` | [psumSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/psumsum--492ec23af14c0eecb042830e.md) | 91 | `declaration-track:492ec23af14c0eecb042830e21c314d6b4c2bb22d3faeaa0018f8a51ae569bcb` |
| 8 | `def` | [sumPSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumpsum--1c42f23086cbfb0dd4727d44.md) | 96 | `declaration-track:1c42f23086cbfb0dd4727d4419d4f33876f43f0b8d1e1b2a88f96d8af2ffb3ef` |
| 9 | `def` | [subtypeSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/subtypesum--03a6ef16db81dd08b62cb1d5.md) | 101 | `declaration-track:03a6ef16db81dd08b62cb1d5b54a51667503ec8454169ecc0ad6fb263a62f9fd` |
| 10 | `abbrev` | [sumCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr--1cc07aab7e5bdd6ff1e7c73d.md) | 115 | `declaration-track:1cc07aab7e5bdd6ff1e7c73d610b31d4623dd7d2816dbe5b96ccc1bc63edf7bf` |
| 11 | `theorem` | [sumCongr_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-apply--64ec5565523c9f12f17bc11d.md) | 119 | `result-track:64ec5565523c9f12f17bc11df11dfe22dec1188ac8565f666ff53973a84dc684` |
| 12 | `theorem` | [sumCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-trans--30a305744fd663c57f40a4a5.md) | 123 | `result-track:30a305744fd663c57f40a4a5fc6d410b0713304895ba906d044b439208ab8fe7` |
| 13 | `theorem` | [sumCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-symm--ea8efb87e7785a7b1d98032f.md) | 127 | `result-track:ea8efb87e7785a7b1d98032fb0fd48af4a74cd65a8cecdbd041405188d284b0c` |
| 14 | `theorem` | [sumCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcongr-refl--ce27e551ffbf363fa09132b9.md) | 131 | `result-track:ce27e551ffbf363fa09132b9b1cb0e04709432e2b5e2fb1b3bdfe95fd615fe43` |
| 15 | `def` | [boolEquivPUnitSumPUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/boolequivpunitsumpunit--df31d18a873eeeb16e64c77f.md) | 137 | `declaration-track:df31d18a873eeeb16e64c77f0343ae0f0a5539e2ac26b7228633d4fe096931e8` |
| 16 | `def` | [sumComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcomm--90efccd9a5a01839f250e147.md) | 143 | `declaration-track:90efccd9a5a01839f250e147d062e8b074ec987bc428fbe6e01ab443f3a692df` |
| 17 | `theorem` | [sumComm_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcomm-symm--f08ca8fa87dae1284201fa8f.md) | 147 | `result-track:f08ca8fa87dae1284201fa8ff1dda401cec175d670ca0b2fe475d83676fef6fd` |
| 18 | `def` | [sumAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc--c4dbd5c35850c98cf8ef6485.md) | 151 | `declaration-track:c4dbd5c35850c98cf8ef64855c3fada75efbc2e5eedadae0a6a15f7356e8e4cf` |
| 19 | `theorem` | [sumAssoc_apply_inl_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc-apply-inl-inl--521af7b6ed3c23622abfb8a4.md) | 158 | `result-track:521af7b6ed3c23622abfb8a460edcf5d3b209ef61b9a8a6a47cca39cee53b8a4` |
| 20 | `theorem` | [sumAssoc_apply_inl_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc-apply-inl-inr--ceb9bfe4b992527b00033561.md) | 162 | `result-track:ceb9bfe4b992527b0003356184c7678d1d2d085ee62a3b73c6061825804c7b3f` |
| 21 | `theorem` | [sumAssoc_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc-apply-inr--e7b9ac0ec20e395cc1c7a905.md) | 166 | `result-track:e7b9ac0ec20e395cc1c7a90512750eb7a203d81c31bbb9d9bdb3bd02704b67f2` |
| 22 | `theorem` | [sumAssoc_symm_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc-symm-apply-inl--dd0e5aa47c56e7436ef89991.md) | 170 | `result-track:dd0e5aa47c56e7436ef8999141685bd9ef9c34de6e1b50e7eeb3dcf240f8649f` |
| 23 | `theorem` | [sumAssoc_symm_apply_inr_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc-symm-apply-inr-inl--95b17d7b11a319add3df2902.md) | 174 | `result-track:95b17d7b11a319add3df2902c7c7fae6637498528f496ed0f2c74ae809aa137d` |
| 24 | `theorem` | [sumAssoc_symm_apply_inr_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumassoc-symm-apply-inr-inr--554a2fa6f17c1b6800ea917a.md) | 179 | `result-track:554a2fa6f17c1b6800ea917a2e4a0cf7d27f65ec52d04f3f757b28d767b0435c` |
| 25 | `def` | [sumSumSumComm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumsumsumcomm--750ea1b6c54e0f6e79af4e42.md) | 184 | `declaration-track:750ea1b6c54e0f6e79af4e42ac9b494445bb94ba60eb6f68df821b0e7d20b895` |
| 26 | `theorem` | [sumSumSumComm_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumsumsumcomm-symm--fb54b7da8542c56ff4e1e2dd.md) | 199 | `result-track:fb54b7da8542c56ff4e1e2dd07f1a1a87defc01baf42f99512c2a7fe59e9c87b` |
| 27 | `def` | [sumEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumempty--774a29792f0834bd2828b77e.md) | 204 | `declaration-track:774a29792f0834bd2828b77e26cf8cd0c4968d842ffe5365cc44cea6edd2d8fd` |
| 28 | `theorem` | [sumEmpty_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumempty-apply-inl--5a5cec7dd660b421b39db6b1.md) | 214 | `result-track:5a5cec7dd660b421b39db6b190c4b7ce6da98ad3f6763c5c73b45f73c4448f93` |
| 29 | `def` | [emptySum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/emptysum--7bb6b760e7511d9a1a979288.md) | 219 | `declaration-track:7bb6b760e7511d9a1a9792883cfc4ad0f3cb8ca62e85c2d53738942fffa44cde` |
| 30 | `theorem` | [emptySum_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/emptysum-apply-inr--f82b84c6bc1b0b0d56650f77.md) | 223 | `result-track:f82b84c6bc1b0b0d56650f770c29a30d9d270aecdd0aacb48239fe3151caad2a` |
| 31 | `def` | [sumEquivSigmaBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumequivsigmabool--ab1b0c27efb2481121fc5fae.md) | 230 | `declaration-track:ab1b0c27efb2481121fc5faed7ca8f384c1ae20834097a6664e177403a02f9af` |
| 32 | `def` | [sigmaFiberEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sigmafiberequiv--8bbd31749e8f548aaa5648d2.md) | 241 | `declaration-track:8bbd31749e8f548aaa5648d2a87cd72f459015aedbada82233c89cf69c6d01b6` |
| 33 | `def` | [sigmaEquivOptionOfInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sigmaequivoptionofinhabited--c14868aa541ad42ca0fd8d3f.md) | 246 | `declaration-track:c14868aa541ad42ca0fd8d3f20493785004c8f838035bfc539cfb33956daccab` |
| 34 | `def` | [sumCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcompl--036ff9811a9c88f1bce3b731.md) | 266 | `declaration-track:036ff9811a9c88f1bce3b73132fa423842ff1032f388f88a61ca60ec4e361a58` |
| 35 | `theorem` | [sumCompl_apply_inl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcompl-apply-inl--e55419f84e443eec1e714ecb.md) | 279 | `result-track:e55419f84e443eec1e714ecb02dd9868bb74cf30b7c98655c0cd438895b5bcf4` |
| 36 | `theorem` | [sumCompl_apply_inr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcompl-apply-inr--f1d7fc288426c9aaa2d7550c.md) | 284 | `result-track:f1d7fc288426c9aaa2d7550c64d475ed2b943da2f352377ce9bb6e4fd8ec7208` |
| 37 | `theorem` | [sumCompl_apply_symm_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcompl-apply-symm-of-pos--88ee00d3aebd77decda2da38.md) | 289 | `result-track:88ee00d3aebd77decda2da38f7b3b4cf41f8208e732ae845262b7414aaedcaa3` |
| 38 | `theorem` | [sumCompl_apply_symm_of_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumcompl-apply-symm-of-neg--3e54d21705e8e25fdc42b06f.md) | 294 | `result-track:3e54d21705e8e25fdc42b06fe6761c275bf72b0787332e594de84772a442d19c` |
| 39 | `def` | [prodSumDistrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/prodsumdistrib--e2b08c7208d3331dd2ff7974.md) | 305 | `declaration-track:e2b08c7208d3331dd2ff7974d96f4cb585665a3bfcb72962992c7b6ccc6c8573` |
| 40 | `theorem` | [prodSumDistrib_apply_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/prodsumdistrib-apply-left--7185ad990960d6b5b865b2fd.md) | 312 | `result-track:7185ad990960d6b5b865b2fd1aceb3cbc1161e26d0eaa1a3b4a0911418889daa` |
| 41 | `theorem` | [prodSumDistrib_apply_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/prodsumdistrib-apply-right--0a82f94ae53b5a8719b1d65b.md) | 317 | `result-track:0a82f94ae53b5a8719b1d65bb451fcd133ac66aef2c164c400c0def2ad8ad435` |
| 42 | `theorem` | [prodSumDistrib_symm_apply_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/prodsumdistrib-symm-apply-left--f5ae6f7ea8c67735d52b76d4.md) | 322 | `result-track:f5ae6f7ea8c67735d52b76d43122d955107e6b51ebe0432cbd06745ed3be49f0` |
| 43 | `theorem` | [prodSumDistrib_symm_apply_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/prodsumdistrib-symm-apply-right--7f9fc2945a9e01885f60fd58.md) | 327 | `result-track:7f9fc2945a9e01885f60fd58e43562171150c8cdf67433203100aa80019a389a` |
| 44 | `def` | [sigmaSumDistrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sigmasumdistrib--90a55b940a050878be82536d.md) | 334 | `declaration-track:90a55b940a050878be82536df7e3cc744887cd3b0c91e907eb5fc0e3a64f0f9e` |
| 45 | `def` | [sumSigmaDistrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant941f31813d7a7e2fd9d285bbccf42eccec7498b7379d64c49652c2269ad9f316.lean/declarations/sumsigmadistrib--f689fbc9542b63bbe4a41b8e.md) | 343 | `declaration-track:f689fbc9542b63bbe4a41b8eff9cc85bafd8e2a89e86bc9139b831cb38cd9c3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
