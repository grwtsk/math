# Verification target: GRWTSK.Algebra.LinearAlgebra.Lattice.Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59f21b8297b98558b4442f28eb107a1e90b12c5f",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59f21b8297b98558b4442f28eb107a1e90b12c5f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.PUnitInstances` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/instance--7e252adfe5a0f86899f6c625.md) | 52 | `declaration-track:7e252adfe5a0f86899f6c62533feac76c055f07c5a5f029d0ff2bd36d77472a3` |
| 2 | `instance` | [inhabited'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/inhabited--e3957e50326c5c231c7ad3e9.md) | 57 | `declaration-track:e3957e50326c5c231c7ad3e9023d0fc2bb24004be91b864e80e9288c84ce4135` |
| 3 | `theorem` | [bot_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/bot-coe--269a2c18327eb6770f350300.md) | 62 | `result-track:269a2c18327eb6770f350300260e8d6e392499a885b34b940c8d9374e23306d5` |
| 4 | `theorem` | [bot_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/bot-toaddsubmonoid--88ca3745a6e61f5fbfcca1e6.md) | 67 | `result-track:88ca3745a6e61f5fbfcca1e63e150b99d7209f9b450b4bb1ce662fb90acebfce` |
| 5 | `theorem` | [restrictScalars_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/restrictscalars-bot--9b28ef68dc884b26b6fe7483.md) | 76 | `result-track:9b28ef68dc884b26b6fe748336b1725344621811c22b52e031f882a0fbeed763` |
| 6 | `theorem` | [mem_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-bot--b0d25a1738545a1df2e082c3.md) | 81 | `result-track:b0d25a1738545a1df2e082c3995264820b3e8f8faca11ef904985402f0c8825d` |
| 7 | `theorem` | [restrictScalars_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/restrictscalars-eq-bot-iff--b77d0f0cd5c60e519d5166a0.md) | 88 | `result-track:b77d0f0cd5c60e519d5166a0a68490dc856f55026cc7616ac1c954c3da9033ab` |
| 8 | `instance` | [uniqueBot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/uniquebot--dd4a95cba6263767a037700e.md) | 92 | `declaration-track:dd4a95cba6263767a037700e789544469551cf28b6342500b060c0b26f8082dd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/instance--2a12a3a6704c616e344ccef4.md) | 96 | `declaration-track:2a12a3a6704c616e344ccef4a173990c4194cb48ad6b561a280e70757a13b0c8` |
| 10 | `theorem` | [eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/eq-bot-iff--3233c8f400efb0eaee59099b.md) | 100 | `result-track:3233c8f400efb0eaee59099b52a56f65d86cbb3fd477e2c8a90d0ef15c5f4f65` |
| 11 | `theorem` | [bot_ext](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/bot-ext--04aa82b29a4721bbeb51e089.md) | 106 | `result-track:04aa82b29a4721bbeb51e089ba5a0e50dbc789da88940d5753a49f8f10ebcc5d` |
| 12 | `theorem` | [ne_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/ne-bot-iff--ebbd183c30c58f2edc3cdb09.md) | 112 | `result-track:ebbd183c30c58f2edc3cdb0939f163a92fbfce3a4578af106b46a449f3a4ed48` |
| 13 | `theorem` | [nonzero_mem_of_bot_lt](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/nonzero-mem-of-bot-lt--e6208ffd93ce260785364fad.md) | 116 | `result-track:e6208ffd93ce260785364fad40210fc7c0b1cc3fe68a51ecd9616b29d3883b60` |
| 14 | `theorem` | [exists_mem_ne_zero_of_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/exists-mem-ne-zero-of-ne-bot--6da5fac50785c4553d66dec2.md) | 121 | `result-track:6da5fac50785c4553d66dec22e53750a6428b8c35bf2b8f05854abc09a613111` |
| 15 | `def` | [botEquivPUnit](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/botequivpunit--c3cd11e42571245a6cb6885c.md) | 129 | `declaration-track:c3cd11e42571245a6cb6885c83f30019d8606fb1be5924f45a19b96cd0b4e037` |
| 16 | `theorem` | [eq_bot_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/eq-bot-of-subsingleton--fdaa7b6489cd2b173fdf4cc0.md) | 138 | `result-track:fdaa7b6489cd2b173fdf4cc009f4bf77df14cde372cdb4aa0b771f2f92778c76` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/instance--ab586567c870f3b39047a744.md) | 145 | `declaration-track:ab586567c870f3b39047a744d489cb9d228aac7a9693d0627d29c5418764c383` |
| 18 | `theorem` | [top_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/top-coe--8b55881a2eb8ef362525e9de.md) | 151 | `result-track:8b55881a2eb8ef362525e9defecd45677ca74994a742e7d05ff52162a7c64fab` |
| 19 | `theorem` | [top_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/top-toaddsubmonoid--766f853073dc5c8f4575c040.md) | 156 | `result-track:766f853073dc5c8f4575c040d80cf8cd87f384e72161b3ce46c1e74ef9e0fb79` |
| 20 | `theorem` | [mem_top](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-top--182e70809a9a9d84a8191d8a.md) | 161 | `result-track:182e70809a9a9d84a8191d8a624b5656c1a25539e077462192af44c880aaec72` |
| 21 | `theorem` | [restrictScalars_top](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/restrictscalars-top--58ba70da1a59e6fb237c7629.md) | 170 | `result-track:58ba70da1a59e6fb237c7629ffe85c99847ef178ff70ce16c2a0e4de616f8fcf` |
| 22 | `theorem` | [restrictScalars_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/restrictscalars-eq-top-iff--faf7fe4c894f10d0174b5620.md) | 177 | `result-track:faf7fe4c894f10d0174b5620c6252feb5dbb1d682854bc4bd4d1871a10ec5d20` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/instance--c93028d30eced15d0a617b38.md) | 181 | `declaration-track:c93028d30eced15d0a617b38a7ac910031d49c43e04046747cdcacd5fe0e24f9` |
| 24 | `theorem` | [eq_top_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/eq-top-iff--7aec79ff25cae630abb080c8.md) | 185 | `result-track:7aec79ff25cae630abb080c853edc7d9bf2bf4dddca3e98c28697e0b3d868ca9` |
| 25 | `def` | [topEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/topequiv--122cea2bdd425bcf68b93b61.md) | 193 | `declaration-track:122cea2bdd425bcf68b93b6181bec00826e695ccb67aeec7132dcda5fb081e0a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/instance--e4a6ca1ab7dc0256288966d5.md) | 202 | `declaration-track:e4a6ca1ab7dc0256288966d58718fcde5596e53640457487f20967b703c9ef89` |
| 27 | `theorem` | [sInf_le'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/sinf-le--3f4c9f7d458ebae1ceb413f1.md) | 209 | `result-track:3f4c9f7d458ebae1ceb413f10dd87011147e1a066d646db2efc0efb4919d618b` |
| 28 | `theorem` | [le_sInf'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/le-sinf--a56f999128e40c1aab117f90.md) | 212 | `result-track:a56f999128e40c1aab117f9023c5881ec2e0f82d97f38bd7099f2e47ad03009f` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/instance--f4ace3a309eabc7e882757eb.md) | 215 | `declaration-track:f4ace3a309eabc7e882757ebad38e7d32b08f5e6795c44b7d5617dc6df0054c5` |
| 30 | `instance` | [completeLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/completelattice--18885ec3f38164c66460b710.md) | 222 | `declaration-track:18885ec3f38164c66460b7100b94eeb92f9e130a0273aef963521c7a80292ea7` |
| 31 | `theorem` | [inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/inf-coe--5420e4909ea8cb37a2b91f49.md) | 240 | `result-track:5420e4909ea8cb37a2b91f4996cbd6232620ef55eb2e08891da3d054a7de3042` |
| 32 | `theorem` | [mem_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-inf--06d01116f253019f688e7724.md) | 245 | `result-track:06d01116f253019f688e77243e3d36ecc81a57462781aa5218706df300aea71f` |
| 33 | `theorem` | [sInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/sinf-coe--9b3d429ac45f0c57d0313ff2.md) | 250 | `result-track:9b3d429ac45f0c57d0313ff2d8ac93338487ff7bc491cb65d890b0fce47e9130` |
| 34 | `theorem` | [finset_inf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/finset-inf-coe--a8060b7cb6d20e4bd9ebee09.md) | 255 | `result-track:a8060b7cb6d20e4bd9ebee09b0a067a9332b9f5fd332f3729c57a57f73fa4cdd` |
| 35 | `theorem` | [iInf_coe](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/iinf-coe--a549ba7c973f41ce130623ab.md) | 265 | `result-track:a549ba7c973f41ce130623abe87995075bf50f6876e28860b50fb4393dcf0218` |
| 36 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-sinf--c8c9c5043fee2f1eaa5f22bd.md) | 270 | `result-track:c8c9c5043fee2f1eaa5f22bde53bd2bbadcf281696daeeb5fcdca894a9f1dcaa` |
| 37 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-iinf--98aa90fed0fa1397d3526024.md) | 275 | `result-track:98aa90fed0fa1397d3526024ad6a7e28e43ce0deea90d36e9cf174315c8335f7` |
| 38 | `theorem` | [mem_finset_inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-finset-inf--f960e9dff1a971ea0a0710f4.md) | 280 | `result-track:f960e9dff1a971ea0a0710f49a3457cf5980ec28e715825107feccfb98f557af` |
| 39 | `theorem` | [mem_sup_left](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-sup-left--e88dc024faf4bc72d3b7609c.md) | 285 | `result-track:e88dc024faf4bc72d3b7609c55d409bfb5179db5ea70d77ed15b6226b077b465` |
| 40 | `theorem` | [mem_sup_right](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-sup-right--020eeaceef9f112af54479fc.md) | 291 | `result-track:020eeaceef9f112af54479fcd14c27fb20f901bd184e0c02cb2079b21d4cbbb2` |
| 41 | `theorem` | [add_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/add-mem-sup--95a31db2536506ee84087c56.md) | 297 | `result-track:95a31db2536506ee84087c56a29f49b67dafd41118a2be488504c8e4c9dd6bfc` |
| 42 | `theorem` | [sub_mem_sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/sub-mem-sup--0e38c0642d76decfc206763c.md) | 301 | `result-track:0e38c0642d76decfc206763c4314fa8255f137055afebd7605b20ec54136abc4` |
| 43 | `theorem` | [mem_iSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-isup-of-mem--e82a03221604b08e33beb910.md) | 307 | `result-track:e82a03221604b08e33beb910e3e321df2c9755185ba257fc982a84e7ce11b3e6` |
| 44 | `theorem` | [sum_mem_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/sum-mem-isup--8cba206c75dd5bb31ce187b7.md) | 314 | `result-track:8cba206c75dd5bb31ce187b7059093efa38f6ac5c9cea6d550da3becb5d507e2` |
| 45 | `theorem` | [sum_mem_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/sum-mem-bisup--236c2bcfedc6c705deb9d4ae.md) | 319 | `result-track:236c2bcfedc6c705deb9d4aeceaf5c72898189f892f1925a8834131ac9a01e3c` |
| 46 | `theorem` | [mem_sSup_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/mem-ssup-of-mem--2b4aae839b65a2e08a1f646f.md) | 327 | `result-track:2b4aae839b65a2e08a1f646f5103e5ddfc051c7728624914c4ee882f1a1f317c` |
| 47 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/disjoint-def--9ffa451ba25148fe7d82cb3e.md) | 334 | `result-track:9ffa451ba25148fe7d82cb3e8aa6bba5369348dd29c4487bbbb261bab385b737` |
| 48 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/disjoint-def--0b52454d1ed4e572331f2b80.md) | 338 | `result-track:0b52454d1ed4e572331f2b8070669a22e2ef58fa9bbdd1ec241defffa1afe1d5` |
| 49 | `theorem` | [eq_zero_of_coe_mem_of_disjoint](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/eq-zero-of-coe-mem-of-disjoint--7eba83524d3996fc72e02f92.md) | 344 | `result-track:7eba83524d3996fc72e02f926d45a42ffcff0096c59c1b18e9c4f585788baa04` |
| 50 | `def` | [AddSubmonoid.toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubmonoid-tonatsubmodule--ea5922b5d87bb158d5e6ceba.md) | 354 | `declaration-track:ea5922b5d87bb158d5e6ceba4c82c21d32fb26c998f766b2a92b9d73d88900d8` |
| 51 | `theorem` | [AddSubmonoid.toNatSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubmonoid-tonatsubmodule-symm--e9771e9c0a4ccd4ffc7997a6.md) | 363 | `result-track:e9771e9c0a4ccd4ffc7997a61a31052ca325b263fd95db780f9ebad72b671551` |
| 52 | `theorem` | [AddSubmonoid.coe_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubmonoid-coe-tonatsubmodule--f70af684f3c11ebb1ca00880.md) | 369 | `result-track:f70af684f3c11ebb1ca00880efe7afdcad95fafca8e3ae7d5af4fe14d3a395e9` |
| 53 | `theorem` | [AddSubmonoid.toNatSubmodule_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubmonoid-tonatsubmodule-toaddsubmonoid--da8820a92d0ac420b5ecd874.md) | 375 | `result-track:da8820a92d0ac420b5ecd874ed87c05da916809972600dbcc69bb463252eafc5` |
| 54 | `theorem` | [Submodule.toAddSubmonoid_toNatSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/submodule-toaddsubmonoid-tonatsubmodule--5ff01c4b93e0a4b2efecfa74.md) | 381 | `result-track:5ff01c4b93e0a4b2efecfa748dcdd3fe0dc37f4e27820899ab976d382629c3f1` |
| 55 | `def` | [AddSubgroup.toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubgroup-tointsubmodule--7de4391d45aa4ccb0b7d2e87.md) | 396 | `declaration-track:7de4391d45aa4ccb0b7d2e87b5ed07a3697f5a631500203358bc941c2cae4cea` |
| 56 | `theorem` | [AddSubgroup.toIntSubmodule_symm](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubgroup-tointsubmodule-symm--5802935a3838c9455b753a4b.md) | 405 | `result-track:5802935a3838c9455b753a4bda509d3cfefbbb2f9ee691f7923ae2e8b0a68e00` |
| 57 | `theorem` | [AddSubgroup.coe_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubgroup-coe-tointsubmodule--5a1d70a396527de7520606a1.md) | 411 | `result-track:5a1d70a396527de7520606a1ae84e5e73239ce9d09ae0649260d99ca28eeaa9e` |
| 58 | `theorem` | [AddSubgroup.toIntSubmodule_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/addsubgroup-tointsubmodule-toaddsubgroup--a1d1456defb3a345c914412c.md) | 417 | `result-track:a1d1456defb3a345c914412c2d6984c540e567a9400f61df6121bf1743d45af7` |
| 59 | `theorem` | [Submodule.toAddSubgroup_toIntSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant50f7e337d8d27a4321177358f02f0d327ed9ce9fe166f678451c83056e0a0e53.lean/declarations/submodule-toaddsubgroup-tointsubmodule--a871b331d1583e0d0b7b549f.md) | 423 | `result-track:a871b331d1583e0d0b7b549f64112bfdbf37c7c63a327c656f58bddbd9268329` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
