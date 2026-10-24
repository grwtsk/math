# Verification target: GRWTSK.Algebra.Defs.Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e0e7d81a7dd660b36599b26d962371f535e65eb",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e0e7d81a7dd660b36599b26d962371f535e65eb`.

Source path: `GRWTSK/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.InjSurj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubsemiringClass](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/nonunitalsubsemiringclass--ebd3c30170b3cc7bf4abff96.md) | 34 | `declaration-track:ebd3c30170b3cc7bf4abff9610ea7fa733cc12211f07639374b6a1b91c2d4e2c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--61891094846bd6990e21bfd4.md) | 40 | `declaration-track:61891094846bd6990e21bfd49fceca758aa002121d2fd80db12ddf1ed56fbebb` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--91284d4bfa6b83d4893f1be6.md) | 55 | `declaration-track:91284d4bfa6b83d4893f1be6f0fc25b7e08da382b1e3f6a7a0c6358c22cce698` |
| 4 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/nozerodivisors--7e3a374991885b4aad4c5d6d.md) | 60 | `declaration-track:7e3a374991885b4aad4c5d6d2d8d1b0f51dc57cea92fa4f389b428deaf11ce49` |
| 5 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/subtype--a1051c5d6ea7a8de1c3cd253.md) | 65 | `declaration-track:a1051c5d6ea7a8de1c3cd253d38b16b9b418d2090b012d24cdfe016f78beaaf5` |
| 6 | `theorem` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/subtype-apply--eed39a52d3fa1a23ecfadd34.md) | 70 | `result-track:eed39a52d3fa1a23ecfadd34a9c7893a129234a4275ddf10675dd6f376590dbb` |
| 7 | `theorem` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/subtype-injective--fe6b0855f96ab2ecf0b4fb19.md) | 73 | `result-track:fe6b0855f96ab2ecf0b4fb19d49feb6ab09eec9dec5cc7102858c22d1e3fdf85` |
| 8 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-subtype--d23bdf1c487eef3e9550854b.md) | 77 | `result-track:d23bdf1c487eef3e9550854bd17443e77c66f8e6d5ab82a87d8339eb9f1a0929` |
| 9 | `instance` | [toNonUnitalSemiring](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/tononunitalsemiring--9b08c259427400ac6d9d8c65.md) | 84 | `declaration-track:9b08c259427400ac6d9d8c65e5242fa28198aff96d113334f72c69cf5903d534` |
| 10 | `instance` | [toNonUnitalCommSemiring](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/tononunitalcommsemiring--29c08663e62daece4fc4818f.md) | 89 | `declaration-track:29c08663e62daece4fc4818fb54f2ddcb28088a1983f3973f61a4e303b7318cc` |
| 11 | `structure` | [NonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/nonunitalsubsemiring--548d30d8690015a62e687b81.md) | 101 | `declaration-track:548d30d8690015a62e687b81c46b2e7ec3c237c1f26802a84158f6c89aea8fc7` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--c08453982b73f13068cd450f.md) | 112 | `declaration-track:c08453982b73f13068cd450fbc6756985863696c01010357840de04e21c49ab7` |
| 13 | `def` | [ofClass](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/ofclass--a86f145ab8ec0a6ab4c63057.md) | 118 | `declaration-track:a86f145ab8ec0a6ab4c63057df610129083aad59371a91674abb122bbdffd1ee` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--d83805d1de67da74fd5864dc.md) | 125 | `declaration-track:d83805d1de67da74fd5864dc0c36778ec0d9390b94740d1364c7bb49051c8bac` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--edbfb6e566e6d3f99a5ded91.md) | 135 | `declaration-track:edbfb6e566e6d3f99a5ded9151bf8ce009b5465deafbfb68ae39c90dfc4c2624` |
| 16 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-carrier--c0f0c17d2ed732d8468ac5d3.md) | 140 | `result-track:c0f0c17d2ed732d8468ac5d34893efb19dbd59d73653a4537dd3bd20b044e124` |
| 17 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/ext--0bf4b566ef3caa704036303a.md) | 145 | `result-track:0bf4b566ef3caa704036303a1e83ce843a5c4a5f6d5a376ef24b0d3a97eb20ad` |
| 18 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/copy--dc228f1fa91823c368cf2e79.md) | 150 | `declaration-track:dc228f1fa91823c368cf2e79254965d6f08b7a200cc3940b2a36062fc98ff0d5` |
| 19 | `theorem` | [coe_copy](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-copy--8163307a2f3d679b94a14137.md) | 155 | `result-track:8163307a2f3d679b94a141376d1d38f919038500e454c2e45f353f9eec30d93e` |
| 20 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/copy-eq--e9239cbc4d7381608baca53a.md) | 159 | `result-track:e9239cbc4d7381608baca53a9b0f0a8c2991532cffe918f23080959f585900a6` |
| 21 | `theorem` | [toSubsemigroup_injective](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/tosubsemigroup-injective--b3c238752f2c4848269028f3.md) | 162 | `result-track:b3c238752f2c4848269028f3f6ade38246ddb6f39bbace68d8c6b679bb602138` |
| 22 | `theorem` | [toAddSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/toaddsubmonoid-injective--1d9a18620a05a88e3afaeece.md) | 166 | `result-track:1d9a18620a05a88e3afaeece984e861939b2cb69b60d9cce1e1f1fcd455b2174` |
| 23 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mk--b06a0b2397e368399e6d76aa.md) | 172 | `declaration-track:b06a0b2397e368399e6d76aafcee667a67f91059eff280271dc688b43f30a726` |
| 24 | `theorem` | [coe_mk'](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-mk--d1e98f45f8251b21a95f700c.md) | 180 | `result-track:d1e98f45f8251b21a95f700c0e0f484b963221173f263b0595485b9763bbe48d` |
| 25 | `theorem` | [mem_mk'](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-mk--9e27b6013cb9d053064e222a.md) | 185 | `result-track:9e27b6013cb9d053064e222a3d879fc772819919f6b9c48cb1953644b30b1c7c` |
| 26 | `theorem` | [mk'_toSubsemigroup](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mk-tosubsemigroup--4953d98d7630dfa79f53b566.md) | 190 | `result-track:4953d98d7630dfa79f53b56643f54c874647558325b57cb8d4018632babc74b9` |
| 27 | `theorem` | [mk'_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mk-toaddsubmonoid--cd606455faa7f0caf81a1ca8.md) | 195 | `result-track:cd606455faa7f0caf81a1ca8c1946298767e3dfd973b51c44b0759a9dc3dba85` |
| 28 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-zero--ac391e25ad77d28df9afc1d6.md) | 207 | `result-track:ac391e25ad77d28df9afc1d670dcd73f0d7efb9bfea35760570e98745fe02c0e` |
| 29 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-add--9807a78aa117bc39424b1de6.md) | 211 | `result-track:9807a78aa117bc39424b1de6539e7fbf70c70b36b28a3ee37e34131ab8b21b93` |
| 30 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-mul--71770c7004ff13eb548ec977.md) | 215 | `result-track:71770c7004ff13eb548ec9778aecb07e0c9bec15aae121fc16a3173f12b38528` |
| 31 | `theorem` | [mem_toSubsemigroup](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-tosubsemigroup--e7d85d51bb1133c2a0b665ba.md) | 222 | `result-track:e7d85d51bb1133c2a0b665baeb56dcc736906baad91c10dad1b0de1485c59ad5` |
| 32 | `theorem` | [coe_toSubsemigroup](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-tosubsemigroup--5bb91ef16f797c941f3e6382.md) | 226 | `result-track:5bb91ef16f797c941f3e6382ba4a02b236b87b380197587c1107fe03b9a58efb` |
| 33 | `theorem` | [mem_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-toaddsubmonoid--da2015aa8f47ca4e76a32908.md) | 230 | `result-track:da2015aa8f47ca4e76a329085325bdaf9636a91117abcc1914488af292b3626e` |
| 34 | `theorem` | [coe_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-toaddsubmonoid--7784ee220a168dd81fb21459.md) | 234 | `result-track:7784ee220a168dd81fb214592c908e7aee27e43166239d2bf183c6fcc103d39f` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--9f4426831b79f06e36e8d762.md) | 238 | `declaration-track:9f4426831b79f06e36e8d7623f8ad92aed3644ae19f2160dcd3c0ffd426f75a7` |
| 36 | `theorem` | [mem_top](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-top--265cc41dd48fb45f2dc3b580.md) | 242 | `result-track:265cc41dd48fb45f2dc3b5800114c81fd6348f68616b25168f6c6595833814c5` |
| 37 | `theorem` | [coe_top](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-top--93eac9ed073b490965d4eabd.md) | 246 | `result-track:93eac9ed073b490965d4eabdd3782f5b77b48ebbf912f2cb1c5019870a736e99` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--d6872e9de9090d8c60f63e3f.md) | 264 | `declaration-track:d6872e9de9090d8c60f63e3fa6b5a280f5dc8b0f168de2601c8493b925b3313f` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--e89886cb12a6a61500cb70cd.md) | 270 | `declaration-track:e89886cb12a6a61500cb70cd4b61434f1179570c3b8ba2ad5e6077497960d0f8` |
| 40 | `theorem` | [coe_bot](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-bot--0d4f21f9123aa7df6a4e8ea6.md) | 273 | `result-track:0d4f21f9123aa7df6a4e8ea647f83e344e6fe0a30fe896947a36a1161b56c054` |
| 41 | `theorem` | [mem_bot](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-bot--be4302d5a52f6f2606429eab.md) | 276 | `result-track:be4302d5a52f6f2606429eabe049f8580e37e2e755d6f00fe0a21560e79c63cb` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/instance--add6be008da3f824b668853c.md) | 280 | `declaration-track:add6be008da3f824b668853cc5728ae5bb25b9a39b91c13317e2e038159910a2` |
| 43 | `theorem` | [coe_inf](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/coe-inf--e10a2450047ca609553135e5.md) | 286 | `result-track:e10a2450047ca609553135e5362a1c225d0f8010f593d0dbf8ec489bfe8987f0` |
| 44 | `theorem` | [mem_inf](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/mem-inf--0ad3eb297a4a8e143d6fdcda.md) | 291 | `result-track:0ad3eb297a4a8e143d6fdcda33d0e16106e725c749aca9a641edf67d2efe56b0` |
| 45 | `def` | [codRestrict](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/codrestrict--61f68f9f08243b882f55020b.md) | 308 | `declaration-track:61f68f9f08243b882f55020bc6f5492bb268ed7454d83755bdfe08da0809d923` |
| 46 | `def` | [eqSlocus](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/eqslocus--6b8fd752b213a9ee3dfa31b4.md) | 315 | `declaration-track:6b8fd752b213a9ee3dfa31b4f7dfc76dbd1a23114887f0dd00292d1b966e9885` |
| 47 | `def` | [inclusion](../../../../mathematics/Algebra/Defs/Variantba1e46864ac62a19d414261e8abcb374b464ef72e44801e4e4e6a25af987d698.lean/declarations/inclusion--cbe41b788bc451d7164e9e57.md) | 327 | `declaration-track:cbe41b788bc451d7164e9e579fa723506448aacb0ab117460a768b2985fb90b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
