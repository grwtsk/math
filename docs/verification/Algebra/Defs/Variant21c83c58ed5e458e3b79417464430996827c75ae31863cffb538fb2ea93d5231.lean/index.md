# Verification target: GRWTSK.Algebra.Defs.Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "553709f06bb734821044427d121d4566b6d55244",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `553709f06bb734821044427d121d4566b6d55244`.

Source path: `GRWTSK/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.NonUnitalSubsemiring.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddSubmonoidWithOneClass](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/addsubmonoidwithoneclass--b48a92f19e97ad3d05cc762b.md) | 23 | `declaration-track:b48a92f19e97ad3d05cc762b29dc0338e8580efa28e1da5b8c0200fa7c31630a` |
| 2 | `theorem` | [natCast_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/natcast-mem--a28b318b29de8c89adc96c87.md) | 29 | `result-track:a28b318b29de8c89adc96c875eb2155250648a8ab904e8b2cf2222f90c5a7ba7` |
| 3 | `lemma` | [ofNat_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/ofnat-mem--82f78088f447088e62f9d906.md) | 33 | `result-track:82f78088f447088e62f9d90611d76de00194b5532b29fe9b0e848885a06864fe` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--7b2b4cdb76bf755136de49a6.md) | 37 | `declaration-track:7b2b4cdb76bf755136de49a652f87ff3084704b9e7451d3b8942dc80a43c5a75` |
| 5 | `class` | [SubsemiringClass](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subsemiringclass--5b902c95072cf0b148b93c27.md) | 53 | `declaration-track:5b902c95072cf0b148b93c27832079fddf159785bb9661a6ce723ee2b544f93c` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--fe3e9131cd04e37145045a52.md) | 57 | `declaration-track:fe3e9131cd04e37145045a52078b29e61f8c9924cd9f690ff06d8b94aea2ea08` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--9e9360a6cd1586c5080fa780.md) | 62 | `declaration-track:9e9360a6cd1586c5080fa780fab97261657a344669ce2ec3b526157cf48c744b` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--0e7d84c70b52e15c2d617b25.md) | 73 | `declaration-track:0e7d84c70b52e15c2d617b257c9691a9029df3632db6cf2d93cc8bd9166700b5` |
| 9 | `instance` | [nontrivial](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nontrivial--53aff3780ec6c48d1fa65f98.md) | 77 | `declaration-track:53aff3780ec6c48d1fa65f98fd2601e967f7e7cbca48df4bc5a088e6067f3f6c` |
| 10 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nozerodivisors--df4ae2282c940d033d58cdd8.md) | 80 | `declaration-track:df4ae2282c940d033d58cdd84510811fa6b34b73857ddb924814b0bcd0da9215` |
| 11 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subtype--8ebc146c1044b116802f5312.md) | 84 | `declaration-track:8ebc146c1044b116802f531203f9cbf53ff1fa2ec3b3c4a1f3ab9f6d8203bd01` |
| 12 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-subtype--f61ef51c1c379047b7fef121.md) | 88 | `result-track:f61ef51c1c379047b7fef121d2103efa58bd88679a355e16a160899f351bd29a` |
| 13 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subtype-apply--858f7f5530ef662bd3c64634.md) | 93 | `result-track:858f7f5530ef662bd3c646340d3af4614d8b72112bcebe95281f70dab75bdab7` |
| 14 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subtype-injective--77a7efd15eb18d12382accc1.md) | 96 | `result-track:77a7efd15eb18d12382accc1db01519eb2c14e5ab21a5458676a5df3ecf6fabb` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--db751280fdc904f80e58948d.md) | 102 | `declaration-track:db751280fdc904f80e58948d4951f9b27d798de6e93cfaecfc09a01c530dd315` |
| 16 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-pow--64429b1984b1ce420fc69e10.md) | 108 | `result-track:64429b1984b1ce420fc69e1053211c0887819bbd8d3484d78159324b5f84fd9c` |
| 17 | `instance` | [toCommSemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tocommsemiring--1f16392a6cd82655ee72e0f3.md) | 115 | `declaration-track:1f16392a6cd82655ee72e0f37d4ca916fdc8a881b83238b7081ec13b13de1cdb` |
| 18 | `structure` | [Subsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subsemiring--21bf44ce2344aae542c72bb2.md) | 128 | `declaration-track:21bf44ce2344aae542c72bb291f805acbb0c4a33b9cba91d2093cb43dc3d91b1` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--d0ad24630deaddff28a9d3eb.md) | 138 | `declaration-track:d0ad24630deaddff28a9d3eb100dc12c59fc596b7bc070540e67599b893f180b` |
| 20 | `def` | [ofClass](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/ofclass--fb30050d465d1b57c2d7dcb9.md) | 146 | `declaration-track:fb30050d465d1b57c2d7dcb989ffc6a6598a74d60ccef4d85ae43c86460caf07` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--14c97d32bdd6a1e45622081e.md) | 154 | `declaration-track:14c97d32bdd6a1e45622081e6de96211383c7f712341b383b6b978fbe3fb83e2` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--2ca39c4b24fa25f389f3ea75.md) | 165 | `declaration-track:2ca39c4b24fa25f389f3ea7537ae35136893a8d5efd1579634b3ddda74fed44b` |
| 23 | `def` | [toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tononunitalsubsemiring--09608017f926f8d0fcc91de1.md) | 172 | `declaration-track:09608017f926f8d0fcc91de1e3a9c2ccc4349e9e464ae3b45c7cfb47de7005aa` |
| 24 | `theorem` | [mem_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-tosubmonoid--86ad45f6c84189ced6ca7efb.md) | 175 | `result-track:86ad45f6c84189ced6ca7efbc1ca1b1a9fb93c036b5850ae6190e20958471925` |
| 25 | `lemma` | [mem_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-tononunitalsubsemiring--bd8f88bfdbaa6d5b57245ad9.md) | 179 | `result-track:bd8f88bfdbaa6d5b57245ad9380ce5556246490e9f85f166c6aa4129ce040618` |
| 26 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-carrier--15376ac83b30720a9b1fb856.md) | 182 | `result-track:15376ac83b30720a9b1fb856ed9e9e2d119138d52be5dd66176755ed9f4ea630` |
| 27 | `lemma` | [coe_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-tononunitalsubsemiring--9b028a565b4210a7d9bb121f.md) | 186 | `result-track:9b028a565b4210a7d9bb121f142bbded27e89468b2f93eed56538bef1ecd45f7` |
| 28 | `theorem` | [ext](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/ext--3af925adea1f9f76d08ce463.md) | 190 | `result-track:3af925adea1f9f76d08ce46327c8471aebccf8228074cf80b8fe4861edfb7990` |
| 29 | `def` | [copy](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/copy--ab321f834bb704a1d8b41a4d.md) | 196 | `declaration-track:ab321f834bb704a1d8b41a4d9b8d31c416aa0f3e3a6ac6474d1edc60d4d4653c` |
| 30 | `theorem` | [copy_eq](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/copy-eq--129ab730869886ed5fb19151.md) | 199 | `result-track:129ab730869886ed5fb19151780bdd56ee4660203efd158dca5c82a33cddba2e` |
| 31 | `theorem` | [toSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tosubmonoid-injective--ba07479f6d30d41c27ad8dc4.md) | 202 | `result-track:ba07479f6d30d41c27ad8dc4f0a0a15efb6b77e6dab97df17593e4ca4299f5d1` |
| 32 | `theorem` | [toAddSubmonoid_injective](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/toaddsubmonoid-injective--065ec36cff79fc6d8dcfd557.md) | 205 | `result-track:065ec36cff79fc6d8dcfd5577f6a0a491b09b1d96052ea6187b48e76b8c4232d` |
| 33 | `lemma` | [toNonUnitalSubsemiring_injective](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tononunitalsubsemiring-injective--923075ce2c40f68fb3e33a0e.md) | 209 | `result-track:923075ce2c40f68fb3e33a0ee7805a3ede203fa7603d342364ffd671d7354693` |
| 34 | `lemma` | [toNonUnitalSubsemiring_inj](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tononunitalsubsemiring-inj--e06db4536e0a9b2f9faab772.md) | 215 | `result-track:e06db4536e0a9b2f9faab7723b6f382056b15f5262409e0147fd831089f32db8` |
| 35 | `lemma` | [one_mem_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/one-mem-tononunitalsubsemiring--8b4797385731a14671a3de2c.md) | 219 | `result-track:8b4797385731a14671a3de2ce795046c8024ba930e646e58d65f45e3fbe6bda0` |
| 36 | `def` | [mk'](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mk--49030d0d4fbce1605ba0a0fc.md) | 225 | `declaration-track:49030d0d4fbce1605ba0a0fc08c99d0ca19f01d76b255d6d92025e6dc555ef0c` |
| 37 | `theorem` | [mem_mk'](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-mk--aa7daa3c6bfa1fc8c1405ad7.md) | 234 | `result-track:aa7daa3c6bfa1fc8c1405ad70f3a10d7fa1f979b10614fc759768763d22dc72d` |
| 38 | `theorem` | [mk'_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mk-tosubmonoid--917bfc64b12041fc9e2d0509.md) | 239 | `result-track:917bfc64b12041fc9e2d0509e8feec5aadb4222e08567e972adcca9d8e40cf05` |
| 39 | `theorem` | [mk'_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mk-toaddsubmonoid--2efee76eb68af43a2ca5543c.md) | 244 | `result-track:2efee76eb68af43a2ca5543c41a6e8e86ed962836f64a7c2f6343d61624b6486` |
| 40 | `theorem` | [one_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/one-mem--935f91e28fe54472e97ae3cd.md) | 255 | `result-track:935f91e28fe54472e97ae3cde7330befe095746b60b12c28a398376aa9281df8` |
| 41 | `theorem` | [zero_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/zero-mem--17c34546247d8adce227869f.md) | 259 | `result-track:17c34546247d8adce227869ff24b5404796c60b27117e9877ab6a4bb55ba849c` |
| 42 | `theorem` | [mul_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mul-mem--6b791b460c24e3240763c044.md) | 263 | `result-track:6b791b460c24e3240763c0448213c2e8daa0a46b7ccd6749ad67f464a7daed5b` |
| 43 | `theorem` | [add_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/add-mem--7daa8e0e64dc08760b51ef78.md) | 267 | `result-track:7daa8e0e64dc08760b51ef78b570e7ee3065d183ee7c8b2301064f6f736854eb` |
| 44 | `instance` | [toNonAssocSemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tononassocsemiring--3c51fc4938fab5a94854bcfb.md) | 271 | `declaration-track:3c51fc4938fab5a94854bcfb808d4cf9840e67e8f3ff5fcdffe9bd329df6eef6` |
| 45 | `theorem` | [coe_one](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-one--a2eed1efa198cfee9ba50415.md) | 275 | `result-track:a2eed1efa198cfee9ba50415554bff456b01f91797fe691791f87329f3deea39` |
| 46 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-zero--be743f862d5e542a4124a041.md) | 279 | `result-track:be743f862d5e542a4124a041ec44cfe442d154940f305561e7db717eab628417` |
| 47 | `theorem` | [coe_add](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-add--43ecd762414da677cd0948cf.md) | 283 | `result-track:43ecd762414da677cd0948cfa5e842a9870f4dc3138087820c198d5acf59d5d6` |
| 48 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-mul--6e89d1ea16c0b5b7fa71b6a0.md) | 287 | `result-track:6e89d1ea16c0b5b7fa71b6a0226d24d1c71620e4852a52123b39e079f5041611` |
| 49 | `instance` | [nontrivial](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nontrivial--38c495db44ededc38dadfb75.md) | 290 | `declaration-track:38c495db44ededc38dadfb75b0d945acd6013dcd9413b85cfa8470fcf81184b5` |
| 50 | `theorem` | [pow_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/pow-mem--dbda5061be198438cd36edb5.md) | 293 | `result-track:dbda5061be198438cd36edb5bd6a1194530127d1d9533bec0008e16ba407a8c9` |
| 51 | `instance` | [noZeroDivisors](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nozerodivisors--109a6263ec598e25eaddcd6a.md) | 297 | `declaration-track:109a6263ec598e25eaddcd6a7e89b2a60999ccd7ccf5e377ef1de6385063fbb2` |
| 52 | `instance` | [toSemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tosemiring--cdd0c174cc5337b977a8fa7e.md) | 302 | `declaration-track:cdd0c174cc5337b977a8fa7e4e75bfeca6977c8015d88588db5233e7e4e080c1` |
| 53 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-pow--263a777803fe499842fab1c9.md) | 306 | `result-track:263a777803fe499842fab1c96bc0b98cac8bd9e328ae9a3b71d36de32090bb49` |
| 54 | `instance` | [toCommSemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/tocommsemiring--9e8cb428f7a2285668f05e1a.md) | 313 | `declaration-track:9e8cb428f7a2285668f05e1a9daebac907f014deb16cf17ebb777906d7567a38` |
| 55 | `def` | [subtype](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subtype--523caca6ec1d7b972d5550e8.md) | 317 | `declaration-track:523caca6ec1d7b972d5550e8fb876bdf33ed093b85e06c6164bb115f3aedf4bc` |
| 56 | `lemma` | [subtype_apply](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subtype-apply--63287d762ec404e39a1065a6.md) | 322 | `result-track:63287d762ec404e39a1065a6f3ad62fc2825d92056cf02655d035ecc684953be` |
| 57 | `lemma` | [subtype_injective](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subtype-injective--4d54dcbe7cf1d0c6108da3f5.md) | 325 | `result-track:4d54dcbe7cf1d0c6108da3f5e7a75a021094dfbb3d6f74f7e43d3187cbed1684` |
| 58 | `theorem` | [coe_subtype](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-subtype--5ea0f54e4f34a22d9774bc3b.md) | 330 | `result-track:5ea0f54e4f34a22d9774bc3b39e9a315cc37b83045eae82d60f99c846439edd2` |
| 59 | `theorem` | [nsmul_mem](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nsmul-mem--00ad3706082ebfb8d0d9f21a.md) | 333 | `result-track:00ad3706082ebfb8d0d9f21add0f6bd43a115c60e6f072c4544b834362f9dddc` |
| 60 | `theorem` | [coe_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-tosubmonoid--2179dc68c01ec4304bcf4e14.md) | 337 | `result-track:2179dc68c01ec4304bcf4e1405b7fbdaebae95bda7f2b84f430ab3268d6a3fdb` |
| 61 | `theorem` | [coe_carrier_toSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-carrier-tosubmonoid--b28606db4e5f2b4bce66baee.md) | 341 | `result-track:b28606db4e5f2b4bce66baee391e1e08326b99e0825470935d21e57b815f2202` |
| 62 | `theorem` | [mem_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-toaddsubmonoid--35dc06e2428e13ae9e9eb46b.md) | 344 | `result-track:35dc06e2428e13ae9e9eb46bbd6b3158a027c73a23aeafff093df0afe531c75a` |
| 63 | `theorem` | [coe_toAddSubmonoid](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-toaddsubmonoid--73b55ff257e2d2eb451ce3d7.md) | 347 | `result-track:73b55ff257e2d2eb451ce3d74d9e4974323dbacf7d6fe64ae7394cf394dd3272` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--795152798862a70101fa04db.md) | 351 | `declaration-track:795152798862a70101fa04db0c9a2b100196e688dac8140faad79539ede6d877` |
| 65 | `theorem` | [mem_top](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-top--38bff90cd743046ad085a4ea.md) | 355 | `result-track:38bff90cd743046ad085a4eac699c34f0bd00cd8d579b61191141bf35045b64a` |
| 66 | `theorem` | [coe_top](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-top--bd08fcb3db80c8164eb5ebd2.md) | 359 | `result-track:bd08fcb3db80c8164eb5ebd2f835b1b8cfc245b966f8d6d0a4025d5601f939ab` |
| 67 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/instance--65c7fd407165aafa28804de6.md) | 367 | `declaration-track:65c7fd407165aafa28804de6340fc7be08e22b5a30fd00b8396953cc2c79b07a` |
| 68 | `theorem` | [coe_inf](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/coe-inf--d399a5e3a44e28d273906358.md) | 372 | `result-track:d399a5e3a44e28d273906358b4a8155ae5e178c20b15309d9d21ac8f1d0c1803` |
| 69 | `theorem` | [mem_inf](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/mem-inf--d8684405b41c2a24f7c17e4c.md) | 376 | `result-track:d8684405b41c2a24f7c17e4c49d8989f9103156864a2fa189fb2062efcd56e1f` |
| 70 | `def` | [domRestrict](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/domrestrict--5be6637fde8d5225975caf13.md) | 389 | `declaration-track:5be6637fde8d5225975caf13a1ce5724814beb1c9b4504fe5d0ab470bcdcac94` |
| 71 | `theorem` | [restrict_apply](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/restrict-apply--6c447e03d1140e4767ee95ba.md) | 393 | `result-track:6c447e03d1140e4767ee95ba6679119832ea6d0751d7f85d9d56fbc1be1e52d0` |
| 72 | `def` | [eqLocusS](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/eqlocuss--45caefba7d3d10266d5fc8bf.md) | 397 | `declaration-track:45caefba7d3d10266d5fc8bfc640528d4c893a24e330872c631f691b67cabc6d` |
| 73 | `theorem` | [eqLocusS_same](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/eqlocuss-same--a70d434dfdad3a8099cd15c8.md) | 401 | `result-track:a70d434dfdad3a8099cd15c8f8f436a5238e8038607ad6708b9c31c28f2beafa` |
| 74 | `def` | [NonUnitalSubsemiring.toSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nonunitalsubsemiring-tosubsemiring--9aa6eb556d1357d7450230c5.md) | 407 | `declaration-track:9aa6eb556d1357d7450230c5812a5d35681a3d5c30182a5abbd2660058da95d9` |
| 75 | `lemma` | [Subsemiring.toNonUnitalSubsemiring_toSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/subsemiring-tononunitalsubsemiring-tosubsemiring--3d2c9a8069daa1fd041db851.md) | 412 | `result-track:3d2c9a8069daa1fd041db85142a5facbf8196d4964f7b4a2a559a77bd01d3305` |
| 76 | `lemma` | [NonUnitalSubsemiring.toSubsemiring_toNonUnitalSubsemiring](../../../../mathematics/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/declarations/nonunitalsubsemiring-tosubsemiring-tononunitalsubsemiring--98d61f45e378a563dd49cc07.md) | 415 | `result-track:98d61f45e378a563dd49cc07bd880ef3cc14da61b71b4f18cd39c2b1fe96441c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
