# Verification target: GRWTSK.Algebra.SuccPred.Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4035d4ba453b4379e3a67271f3bded5f21b48b0",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/index.md) · [Full source](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4035d4ba453b4379e3a67271f3bded5f21b48b0`.

Source path: `GRWTSK/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.SuccPred` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.SuccPred` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_add_one_left_eq_Ioo](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ico-add-one-left-eq-ioo--4eb3b6e570f8444aceddd469.md) | 48 | `result-track:4eb3b6e570f8444aceddd4696a265ec53921e3de215f6baadb3b970b06781af4` |
| 2 | `lemma` | [Icc_add_one_left_eq_Ioc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/icc-add-one-left-eq-ioc-of-not-ismax--15d1bc3502f7b46e03b6a13d.md) | 51 | `result-track:15d1bc3502f7b46e03b6a13dee0a42ed3569003b5467a5d3afd82359f4020afa` |
| 3 | `lemma` | [Ico_add_one_right_eq_Icc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ico-add-one-right-eq-icc-of-not-ismax--2ba24bb2b7af194ddcf12375.md) | 54 | `result-track:2ba24bb2b7af194ddcf12375432bb9f00cf338222cc8d24bd355f7f40cd7a0b1` |
| 4 | `lemma` | [Ioo_add_one_right_eq_Ioc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioo-add-one-right-eq-ioc-of-not-ismax--5f0891be900c895c860bf3ed.md) | 57 | `result-track:5f0891be900c895c860bf3edfa265143498f5affec7fed36568c8f5757046576` |
| 5 | `lemma` | [Ico_add_one_add_one_eq_Ioc_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ico-add-one-add-one-eq-ioc-of-not-ismax--17a9e861bf8e45a24d21ab6f.md) | 60 | `result-track:17a9e861bf8e45a24d21ab6f2a12c49d1db5a13185c5d6c7d237f08dce99d6b7` |
| 6 | `lemma` | [insert_Icc_add_one_left_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-icc-add-one-left-eq-icc--c5cf53b6ef31906295c42e3d.md) | 66 | `result-track:c5cf53b6ef31906295c42e3d0b71ad4f8264845678d5432f054d5c27d4676c0a` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_add_one](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-icc-right-eq-icc-add-one--7cd80d412d0148352730d7c6.md) | 69 | `result-track:7cd80d412d0148352730d7c677f3466268754e02cc2be6041595236556b06bcc` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_add_one_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ico-right-eq-ico-add-one-of-not-ismax--fc3e40ab9bb4e0da6c809daf.md) | 76 | `result-track:fc3e40ab9bb4e0da6c809daf1ff30d804497e34663f76a7269aadbd4f55e4019` |
| 9 | `lemma` | [insert_Ico_add_one_left_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ico-add-one-left-eq-ico--d142fddc25ed2d586f02aeac.md) | 84 | `result-track:d142fddc25ed2d586f02aeac0cc5c886aca252124bd535627d733bcdca5a89c5` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_add_one_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ioc-right-eq-ioc-add-one-of-not-ismax--831992c813a0ab0328e6e45f.md) | 87 | `result-track:831992c813a0ab0328e6e45fcdbf428c315bf1332012375468fa40803d458e9f` |
| 11 | `lemma` | [insert_Ioc_add_one_left_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ioc-add-one-left-eq-ioc--311ea065a9a48069ca8c986c.md) | 91 | `result-track:311ea065a9a48069ca8c986cb416d4a9dc76a49fb6efa30b65c633c06c32a83a` |
| 12 | `lemma` | [Icc_add_one_left_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/icc-add-one-left-eq-ioc--776a29bdffd25e9daafa568e.md) | 102 | `result-track:776a29bdffd25e9daafa568e02bc909940ccdf10d05ef992b9146c946d0c5be2` |
| 13 | `lemma` | [Ico_add_one_right_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ico-add-one-right-eq-icc--29922f2a0ebc2e77294c9ed1.md) | 105 | `result-track:29922f2a0ebc2e77294c9ed1c2556cc1f77c7d9759b8c5a02360adfb8fbf6a01` |
| 14 | `lemma` | [Ioo_add_one_right_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioo-add-one-right-eq-ioc--4ed3798f132cfe86a89b7f5f.md) | 108 | `result-track:4ed3798f132cfe86a89b7f5fd74dbf3f0203320379aaed9a7c7dd8224fd72fef` |
| 15 | `lemma` | [Ico_add_one_add_one_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ico-add-one-add-one-eq-ioc--898cae8db006d0a9ba0e33ae.md) | 111 | `result-track:898cae8db006d0a9ba0e33ae2ef4cc56515a842825f3cc4f57adb3bff1f62587` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_add_one](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ico-right-eq-ico-add-one--7e39aadf4e6c9bc77f09d0fc.md) | 116 | `result-track:7e39aadf4e6c9bc77f09d0fc8366ac780a6c7dc54ae598fa8e95cdeda12cc446` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_add_one](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ioc-right-eq-ioc-add-one--dd619b552e7c797450a33ca3.md) | 122 | `result-track:dd619b552e7c797450a33ca3d30da04beff67114f02fac367cff74abbf647b6f` |
| 18 | `lemma` | [Ioc_sub_one_right_eq_Ioo](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioc-sub-one-right-eq-ioo--f76c33693dbf54a7254ae50a.md) | 136 | `result-track:f76c33693dbf54a7254ae50a031d81fbaa751ecf5b7cc55c259cfb6656eb5bee` |
| 19 | `lemma` | [Icc_sub_one_right_eq_Ico_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/icc-sub-one-right-eq-ico-of-not-ismin--9b7dbbf1ce25435c1af75d33.md) | 139 | `result-track:9b7dbbf1ce25435c1af75d3362d8a436b94b7cc626572f0f7a0067b512107120` |
| 20 | `lemma` | [Ioc_sub_one_left_eq_Icc_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioc-sub-one-left-eq-icc-of-not-ismin--6487d13506a4b71c6b1345da.md) | 142 | `result-track:6487d13506a4b71c6b1345daf0a70fcb1a1a7a952a9f56339fb6de8518957bbe` |
| 21 | `lemma` | [Ioo_sub_one_left_eq_Ioc_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioo-sub-one-left-eq-ioc-of-not-ismin--b7c4a4d6e41972e98757b322.md) | 145 | `result-track:b7c4a4d6e41972e98757b322fb4cfabd6ec1843a3a9f11a529145a4e4bb49c26` |
| 22 | `lemma` | [Ioc_sub_one_sub_one_eq_Ico_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioc-sub-one-sub-one-eq-ico-of-not-ismin--b11d17095a52d11a26892dba.md) | 148 | `result-track:b11d17095a52d11a26892dba5976800259cb83c361377ed93a248186c20a8b5e` |
| 23 | `lemma` | [insert_Icc_sub_one_right_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-icc-sub-one-right-eq-icc--90e9c8b3f9c3ce6400fce4d9.md) | 154 | `result-track:90e9c8b3f9c3ce6400fce4d964eba8cf0fe4ac15192339b58106adb61abd5214` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_sub_one](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-icc-left-eq-icc-sub-one--206d6ed77c328672abacb00e.md) | 157 | `result-track:206d6ed77c328672abacb00e14743eb809b0a831806543eab900f056096028ad` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_sub_one_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ioc-left-eq-ioc-sub-one-of-not-ismin--9a537feda2a255e7d3d3aad5.md) | 164 | `result-track:9a537feda2a255e7d3d3aad5df2ccaf916bc94d7bf72912c6e768bb42c59872f` |
| 26 | `lemma` | [insert_Ioc_sub_one_right_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ioc-sub-one-right-eq-ioc--209109c0b08e52010a7378de.md) | 172 | `result-track:209109c0b08e52010a7378de46311dcc3ab897c99529e2cbe17a2ccbe904e88e` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_sub_one_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ico-left-eq-ico-sub-one-of-not-ismin--4dfa0e381a4fcf459f2f7f12.md) | 175 | `result-track:4dfa0e381a4fcf459f2f7f1205c9d316c14748687604143ea629e0dc457bf041` |
| 28 | `lemma` | [insert_Ico_sub_one_right_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ico-sub-one-right-eq-ico--3cf2739e67d614243c1f4584.md) | 179 | `result-track:3cf2739e67d614243c1f4584c58b70e19c1ccc7c2b332043a8f51233072f78f6` |
| 29 | `lemma` | [Icc_sub_one_right_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/icc-sub-one-right-eq-ico--ba96cff2e993cc56232975fc.md) | 190 | `result-track:ba96cff2e993cc56232975fc3515bfae3132798ba1e6b10c2ef4c4d7af58f0dd` |
| 30 | `lemma` | [Ioc_sub_one_left_eq_Icc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioc-sub-one-left-eq-icc--54669bf362097607fcb2c338.md) | 193 | `result-track:54669bf362097607fcb2c3386ac2d98f8463ce398a2715dcbff3574c0208552c` |
| 31 | `lemma` | [Ioo_sub_one_left_eq_Ioc](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioo-sub-one-left-eq-ioc--2bea70e2dd8f7abd1ecf5a33.md) | 196 | `result-track:2bea70e2dd8f7abd1ecf5a3313bcc34e7340313ac653cdaaa02bff0bf7c6c819` |
| 32 | `lemma` | [Ioc_sub_one_sub_one_eq_Ico](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioc-sub-one-sub-one-eq-ico--0325337485478cf8a321ebc7.md) | 199 | `result-track:0325337485478cf8a321ebc7b038062eead26e9b7ad6c71a2d732b8f60c27862` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_sub_one](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ioc-left-eq-ioc-sub-one--af51e2575eef0bc9534763d2.md) | 204 | `result-track:af51e2575eef0bc9534763d2815c18578ac4ca8c77fca058e75f564749e2a7e0` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_sub_one](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/insert-ico-left-eq-ico-sub-one--e7f68c35b3199b38713d2f41.md) | 210 | `result-track:e7f68c35b3199b38713d2f411c5f624def006b8a4efc8456c38983eabcc81002` |
| 35 | `lemma` | [Icc_add_one_sub_one_eq_Ioo](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/icc-add-one-sub-one-eq-ioo--b71c116d3ad1a27e113b564c.md) | 218 | `result-track:b71c116d3ad1a27e113b564c16b742cf54fcd102752fe09169c952e8826dd461` |
| 36 | `lemma` | [Iio_add_one_eq_Iic_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/iio-add-one-eq-iic-of-not-ismax--e5fd408a3cee8a6b813fdab9.md) | 232 | `result-track:e5fd408a3cee8a6b813fdab9119d83ed6609f83d1fc0306f033b41794810b66c` |
| 37 | `lemma` | [Iio_add_one_eq_Iic](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/iio-add-one-eq-iic--0b9f96f47719484babd5d7cc.md) | 237 | `result-track:0b9f96f47719484babd5d7cc52fb1a80fa416dbaeb33dc7cdbf8db3de570f690` |
| 38 | `lemma` | [Iic_sub_one_eq_Iio_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/iic-sub-one-eq-iio-of-not-ismin--aac8d813ec42d6e85d54977c.md) | 245 | `result-track:aac8d813ec42d6e85d54977ce764b3f5bcb3f11505d7d71234b2619b712e5ce9` |
| 39 | `lemma` | [Iic_sub_one_eq_Iio](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/iic-sub-one-eq-iio--ba9b667b114af5a30f4f76cc.md) | 250 | `result-track:ba9b667b114af5a30f4f76cc4590305b5e65d97c79b5eb0a731bb72bc8303764` |
| 40 | `lemma` | [Ici_add_one_eq_Ioi_of_not_isMax](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ici-add-one-eq-ioi-of-not-ismax--3a9f359e17e181b4b7e4616e.md) | 264 | `result-track:3a9f359e17e181b4b7e4616ec7859268496c72d0e5e5f5b618edc7838685568c` |
| 41 | `lemma` | [Ici_add_one_eq_Ioi](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ici-add-one-eq-ioi--ffd5c7e550f16c925f372e78.md) | 269 | `result-track:ffd5c7e550f16c925f372e785db000cf1e7551e255a2be8b28a732cb238e94c6` |
| 42 | `lemma` | [Ioi_sub_one_eq_Ici_of_not_isMin](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioi-sub-one-eq-ici-of-not-ismin--371899b0d5622c3cc47167ab.md) | 277 | `result-track:371899b0d5622c3cc47167ab75d06c48a0053a2a4aaf20c16a8bb9613bf42b33` |
| 43 | `lemma` | [Ioi_sub_one_eq_Ici](../../../../mathematics/Algebra/SuccPred/Variant892e88d2d2c7f54c8cb96e16433a1e0624f730874c3216b8ceca14f8940d7867.lean/declarations/ioi-sub-one-eq-ici--da91f3db6a0fc61ae8fcca1c.md) | 282 | `result-track:da91f3db6a0fc61ae8fcca1c51d134f679c2101cfb8de6182fdaf92631a2b827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
