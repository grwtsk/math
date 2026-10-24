# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c4dce48bd4b806ca5f3867b269f1c901c6ad896",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c4dce48bd4b806ca5f3867b269f1c901c6ad896`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Multiset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/instlocallyfiniteorder--218a739794a0d8aef173110c.md) | 38 | `declaration-track:218a739794a0d8aef173110c35936a7367f6785241e0613fb570bea3f860e00e` |
| 2 | `theorem` | [Icc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/icc-eq-range--ec91ebd90d58f29e4904842b.md) | 48 | `result-track:ec91ebd90d58f29e4904842b29efc67d382a5418e9ed23e154a7995441e96555` |
| 3 | `theorem` | [Ico_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-eq-range--abe719c609e372c687640380.md) | 51 | `result-track:abe719c609e372c68764038044dae574312d8a9ca5473ebc98706a836f6b7a57` |
| 4 | `theorem` | [Ioc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ioc-eq-range--b6c85d516ad31acbe9fa1c40.md) | 54 | `result-track:b6c85d516ad31acbe9fa1c40ed5b2f52cb7e8e2db96f4a5d704bfb34560c29b0` |
| 5 | `theorem` | [Ioo_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ioo-eq-range--a39e6b5690c07eb7ae19b43d.md) | 57 | `result-track:a39e6b5690c07eb7ae19b43da71f3f83851bea58065f25d9d6bee41a888026d4` |
| 6 | `theorem` | [uIcc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/uicc-eq-range--43464277db06551174e7bcf4.md) | 60 | `result-track:43464277db06551174e7bcf4c84f24a2b811d462938d92ca3956e30ffe0147e0` |
| 7 | `theorem` | [Iio_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/iio-eq-range--be072f2b838e4d620f0c36b2.md) | 63 | `result-track:be072f2b838e4d620f0c36b2859ff3990f706e285022d63d0cc263684ca59ed0` |
| 8 | `theorem` | [Ico_zero_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-zero-eq-range--1dfc231c1cb756cfe7a365f8.md) | 68 | `result-track:1dfc231c1cb756cfe7a365f8fe0d06dd5fc5d80186fdebb4fa29331468257d5c` |
| 9 | `lemma` | [range_eq_Icc_zero_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/range-eq-icc-zero-sub-one--a9d72492528ebc55f761890b.md) | 70 | `result-track:a9d72492528ebc55f761890beff5f9ae495a4f1658ce17053dc44a7ac1e96d31` |
| 10 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.IccEqRangePrime.Variant63dce9ab6fe9e6835149f55d47c6c2274ae3c2d9f274f179504c13ac1d1f1f36.Finset.range_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-icceqrangeprime-variant6--4815ebdfb08b39c66b65dcf5.md) | 75 | `result-track:4815ebdfb08b39c66b65dcf5aafb1f22368a6965e2ddcd135a98237b3a9ff21c` |
| 11 | `theorem` | [range_succ_eq_Icc_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/range-succ-eq-icc-zero--75e39094f4bca1e9428df967.md) | 78 | `result-track:75e39094f4bca1e9428df967355d334df411d4d915e8edde9b8f155021d556a1` |
| 12 | `lemma` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-icc--d248ea6e7aa256edb7dd8fc9.md) | 81 | `result-track:d248ea6e7aa256edb7dd8fc9ec41002502d8d08ad4035a36cc6849f5672e9696` |
| 13 | `lemma` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-ico--5709f8647854ae3c86a314f0.md) | 82 | `result-track:5709f8647854ae3c86a314f0e210ab887ea8f981fec227eb845b2cb00be647f0` |
| 14 | `lemma` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-ioc--a364d66681068c47063967c2.md) | 83 | `result-track:a364d66681068c47063967c223d98ed0eb908bba29a82a9135fe1db0716f7491` |
| 15 | `lemma` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-ioo--6a47c6e74c004c2056e87808.md) | 84 | `result-track:6a47c6e74c004c2056e87808b6053d06baec4e31a35451986212dba6e4734c37` |
| 16 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-uicc--2a70bfc495fb9c462d051899.md) | 87 | `result-track:2a70bfc495fb9c462d051899b943106286a6bcf86c4a7a5b9df903d8003b7a34` |
| 17 | `lemma` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-iic--984c5bf49dc178670697d50a.md) | 91 | `result-track:984c5bf49dc178670697d50a567673ed8a7974a296743d8e574262e34992a308` |
| 18 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-iio--02516c7211064a870e5767aa.md) | 94 | `result-track:02516c7211064a870e5767aa9882074488efae0d335e412563234c42e2a15570` |
| 19 | `theorem` | [card_fintypeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-fintypeicc--5806455e5af4fe7fad8b4a3d.md) | 97 | `result-track:5806455e5af4fe7fad8b4a3db07b63c07d9268c137e6d67400761315e47c324a` |
| 20 | `theorem` | [card_fintypeIco](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-fintypeico--1297712ae2bfae488605c94f.md) | 100 | `result-track:1297712ae2bfae488605c94f31bb56dc26f81a2d36eafd327817113026e31c85` |
| 21 | `theorem` | [card_fintypeIoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-fintypeioc--88662d91991987a5f646f2e6.md) | 103 | `result-track:88662d91991987a5f646f2e6513511d92da3d1fa128b71618d8de430a250ff38` |
| 22 | `theorem` | [card_fintypeIoo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-fintypeioo--e1488d546149ef6a81d8f40f.md) | 106 | `result-track:e1488d546149ef6a81d8f40fd62eb5bc6be9088e6fe0cd5debcb206728446f66` |
| 23 | `theorem` | [card_fintypeIic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-fintypeiic--494fc1b2fc408e2963ad4d01.md) | 109 | `result-track:494fc1b2fc408e2963ad4d01aff84fe865d37eef15d0b0e2c1536f634f357c51` |
| 24 | `theorem` | [card_fintypeIio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/card-fintypeiio--1743aad2116c67b5b90b00b8.md) | 112 | `result-track:1743aad2116c67b5b90b00b865673cb72956cebda1cb22ad0f8e7c9756e5c451` |
| 25 | `theorem` | [Icc_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/icc-succ-left--1e9f01d31c4ff19e8c3336da.md) | 115 | `result-track:1e9f01d31c4ff19e8c3336dae8649775fc4c52ce4cbfd4131431204c4b86b30c` |
| 26 | `theorem` | [Ico_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-succ-right--4a5999fb9d4c2092cc03fa3c.md) | 120 | `result-track:4a5999fb9d4c2092cc03fa3c133050140f7a4831f27ad858d6d4959d2f5659f6` |
| 27 | `theorem` | [Ico_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-succ-left--73fbc230ed76de4f3764f357.md) | 125 | `result-track:73fbc230ed76de4f3764f357fb5e32c73f56e47048aa969a8684d1a3d81493d2` |
| 28 | `theorem` | [Icc_pred_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/icc-pred-right--28b27d60927181237f3f44ec.md) | 130 | `result-track:28b27d60927181237f3f44ec9b0cdcbfb0f2b4e2d0e13ca994faf7192deae50f` |
| 29 | `theorem` | [Ico_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-succ-succ--1b08a2060ffaeeb793fdb971.md) | 135 | `result-track:1b08a2060ffaeeb793fdb9715f3caa9b24e0137ed7a3cd2b921a175800bf26b5` |
| 30 | `theorem` | [Ico_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-succ-singleton--995e9af1e7a13cef46d6005e.md) | 143 | `result-track:995e9af1e7a13cef46d6005e56bbaafe402f1fee1913362b7849d963f660f2a5` |
| 31 | `theorem` | [Ico_pred_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-pred-singleton--df0590fee9e1a5e0cdc54d4a.md) | 147 | `result-track:df0590fee9e1a5e0cdc54d4ad01e5070f3fa25b66b35efddde5fc34a6a7091b3` |
| 32 | `theorem` | [Ioc_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ioc-succ-singleton--cfcfa1b613734825478c8f58.md) | 152 | `result-track:cfcfa1b613734825478c8f588d1f02e3387d92f504ec90a200bdea1bd2e4282d` |
| 33 | `lemma` | [mem_Ioc_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/mem-ioc-succ--3d13185143782c59dc061b4f.md) | 156 | `result-track:3d13185143782c59dc061b4f46094b475a9b4f0e92c870d1b8d98430e0247120` |
| 34 | `lemma` | [mem_Ioc_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/mem-ioc-succ--d96c543c6b531157c0925553.md) | 158 | `result-track:d96c543c6b531157c092555398945188c45ddf9e061d4a971dd1f8df5922b7fe` |
| 35 | `theorem` | [Ico_succ_right_eq_insert_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-succ-right-eq-insert-ico--6f5b9d78280d7b497b2909b2.md) | 163 | `result-track:6f5b9d78280d7b497b2909b2bb67d3c90c155b1b73dc6a3e905553fff4a5f2aa` |
| 36 | `theorem` | [Ico_insert_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-insert-succ-left--9c0b849d95b7e2cdc9d48c2f.md) | 168 | `result-track:9c0b849d95b7e2cdc9d48c2f2f166e29617c50e1de5f4cf5c11d21e5cad80a9c` |
| 37 | `lemma` | [Icc_insert_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/icc-insert-succ-left--ac308e3027c5de4a29b12db0.md) | 172 | `result-track:ac308e3027c5de4a29b12db06ff31628428e7187a78dbf567c758566628c33eb` |
| 38 | `lemma` | [Icc_insert_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/icc-insert-succ-right--c2702bd8e9609388461e56e2.md) | 178 | `result-track:c2702bd8e9609388461e56e230f92da7c0bdce9ef0642a26b0639165d45a0dc9` |
| 39 | `theorem` | [image_sub_const_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/image-sub-const-ico--6d8d0dccd87c4195363e7359.md) | 183 | `result-track:6d8d0dccd87c4195363e7359e2e8512730579917a14e983a5a0e4040d0906791` |
| 40 | `theorem` | [Ico_image_const_sub_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-image-const-sub-eq-ico--d5be18df61df7bd40189ee9a.md) | 191 | `result-track:d5be18df61df7bd40189ee9a415d1a6cc09d06a1c432ee8cf3e8b1772dd7dd89` |
| 41 | `theorem` | [Ico_succ_left_eq_erase_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/ico-succ-left-eq-erase-ico--3964e449f7b28bb36260c4eb.md) | 200 | `result-track:3964e449f7b28bb36260c4eb9028f9507ac0ab9c9415c18e2bd223b45cd46d3a` |
| 42 | `theorem` | [mod_injOn_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/mod-injon-ico--c15ea01b83d48acbe6502b97.md) | 206 | `result-track:c15ea01b83d48acbe6502b970088dd928f3225d843a77ef42a4e5842458f0647` |
| 43 | `theorem` | [image_Ico_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/image-ico-mod--6ec0aff2059a4441155bbb4f.md) | 232 | `result-track:6ec0aff2059a4441155bbb4f7c851006136ba5a2163eeeca435c2e0fe04702de` |
| 44 | `theorem` | [multiset_Ico_map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/multiset-ico-map-mod--3672566ed0e5f499217a5107.md) | 259 | `result-track:3672566ed0e5f499217a51070d08dd351c8a50147fa7a3073c93fcdab58037b2` |
| 45 | `lemma` | [toFinset_range'_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/tofinset-range-1--c49bbd34fdc51b03c622e832.md) | 271 | `result-track:c49bbd34fdc51b03c622e832c312974d3ada545a49e8b28c0b1bef24ad73082b` |
| 46 | `lemma` | [toFinset_range'_1_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/tofinset-range-1-1--ab22540dc92110b688ede3aa.md) | 275 | `result-track:ab22540dc92110b688ede3aa3d420c1aba2fdf4d828d88f0c473fdbf5fc0fc25` |
| 47 | `theorem` | [range_image_pred_top_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/range-image-pred-top-sub--08a1f3f4bc0c31e87e01bbf7.md) | 283 | `result-track:08a1f3f4bc0c31e87e01bbf7e55d5f181d81b75884d7f88cafc4782a8803aa35` |
| 48 | `theorem` | [range_add_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/range-add-eq-union--748f605a9d12486acc9e6fd6.md) | 290 | `result-track:748f605a9d12486acc9e6fd6a7ee28630feb8ec3b830481696b3dd16859559f3` |
| 49 | `theorem` | [Nat.decreasing_induction_of_not_bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-decreasing-induction-of-not-bddabove--3232f13e58f52ba9fe6f82a9.md) | 306 | `result-track:3232f13e58f52ba9fe6f82a98391106ee4ac0a60fc6b60e175ad78ff0de8fec6` |
| 50 | `lemma` | [Nat.strong_decreasing_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-strong-decreasing-induction--0894e8a8b62a295262935361.md) | 312 | `result-track:0894e8a8b62a2952629353615773738fd7039d9add0bf6e67125a1c1f8910701` |
| 51 | `theorem` | [Nat.decreasing_induction_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-decreasing-induction-of-infinite--87528b063fc890af6b9724d0.md) | 324 | `result-track:87528b063fc890af6b9724d0869242b4b5eb4dee03249f44f891e3d734e73c44` |
| 52 | `theorem` | [Nat.cauchy_induction'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-cauchy-induction--c55ab26c25201441b80ab910.md) | 328 | `result-track:c55ab26c25201441b80ab910ad3ccbbfac87e5295ef14787f03291b98839de5d` |
| 53 | `theorem` | [Nat.cauchy_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-cauchy-induction--0e699da2ffb2975252f09cd2.md) | 336 | `result-track:0e699da2ffb2975252f09cd22617d1f1f91d3ed5d3454b125087c495b7b72c95` |
| 54 | `theorem` | [Nat.cauchy_induction_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-cauchy-induction-mul--65f18501e243a2f35ec93ff7.md) | 340 | `result-track:65f18501e243a2f35ec93ff7a194df0ccf1dcfdc7eb1a81bf029003b4a42077b` |
| 55 | `theorem` | [Nat.cauchy_induction_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-cauchy-induction-two-mul--4ecde272f925f2ae26e975e5.md) | 347 | `result-track:4ecde272f925f2ae26e975e5cdf60123151bc08976eac53ca9a2e8f10f8acd68` |
| 56 | `theorem` | [Nat.pow_imp_self_of_one_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variante91d0d3e2a783ec465614d643f24df979e65a6031f805730ebc25037188944db.lean/declarations/nat-pow-imp-self-of-one-lt--1125d0a84dc45a4a4a05da31.md) | 351 | `result-track:1125d0a84dc45a4a4a05da31c128c82898e23fb0d0453f039f416dd483cd4151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
