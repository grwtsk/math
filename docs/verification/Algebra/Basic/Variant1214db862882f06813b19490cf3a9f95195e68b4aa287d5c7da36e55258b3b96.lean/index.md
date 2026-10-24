# Verification target: GRWTSK.Algebra.Basic.Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bae283512a118e603f186d01bfceb6e012336332",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bae283512a118e603f186d01bfceb6e012336332`.

Source path: `GRWTSK/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Instances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulleft--3c1e3ca49be0b8ec92adc59c.md) | 39 | `declaration-track:3c1e3ca49be0b8ec92adc59c7af508578c7faf943e7a20d35f9966658bd3e0b6` |
| 2 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulright--fd5ce21f13aa7f9fe76b7c6d.md) | 45 | `declaration-track:fd5ce21f13aa7f9fe76b7c6deb5d14807c15834b2caccbf4aea447e9670b7d11` |
| 3 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulleft--e36f67294cc811805c22960e.md) | 55 | `declaration-track:e36f67294cc811805c22960e8a662ddd8fc3481fa0840d296ff664a8386d9155` |
| 4 | `lemma` | [coe_mulLeft](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/coe-mulleft--da5bf76a32e03b8212be8d58.md) | 60 | `result-track:da5bf76a32e03b8212be8d58ddd9a8d94b1bfe4b588437a84dc33c982c4a2d5c` |
| 5 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulright--30fb2183ee89006406c904f3.md) | 63 | `declaration-track:30fb2183ee89006406c904f32c1c58805d11d5265e151e44bbf91b2fbe3ea8c2` |
| 6 | `lemma` | [coe_mulRight](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/coe-mulright--e51e94d13d6f48ea3a1c38a2.md) | 68 | `result-track:e51e94d13d6f48ea3a1c38a209960696e4e29bcb61f84865653a47adc831a48f` |
| 7 | `lemma` | [mulRight_apply](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulright-apply--74d9f59e0f3c61aa65d91fd6.md) | 70 | `result-track:74d9f59e0f3c61aa65d91fd6124692ae73d71c4b0a6816b443354896e6494f1c` |
| 8 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mul--6d2ff9b7dab63e0e3c6c7d0e.md) | 79 | `declaration-track:6d2ff9b7dab63e0e3c6c7d0ee208f7f34f172a341fa811a30e854f7fc393f030` |
| 9 | `lemma` | [mul_apply](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mul-apply--598d6ffc1925602f9526c665.md) | 84 | `result-track:598d6ffc1925602f9526c6653df7bc5bfba6499a47d9306c71931d846e1c4752` |
| 10 | `lemma` | [coe_mul](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/coe-mul--e14ddbda68b3583f1f484696.md) | 86 | `result-track:e14ddbda68b3583f1f4846964d3c1ffb13910de790fde874e186e39199527116` |
| 11 | `lemma` | [coe_flip_mul](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/coe-flip-mul--772bc82eb489ec4d8163f06a.md) | 87 | `result-track:772bc82eb489ec4d8163f06ae9a1eaa6be17cf1a27f77e5dbcd839fd598f0e95` |
| 12 | `lemma` | [map_mul_iff](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/map-mul-iff--e8fddbc942ecef6dcf1508b2.md) | 93 | `result-track:e8fddbc942ecef6dcf1508b29daf48b29be38ddbbf0048f8f1678fb9d848b774` |
| 13 | `lemma` | [mulLeft_eq_mulRight_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulleft-eq-mulright-iff-forall-commute--b776be2f7327dd762afde74b.md) | 97 | `result-track:b776be2f7327dd762afde74ba38447fe4055541da3e5747e98e6a931b73909b4` |
| 14 | `lemma` | [mulRight_eq_mulLeft_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulright-eq-mulleft-iff-forall-commute--13291a5acf4632479d21d536.md) | 100 | `result-track:13291a5acf4632479d21d536c20b0b0816d92bfaa07bd8ab816d8e1169a55e9c` |
| 15 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulleft--d61387bda16556ed825ec4af.md) | 111 | `declaration-track:d61387bda16556ed825ec4af295f0785994c017ea50dec2809d24fb81d811c08` |
| 16 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulright--f6ecad365bd950ec8a2bbb44.md) | 115 | `declaration-track:f6ecad365bd950ec8a2bbb447d313fa167f452b6b731615f421000ca1c0e7c98` |
| 17 | `lemma` | [mulRight_eq_mulLeft](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulright-eq-mulleft--9d8cde568473a3be137bad2c.md) | 122 | `result-track:9d8cde568473a3be137bad2cf7cbd73d7b6596e5d0200b71583d355a6d0789dc` |
| 18 | `instance` | [MulOpposite.instHasDistribNeg](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/mulopposite-insthasdistribneg--57a6bfe9550de147b5d093cf.md) | 137 | `declaration-track:57a6bfe9550de147b5d093cf12c76464e4a3adadfaa7f843be51bba88fee26e6` |
| 19 | `theorem` | [vieta_formula_quadratic](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/vieta-formula-quadratic--ee9d570b40fdd4d3e3b0ce47.md) | 155 | `result-track:ee9d570b40fdd4d3e3b0ce47bcb4297827cfa1094b2d8aece90b2c1b6142b017` |
| 20 | `theorem` | [succ_ne_self](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/succ-ne-self--a329b4dce5746a1273987ee1.md) | 163 | `result-track:a329b4dce5746a1273987ee1ca71583d3a8e4f8875db7101600c6ce6463b2bf3` |
| 21 | `theorem` | [pred_ne_self](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/pred-ne-self--b85f7a9a22ca72ec3b7e7aa4.md) | 166 | `result-track:b85f7a9a22ca72ec3b7e7aa4611e867c378456c5c17683bff41884a7398a5c30` |
| 22 | `lemma` | [IsLeftCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/isleftcancelmulzero-to-nozerodivisors--55b1b64b7e06e1b05f7ff213.md) | 173 | `result-track:55b1b64b7e06e1b05f7ff213efc889c4aac263ae7e0a4ae01304ba1c5308b028` |
| 23 | `lemma` | [IsRightCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/isrightcancelmulzero-to-nozerodivisors--66461f8d773cbf550f41d127.md) | 178 | `result-track:66461f8d773cbf550f41d127d7225780f0f34d7f139c622a02737a2f1f680727` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/instance--592b31ab3508408474a4717a.md) | 183 | `declaration-track:592b31ab3508408474a4717a92ebe732ce2e50119c7e7910f607194aeefd26b9` |
| 25 | `lemma` | [isCancelMulZero_iff_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/iscancelmulzero-iff-nozerodivisors--279983001113ab5e940a9944.md) | 194 | `result-track:279983001113ab5e940a9944a1fe87918a79c74b1e8f2cc058cbc3530126602f` |
| 26 | `lemma` | [NoZeroDivisors.to_isDomain](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/nozerodivisors-to-isdomain--c5eb482f97f0bcf095e08355.md) | 198 | `result-track:c5eb482f97f0bcf095e08355a630db367f5b283ccbefb8ce00ed88af36e41186` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/instance--89bd12a8ad89087cc51b01a9.md) | 202 | `declaration-track:89bd12a8ad89087cc51b01a902ac88d0bc2bb24d278de5defbf7b7aec0c55dee` |
| 28 | `instance` | [Subsingleton.to_isCancelMulZero](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/subsingleton-to-iscancelmulzero--52597126a0e6e92388b11deb.md) | 206 | `declaration-track:52597126a0e6e92388b11deb0d1a0c31e123f40d35ab6186c6cf5b5968341bf8` |
| 29 | `instance` | [Subsingleton.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/subsingleton-to-nozerodivisors--822afe4066d7378e285087f6.md) | 210 | `declaration-track:822afe4066d7378e285087f622f1f76227f99c9ce0196f654cc850b7b82587c7` |
| 30 | `lemma` | [isDomain_iff_cancelMulZero_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/isdomain-iff-cancelmulzero-and-nontrivial--846bb10372b7c59780aa1f83.md) | 213 | `result-track:846bb10372b7c59780aa1f83a4d2db207aa73a5df1f1532efb129e60ab551ad9` |
| 31 | `lemma` | [isCancelMulZero_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/iscancelmulzero-iff-isdomain-or-subsingleton--61cf3880ee2227b90c67c465.md) | 217 | `result-track:61cf3880ee2227b90c67c465aecccf784e2e48c36d6f84a1a46c0783972d8287` |
| 32 | `lemma` | [isDomain_iff_noZeroDivisors_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/isdomain-iff-nozerodivisors-and-nontrivial--ba8c5dd218cf4f6b7689930f.md) | 223 | `result-track:ba8c5dd218cf4f6b7689930f9a94c83385f9dfdc739eba0508186ee1bfbc1602` |
| 33 | `lemma` | [noZeroDivisors_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/nozerodivisors-iff-isdomain-or-subsingleton--c836d545bddb13193b0d1c17.md) | 227 | `result-track:c836d545bddb13193b0d1c17fc998ac1436e4935d6ee7c9cc663088891d8395f` |
| 34 | `lemma` | [one_div_neg_one_eq_neg_one](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/one-div-neg-one-eq-neg-one--c4ed29e6022f0c45f21ce801.md) | 236 | `result-track:c4ed29e6022f0c45f21ce8015561da4f0bff9e1a2f6a8cec1df1e160fbf377da` |
| 35 | `lemma` | [one_div_neg_eq_neg_one_div](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/one-div-neg-eq-neg-one-div--979c3d1e9eb2d2f5e0260f2c.md) | 240 | `result-track:979c3d1e9eb2d2f5e0260f2c405baf599b220afc486551c19ae777399a3a4c28` |
| 36 | `lemma` | [div_neg_eq_neg_div](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/div-neg-eq-neg-div--1e65f92e40021df3341b5d30.md) | 247 | `result-track:1e65f92e40021df3341b5d3078be58197524f9af4061fd5932a8df42468730c2` |
| 37 | `lemma` | [neg_div](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/neg-div--c2d87776fad7e69c79fea700.md) | 254 | `result-track:c2d87776fad7e69c79fea70050da83111b4e6ef550bf9d76a9d355fefc406af0` |
| 38 | `lemma` | [neg_div'](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/neg-div--b40716322864cac623a0525a.md) | 258 | `result-track:b40716322864cac623a0525af965515dae2170227ab09c1ac67a2239378530da` |
| 39 | `lemma` | [neg_div_neg_eq](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/neg-div-neg-eq--e78d4bea419afdc46ddb4ab9.md) | 261 | `result-track:e78d4bea419afdc46ddb4ab910b48ffebf65e70f24e977dc0ff204bb05533586` |
| 40 | `lemma` | [neg_inv](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/neg-inv--46ec3bea9f5cb1b666a75d29.md) | 263 | `result-track:46ec3bea9f5cb1b666a75d299488f1e98ab7e8d12b7bc027d0c1ef71bec3af0b` |
| 41 | `lemma` | [div_neg](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/div-neg--730d60703570c8ca9fb6d6d0.md) | 265 | `result-track:730d60703570c8ca9fb6d6d0faa0d0e1aa4ef6270b86ef0cac04b93fd9d95d42` |
| 42 | `lemma` | [inv_neg](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/inv-neg--4b8dbaed3eda4b10dc3c756b.md) | 268 | `result-track:4b8dbaed3eda4b10dc3c756be97455e206a89eddfab3429109885f7dd013adbb` |
| 43 | `lemma` | [inv_neg_one](../../../../mathematics/Algebra/Basic/Variant1214db862882f06813b19490cf3a9f95195e68b4aa287d5c7da36e55258b3b96.lean/declarations/inv-neg-one--2970ca9cd41c34b1166ba219.md) | 273 | `result-track:2970ca9cd41c34b1166ba219aff87574148a61ff417164ce10c4b5967ae034dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
