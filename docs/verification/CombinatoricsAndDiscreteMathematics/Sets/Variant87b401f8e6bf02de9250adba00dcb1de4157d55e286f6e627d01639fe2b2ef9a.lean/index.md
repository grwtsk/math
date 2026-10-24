# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sets.Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81672c76f6ea0ec10b76b09a4422bdb9312e9e90",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81672c76f6ea0ec10b76b09a4422bdb9312e9e90`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset--9706b2c9d5e079bf595230b6.md) | 43 | `declaration-track:9706b2c9d5e079bf595230b6d7706106e02ac71123d1417cceadd247a90b835c` |
| 2 | `theorem` | [toFinset_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-congr--d84799d6efce63279304e847.md) | 47 | `result-track:d84799d6efce63279304e84755fde062564a1a199fc7070787575e224a83c344` |
| 3 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/mem-tofinset--fea6c29e2040eacc9bc8ae70.md) | 51 | `result-track:fea6c29e2040eacc9bc8ae70027a9124f42dae5cbb1cd7734c00b3dee202ae48` |
| 4 | `theorem` | [toFinset_ofFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-offinset--193c4d50dc191de42dc91d96.md) | 56 | `result-track:193c4d50dc191de42dc91d96c94a83c519d3f10ea2accdde55a76ab14a224a6a` |
| 5 | `def` | [decidableMemOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/decidablememoffintype--cc435849a0b290a5f7ab5884.md) | 64 | `declaration-track:cc435849a0b290a5f7ab58845ff955e7b7b23aaedbb68e82a49bdfdef4ad3586` |
| 6 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/coe-tofinset--361276c9a5795b78ab18f1e0.md) | 68 | `result-track:361276c9a5795b78ab18f1e0a2a3eb2d0846570d10aff632eaf54df4c1d03f02` |
| 7 | `theorem` | [toFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-nonempty--912228c2520150ddade04812.md) | 72 | `result-track:912228c2520150ddade04812a44eb93aa514569d5122ae03364ae24d8e66bd27` |
| 8 | `theorem` | [toFinset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-inj--7914322c6525bb938f9d2103.md) | 79 | `result-track:7914322c6525bb938f9d2103a6d1c93e18ae9653b83f6691d3dfb26d867aa4ff` |
| 9 | `theorem` | [toFinset_subset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-subset-tofinset--ad38eebf38efb9b338e3cf49.md) | 83 | `result-track:ad38eebf38efb9b338e3cf496e706412b996ddbd9d33960b0811e279cfdf36ff` |
| 10 | `theorem` | [toFinset_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-ssubset--8cef4c2acc74a0225d6ed082.md) | 87 | `result-track:8cef4c2acc74a0225d6ed0820f79a136acbd67f6020392759d57c48788d97128` |
| 11 | `theorem` | [subset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/subset-tofinset--eb740d200f376eabce0215de.md) | 91 | `result-track:eb740d200f376eabce0215deb3d93f44cb3aecfe04a0352ec42819ba713c0bc9` |
| 12 | `theorem` | [ssubset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/ssubset-tofinset--e9bca8055236e1c8199b8243.md) | 95 | `result-track:e9bca8055236e1c8199b824339aaef7218322b481ff0a462a43330980d5c6e80` |
| 13 | `theorem` | [toFinset_ssubset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-ssubset-tofinset--7ce5f384c4266227175c0a58.md) | 99 | `result-track:7ce5f384c4266227175c0a58f4d5475e7651ca547fe22892d6fcc4d586616b13` |
| 14 | `theorem` | [toFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-subset--84fa8f4688fab5aab0e72828.md) | 103 | `result-track:84fa8f4688fab5aab0e72828c8c4fc7f25e1edd0ec6eccb4e0ca8996927d2f56` |
| 15 | `theorem` | [disjoint_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/disjoint-tofinset--eb827a7389b3e8b9b7fc1f90.md) | 112 | `result-track:eb827a7389b3e8b9b7fc1f90e755585eafba1bf59306a015bef91d3fb1144f35` |
| 16 | `theorem` | [toFinset_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-nontrivial--38b9bf94417afa5542283a44.md) | 116 | `result-track:38b9bf94417afa5542283a44111e80ea55d78197beb7870dd06f51397efa2fa2` |
| 17 | `theorem` | [subsingleton_toFinset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/subsingleton-tofinset-iff--8a77da334ed87d4e2110deaa.md) | 119 | `result-track:8a77da334ed87d4e2110deaa17fd916c5e0266ac6f5b0d44fba49249284475fd` |
| 18 | `theorem` | [toFinset_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-inter--b933f16b2dd93ed347d824bb.md) | 127 | `result-track:b933f16b2dd93ed347d824bb13fafad7a69f7516bda93db356884f3521ddf0a1` |
| 19 | `theorem` | [toFinset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-union--923709af4f419e67b1314bbc.md) | 132 | `result-track:923709af4f419e67b1314bbc7f08a6922fcdc49d5a67a1f4e203c3346a8400b8` |
| 20 | `theorem` | [toFinset_sdiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-sdiff--8f956e247c0aac307cb305e3.md) | 137 | `result-track:8f956e247c0aac307cb305e36130a07444adff894d695ca9ac340f2e8839a48c` |
| 21 | `theorem` | [toFinset_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-symmdiff--6228d8e08ed8cea65bd52f0a.md) | 145 | `result-track:6228d8e08ed8cea65bd52f0a1d50e88840cfa211081f9fb4082085438e03447e` |
| 22 | `theorem` | [toFinset_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-compl--8b7b382adba0fbe181ae850b.md) | 151 | `result-track:8b7b382adba0fbe181ae850b5f90b89b3c6c49855cf1829e0b1eef00aa519dfc` |
| 23 | `theorem` | [toFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-empty--f1a09a19a0db15b4f941627e.md) | 158 | `result-track:f1a09a19a0db15b4f941627e1b9a0d7701ed1aff3f0d43a37f81028009906b50` |
| 24 | `theorem` | [toFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-univ--b065bd0f9ff709a425f7e98c.md) | 163 | `result-track:b065bd0f9ff709a425f7e98c3debed73c5f500bdb165cf15e7fa670e9044c7d7` |
| 25 | `theorem` | [toFinset_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-eq-empty--35e8cb4ab6189b4e03ee023e.md) | 169 | `result-track:35e8cb4ab6189b4e03ee023e0ff348e52be97cdd39adede85bcefdde1f7f5c71` |
| 26 | `theorem` | [toFinset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-eq-univ--7609f616746fe533da0ca423.md) | 174 | `result-track:7609f616746fe533da0ca423d8abd3037dfcaff196352589f700a43268fc84a8` |
| 27 | `theorem` | [toFinset_ofPred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-ofpred--3fa0c240ccf9d065e7bb95ef.md) | 178 | `result-track:3fa0c240ccf9d065e7bb95efb81e8e838431aa1f163c8da000e170327d6712d3` |
| 28 | `theorem` | [toFinset_ssubset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-ssubset-univ--ba1ddd269d0441489818fac0.md) | 185 | `result-track:ba1ddd269d0441489818fac06671f5647ed5957719f38796a523fa09a42c800e` |
| 29 | `theorem` | [toFinset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-image--13ae9e4eaac6f0b8c026d794.md) | 189 | `result-track:13ae9e4eaac6f0b8c026d79452d52244b14fa0151ed396d9711304b0039f270b` |
| 30 | `theorem` | [toFinset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-range--c3f5809ef50726dd3211aad5.md) | 194 | `result-track:c3f5809ef50726dd3211aad50bff2aa8a6480a1028fd11deed3110a82a7b06f7` |
| 31 | `theorem` | [toFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-singleton--61f703d4ae94d089e3f17ec1.md) | 200 | `result-track:61f703d4ae94d089e3f17ec10a5345bd9e5f3ab81e3179f487e9a158e93a6450` |
| 32 | `theorem` | [toFinset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/tofinset-insert--565425fef5df6680ab101f1b.md) | 205 | `result-track:565425fef5df6680ab101f1b142147002f890bdaae25fbcbfa2c288a9f445e5e` |
| 33 | `theorem` | [filter_mem_univ_eq_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/filter-mem-univ-eq-tofinset--f2ae42d84f4a66962515b5b3.md) | 210 | `result-track:f2ae42d84f4a66962515b5b3fbdcd027a36f1e0b3e50b1f4082954eb7ccb1c0b` |
| 34 | `theorem` | [Finset.toFinset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finset-tofinset-coe--57167f1b7c9a3b4c28b26616.md) | 218 | `result-track:57167f1b7c9a3b4c28b2661653d3e5e81fd26b843151fe546139ef8379528997` |
| 35 | `instance` | [Finset.fintypeCoeSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finset-fintypecoesort--55143b57fa0649e7ed45e348.md) | 226 | `declaration-track:55143b57fa0649e7ed45e3489eb7571a94ef2892dc47cada1e72534244ea82ad` |
| 36 | `theorem` | [Finset.univ_eq_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finset-univ-eq-attach--e2558146323b76aa432b49f7.md) | 230 | `result-track:e2558146323b76aa432b49f71814371ba794611be09c8750ee6f3f910a10b422` |
| 37 | `theorem` | [Fintype.coe_image_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/fintype-coe-image-univ--6a3b7da90f45fc5e96dd1c9d.md) | 235 | `result-track:6a3b7da90f45fc5e96dd1c9df2ff41e4d95541e352615e54aea0ee8d243ee3a6` |
| 38 | `instance` | [List.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/list-subtype-fintype--b65cde97ed04023386de2ec5.md) | 239 | `declaration-track:b65cde97ed04023386de2ec574b60ce2bf91a7dd9ae0ae6ae496e378f75af883` |
| 39 | `instance` | [Multiset.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/multiset-subtype-fintype--90f19c7a0989adc2600af870.md) | 242 | `declaration-track:90f19c7a0989adc2600af870018407127d3c47bf0a92bf744330511547f54384` |
| 40 | `instance` | [Finset.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finset-subtype-fintype--eec15e6088a449acfc896845.md) | 245 | `declaration-track:eec15e6088a449acfc8968456a2ea342430e0f05cf258dd37b54d8969f4bbfe5` |
| 41 | `instance` | [FinsetCoe.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finsetcoe-fintype--28b171b4f6f95bf867299ed8.md) | 248 | `declaration-track:28b171b4f6f95bf867299ed8a7d40fa32dbf0222621db6ceb397d9e4e85c266c` |
| 42 | `theorem` | [Finset.attach_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finset-attach-eq-univ--03406868a8d0d2a05cfcab47.md) | 251 | `result-track:03406868a8d0d2a05cfcab47117308727a0612f0836576b2fbdf85e659503092` |
| 43 | `instance` | [Prop.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/prop-fintype--c087db1e65c60fcdce286803.md) | 254 | `declaration-track:c087db1e65c60fcdce286803c9cfdeb2c2381ed3803d2de42b79948b98e6909d` |
| 44 | `theorem` | [Fintype.univ_Prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/fintype-univ-prop--aa8b1831298afced9f2de5e1.md) | 258 | `result-track:aa8b1831298afced9f2de5e1ee960dd773ca2b9b0aaa0b1d8de7c56168dd4e3f` |
| 45 | `instance` | [Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/subtype-fintype--78b728b8128309cb0cd28098.md) | 261 | `declaration-track:78b728b8128309cb0cd28098766fda6a8cf5d78a818f8b145c7b7605c3fdf409` |
| 46 | `def` | [setFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/setfintype--769da2cdab12fb331f490134.md) | 266 | `declaration-track:769da2cdab12fb331f4901348da6e805780e98ce9e323e801278f4d8a037f5c1` |
| 47 | `def` | [finsetEquivSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finsetequivset--6125918807b02c348bafab0a.md) | 274 | `declaration-track:6125918807b02c348bafab0a58ad2a1104dd71e83fd3cde403a928c95c4f7879` |
| 48 | `lemma` | [coe_finsetEquivSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/coe-finsetequivset--e1b4b051830b37b9ccbd1106.md) | 280 | `result-track:e1b4b051830b37b9ccbd11066ff9c01eb8b4b1d94e96cc4c7e09747e94b2d8e1` |
| 49 | `lemma` | [finsetEquivSet_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finsetequivset-apply--381b121c8641bed4e6ff2be8.md) | 282 | `result-track:381b121c8641bed4e6ff2be818a7273a4563be9b357d26f5978f13b1bb7b0747` |
| 50 | `lemma` | [finsetEquivSet_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finsetequivset-symm-apply--1387d33112cf091f85806f2e.md) | 284 | `result-track:1387d33112cf091f85806f2ecbcda6e652bd48ca44827e6ef6c434eae5e2ba75` |
| 51 | `def` | [finsetOrderIsoSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/finsetorderisoset--bac0ad88ff8ac1a827a2386b.md) | 290 | `declaration-track:bac0ad88ff8ac1a827a2386b7873d2d5a8d05da28dea92aed3d22f9038603cf1` |
| 52 | `lemma` | [coe_finsetOrderIsoSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/coe-finsetorderisoset--e223018f39e4b317ac8ec86c.md) | 295 | `result-track:e223018f39e4b317ac8ec86cc4e20bd65baf0a6febf0be79bc697f028099089a` |
| 53 | `lemma` | [coe_finsetOrderIsoSet_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/coe-finsetorderisoset-symm--df91aeb68db4f8bde9c66569.md) | 297 | `result-track:df91aeb68db4f8bde9c6656941d9daebd9bbd162d0c1e6acebb1fad48ab21204` |
| 54 | `theorem` | [mem_image_univ_iff_mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/mem-image-univ-iff-mem-range--a2960e18b80fd13062495d44.md) | 302 | `result-track:a2960e18b80fd13062495d4428fb56026385adfaafa4b4d5c595d63d59c8bea1` |
| 55 | `elab` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/elab--9aaa3091e60b1bc73c196c20.md) | 315 | `declaration-track:9aaa3091e60b1bc73c196c20a653070ff8ebdef5fa86e0bf3e45fadec20bbe85` |
| 56 | `def` | [precheckFinsetStx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant87b401f8e6bf02de9250adba00dcb1de4157d55e286f6e627d01639fe2b2ef9a.lean/declarations/precheckfinsetstx--afda4fddfb299edbe4454f54.md) | 327 | `declaration-track:afda4fddfb299edbe4454f54a91ca8549c1da806debf2830206635563b653b37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
