# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d581b071994d3ae0963ea0cff84358d161daed4",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d581b071994d3ae0963ea0cff84358d161daed4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.LocallyFinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/instance--4c76c509c3abbafff7d2d92a.md) | 25 | `declaration-track:4c76c509c3abbafff7d2d92a0920a4f6d681fadfb297a829cfdec7066576911a` |
| 2 | `theorem` | [Icc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/icc-eq-range--4966e21f3c1d98b8bb80ea8a.md) | 64 | `result-track:4966e21f3c1d98b8bb80ea8a07830aeb7934dc3573c27e9ece90f99b721e6634` |
| 3 | `theorem` | [Ico_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-eq-range--927e40f1bb55533b7f08486c.md) | 68 | `result-track:927e40f1bb55533b7f08486ce35a11f63da96551ef8f723aff2f3205a895ca41` |
| 4 | `theorem` | [Ioc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ioc-eq-range--467332ff882fe7dd1addc5a7.md) | 72 | `result-track:467332ff882fe7dd1addc5a7f995788c7c2d9efd21a78f3effe010b37478d53a` |
| 5 | `theorem` | [Ioo_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ioo-eq-range--8c249a7bf77c72c557e80f02.md) | 76 | `result-track:8c249a7bf77c72c557e80f02b55289590013101033d9889401aeb6f927d691aa` |
| 6 | `theorem` | [uIcc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/uicc-eq-range--3f12db16b37585049915504a.md) | 80 | `result-track:3f12db16b37585049915504ab8811ad099037dbcf22eeda6f00dc081103cd5c5` |
| 7 | `theorem` | [Iio_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/iio-eq-range--a22f213d8a5a3b6ec9cfcf87.md) | 84 | `result-track:a22f213d8a5a3b6ec9cfcf87f0177d2c8d0d949c88bbcfe852649d8958779778` |
| 8 | `theorem` | [Ico_zero_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-zero-eq-range--f68633f209b66a6bbc1ff3e0.md) | 90 | `result-track:f68633f209b66a6bbc1ff3e0e7f248f832034f731566a44db715cac25afaa12f` |
| 9 | `theorem` | [_root_.Finset.range_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/root-finset-range-eq-ico--26a6b742f87f28e6c2f7f9cb.md) | 93 | `result-track:26a6b742f87f28e6c2f7f9cb1e45a7087c880bf85873e0aab8843c5f06f01ac0` |
| 10 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-icc--581a0b4f3fa75a01e7c3e6b1.md) | 98 | `result-track:581a0b4f3fa75a01e7c3e6b1229d1a7a7c919b0f036c60b0a30619ffed92a04b` |
| 11 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-ico--b44f1ab20057b8e8c7ac0327.md) | 103 | `result-track:b44f1ab20057b8e8c7ac0327fb6f6a04024e09d6244ebb66e2c1e8212a733b32` |
| 12 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-ioc--faeb252599d7854700fe2265.md) | 108 | `result-track:faeb252599d7854700fe2265445f588124e7056226ad1f505d9a0bd9826cbc0e` |
| 13 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-ioo--8b01f48f39e11a89cbec92f0.md) | 113 | `result-track:8b01f48f39e11a89cbec92f06fb1dcc1f6dc1905c69a95cf8cc84726cb2ba759` |
| 14 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-uicc--55d19087b62584a726baa018.md) | 118 | `result-track:55d19087b62584a726baa018e525cb67f56b850e450097b3d0d56c8bed3064a3` |
| 15 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-iic--14c2d431ced529afb214f06b.md) | 132 | `result-track:14c2d431ced529afb214f06b02b40b5cc3691380c3c7a514521874aa50bd2d29` |
| 16 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-iio--b60253bd08b6b5e7798d9d03.md) | 136 | `result-track:b60253bd08b6b5e7798d9d0311d1de956b89938c838a547249acf13a876f9bf6` |
| 17 | `theorem` | [card_fintypeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-fintypeicc--816c865647a7fc41623a392e.md) | 141 | `result-track:816c865647a7fc41623a392e15bf9d7688eb631bf6e3e5691fdf2ab2c53450cb` |
| 18 | `theorem` | [card_fintypeIco](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-fintypeico--be8c70663373d799b6dd0c50.md) | 147 | `result-track:be8c70663373d799b6dd0c5037850eb9ec13be4b61b8bbf2a3bd723f62e59593` |
| 19 | `theorem` | [card_fintypeIoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-fintypeioc--0a09adc91ad68a65dd891216.md) | 153 | `result-track:0a09adc91ad68a65dd8912161f7ff879cce5cd47a813ada6d3685dd4f4139cbe` |
| 20 | `theorem` | [card_fintypeIoo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-fintypeioo--e4036a34b464f7cd0585d749.md) | 159 | `result-track:e4036a34b464f7cd0585d7490d9cd5dc722e5a9496b6a720c73f16563346d37f` |
| 21 | `theorem` | [card_fintypeIic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-fintypeiic--1f80234073351a9a1883f446.md) | 165 | `result-track:1f80234073351a9a1883f446e4ce9704a9e19b51ae1131babbfae2ea460086ce` |
| 22 | `theorem` | [card_fintypeIio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/card-fintypeiio--80bb698a693976cd39743281.md) | 171 | `result-track:80bb698a693976cd39743281ea715ebc332d5782ae9e7e3884e49f163a438d5f` |
| 23 | `theorem` | [Icc_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/icc-succ-left--02f3d27f2e192c2bdc316b7f.md) | 175 | `result-track:02f3d27f2e192c2bdc316b7f006225a2286c79522d81c5f5972b59e6d72b1449` |
| 24 | `theorem` | [Ico_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-succ-right--bd794cc868aee56b8ac99aa7.md) | 180 | `result-track:bd794cc868aee56b8ac99aa781a21e4ef204b0508152c276d426d87797bb877a` |
| 25 | `theorem` | [Ico_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-succ-left--f40965efaf814d70c1c5c3e9.md) | 185 | `result-track:f40965efaf814d70c1c5c3e93406587ebb98d08c1baa63509d40d6583170a0d2` |
| 26 | `theorem` | [Icc_pred_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/icc-pred-right--dc9b1f2268330e3e26037bf0.md) | 190 | `result-track:dc9b1f2268330e3e26037bf03ead0810bdfa1ebb780f036f0c8da263fec1dd1e` |
| 27 | `theorem` | [Ico_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-succ-succ--279d136b9361de8c6357c52c.md) | 195 | `result-track:279d136b9361de8c6357c52cc311af8406aca9df406da7d481bd95e7f29caf33` |
| 28 | `theorem` | [Ico_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-succ-singleton--e2b777367d3bdd2286f80310.md) | 201 | `result-track:e2b777367d3bdd2286f803108085d383c8e18e69f47a5db8370bea1d6f5122ab` |
| 29 | `theorem` | [Ico_pred_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-pred-singleton--68a926448e113c13d7291150.md) | 205 | `result-track:68a926448e113c13d7291150f9be06cf91fab763d7c169fa6cf9be21869b7eb8` |
| 30 | `theorem` | [Ioc_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ioc-succ-singleton--00783b13df0549486dca939a.md) | 210 | `result-track:00783b13df0549486dca939a008bbdf86b5c824d4c687c3189e2da21d7b1eed9` |
| 31 | `theorem` | [Ico_succ_right_eq_insert_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-succ-right-eq-insert-ico--65d7a25447098f7d396456ee.md) | 215 | `result-track:65d7a25447098f7d396456eee9653d4da8af0c9840f2e30fbc93682f97a56851` |
| 32 | `theorem` | [Ico_insert_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-insert-succ-left--57f5ea60e325af6e6942ddf9.md) | 219 | `result-track:57f5ea60e325af6e6942ddf98219a7d13e92a1596997bf825b56fd0939049dfe` |
| 33 | `theorem` | [image_sub_const_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/image-sub-const-ico--a569821659b5a0f535a78b65.md) | 223 | `result-track:a569821659b5a0f535a78b65095e8b2d07dd831004fdd40b6b62c0448cf73910` |
| 34 | `theorem` | [Ico_image_const_sub_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-image-const-sub-eq-ico--2848ac1114da66c4c6ff3466.md) | 237 | `result-track:2848ac1114da66c4c6ff346697ff0e1d99c92f458cf6599db5669d56f800983a` |
| 35 | `theorem` | [Ico_succ_left_eq_erase_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/ico-succ-left-eq-erase-ico--f426fc906565f9f9e28409fa.md) | 265 | `result-track:f426fc906565f9f9e28409fa7ba46554790ea88ef090a460e4e92cc5aa22a91b` |
| 36 | `theorem` | [mod_injOn_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/mod-injon-ico--446c91c76b6ae24c8acd72eb.md) | 271 | `result-track:446c91c76b6ae24c8acd72ebc8b652d6a9dd548a079604b3b927e0ccd23d11c1` |
| 37 | `theorem` | [image_Ico_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/image-ico-mod--5386c9438ab4cd84d8a405e1.md) | 299 | `result-track:5386c9438ab4cd84d8a405e1b5420ff6bf3e931728eb9ae7701b4315d6f3fbb1` |
| 38 | `theorem` | [multiset_Ico_map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/multiset-ico-map-mod--7a062c7f03f4b9f071108a1a.md) | 329 | `result-track:7a062c7f03f4b9f071108a1a34d41f55db057ead6b532d4f71c1feddf0588617` |
| 39 | `theorem` | [range_image_pred_top_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/range-image-pred-top-sub--cbe2fb25169578ddd128bb6d.md) | 342 | `result-track:cbe2fb25169578ddd128bb6d0e520e19190c937a4eb3504fd38054eb550d66da` |
| 40 | `theorem` | [range_add_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/range-add-eq-union--e32cc8f28ba5f63ce852acc0.md) | 351 | `result-track:e32cc8f28ba5f63ce852acc050f0bc3f1475afaa755628e97b132fdc14380e14` |
| 41 | `theorem` | [Nat.decreasing_induction_of_not_bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/nat-decreasing-induction-of-not-bddabove--4853ef9eb326ebc77f2bc9d3.md) | 363 | `result-track:4853ef9eb326ebc77f2bc9d3096e873d5c07bb02e977b26b7a3679d85f2f07a0` |
| 42 | `theorem` | [Nat.decreasing_induction_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/nat-decreasing-induction-of-infinite--3641c3b061fe31420001757f.md) | 368 | `result-track:3641c3b061fe31420001757f0e9d548b71b7e306a2fa44d6f141915a563a869a` |
| 43 | `theorem` | [Nat.cauchy_induction'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/nat-cauchy-induction--3a68619da1ea8ac762c3982c.md) | 372 | `result-track:3a68619da1ea8ac762c3982ce6f5ffc97bf9859891c467c84ff701d8094ed975` |
| 44 | `theorem` | [Nat.cauchy_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/nat-cauchy-induction--431fd270e881ccd7fca46ffe.md) | 381 | `result-track:431fd270e881ccd7fca46ffeb19e0a0254e6fd47d0f96e6d4cb0c286cac9183f` |
| 45 | `theorem` | [Nat.cauchy_induction_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/nat-cauchy-induction-mul--8023f6f8f996ac58fd088a82.md) | 386 | `result-track:8023f6f8f996ac58fd088a82f865a7fbc41d3b5b2b1fd014ac9b9d55311b65c5` |
| 46 | `theorem` | [Nat.cauchy_induction_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/declarations/nat-cauchy-induction-two-mul--f77feb4ba7197c0cdb9b6142.md) | 394 | `result-track:f77feb4ba7197c0cdb9b6142f34d3e9dd733c2600607a175f5b94f88d8233988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
