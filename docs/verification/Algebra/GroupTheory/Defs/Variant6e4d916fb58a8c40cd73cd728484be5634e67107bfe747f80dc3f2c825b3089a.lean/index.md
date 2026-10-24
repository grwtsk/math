# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7dccee0acc426228f6d8f83513ae96eb7efa417",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7dccee0acc426228f6d8f83513ae96eb7efa417`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [leftRel_eq_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/leftrel-eq-top--0b954e13823942c9523189cc.md) | 49 | `result-track:0b954e13823942c9523189cceb5feba86bae2cd583d5a0611910f502a2bb2d2b` |
| 2 | `lemma` | [rightRel_eq_top](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/rightrel-eq-top--1e05573fdddd3461562b9916.md) | 54 | `result-track:1e05573fdddd3461562b9916a79a0eec48f85b4d37ceeb2403394dd73705471f` |
| 3 | `lemma` | [subsingleton_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/subsingleton-iff--0f4fc62d8e4abcf1cb565f90.md) | 59 | `result-track:0f4fc62d8e4abcf1cb565f9086339f25e108eb531265136e6095a9b2b81c2736` |
| 4 | `lemma` | [nontrivial_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/nontrivial-iff--8ad047cf47d0da7b95993a2a.md) | 62 | `result-track:8ad047cf47d0da7b95993a2ae664c38553962c7e556de868a0574bf762a37473` |
| 5 | `def` | [con](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/con--ebcf0cc837bbdbc462717f46.md) | 69 | `declaration-track:ebcf0cc837bbdbc462717f4651165ac0952cae08d9b8d40834b02e1335a4fc7d` |
| 6 | `instance` | [Quotient.group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/quotient-group--5b89f499f14ba81072c3a85e.md) | 80 | `declaration-track:5b89f499f14ba81072c3a85e404ec4df6c2e0949efea20b342e5c9513297ba7e` |
| 7 | `theorem` | [con_ker_eq_conKer](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/con-ker-eq-conker--c7d6f73d9242cbf829973dd2.md) | 90 | `result-track:c7d6f73d9242cbf829973dd2dccce134172099785fc04487c6e3e2147fbd2751` |
| 8 | `def` | [mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk--157d34b5447a2c36ca3b192c.md) | 96 | `declaration-track:157d34b5447a2c36ca3b192cdf182604bd968908dcac220598826d6651231204` |
| 9 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/coe-mk--f75844018d0ba2c45c87380d.md) | 100 | `result-track:f75844018d0ba2c45c87380db5d5b2c6be15a91a97650b8772ae6230ef175568` |
| 10 | `theorem` | [mk'_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-apply--e8ad42dbe36096034e779f52.md) | 104 | `result-track:e8ad42dbe36096034e779f526606c2b5486c129fcd05167b61ea56aec280ecaf` |
| 11 | `theorem` | [mk'_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-surjective--8c9247391304337e1045d6c1.md) | 108 | `result-track:8c9247391304337e1045d6c1ece5ee5ca559815381fcc46954b8fa8bffd38b9b` |
| 12 | `theorem` | [mk'_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-eq-mk--2c8a648a82576fd80d5f0b5d.md) | 112 | `result-track:2c8a648a82576fd80d5f0b5dfba38309ebac4ff942b07e1044e81956b1a69a7c` |
| 13 | `theorem` | [monoidHom_ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/monoidhom-ext--e137c19dc40f353b3788c971.md) | 124 | `result-track:e137c19dc40f353b3788c971bd635fb1b9588d1f4fc01c7f56d4df5ee892ba10` |
| 14 | `theorem` | [eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/eq-one-iff--7fd22265219672749edeba82.md) | 128 | `result-track:7fd22265219672749edeba82b55a66cc8142bc1f19674e338bd82b1ba30afc44` |
| 15 | `lemma` | [mk'_comp_subtype](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-comp-subtype--e6e0296346b809a09eb55b63.md) | 133 | `result-track:e6e0296346b809a09eb55b635ec1dc0718e1d58b1fa91b7a6b57cc40fe65f509` |
| 16 | `theorem` | [range_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/range-mk--a66d70fcf18726f33a87c6ec.md) | 140 | `result-track:a66d70fcf18726f33a87c6ec9a4243cb1fd939bf8b23a8bdf92e79640047572c` |
| 17 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/ker-le-range-iff--f6c805b55e8d79eb59e7984f.md) | 144 | `result-track:f6c805b55e8d79eb59e7984f06e7294d7ad9efe6b3f9a9bd5b8cfe75b7dcd2f5` |
| 18 | `theorem` | [ker_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/ker-mk--7b228b1697c99e3bbe21e833.md) | 150 | `result-track:7b228b1697c99e3bbe21e8336de5a0e6e1d5a7414a9db256eefd0ee066477f79` |
| 19 | `theorem` | [eq_iff_div_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/eq-iff-div-mem--de9da21e206b61da7851d303.md) | 154 | `result-track:de9da21e206b61da7851d303e81a93e78fe4ac2ffd336fe23a6be3dca69e8cd6` |
| 20 | `instance` | [Quotient.commGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/quotient-commgroup--6f8d34b86c01e273987abc3d.md) | 161 | `declaration-track:6f8d34b86c01e273987abc3d42c23328ca1f9ae66f629b131e26169cc65deaa0` |
| 21 | `theorem` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-one--122a7744ebf184d368e9f502.md) | 167 | `result-track:122a7744ebf184d368e9f5023c9edbe288bafb9c292f65aa50a8f2654d97ccc4` |
| 22 | `theorem` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-mul--1c4e3cbaba6a7064cf4fda4f.md) | 171 | `result-track:1c4e3cbaba6a7064cf4fda4f7930b4224f85c6617c960633bdebb83dadfc2416` |
| 23 | `theorem` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-inv--b389cd80e600da5154acd6e0.md) | 175 | `result-track:b389cd80e600da5154acd6e0a4979e54ff7b8fa1f50cf51f3e8b066243abdf1a` |
| 24 | `theorem` | [mk_div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-div--5583f5ed0377c5b29bbaae40.md) | 179 | `result-track:5583f5ed0377c5b29bbaae40114f4acbcb886775905d4cce7d20f5f34e0aef0f` |
| 25 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-pow--470599b7366100304f58ff4f.md) | 183 | `result-track:470599b7366100304f58ff4f6d98670054bb8cf066226a5a3c48a634c7524b43` |
| 26 | `theorem` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/mk-zpow--f2ca8791929eca06e7e5d8df.md) | 187 | `result-track:f2ca8791929eca06e7e5d8df8a16743c20c36ad746c848705e85a34528e0c46b` |
| 27 | `lemma` | [map_mk'_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-mk-self--33759482e76deb5202954dfd.md) | 190 | `result-track:33759482e76deb5202954dfdbd7aeced4c760aaf64905e80f165d05fd3fc36df` |
| 28 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Con.subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/root-grwtsk-algebra-grouptheory-con-variant935efb53426fbcbfbfe2d1aefe6c2--3978f0072692115dd5928bdf.md) | 198 | `declaration-track:3978f0072692115dd5928bdf2aeddd8b2ec6122ad1842d32a31fa5f849ccea26` |
| 29 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Con.mem_subgroup_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/root-grwtsk-algebra-grouptheory-con-variant935efb53426fbcbfbfe2d1aefe6c2--9fada5dcd885462e1177cbc4.md) | 205 | `result-track:9fada5dcd885462e1177cbc4c1b8bf18ad3b19e12fb202fbf386ed4d7103f760` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/instance--3d3ad703a7bc906d13e35096.md) | 209 | `declaration-track:3d3ad703a7bc906d13e350969c58c78aa9036692419d386b2402cbf8e3457dd5` |
| 31 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Con.subgroup_quotientGroupCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/root-grwtsk-algebra-grouptheory-con-variant935efb53426fbcbfbfe2d1aefe6c2--6147c8ef43a39734cfa249d9.md) | 213 | `result-track:6147c8ef43a39734cfa249d98ef38f0a7e7eec19ce9ac5b44b978730dc66261e` |
| 32 | `theorem` | [con_subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/con-subgroup--e8b2020ab1c0c4edf3beb405.md) | 219 | `result-track:e8b2020ab1c0c4edf3beb405570bd400d976f56f28077ba4def0878c037c8bb4` |
| 33 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.Con.Variant935efb53426fbcbfbfe2d1aefe6c267c039470d3e9118d8461c74e871b65dd31.Subgroup.orderIsoCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/root-grwtsk-algebra-grouptheory-con-variant935efb53426fbcbfbfe2d1aefe6c2--f6b36c789ff11e60fe539426.md) | 231 | `declaration-track:f6b36c789ff11e60fe5394266ccc6643c2f66dd5be1549997ae547e683adc562` |
| 34 | `lemma` | [con_le_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/con-le-iff--8b91f9d3edecdf4a88590c1e.md) | 244 | `result-track:8b91f9d3edecdf4a88590c1e5c4a7a604416bddf94c79ed7a8b3ee221307adcf` |
| 35 | `lemma` | [con_mono](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/con-mono--b13db3506f2f234c6c8a4556.md) | 249 | `result-track:b13db3506f2f234c6c8a45564097e4db5ce184f79149b537446a5e7a79a6a71e` |
| 36 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/lift--ce7e4400a24b02e32cf1ccf6.md) | 257 | `declaration-track:ce7e4400a24b02e32cf1ccf671b0a1aae353f76deb68347611a970cdea3cc0da` |
| 37 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/lift-mk--49c71a3c2bc589c3ef9af67b.md) | 261 | `result-track:49c71a3c2bc589c3ef9af67b1d92b13190eecb3f59971e282692200c50dd3553` |
| 38 | `theorem` | [lift_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/lift-mk--5c5e8eab806fa433bb87005d.md) | 265 | `result-track:5c5e8eab806fa433bb87005de8a5ff064cd0faa8e46ceb95fd80b965d296a2f5` |
| 39 | `theorem` | [lift_comp_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/lift-comp-mk--f78025f49e22249022b7f0fb.md) | 270 | `result-track:f78025f49e22249022b7f0fb6688fd252abe6cc28d0aa3fef45c715c47b11eb2` |
| 40 | `theorem` | [lift_quot_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/lift-quot-mk--ffffeef0cefbaec3d1cd7666.md) | 275 | `result-track:ffffeef0cefbaec3d1cd76666e7a4cdd1c4e42ee715bccf64453298e37c40ca1` |
| 41 | `theorem` | [lift_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/lift-surjective-of-surjective--1cc363ff4d04ae8510854ad7.md) | 280 | `result-track:1cc363ff4d04ae8510854ad7985e7007f8541931ad2d3416e9241c605abbbdb1` |
| 42 | `theorem` | [ker_lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/ker-lift--eb88864db67050efcf676067.md) | 285 | `result-track:eb88864db67050efcf676067e176b952e0f9269ef492abe1978ce188196939e5` |
| 43 | `lemma` | [injective_lift_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/injective-lift-iff--220f4aea01ae41cbfc950a0e.md) | 291 | `result-track:220f4aea01ae41cbfc950a0e542afa39b1200ba0caa136b853737b46254596d9` |
| 44 | `def` | [liftEquiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/liftequiv--f1e99ff3d146253a89eb64c5.md) | 300 | `declaration-track:f1e99ff3d146253a89eb64c501a8e95a892313cc02001009bc99a2c268ed58b9` |
| 45 | `theorem` | [liftEquiv_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/liftequiv-coe--aecd53808c70a416f4fcaa5d.md) | 307 | `result-track:aecd53808c70a416f4fcaa5d380a38d85864a3821e4e47c7de74b7512b78c2af` |
| 46 | `theorem` | [liftEquiv_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/liftequiv-mk--db8a15631581f68648b168cb.md) | 311 | `result-track:db8a15631581f68648b168cb74708aab682047016dea03eebf742040fecd1226` |
| 47 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map--2a441ea080fa9972ae2b7e96.md) | 317 | `declaration-track:2a441ea080fa9972ae2b7e9650d42217f2e4bd40a491720d02df349c8fe48a2c` |
| 48 | `theorem` | [map_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-mk--bf9b903d913c198332eff0bf.md) | 325 | `result-track:bf9b903d913c198332eff0bf99532caf4fd1244bd8d59b1474c6c3c1a375dd9b` |
| 49 | `theorem` | [map_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-mk--1e85acefea2941fa571061a9.md) | 330 | `result-track:1e85acefea2941fa571061a9e386985cf11366bfd0aa02b51d06e27780662285` |
| 50 | `theorem` | [map_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-surjective-of-surjective--fb7128e9df0d4981ccc7fce2.md) | 335 | `result-track:fb7128e9df0d4981ccc7fce22e4042856a1a70822c66fa4236787e434e4c9dd3` |
| 51 | `theorem` | [ker_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/ker-map--af1ea1cdb8bf2e2c924d98c4.md) | 341 | `result-track:af1ea1cdb8bf2e2c924d98c4a68f4b55ce13bf8ad8d4b8ef2a515f35cacb2ac3` |
| 52 | `theorem` | [map_id_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-id-apply--e6c6a61f80858cc094b39685.md) | 347 | `result-track:e6c6a61f80858cc094b39685e24d5b20e1622e77923a90bb44ac4df1ee0af448` |
| 53 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-id--284b9e88ab734008ac8647c2.md) | 352 | `result-track:284b9e88ab734008ac8647c274a4627c636b447fc25434c1940bec7063536f87` |
| 54 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-map--09de1aa764183f9c5967556a.md) | 357 | `result-track:09de1aa764183f9c5967556af92a6c4bfa7527f738b7cf2e5b8e2acabccce848` |
| 55 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/map-comp-map--5f1656aa0546c65047a2c9f2.md) | 366 | `result-track:5f1656aa0546c65047a2c9f2f16ab97227a39ff070b26302c68cb57fa674f720` |
| 56 | `lemma` | [image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/image-coe--6b4b6a73cd64d57eace1fec7.md) | 376 | `result-track:6b4b6a73cd64d57eace1fec705ad49fd5739f6eac19698fa204b5e0de2daed88` |
| 57 | `lemma` | [preimage_image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/preimage-image-coe--1e3bcf6c6dddec9119778e57.md) | 380 | `result-track:1e3bcf6c6dddec9119778e57dfc5d24c2642af6100ce1fad5913721be7211ee3` |
| 58 | `lemma` | [image_coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/image-coe-inj--b6e1296b335fde34376408bc.md) | 391 | `result-track:b6e1296b335fde34376408bcde78c6da411e236b9d8a35d8c645ca6be4156e0f` |
| 59 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/congr--ceddf4ff4104a8efc4fc9e14.md) | 405 | `declaration-track:ceddf4ff4104a8efc4fc9e145385086b78865e42a4d7cf6b6d3431a6208ee40f` |
| 60 | `theorem` | [congr_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/congr-mk--861d9ec155a80ce4d4bc2485.md) | 421 | `result-track:861d9ec155a80ce4d4bc24855c24619ee9f0425de5d86b00def87e58b12eb96e` |
| 61 | `theorem` | [congr_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/congr-mk--2eb5a3c165b0d4a0856d006a.md) | 424 | `result-track:2eb5a3c165b0d4a0856d006a27f98df0c0d306e0c90bf7e6f06b12dcabe64edb` |
| 62 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/congr-apply--a38038e90ef402494608a050.md) | 429 | `result-track:a38038e90ef402494608a0502d09ff7270fcae339c78c5a014ea92a65cb594f4` |
| 63 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/congr-refl--411a08279edf634d1535d03a.md) | 434 | `result-track:411a08279edf634d1535d03a175616826ae97427f9f0bbc139ef5b9b302d345b` |
| 64 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6e4d916fb58a8c40cd73cd728484be5634e67107bfe747f80dc3f2c825b3089a.lean/declarations/congr-symm--40012900516d002e2cdc3c8c.md) | 440 | `result-track:40012900516d002e2cdc3c8ceace1285c687f3213993fc096d5e01f113de87b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
