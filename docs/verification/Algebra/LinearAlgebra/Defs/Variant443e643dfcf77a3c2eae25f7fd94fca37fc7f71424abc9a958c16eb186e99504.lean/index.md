# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da0528ef0926fd84b5939df3be865140f04ba879",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da0528ef0926fd84b5939df3be865140f04ba879`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean.json)

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
| 1 | `def` | [linearEquivFunOnFinite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/linearequivfunonfinite--5f16717ef90c315ad136f88c.md) | 61 | `declaration-track:5f16717ef90c315ad136f88cc383d99f5ba78d5ed415d138d6d7f81d230022e5` |
| 2 | `theorem` | [linearEquivFunOnFinite_single](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/linearequivfunonfinite-single--be0591ae65f8506bc71b406d.md) | 68 | `result-track:be0591ae65f8506bc71b406dcf873c4addbca2dae3ed9bd4096ebe90c29e7ee8` |
| 3 | `theorem` | [linearEquivFunOnFinite_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/linearequivfunonfinite-symm-single--7cea3c8fed97594984189a68.md) | 73 | `result-track:7cea3c8fed97594984189a68637f7eabe60c5d1b4ac960b2c77c954fa420de3b` |
| 4 | `theorem` | [linearEquivFunOnFinite_symm_coe](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/linearequivfunonfinite-symm-coe--c937856bf81b6344b20fa7ab.md) | 78 | `result-track:c937856bf81b6344b20fa7ab8fb32feae8f84b4f3e400b95a95bc5b93c76d3ef` |
| 5 | `theorem` | [linearEquivFunOnFinite_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/linearequivfunonfinite-symm-apply--6024f8fc169ddcd3dcce18eb.md) | 82 | `result-track:6024f8fc169ddcd3dcce18eb9a65c8f7c58a94a019f56a37a890e4ead587e332` |
| 6 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lsingle--70a01d5a01c581c8904678e2.md) | 88 | `declaration-track:70a01d5a01c581c8904678e226bf4283491aea6578edc8349921cdf4e0ffed9d` |
| 7 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lhom-ext--b400af6bb766a17d4449f74a.md) | 92 | `result-track:b400af6bb766a17d4449f74a9529dd6ed203b7c5190bd653a7c42ed348affb52` |
| 8 | `theorem` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lhom-ext--f382ece9b65692f9e782b958.md) | 102 | `result-track:f382ece9b65692f9e782b958ac00cde1f562f263d72f16b836c468a4aa2ce262` |
| 9 | `def` | [lapply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lapply--fd809c7a5698593869cc5e2a.md) | 107 | `declaration-track:fd809c7a5698593869cc5e2ab5f3f452b30981ce0eaf898641f1e7617e3b1415` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/instance--84d336dc5517c1cd51c82fa0.md) | 110 | `declaration-track:84d336dc5517c1cd51c82fa0d122d060e00f44a10497c79c6af12c7a6911fb28` |
| 11 | `def` | [lsubtypeDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lsubtypedomain--8f6e0df0fc8a8ad2c91f2ff5.md) | 118 | `declaration-track:8f6e0df0fc8a8ad2c91f2ff5447db283a7ee2693971ed56d59cd1ec998b33f00` |
| 12 | `theorem` | [lsubtypeDomain_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lsubtypedomain-apply--3ce81168b9dc892e81fd5eb1.md) | 123 | `result-track:3ce81168b9dc892e81fd5eb1f499092df81e190999831d4c6d197d777eaf04b6` |
| 13 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lsingle-apply--0712cf482f4eea98c9ec28df.md) | 130 | `result-track:0712cf482f4eea98c9ec28df2de8cece33de5d19e15c599b951a91c46309fb8b` |
| 14 | `theorem` | [lapply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lapply-apply--5cca8403d59d16058ce0987a.md) | 134 | `result-track:5cca8403d59d16058ce0987a886e530abc7f9b5737c1503e80914a5ddb02cf2b` |
| 15 | `theorem` | [lapply_comp_lsingle_same](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lapply-comp-lsingle-same--a9dd2909fe5c7771bb0144c5.md) | 138 | `result-track:a9dd2909fe5c7771bb0144c539a30970695b0cf5e1513309995e8a0912c9edbd` |
| 16 | `theorem` | [lapply_comp_lsingle_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lapply-comp-lsingle-of-ne--77fc7a0cc9b93f26e084bb86.md) | 141 | `result-track:77fc7a0cc9b93f26e084bb8658ba43fc3a9bdd6a56b991b8dbd629138a95a843` |
| 17 | `def` | [lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lmapdomain--e53db828863099d1bca84ef8.md) | 149 | `declaration-track:e53db828863099d1bca84ef8fa5a7db7e07e8f5b8cff67cc151fc6ebe693ba13` |
| 18 | `theorem` | [lmapDomain_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lmapdomain-apply--411024c61064a63430ce2b2c.md) | 155 | `result-track:411024c61064a63430ce2b2c5233fedce606934823dfbbd7f4736745dcb7b822` |
| 19 | `lemma` | [coe_lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/coe-lmapdomain--1b04f79f12854c4574e43348.md) | 159 | `result-track:1b04f79f12854c4574e433480da9e656a89b717c761fc1a7f63a2fd6e0f41912` |
| 20 | `theorem` | [lmapDomain_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lmapdomain-id--edd631ddfa29cd205a61f93c.md) | 163 | `result-track:edd631ddfa29cd205a61f93c87a2c29b097179f829915dbfca358febd6b5b90f` |
| 21 | `theorem` | [lmapDomain_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lmapdomain-comp--8d33077f1160ff567995112e.md) | 166 | `result-track:8d33077f1160ff567995112e8f00605068b1293948642508508f5af4ef2c68f8` |
| 22 | `def` | [mapDomain.linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/mapdomain-linearequiv--64837e29b833b57e9944bb02.md) | 171 | `declaration-track:64837e29b833b57e9944bb02e9f6fea945c6a3c59e1d438728f847c4cecf4dc7` |
| 23 | `theorem` | [mapDomain.coe_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/mapdomain-coe-linearequiv--309b12ddc6d7fb4d56029814.md) | 179 | `result-track:309b12ddc6d7fb4d560298143c4c2bceec63f78b9080db56db4977b8fcbdf669` |
| 24 | `theorem` | [mapDomain.toLinearMap_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/mapdomain-tolinearmap-linearequiv--d3d7581b95172ca2d2df8270.md) | 182 | `result-track:d3d7581b95172ca2d2df8270d9a9de8af78dcbfd854c1339cec17ed0bae7166d` |
| 25 | `theorem` | [mapDomain.linearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/mapdomain-linearequiv-symm--2d49cf81cad863300c6e82b6.md) | 185 | `result-track:2d49cf81cad863300c6e82b62f8a93c646b1140efe8765d1e8cfd9195068e80a` |
| 26 | `def` | [lcomapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/lcomapdomain--63975470c87fa15888fbcfb5.md) | 200 | `declaration-track:63975470c87fa15888fbcfb5702f8de72ea05e9006bc043872b15cfff59cdb1a` |
| 27 | `theorem` | [leftInverse_lcomapDomain_mapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/leftinverse-lcomapdomain-mapdomain--ba18af41d9b8b4c9ee52e0ad.md) | 205 | `result-track:ba18af41d9b8b4c9ee52e0adf9045cde499ecb9584a4644937f141c5ac527755` |
| 28 | `def` | [mapRange.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearmap--3f04e4cb2a022f436f33a2bb.md) | 213 | `declaration-track:3f04e4cb2a022f436f33a2bbe6e1c1d4c598d89f2f7eee1970979eecf7fc69b9` |
| 29 | `theorem` | [mapRange.linearMap_id](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearmap-id--3aa766b8ba5e1febfd023254.md) | 219 | `result-track:3aa766b8ba5e1febfd023254887ebeafa6601270fe349c9834c9890460057229` |
| 30 | `theorem` | [mapRange.linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearmap-comp--7d2f1cfe5b93158660c63e75.md) | 223 | `result-track:7d2f1cfe5b93158660c63e759903df4ce7ef7bcbe24cc310cd14a089757760b1` |
| 31 | `theorem` | [mapRange.linearMap_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearmap-toaddmonoidhom--5348cd960976776c5f368e9f.md) | 229 | `result-track:5348cd960976776c5f368e9f19e1167080e2aa408d6c5ddd34aac78e5e1f3838` |
| 32 | `def` | [mapRange.linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearequiv--d10e8efc8818b66b65be1dd6.md) | 242 | `declaration-track:d10e8efc8818b66b65be1dd6e935db665e2f0e8e1f100c4ccba408a222c2c2e2` |
| 33 | `theorem` | [mapRange.linearEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearequiv-refl--a739d38f0f6d1740c0ee367b.md) | 249 | `result-track:a739d38f0f6d1740c0ee367bad279907cdb1b9794a7e8e9539789b124dc42fdb` |
| 34 | `theorem` | [mapRange.linearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearequiv-trans--5e569f75a26f0808886e5d8e.md) | 253 | `result-track:5e569f75a26f0808886e5d8ee044a13d1d85e4c5d335397acc6a16327b651aa0` |
| 35 | `theorem` | [mapRange.linearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearequiv-symm--4b7fec8104c6485bdd4f3da5.md) | 259 | `result-track:4b7fec8104c6485bdd4f3da5b8ed4c0c2217832ec627766be62ceb6af119ba6b` |
| 36 | `theorem` | [mapRange.linearEquiv_toAddEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearequiv-toaddequiv--61cff1ec7ba6de8d68d52722.md) | 264 | `result-track:61cff1ec7ba6de8d68d52722dbcc723ead064873e0ae88fd4c66472ebbaa4444` |
| 37 | `theorem` | [mapRange.linearEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/maprange-linearequiv-tolinearmap--0a59e718c7f128301889dc3c.md) | 269 | `result-track:0a59e718c7f128301889dc3cd80b590678af3ed5c461778f0025c541f720df37` |
| 38 | `def` | [curryLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/currylinearequiv--fcb7d1c76178f39b19001301.md) | 285 | `declaration-track:fcb7d1c76178f39b190013015514ae0718c09ea139ce19fa91739afaeb0edcee` |
| 39 | `theorem` | [curryLinearEquiv_symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/currylinearequiv-symm-apply-apply--4393d9603c86a9b988b2854d.md) | 289 | `result-track:4393d9603c86a9b988b2854d2840612054458d2ed626c3d3f623a85d9fe412f9` |
| 40 | `def` | [Module.subsingletonEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/module-subsingletonequiv--4c7a7f31b2ed03fd28f31f50.md) | 308 | `declaration-track:4c7a7f31b2ed03fd28f31f50b685a92ec12466eac50f96889d32497b75d8cc39` |
| 41 | `def` | [ringHomEndFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/ringhomendfinsupp--c34862d1b44b55fba0315973.md) | 328 | `declaration-track:c34862d1b44b55fba03159730d526f5ce345db384006af2626cd01ce66749b71` |
| 42 | `def` | [ringEquivEndFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/ringequivendfinsupp--708d731178029e766417dbb1.md) | 350 | `declaration-track:708d731178029e766417dbb103cc7212548901487562e4ab57377cc27d7e7ec8` |
| 43 | `theorem` | [ringHomEndFinsupp_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant443e643dfcf77a3c2eae25f7fd94fca37fc7f71424abc9a958c16eb186e99504.lean/declarations/ringhomendfinsupp-surjective--3a0398bce4c476c704142cd0.md) | 367 | `result-track:3a0398bce4c476c704142cd0b2be709595ab4044fee58a71daafa2a3aa3e098a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
