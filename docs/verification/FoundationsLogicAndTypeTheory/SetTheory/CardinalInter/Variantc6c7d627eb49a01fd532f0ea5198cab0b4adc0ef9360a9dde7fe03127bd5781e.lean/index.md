# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalInter.Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f21116ef82ec94d70cce99e9442ee7f3a06f0d8",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f21116ef82ec94d70cce99e9442ee7f3a06f0d8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Tendsto` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter--8de8c1914c19c597d3f3b23f.md) | 49 | `declaration-track:8de8c1914c19c597d3f3b23f4e4f7260e461741a16cb30f4b629d29e05a6f65c` |
| 2 | `theorem` | [cardinal_sInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinal-sinter-mem--2cc7ec1bbb1f710a0e4436d8.md) | 56 | `result-track:2cc7ec1bbb1f710a0e4436d8dbde4ece743e4f96061a66db8b032578bff9e7d7` |
| 3 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalInterFilter.Variant25333b5bb7f532259c5d17d3e665ae82ca62d62097d2172028c20bc240334e35.Filter.cardinalInterFilter_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/root-grwtsk-foundationslogicandtypetheory-settheory-cardinalinterfilter--118b1ebcad5ec90a5d338779.md) | 61 | `result-track:118b1ebcad5ec90a5d338779ed87b4cd8c65f5c1ea3fae3fad01382d3e46351f` |
| 4 | `theorem` | [CardinalInterFilter.toCountableInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-tocountableinterfilter--11106b2218dc7c106d2d33cb.md) | 67 | `result-track:11106b2218dc7c106d2d33cbaa38334a4c8d8226ff34b6dd73914afacfee2cb7` |
| 5 | `instance` | [CountableInterFilter.toCardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/countableinterfilter-tocardinalinterfilter--db59ed6c596799b60776a221.md) | 73 | `declaration-track:db59ed6c596799b60776a22137bfde3e2ffcc8fb1319b94c4156c372d84356d7` |
| 6 | `theorem` | [cardinalInterFilter_aleph_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-aleph-one-iff--3254bafeb1322571c78a3283.md) | 78 | `result-track:3254bafeb1322571c78a3283bca3c45e6ad3e1465e1596965e143cb0781ddf26` |
| 7 | `theorem` | [CardinalInterFilter.of_cardinalInterFilter_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-of-cardinalinterfilter-of-le--1966c40fbd7feff513a3fefa.md) | 85 | `result-track:1966c40fbd7feff513a3fefad4d19887d4f033d3a3ae8127b88bd879dac305fd` |
| 8 | `theorem` | [CardinalInterFilter.of_cardinalInterFilter_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-of-cardinalinterfilter-of-lt--9aa32a34dd4176fbf4262971.md) | 91 | `result-track:9aa32a34dd4176fbf4262971d6758f8f35ff436bb280524bb1ddf5196ab8147c` |
| 9 | `theorem` | [cardinal_iInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinal-iinter-mem--c8450e8cca2cbe8a65802687.md) | 99 | `result-track:c8450e8cca2cbe8a658026873cf6fe62bfd046c08bd884504405073f1755225a` |
| 10 | `theorem` | [cardinal_bInter_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinal-binter-mem--b08fd1a8885cfcf3eb5d08c7.md) | 105 | `result-track:b08fd1a8885cfcf3eb5d08c707b8774c0e6eafa7243806fbf81e8bb1a04c4763` |
| 11 | `theorem` | [eventually_cardinal_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventually-cardinal-forall--b1c2b0231fb1e785d63adbd5.md) | 111 | `result-track:b1c2b0231fb1e785d63adbd5496954de43e203807116482a31c9f2d937467d03` |
| 12 | `theorem` | [eventually_cardinal_ball](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventually-cardinal-ball--9555caf0209b1deb2b052f26.md) | 116 | `result-track:9555caf0209b1deb2b052f26c8346407faff80192b7363f209bce16ef20d1a83` |
| 13 | `theorem` | [EventuallyLE.cardinal_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyle-cardinal-iunion--9eaf7b33359c4d7ab8fa3941.md) | 122 | `result-track:9eaf7b33359c4d7ab8fa39419c5f43fed9ead515526ec9e22d7829ded47bf11d` |
| 14 | `theorem` | [EventuallyEq.cardinal_iUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyeq-cardinal-iunion--a4872f1350d20ab042763897.md) | 127 | `result-track:a4872f1350d20ab042763897caa8ae37e5274a9395f846aa275d6b257f094ce2` |
| 15 | `theorem` | [EventuallyLE.cardinal_bUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyle-cardinal-bunion--d0cf2d3bf4eda72f3309e892.md) | 132 | `result-track:d0cf2d3bf4eda72f3309e8921fa7678c38eb86bce2bbe90eb5b7f54d19373df8` |
| 16 | `theorem` | [EventuallyEq.cardinal_bUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyeq-cardinal-bunion--f47b0fc4bf2516b3cdccc26d.md) | 138 | `result-track:f47b0fc4bf2516b3cdccc26d0c186528bd14940022d56d84378d9a0ab649253e` |
| 17 | `theorem` | [EventuallyLE.cardinal_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyle-cardinal-iinter--bf906347747727619555bfd4.md) | 144 | `result-track:bf906347747727619555bfd47faf635b5b60f92cceb648f5e9b6236a48914535` |
| 18 | `theorem` | [EventuallyEq.cardinal_iInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyeq-cardinal-iinter--e2c84139cfaecdcf554a0281.md) | 149 | `result-track:e2c84139cfaecdcf554a0281f3325d85f8f1a95fc14d0f1c8bf0396ec5fe9bd3` |
| 19 | `theorem` | [EventuallyLE.cardinal_bInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyle-cardinal-binter--625823df4c130853daabedf6.md) | 154 | `result-track:625823df4c130853daabedf629e1224cdc7edc1269ab0cdd6a998f011928b741` |
| 20 | `theorem` | [EventuallyEq.cardinal_bInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/eventuallyeq-cardinal-binter--aa7cbd0797bfe8e7a7381e72.md) | 160 | `result-track:aa7cbd0797bfe8e7a7381e72ef2b20bf79609ba8e8bceb99a9bd0ab9282bf814` |
| 21 | `def` | [ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/ofcardinalinter--bae9529ef256d19c2a61f96e.md) | 168 | `declaration-track:bae9529ef256d19c2a61f96ebc378cb66e494ce570ccf8cde13f6663588ef0c3` |
| 22 | `instance` | [cardinalInter_ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinter-ofcardinalinter--dce856446db3b2021d0c5685.md) | 183 | `declaration-track:dce856446db3b2021d0c56853e6aca967dcc931f02d8ed41e1789dab43a17d35` |
| 23 | `theorem` | [mem_ofCardinalInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/mem-ofcardinalinter--7325d3493b8e11a7f762e639.md) | 190 | `result-track:7325d3493b8e11a7f762e6393ea01d8f44131a2e8bf9573056c47f498644f727` |
| 24 | `def` | [ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/ofcardinalunion--953a080db150eb33d5fdc79d.md) | 200 | `declaration-track:953a080db150eb33d5fdc79d14d3d0d42c973ba0b823fdd65c7a9ce77de51053` |
| 25 | `instance` | [cardinalInter_ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinter-ofcardinalunion--e7c29b0af7d242fccf715d17.md) | 214 | `declaration-track:e7c29b0af7d242fccf715d179d6717ca65352c464341c6fdfc71c5db6ab26ac8` |
| 26 | `theorem` | [mem_ofCardinalUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/mem-ofcardinalunion--aee5db9016f1d0f38d24a664.md) | 219 | `result-track:aee5db9016f1d0f38d24a6643a180499f940d5c4641d00fddf35f6ec7606fc6e` |
| 27 | `instance` | [cardinalInterFilter_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-principal--38db4910e98cba68ee94ff8b.md) | 223 | `declaration-track:38db4910e98cba68ee94ff8b4122e94406f840c21f867cac90a933a788273c8c` |
| 28 | `instance` | [cardinalInterFilter_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-bot--93c989a1c4741897beded6fc.md) | 226 | `declaration-track:93c989a1c4741897beded6fc52ff440855cee51076e630bf7167020a1522a60a` |
| 29 | `instance` | [cardinalInterFilter_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-top--c6775de00b587fc9b21f31e1.md) | 230 | `declaration-track:c6775de00b587fc9b21f31e1b4b41511322e91ffa5575d262e09ef4d06824cbd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/instance--f4d0ac18f6492cad32f99f5b.md) | 234 | `declaration-track:f4d0ac18f6492cad32f99f5be501bb3c59d66c98e31ebb9fe1941a249bb511c2` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/instance--097db126b58f28bcac989085.md) | 241 | `declaration-track:097db126b58f28bcac9890850e7aa501edaa6f49bda1c1732388724386591bd0` |
| 32 | `instance` | [cardinalInterFilter_inf_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-inf-eq--14afa46bfefc125d9780d4ee.md) | 249 | `declaration-track:14afa46bfefc125d9780d4eeb0ff6a6d1b266ef2d7b59bf35599b173cc70fd85` |
| 33 | `instance` | [cardinalInterFilter_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-inf--8b7d25615ca87eaeea6ebe85.md) | 259 | `declaration-track:8b7d25615ca87eaeea6ebe85728e6366c83bffbd6ec1f6b09a3f3e00cdc737ee` |
| 34 | `instance` | [cardinalInterFilter_sup_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-sup-eq--824b385892b95cf3a45b0880.md) | 269 | `declaration-track:824b385892b95cf3a45b08807447db048997d2197981da416ea0abe18f638f55` |
| 35 | `instance` | [cardinalInterFilter_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinterfilter-sup--c2a3a15e528c359a125575a1.md) | 274 | `declaration-track:c2a3a15e528c359a125575a13dfbd6ccab7f5d36e919fdaa4271e143806fa503` |
| 36 | `inductive` | [CardinalGenerateSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalgeneratesets--c52f9fca6570f070a79ea913.md) | 287 | `declaration-track:c52f9fca6570f070a79ea913731a07865d4628f3ae55a35b3bd1c12b7e9d5ff8` |
| 37 | `def` | [cardinalGenerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalgenerate--4a5fabd85cf38a8e0284aed7.md) | 295 | `declaration-track:4a5fabd85cf38a8e0284aed7bee3495ffd350fb7d3680555225bd236a41f1e20` |
| 38 | `lemma` | [cardinalInter_ofCardinalGenerate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalinter-ofcardinalgenerate--f6e1e79b33e7ec6bf2a10ce7.md) | 299 | `result-track:f6e1e79b33e7ec6bf2a10ce7352caf3583381dd500abbd6607324340361057d8` |
| 39 | `theorem` | [mem_cardinaleGenerate_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/mem-cardinalegenerate-iff--0218121b1150e8429496d119.md) | 308 | `result-track:0218121b1150e8429496d119e6888c098fbfc38b6b9525f355788c87c453ea37` |
| 40 | `theorem` | [le_cardinalGenerate_iff_of_cardinalInterFilter](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/le-cardinalgenerate-iff-of-cardinalinterfilter--b8f19b607b3d618778a143e9.md) | 331 | `result-track:b8f19b607b3d618778a143e993d0f0eb872b1527d8daf21b2fdab1a9682d13ca` |
| 41 | `theorem` | [cardinalGenerate_isGreatest](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/declarations/cardinalgenerate-isgreatest--17668a07c0f5bff0640bad37.md) | 343 | `result-track:17668a07c0f5bff0640bad374dc9349bc022c7eb868a876d977b4330e3b3ba7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
