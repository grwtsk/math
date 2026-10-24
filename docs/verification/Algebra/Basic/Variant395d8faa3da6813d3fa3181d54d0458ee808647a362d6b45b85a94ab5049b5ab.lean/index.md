# Verification target: GRWTSK.Algebra.Basic.Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63e761518ef5d09fe5376e62617e4c0b1c331795",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63e761518ef5d09fe5376e62617e4c0b1c331795`.

Source path: `GRWTSK/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Congruence.Opposite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TwoSidedIdeal](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/twosidedideal--fc34351737f83eecb22df32a.md) | 45 | `declaration-track:fc34351737f83eecb22df32a81138d111b802c14e778d8fe08a54e71a91c420b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--6247cfc82dcf14b24f61dbcd.md) | 57 | `declaration-track:6247cfc82dcf14b24f61dbcddf3cd86432680289aa06a63dfd76655b85900dbb` |
| 3 | `instance` | [setLike](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/setlike--009a9ce4b974263bdab5c5fe.md) | 61 | `declaration-track:009a9ce4b974263bdab5c5fe86536aba231d6375d4598a38c6ccfe14919a5276` |
| 4 | `lemma` | [mem_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mem-iff--fb41f7d22a09c6920cf13a80.md) | 74 | `result-track:fb41f7d22a09c6920cf13a80d22f5a7ff5eaa4b781398248d27bad71d8ac4d2f` |
| 5 | `lemma` | [mem_mk](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mem-mk--fc6ee3468484bac98d884ce2.md) | 77 | `result-track:fc6ee3468484bac98d884ce28ff7c97285384c0d3bb5ddbfca992e0cd832d0ce` |
| 6 | `lemma` | [coe_mk](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/coe-mk--f6c64374e119a171aab5b453.md) | 80 | `result-track:f6c64374e119a171aab5b45389e290b8f754746fb6e5e2668415ee4a61c10549` |
| 7 | `lemma` | [rel_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/rel-iff--55637f1c1618675c9eb8664d.md) | 82 | `result-track:55637f1c1618675c9eb8664d3ec1908b5b902abe9ade2d0e8355d7ef2a505ea1` |
| 8 | `def` | [coeOrderEmbedding](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/coeorderembedding--f5d1327b3c9dbf5f42a57836.md) | 92 | `declaration-track:f5d1327b3c9dbf5f42a578368251b9afa0b3260a615058a175737eb49c59d3da` |
| 9 | `lemma` | [le_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/le-iff--f2ac34d96aeeac7037d5e3e4.md) | 97 | `result-track:f2ac34d96aeeac7037d5e3e46b7918523166791e2f9b1735ed52b2f9199430b4` |
| 10 | `def` | [orderIsoRingCon](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/orderisoringcon--52bf75ec9fc3682d5cb99e13.md) | 101 | `declaration-track:52bf75ec9fc3682d5cb99e13a8b57368d6358f3e03253cd7ce25e87cea68b104` |
| 11 | `lemma` | [ringCon_injective](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/ringcon-injective--489f9c07d4056bac3ebf9589.md) | 109 | `result-track:489f9c07d4056bac3ebf9589ee7426947f22de497ff42330a30599c3eede3349` |
| 12 | `lemma` | [ringCon_le_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/ringcon-le-iff--88ebe8aa02476922412be3e7.md) | 112 | `result-track:88ebe8aa02476922412be3e7fb404cd52feecd35b3c26c2ba0909748dd2338ea` |
| 13 | `lemma` | [ext](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/ext--cfe5d30d739de75ec38f96f6.md) | 116 | `result-track:cfe5d30d739de75ec38f96f61d9df90be07cff9b756337faa3cf2a315391c3bd` |
| 14 | `lemma` | [lt_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/lt-iff--b5367b00a6942981ebed56a9.md) | 119 | `result-track:b5367b00a6942981ebed56a91c78ba9c2c2193901bfc207134b72e4cef30d36b` |
| 15 | `lemma` | [zero_mem](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/zero-mem--3082b50a73e5eaea577ab88f.md) | 124 | `result-track:3082b50a73e5eaea577ab88f3ff280aa8aea0dc79b8d42a1f080c2eecad8dd8c` |
| 16 | `lemma` | [add_mem](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/add-mem--c92168153450be658f9c37e7.md) | 126 | `result-track:c92168153450be658f9c37e7a5f7912623e5c29720310de292f8f550d78453a7` |
| 17 | `lemma` | [neg_mem](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/neg-mem--811c7bec6e50503e2798440b.md) | 128 | `result-track:811c7bec6e50503e2798440bd8f4d940eefe886611d86d467763289195ea6737` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--d153c7ab38352e7d482d0b94.md) | 130 | `declaration-track:d153c7ab38352e7d482d0b94174c145c74e2855d1dabcb09463cd073b33c6190` |
| 19 | `lemma` | [sub_mem](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/sub-mem--26043368391ba1170049dbd5.md) | 135 | `result-track:26043368391ba1170049dbd5faf294877eda697235a3ac1bec3384adee40478e` |
| 20 | `lemma` | [mul_mem_left](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mul-mem-left--354eb0438bc7ba918a58e8c6.md) | 137 | `result-track:354eb0438bc7ba918a58e8c6970e93d6ab43de145cead134f07d2e46f46c9682` |
| 21 | `lemma` | [mul_mem_right](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mul-mem-right--fd8ef9dc6c321266cdc42626.md) | 140 | `result-track:fd8ef9dc6c321266cdc42626f6da4f4eb359f480a9281c946b4368c232db6e6c` |
| 22 | `lemma` | [nsmul_mem](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/nsmul-mem--c267282a8ad50e0a48db0d8c.md) | 143 | `result-track:c267282a8ad50e0a48db0d8c0e9c68930362b72d47660d001948070b7f845c2c` |
| 23 | `lemma` | [zsmul_mem](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/zsmul-mem--520417cf19c7f901755f565c.md) | 145 | `result-track:520417cf19c7f901755f565c094a6eea4513cc498d93bc9a69dceb015dbad08a` |
| 24 | `def` | [mk'](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mk--8f9e2284a26c0cae4c39ec44.md) | 156 | `declaration-track:8f9e2284a26c0cae4c39ec44664c99cba2c2f04393dbb5b2aa4bb83db846d0a8` |
| 25 | `lemma` | [mem_mk'](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mem-mk--d4f98e3aff005561b83dfc5f.md) | 177 | `result-track:d4f98e3aff005561b83dfc5fe0b3f01d18a4427eaa0e98aab053ce9b94733763` |
| 26 | `lemma` | [coe_mk'](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/coe-mk--671712d19ebb78014aab6c3c.md) | 184 | `result-track:671712d19ebb78014aab6c3cc35d9854882268b534bae4651c074554e20752c2` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--2e6a54a647966e657aa02831.md) | 188 | `declaration-track:2e6a54a647966e657aa02831c588746d84710eb8ad3cb676dd143479e08e5aa4` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--b7ef89f68eaa5ea0b28fc25e.md) | 191 | `declaration-track:b7ef89f68eaa5ea0b28fc25ed502a406ae7af040dcde2ff09b27bf3f22ac387f` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--de698fd1238756f1dc14bc74.md) | 194 | `declaration-track:de698fd1238756f1dc14bc7413f1ba1506aba406f2e9fbd8380d95258679459e` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--81cfdb6d7a51b967a611d6dc.md) | 196 | `declaration-track:81cfdb6d7a51b967a611d6dc348bbc86830f4da1d57e5cb740245ceafff70587` |
| 31 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--8ca08efc9a812713cfa7d781.md) | 198 | `declaration-track:8ca08efc9a812713cfa7d781d1449a69b43cbb77c5d48f4a1a3bfa32a9a2d9ae` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--aaaa4a1ccb9341c9b88aeb8e.md) | 200 | `declaration-track:aaaa4a1ccb9341c9b88aeb8ebdbc3a1f34b9dc274c10869e7e009e329741c9fa` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--b50296ad263de7aec9c7a9f1.md) | 202 | `declaration-track:b50296ad263de7aec9c7a9f18a09f0f353d2f0bf0421e58bde36eeb49bb2f2ef` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/instance--88c337838a5910397a1b3a86.md) | 204 | `declaration-track:88c337838a5910397a1b3a862d5d08211bc2023db2da8e1b4a93b0d1a8563bf6` |
| 35 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/addcommgroup--5f88a8ed3c8c70f6fb3dbfb4.md) | 206 | `declaration-track:5f88a8ed3c8c70f6fb3dbfb444ccc4a8cd0edacdc685fab46c8806dee3671dc7` |
| 36 | `def` | [coeAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/coeaddmonoidhom--d8965bc82f7cad38be98bf33.md) | 212 | `declaration-track:d8965bc82f7cad38be98bf335dad33adb3ba03ba772f7b505b5ec87718a1fcf5` |
| 37 | `def` | [op](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/op--a08bd82b75bfd6e582eff6d1.md) | 219 | `declaration-track:a08bd82b75bfd6e582eff6d19a0b49e0c27235ff308898ed8d066fd017568142` |
| 38 | `lemma` | [mem_op_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mem-op-iff--640e5a69b08e374d9990d164.md) | 223 | `result-track:640e5a69b08e374d9990d164bfc0ebfa68775d8ea4ace43e0c7ed2e85ee21a37` |
| 39 | `lemma` | [coe_op](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/coe-op--f81cd08d28962269e086c0ac.md) | 227 | `result-track:f81cd08d28962269e086c0ac5f72582f0155e5228721e1f5b17f3b3c7e98b847` |
| 40 | `def` | [unop](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/unop--bbaa15c65c162045f266492a.md) | 233 | `declaration-track:bbaa15c65c162045f266492af1da2b55cbd7648c5ff3e6beff0f1c52600dcc07` |
| 41 | `lemma` | [mem_unop_iff](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/mem-unop-iff--f1a5df460370fe536ae8614d.md) | 237 | `result-track:f1a5df460370fe536ae8614d5d7187332d693163066217515b34446884be29bd` |
| 42 | `lemma` | [coe_unop](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/coe-unop--db936ff852c493bef051c3ee.md) | 241 | `result-track:db936ff852c493bef051c3ee4c89893e17f36366141cf02109b9e44aabe6f201` |
| 43 | `def` | [opOrderIso](../../../../mathematics/Algebra/Basic/Variant395d8faa3da6813d3fa3181d54d0458ee808647a362d6b45b85a94ab5049b5ab.lean/declarations/oporderiso--e5004a8e46aeacd9d75d6d0d.md) | 248 | `declaration-track:e5004a8e46aeacd9d75d6d0d15ef112a64ad3bb2e6e975a3f7a56c6da6a9d9f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
