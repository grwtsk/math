# Verification target: GRWTSK.Algebra.GroupTheory.Semigroup.Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87259051f70294b140fdc6f5d17b6146f04b4abc",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87259051f70294b140fdc6f5d17b6146f04b4abc`.

Source path: `GRWTSK/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean.json)

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
| 1 | `class` | [IsLeftCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isleftcancelmul--a015000be89bafcb8745ff68.md) | 39 | `declaration-track:a015000be89bafcb8745ff68c950bcae0bb755c1aa8102f06046172c0f6fa4e1` |
| 2 | `class` | [IsRightCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isrightcancelmul--9d00f27d61f5ab59aea41fd2.md) | 43 | `declaration-track:9d00f27d61f5ab59aea41fd28853fe0f4cc92c0dd3a59352bcaae22d798e5454` |
| 3 | `class` | [IsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/iscancelmul--77ba051687cf00150f23d40e.md) | 48 | `declaration-track:77ba051687cf00150f23d40ef2e3395996c072fc5b8ccb554341b45e42da924f` |
| 4 | `class` | [IsLeftCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isleftcanceladd--4d4ec542a330dc8812736334.md) | 51 | `declaration-track:4d4ec542a330dc881273633499588b3ea6f52474e911fc48f4c27e6a894f0479` |
| 5 | `class` | [IsRightCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isrightcanceladd--dd34df6c15f7e99f4669fb0c.md) | 59 | `declaration-track:dd34df6c15f7e99f4669fb0c41a316d55f61907bf304e4fad1f2d7c2f8cdf28c` |
| 6 | `class` | [IsCancelAdd](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/iscanceladd--cde41d07c18edd52f3096c6a.md) | 68 | `declaration-track:cde41d07c18edd52f3096c6a80cf02df6830a86315627274c8a7ab1925864e7b` |
| 7 | `theorem` | [isCancelMul_iff_forall_isRegular](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/iscancelmul-iff-forall-isregular--2a24dcb960264f340f779bbc.md) | 77 | `result-track:2a24dcb960264f340f779bbc1b5655ff088942e6502c09283676c927ea76afc3` |
| 8 | `theorem` | [IsLeftRegular.all](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isleftregular-all--767790195a58059140df24e8.md) | 84 | `result-track:767790195a58059140df24e88a02cb299f1ae074a5673aa92d286bdcf6e3ad0f` |
| 9 | `theorem` | [IsRightRegular.all](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isrightregular-all--a193c5f0a4e9d53be7d4fc30.md) | 89 | `result-track:a193c5f0a4e9d53be7d4fc308f9396bb139494c092618180ba775b4505c9ce9e` |
| 10 | `theorem` | [IsRegular.all](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isregular-all--b879d3c3065648f69b957415.md) | 94 | `result-track:b879d3c3065648f69b957415a1f15470b8fc4111f1966d94d223331c9eb270c1` |
| 11 | `theorem` | [mul_left_cancel](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-left-cancel--f0564b5ae688e21c14ef8c6f.md) | 103 | `result-track:f0564b5ae688e21c14ef8c6f574c7b5dbc096907c2c7aa93f13c6d9a0a9a7da9` |
| 12 | `theorem` | [mul_left_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-left-cancel-iff--e5c14ca9c5b485fd822dfa1e.md) | 107 | `result-track:e5c14ca9c5b485fd822dfa1e5eef149c320f662fcf6e5f720b5d0d71ad8112f5` |
| 13 | `theorem` | [mul_right_injective](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-right-injective--82bdf8d02868c00eaba91bbd.md) | 111 | `result-track:82bdf8d02868c00eaba91bbda3fceec5c6145becc468f8098213111395ffdc6b` |
| 14 | `theorem` | [mul_right_inj](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-right-inj--87cac10b249502dcf61863e9.md) | 114 | `result-track:87cac10b249502dcf61863e9930541eaabd718618635fe82b901e5de0c2c467a` |
| 15 | `theorem` | [mul_ne_mul_right](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-ne-mul-right--a65ad5cdd7c8fd84225e4550.md) | 118 | `result-track:a65ad5cdd7c8fd84225e455002ee60fb4d4d29e2f1c63798c8b044fde2e52c6c` |
| 16 | `theorem` | [mul_right_cancel](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-right-cancel--cc6b2e7a41d0e771f9dbd1fd.md) | 128 | `result-track:cc6b2e7a41d0e771f9dbd1fd80b08269edb017c6a17e9ceca0a5316c50e27e8b` |
| 17 | `theorem` | [mul_right_cancel_iff](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-right-cancel-iff--554f2f4c0e257c21fed4f8cb.md) | 132 | `result-track:554f2f4c0e257c21fed4f8cb6c6e234fa92e6d7f60c7e869cd479db31ae66035` |
| 18 | `theorem` | [mul_left_injective](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-left-injective--4d9dba64fc271747ff439560.md) | 136 | `result-track:4d9dba64fc271747ff4395601f076a18d44f3b76873a3e4bab6989d8608a4e61` |
| 19 | `theorem` | [mul_left_inj](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-left-inj--6ea925d006f06555beac6c28.md) | 139 | `result-track:6ea925d006f06555beac6c2808b9b0e73e8fdc0212e31959b1e1127d2e74449e` |
| 20 | `theorem` | [mul_ne_mul_left](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-ne-mul-left--3221fa6b92514e1764fe8395.md) | 143 | `result-track:3221fa6b92514e1764fe8395c9c791355fcfa28e4a0958dd755c221f45a08205` |
| 21 | `class` | [Semigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/semigroup--3a634dc4e7e211f3a2880878.md) | 152 | `declaration-track:3a634dc4e7e211f3a28808780a76d5ed3622f420cd011c54827441a4f18596e1` |
| 22 | `class` | [AddSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/addsemigroup--be5695b632237bfdc1e73756.md) | 158 | `declaration-track:be5695b632237bfdc1e737566a3178e6a5c150b67dd0d40006f67f06f0eff0b0` |
| 23 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-assoc--117469a9ce25d5e8638bc74b.md) | 169 | `result-track:117469a9ce25d5e8638bc74bf5511878fd66d4b7edb8a02c87918c39d16f3f53` |
| 24 | `class` | [IsAddCommutative](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isaddcommutative--8dea70fdd7d1106eece5e01b.md) | 177 | `declaration-track:8dea70fdd7d1106eece5e01b03ba7316669dc3a1a65418669334a467e81d1f74` |
| 25 | `class` | [IsMulCommutative](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/ismulcommutative--1b3c63665d7b62cc816ab20c.md) | 182 | `declaration-track:1b3c63665d7b62cc816ab20c4a8913c4bf34db188489f4543c3c66bcc9614e5e` |
| 26 | `lemma` | [isMulCommutative_iff](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/ismulcommutative-iff--7c06c9762c0daec4c323848b.md) | 189 | `result-track:7c06c9762c0daec4c323848b0a0560360f4581fe5803cf564342f6af398ef6d1` |
| 27 | `lemma` | [mul_comm'](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-comm--5bf892dc3b458490450ee6d9.md) | 202 | `result-track:5bf892dc3b458490450ee6d956c5d50f781bb570bca20d673527671e76b7ce5f` |
| 28 | `class` | [AddCommMagma](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/addcommmagma--114593cfaadc0417c9cb3ecb.md) | 209 | `declaration-track:114593cfaadc0417c9cb3ecbf3c7f6103602c0f80698806ee8e7b39bbf188f62` |
| 29 | `class` | [CommMagma](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commmagma--c486b4c2420d99a436e57915.md) | 215 | `declaration-track:c486b4c2420d99a436e5791521dd1daa1b4e4b436f99c2ac3a79fd5718f98549` |
| 30 | `class` | [CommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commsemigroup--7ae3a02e0da47154b12c30cb.md) | 223 | `declaration-track:7ae3a02e0da47154b12c30cbcc5929e1a389298f50418ad87fe5a9c12ccbecfc` |
| 31 | `class` | [AddCommSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/addcommsemigroup--9136122fb0ac4161244e8229.md) | 227 | `declaration-track:9136122fb0ac4161244e8229950ca96639823286956fd4e1fb014adfefc665a9` |
| 32 | `theorem` | [mul_comm](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/mul-comm--56255e35c1c1d7749669c6e6.md) | 236 | `result-track:56255e35c1c1d7749669c6e60b5a9f06e3b0543df2cc40dd397c2719ee3ca202` |
| 33 | `instance` | [CommMagma.to_isCommutative](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commmagma-to-iscommutative--d323f7bb916ff24fa0a3ae6a.md) | 239 | `declaration-track:d323f7bb916ff24fa0a3ae6a40bc6704d0f8edf97dd5109624b3b067027a4cc7` |
| 34 | `lemma` | [isLeftRegular_iff_isRegular](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isleftregular-iff-isregular--032f4c6f9543855f57b4318d.md) | 242 | `result-track:032f4c6f9543855f57b4318d8cefde1db8f88771ac583d60dae789978c8333f7` |
| 35 | `lemma` | [isRightRegular_iff_isRegular](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/isrightregular-iff-isregular--6d665d16edc3103157a8e933.md) | 246 | `result-track:6d665d16edc3103157a8e9334aed2ace1ecb31d3de30fde502d1eadeef09abfc` |
| 36 | `lemma` | [CommMagma.IsRightCancelMul.toIsLeftCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commmagma-isrightcancelmul-toisleftcancelmul--c42843bab707f53012243803.md) | 252 | `result-track:c42843bab707f530122438031affd00803ac9b55a10e6549e5f1bb92e2fc01a2` |
| 37 | `lemma` | [CommMagma.IsLeftCancelMul.toIsRightCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commmagma-isleftcancelmul-toisrightcancelmul--b06fd0c50068cec8055c0842.md) | 259 | `result-track:b06fd0c50068cec8055c0842faf9f358ac637a9a3ec521d9101a1673ea2202aa` |
| 38 | `lemma` | [CommMagma.IsLeftCancelMul.toIsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commmagma-isleftcancelmul-toiscancelmul--37b886e99d72420ecccdabf8.md) | 266 | `result-track:37b886e99d72420ecccdabf8a3b5cf0fe0d1d3ca92cebadad7c5117523bdbc0b` |
| 39 | `lemma` | [CommMagma.IsRightCancelMul.toIsCancelMul](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/commmagma-isrightcancelmul-toiscancelmul--df9fde819df324ff1ae34ac2.md) | 272 | `result-track:df9fde819df324ff1ae34ac2578e06065dc49e3b91322ecc5615a11e145a0f69` |
| 40 | `class` | [LeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/leftcancelsemigroup--29c98b4c38758421c931a6a1.md) | 279 | `declaration-track:29c98b4c38758421c931a6a13701aa4ef64c53273b58f00e43abbaaf0d0b1657` |
| 41 | `class` | [AddLeftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/addleftcancelsemigroup--c707bf8c9e276d5288df372b.md) | 292 | `declaration-track:c707bf8c9e276d5288df372b3c9d57de03793dabe6ecd99507895820c1568c83` |
| 42 | `class` | [RightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/rightcancelsemigroup--23781452d6f0fa67e8d4d76f.md) | 306 | `declaration-track:23781452d6f0fa67e8d4d76fd7271d33324a2bb08925987717776484c084dc3c` |
| 43 | `class` | [AddRightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Semigroup/Variant3d9dc205d06ce59d4a4fb0435db8f671ee0dd98f1b4cd55f5530a250bf61b554.lean/declarations/addrightcancelsemigroup--31cd7c0e9ff2f2364281e6f9.md) | 313 | `declaration-track:31cd7c0e9ff2f2364281e6f9967a0d4cd612b4be55dd4407c3bc6118d5440824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
