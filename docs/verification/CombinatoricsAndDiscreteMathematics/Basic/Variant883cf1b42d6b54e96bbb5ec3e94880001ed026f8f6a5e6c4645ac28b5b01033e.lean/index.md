# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f09463bce183bc861639b790158b95847e51396f",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f09463bce183bc861639b790158b95847e51396f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/graph--0a7644817875229daf4f164f.md) | 86 | `declaration-track:0a7644817875229daf4f164f428d2b3580973bddab5958a30082b8fb9ebc139d` |
| 2 | `lemma` | [IsLink.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-edge-mem--443f3ce243d964c82058f322.md) | 115 | `result-track:443f3ce243d964c82058f322757aaed3e01733d8c1b7bec7b25cbffc282b95e7` |
| 3 | `lemma` | [IsLink.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-symm--bec8ab2fb35ca6c711becc6e.md) | 118 | `result-track:bec8ab2fb35ca6c711becc6ea63f0e1cdd67c09744b72d15fde6b23fb0e51f7c` |
| 4 | `lemma` | [IsLink.left_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-left-mem--7babd57b315970409cf1d8f6.md) | 121 | `result-track:7babd57b315970409cf1d8f6cbfaff2f59ee43fafc2c916ebb4cde78f864f4c9` |
| 5 | `lemma` | [IsLink.right_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-right-mem--ab4ecfcc774b5877a4b5f5be.md) | 124 | `result-track:ab4ecfcc774b5877a4b5f5bee0fccb1530235bab9d29c0524dcefeb779045345` |
| 6 | `lemma` | [isLink_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-comm--d27a6958ae4fec137930cee3.md) | 127 | `result-track:d27a6958ae4fec137930cee3b48589bc2fdf82f6436f1fa0474ff60360bbb4e0` |
| 7 | `lemma` | [exists_isLink_of_mem_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/exists-islink-of-mem-edgeset--85b2494dded97d72cc3acff2.md) | 130 | `result-track:85b2494dded97d72cc3acff206cd132f076c40d0a7e8e76a6dcb03181ed018d1` |
| 8 | `lemma` | [edgeSet_eq_setOf_exists_isLink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/edgeset-eq-setof-exists-islink--7cad0c3c6449a37113446a93.md) | 133 | `result-track:7cad0c3c6449a37113446a938d92081d33f74f5fa40b2e8efa7a8228276d741e` |
| 9 | `lemma` | [IsLink.left_eq_or_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-left-eq-or-eq--3d62e80ca8c0fbeb268927e9.md) | 136 | `result-track:3d62e80ca8c0fbeb268927e905be63b9f074f8bc1a97159be7284dd387878eb4` |
| 10 | `lemma` | [IsLink.right_eq_or_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-right-eq-or-eq--166fece656332bf2c25f8879.md) | 139 | `result-track:166fece656332bf2c25f8879171b33aeb94447b258e78a9d6da45ee82c8638fb` |
| 11 | `lemma` | [IsLink.left_eq_of_right_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-left-eq-of-right-ne--65f398f9ca7d9bcf210aae55.md) | 142 | `result-track:65f398f9ca7d9bcf210aae553aeb17c5894eddc6187100c476e8eecf12ce1189` |
| 12 | `lemma` | [IsLink.right_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-right-unique--57e5106f1439e54756a0ba58.md) | 146 | `result-track:57e5106f1439e54756a0ba582d3d795eea3848e33c6bf02f469f9b704484f497` |
| 13 | `lemma` | [IsLink.left_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-left-unique--c0cb597ecb6d6cc49933d86f.md) | 151 | `result-track:c0cb597ecb6d6cc49933d86f22bf99b80dd679a5084f2a0677d125f393a2930a` |
| 14 | `lemma` | [IsLink.eq_and_eq_or_eq_and_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-eq-and-eq-or-eq-and-eq--12d8005b038a4e7df3f30847.md) | 154 | `result-track:12d8005b038a4e7df3f30847ff02f282f4847f0d4bdd6f0a787f5d6db1368711` |
| 15 | `lemma` | [IsLink.isLink_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-islink-iff--5575dc2225997b3b6e8eea67.md) | 160 | `result-track:5575dc2225997b3b6e8eea67f0e8c82008ca154f762f5baf8e09442fa6b1de9b` |
| 16 | `lemma` | [IsLink.isLink_iff_sym2_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-islink-iff-sym2-eq--61f4aeedd51c4ef51dcea79a.md) | 167 | `result-track:61f4aeedd51c4ef51dcea79ad8d4f237881f73abee25531fe41037b66369857d` |
| 17 | `def` | [Inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc--9d4ed5b3f69223c4297ca722.md) | 176 | `declaration-track:9d4ed5b3f69223c4297ca722f03035adabdc174f142e34bb5f4abb6140e242a6` |
| 18 | `lemma` | [Inc.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-edge-mem--16b70b961e8fdb4fd667a1d0.md) | 179 | `result-track:16b70b961e8fdb4fd667a1d095ad6e044f98aaa0325903c139f0fe379af9f09f` |
| 19 | `lemma` | [Inc.vertex_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-vertex-mem--dc2614a40bba0fb1ed791620.md) | 183 | `result-track:dc2614a40bba0fb1ed791620f7dc89ec2adb68a7bc04daaf2b6b46e02d7372fa` |
| 20 | `lemma` | [IsLink.inc_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-inc-left--39250e7a26b6d92a5436ffe0.md) | 187 | `result-track:39250e7a26b6d92a5436ffe074bedbbf637c19246b56a11896755009a32c5d8b` |
| 21 | `lemma` | [IsLink.inc_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-inc-right--6ed65e7b5e50ba349a6804a1.md) | 191 | `result-track:6ed65e7b5e50ba349a6804a1e9bd2d11260faaca555bdce2f542af09b0d4a841` |
| 22 | `lemma` | [Inc.eq_or_eq_of_isLink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-eq-or-eq-of-islink--be306a73be47b0dcd75fe6dd.md) | 194 | `result-track:be306a73be47b0dcd75fe6dda46ad67959018d7c06b5da4107f236ef1fd63ca7` |
| 23 | `lemma` | [Inc.eq_of_isLink_of_ne_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-eq-of-islink-of-ne-left--401e5569418cb36a673cc2bd.md) | 197 | `result-track:401e5569418cb36a673cc2bd43cb8b4aab0149a6a63810c6310bc0b21ad8bfca` |
| 24 | `lemma` | [IsLink.isLink_iff_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-islink-iff-eq--17cc62fdf7d7961113eaac6a.md) | 200 | `result-track:17cc62fdf7d7961113eaac6a504242525f16856cd59d447df3d5840132fd3929` |
| 25 | `lemma` | [isLink_iff_inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-iff-inc--b79f27d0ad0c31df2fac6c7b.md) | 204 | `result-track:b79f27d0ad0c31df2fac6c7be17c5693e46fa9d210e2a7ec593a9d454e8dc97f` |
| 26 | `def` | [Inc.other](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-other--3069907c30536cec3ac8c536.md) | 215 | `declaration-track:3069907c30536cec3ac8c5365dd275574841cd42c36f8a2c8a1360f223119945` |
| 27 | `lemma` | [Inc.isLink_other](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-islink-other--cbea928bb5134593d46f0952.md) | 218 | `result-track:cbea928bb5134593d46f0952f893c10949c756cd2eb7df499f9a4aa95752abac` |
| 28 | `lemma` | [Inc.inc_other](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-inc-other--da4e2ded4a7e00a6aa60365c.md) | 222 | `result-track:da4e2ded4a7e00a6aa60365c861257d07670e9edd135d13d431e1ba883aa03c9` |
| 29 | `lemma` | [Inc.eq_or_eq_or_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-eq-or-eq-or-eq--3d062bab9ce521de0a8237a7.md) | 225 | `result-track:3d062bab9ce521de0a8237a7b9c254166a012382061d4d1dd22ebf3119ba1df9` |
| 30 | `def` | [IsLoopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat--ee53fed12939ad17f6125e0b.md) | 234 | `declaration-track:ee53fed12939ad17f6125e0b8f430c24ffd43a526bda9eb0c2053f4d894c4ea8` |
| 31 | `lemma` | [isLink_self_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-self-iff--d770ec08db3e07243faf87b2.md) | 237 | `result-track:d770ec08db3e07243faf87b23e2a2468cc10441efc7288de93ac62a2cc41dd38` |
| 32 | `lemma` | [IsLoopAt.inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat-inc--f7d8d68a8905fdb760718bb9.md) | 239 | `result-track:f7d8d68a8905fdb760718bb9f5ec5df356410d33556d6f96df3dc9149d4859cb` |
| 33 | `lemma` | [IsLoopAt.eq_of_inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat-eq-of-inc--ce51937eb40472abeaab45d0.md) | 242 | `result-track:ce51937eb40472abeaab45d03a069b125348a25acccbaeac28f1225d650a82ca` |
| 34 | `lemma` | [IsLoopAt.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat-edge-mem--ae1b71e1a3722f9a3298c2ee.md) | 246 | `result-track:ae1b71e1a3722f9a3298c2eed8bc0f138c7ffc6c0946b13e9087351556123aaf` |
| 35 | `lemma` | [IsLoopAt.vertex_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat-vertex-mem--4b421ed761b52dc9e65fe034.md) | 250 | `result-track:4b421ed761b52dc9e65fe0345e4e9dae66a65702952f8f31ef63e6f28e6c7667` |
| 36 | `def` | [IsNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isnonloopat--cbae9b27832321107d2f35ad.md) | 256 | `declaration-track:cbae9b27832321107d2f35adb7d498156435082108c3d6efcb275c0ce7eb1435` |
| 37 | `lemma` | [IsNonloopAt.inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isnonloopat-inc--5cf7ba0f42bea5243d8f2eea.md) | 258 | `result-track:5cf7ba0f42bea5243d8f2eeabe25b90b8396a9e62401b5029896104f9d1ffea5` |
| 38 | `lemma` | [IsNonloopAt.edge_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isnonloopat-edge-mem--c826c220484383dc5b6bc10f.md) | 262 | `result-track:c826c220484383dc5b6bc10f9642ea221ea72a188f147e6bb9f182464db25595` |
| 39 | `lemma` | [IsNonloopAt.vertex_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isnonloopat-vertex-mem--d46a48616ebfd6d4cacb117d.md) | 266 | `result-track:d46a48616ebfd6d4cacb117d862b1f4beeed27aa5232dd98bc9a3555a7b301d8` |
| 40 | `lemma` | [IsLoopAt.not_isNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat-not-isnonloopat--e9d9746710b29cc49ca87c8d.md) | 269 | `result-track:e9d9746710b29cc49ca87c8d5b6ef0bf797b85e0ba1fe8f3cfd86bbe5297dc84` |
| 41 | `lemma` | [IsNonloopAt.not_isLoopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isnonloopat-not-isloopat--f75f9cbc07e6bd0e326d3c85.md) | 274 | `result-track:f75f9cbc07e6bd0e326d3c851d9603645fb091541e3e8105b53047d72556b494` |
| 42 | `lemma` | [isNonloopAt_iff_inc_not_isLoopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isnonloopat-iff-inc-not-isloopat--6e04b05b2fdf7bec82f473c8.md) | 277 | `result-track:6e04b05b2fdf7bec82f473c8f5b3cf0c047fa546725064f23a413c7d8d49b317` |
| 43 | `lemma` | [isLoopAt_iff_inc_not_isNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/isloopat-iff-inc-not-isnonloopat--8bab468667323d4ae38ca79a.md) | 280 | `result-track:8bab468667323d4ae38ca79a412a81db276196ee7c91867dcb0529166c7fd494` |
| 44 | `lemma` | [Inc.isLoopAt_or_isNonloopAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/inc-isloopat-or-isnonloopat--559ed9546e1d4eb94a5a4f57.md) | 283 | `result-track:559ed9546e1d4eb94a5a4f57fa0f5f36dae71e21860974de995ecc88d4a19d09` |
| 45 | `def` | [Adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/adj--0c5cd8783d0e82a7085fcdee.md) | 289 | `declaration-track:0c5cd8783d0e82a7085fcdeebb5c9ade152b197e11584b60c38df29afcf75805` |
| 46 | `lemma` | [Adj.symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/adj-symm--348180966166f2c333a3f7ee.md) | 291 | `result-track:348180966166f2c333a3f7ee2e24d24cebc931ac909b302fbcf8d8e0c0d75ddb` |
| 47 | `lemma` | [adj_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/adj-comm--21ee3e8f8f7efb13e9aab820.md) | 294 | `result-track:21ee3e8f8f7efb13e9aab82067238e3574a389310660c4a834482678d9add101` |
| 48 | `lemma` | [Adj.left_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/adj-left-mem--cbbf0f69b3c5cad63b696f2f.md) | 298 | `result-track:cbbf0f69b3c5cad63b696f2f3d7a53fa50c1296c06d493870b515182cbf09dd7` |
| 49 | `lemma` | [Adj.right_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/adj-right-mem--138fc6b785964440e0f7e458.md) | 302 | `result-track:138fc6b785964440e0f7e4583d54d2976f1e4e19591746fb4a12a86fcd74b0ac` |
| 50 | `lemma` | [IsLink.adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/islink-adj--a7b322754b12ae7dccdcec02.md) | 305 | `result-track:a7b322754b12ae7dccdcec0277801a38a7744c891e2b1af716bc11a69857515a` |
| 51 | `lemma` | [mk_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/mk-eq-self--d038e46822cdb3e95e99c1cf.md) | 313 | `result-track:d038e46822cdb3e95e99c1cff5fa3222d9c5d059ffea8ce06e94a66f42d832ca` |
| 52 | `lemma` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/ext--770efc946c16e6c36d2205b1.md) | 326 | `result-track:770efc946c16e6c36d2205b137d1d840bbbcba62bca340a7474204762f6bfd81` |
| 53 | `lemma` | [ext_inc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variant883cf1b42d6b54e96bbb5ec3e94880001ed026f8f6a5e6c4645ac28b5b01033e.lean/declarations/ext-inc--20ede7408761dda0cd9ef5d4.md) | 335 | `result-track:20ede7408761dda0cd9ef5d4936a3da3320a19c56252b776dacfabd907af0d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
