# Verification target: GRWTSK.Algebra.Prod.Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a1a3fcf7ad7fc09241f7f52d20e3e47866bbe03",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/index.md) · [Full source](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a1a3fcf7ad7fc09241f7f52d20e3e47866bbe03`.

Source path: `GRWTSK/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Prod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instDistrib](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instdistrib--fc88c32a1ec172b0cfe6e832.md) | 41 | `declaration-track:fc88c32a1ec172b0cfe6e8320f2d26a60382e2c174443498d4ffce92d8cba341` |
| 2 | `instance` | [instNonUnitalNonAssocSemiring](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonunitalnonassocsemiring--4b46d0afb5c8eb54fb417c4f.md) | 46 | `declaration-track:4b46d0afb5c8eb54fb417c4f06a0eadf1843661057840c2c3a89e839eb9fe24e` |
| 3 | `instance` | [instNonUnitalSemiring](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonunitalsemiring--d9b59cb87306b94db519e114.md) | 53 | `declaration-track:d9b59cb87306b94db519e1146c13029f611dda749ac607bc85eba8bb24f9f2da` |
| 4 | `instance` | [instNonAssocSemiring](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonassocsemiring--35302e81dfe40041fbc9e65e.md) | 59 | `declaration-track:35302e81dfe40041fbc9e65e992e62ae5e11d3164e1fe2c965d0c46274bb98ad` |
| 5 | `instance` | [instSemiring](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instsemiring--bf3eab227d4680ea75fa385f.md) | 66 | `declaration-track:bf3eab227d4680ea75fa385f995ccebdeb6864cc966fba5f126d5f7e6b4f2b78` |
| 6 | `instance` | [instNonUnitalCommSemiring](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonunitalcommsemiring--89cc0b8a32105bb1f526f830.md) | 72 | `declaration-track:89cc0b8a32105bb1f526f8301d05d0dd3ed1694b34a7b9a7b81d0cab77cfecbe` |
| 7 | `instance` | [instCommSemiring](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instcommsemiring--1090cadf7efffadbe3ee3fdb.md) | 77 | `declaration-track:1090cadf7efffadbe3ee3fdbee5918948594c1fff1acf358c9c7accd841c4fc7` |
| 8 | `instance` | [instNonUnitalNonAssocRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonunitalnonassocring--626f730792350f9c1ec83ca8.md) | 80 | `declaration-track:626f730792350f9c1ec83ca89be12a22b21924e1efdc9f7c98f2b25ae05a72a4` |
| 9 | `instance` | [instNonUnitalRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonunitalring--bc87fc9acfa73a897c1c447c.md) | 85 | `declaration-track:bc87fc9acfa73a897c1c447c96b63a4e1813b49e44ae8bbd5ddd1c95548c33e4` |
| 10 | `instance` | [instNonAssocRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonassocring--d4afb4f00c322698303972c7.md) | 89 | `declaration-track:d4afb4f00c322698303972c7ab475496983074df831ac11273cb1c18b23d2bb5` |
| 11 | `instance` | [instRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instring--68a6d5ee268c271898a0b166.md) | 95 | `declaration-track:68a6d5ee268c271898a0b1667d2dbfe6ee700e0858b8d566a5d048f648d601b4` |
| 12 | `instance` | [instNonUnitalCommRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instnonunitalcommring--004d3678b2593ba49713bf97.md) | 101 | `declaration-track:004d3678b2593ba49713bf9778802424d736143c1f83bbfdc10fdfee7921b2e2` |
| 13 | `instance` | [instCommRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instcommring--8ccd9207f9be7c47a18d509f.md) | 106 | `declaration-track:8ccd9207f9be7c47a18d509f2951000ac027a06d7f32c977f74da3b2c5a8b2fc` |
| 14 | `def` | [fst](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/fst--cfefb8e7553845715fb3e414.md) | 116 | `declaration-track:cfefb8e7553845715fb3e414d33b7b2f80d3d4c779997d4aa019071d6e61cd2d` |
| 15 | `def` | [snd](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/snd--f3f8e643650a96a7a2b3036e.md) | 121 | `declaration-track:f3f8e643650a96a7a2b3036eb42933207fe4c1c699e378914dbf05ae5789d14e` |
| 16 | `theorem` | [coe_fst](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-fst--00ccb3ef27da7fe9cfad2b41.md) | 128 | `result-track:00ccb3ef27da7fe9cfad2b41115a6f0e0743becda1bc404121372c8d7ed27840` |
| 17 | `theorem` | [coe_snd](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-snd--4b211ef83138fa6dc2b19f04.md) | 133 | `result-track:4b211ef83138fa6dc2b19f04d455657b7279c5a3052b07b8de124a366aaaae1a` |
| 18 | `def` | [prod](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod--7bb07e6882a1cd3e04da73b0.md) | 143 | `declaration-track:7bb07e6882a1cd3e04da73b0c9a43ce6d1a9b84d16e966d42161269a255dce2f` |
| 19 | `theorem` | [prod_apply](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod-apply--c17e774f457ad83df4bde4cb.md) | 149 | `result-track:c17e774f457ad83df4bde4cb3761224d26231b3aebaa687a915f25001718d6e2` |
| 20 | `theorem` | [fst_comp_prod](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/fst-comp-prod--239a714ae93e6294d848e9bd.md) | 154 | `result-track:239a714ae93e6294d848e9bde8d927b8df21c2d00557092328d6782009546ea5` |
| 21 | `theorem` | [snd_comp_prod](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/snd-comp-prod--7cf1326191d303aeb95cd6b2.md) | 159 | `result-track:7cf1326191d303aeb95cd6b25e09e85d155b55da338cecdf2642b05785e91e4c` |
| 22 | `theorem` | [prod_unique](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod-unique--c5066b567c2d750be13f24ff.md) | 163 | `result-track:c5066b567c2d750be13f24ff09add0874b214b02d655dd3924a4a6f5d9e71d99` |
| 23 | `def` | [prodMap](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodmap--9f2d3520e48ee5f969d604ee.md) | 176 | `declaration-track:9f2d3520e48ee5f969d604ee417d9aaebe938ea0d248d24a785553395838cd24` |
| 24 | `theorem` | [prodMap_def](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodmap-def--e64d52253e136b78345c1ad0.md) | 180 | `result-track:e64d52253e136b78345c1ad00fa6490c4704ca6d3f8974cdd5371c735ed97f3c` |
| 25 | `theorem` | [coe_prodMap](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-prodmap--cbce0c7e50b62f2802b6ae40.md) | 185 | `result-track:cbce0c7e50b62f2802b6ae403c819145fbf7eeea4d0deab05276b5bd56ebadf8` |
| 26 | `theorem` | [prod_comp_prodMap](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod-comp-prodmap--a0ac7077cc15be19235a24f1.md) | 189 | `result-track:a0ac7077cc15be19235a24f13f5676d2fefeda508ade76214f82a8948ac4544a` |
| 27 | `def` | [fst](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/fst--521a963b3f979ed81a19aa12.md) | 203 | `declaration-track:521a963b3f979ed81a19aa12efd4d7bea72b65615a7a342a582276e6b717f4f3` |
| 28 | `def` | [snd](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/snd--5acdda6b6b921201d3751bab.md) | 208 | `declaration-track:5acdda6b6b921201d3751babce95115adf1b08889447d2a61abedc95f09572d4` |
| 29 | `theorem` | [coe_fst](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-fst--a06c41f22c285501e141f49f.md) | 215 | `result-track:a06c41f22c285501e141f49f5fa9d2934686b40e10629b6d184721fcb31df978` |
| 30 | `theorem` | [coe_snd](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-snd--b1c525ccddb105ce90b2b5d3.md) | 220 | `result-track:b1c525ccddb105ce90b2b5d364702fa0e5dda7ae79a8a47be326241c0e553550` |
| 31 | `def` | [prod](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod--16369ba1b6f86f32f788d112.md) | 230 | `declaration-track:16369ba1b6f86f32f788d112d49d9d1ebf9826f805e020d16e1101794e15df14` |
| 32 | `theorem` | [prod_apply](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod-apply--a9b8420dd86697ed3ec9435e.md) | 236 | `result-track:a9b8420dd86697ed3ec9435e522471b978a74dd7265bea16c43cafe20bf56e66` |
| 33 | `theorem` | [fst_comp_prod](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/fst-comp-prod--015d8e02e7d1127dce475d55.md) | 241 | `result-track:015d8e02e7d1127dce475d5588059c7b4751a004c38e0a74268ad92e326b345c` |
| 34 | `theorem` | [snd_comp_prod](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/snd-comp-prod--e81176195134633fae5a0019.md) | 246 | `result-track:e81176195134633fae5a0019cc97a5e86cfd1e03dcc48f7cbf82d1cccaab572f` |
| 35 | `theorem` | [prod_unique](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod-unique--b6cc065cf880cc7309856308.md) | 250 | `result-track:b6cc065cf880cc730985630885fa644c4e2fdb847a177c66e89efdb968b17860` |
| 36 | `def` | [prodMap](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodmap--c2d5afa9c8656cdc5294c6e5.md) | 263 | `declaration-track:c2d5afa9c8656cdc5294c6e577128e1041df35d50702ddbb12ee86ca74edb9b0` |
| 37 | `theorem` | [prodMap_def](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodmap-def--da31f7e8d37f6e4bf712d56f.md) | 267 | `result-track:da31f7e8d37f6e4bf712d56f655749fa0e5caec782e94e85ce91163bbdb5a7b6` |
| 38 | `theorem` | [coe_prodMap](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-prodmap--3748a9b183e7aad02981ee1c.md) | 272 | `result-track:3748a9b183e7aad02981ee1ca1cb50c600da9ab07a2152745a5486c7368ed2d8` |
| 39 | `theorem` | [prod_comp_prodMap](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prod-comp-prodmap--b18fbd41e463caf9a0cb7b3d.md) | 276 | `result-track:b18fbd41e463caf9a0cb7b3d2a187ed7fc77509b034a647403edd7fb814493f2` |
| 40 | `def` | [prodComm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodcomm--4e2a17acc3a9c842c461d3fb.md) | 290 | `declaration-track:4e2a17acc3a9c842c461d3fb48e6784e691378f9acd79f014e902e7d912da430` |
| 41 | `theorem` | [coe_prodComm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-prodcomm--30bbf3876371df7341bd885f.md) | 295 | `result-track:30bbf3876371df7341bd885f83fc47b5718edb87ef1bb5996227fcc4fca3c618` |
| 42 | `theorem` | [coe_prodComm_symm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/coe-prodcomm-symm--b55b05e5bc997d3d7244aa13.md) | 300 | `result-track:b55b05e5bc997d3d7244aa139f89cb0cf995f2afa06ca5ad0825454d4068cef6` |
| 43 | `theorem` | [fst_comp_coe_prodComm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/fst-comp-coe-prodcomm--a18321a17db39bf507f555f0.md) | 305 | `result-track:a18321a17db39bf507f555f093e472b7b8b3f458207d36f8fb0cd75eb2b39df4` |
| 44 | `theorem` | [snd_comp_coe_prodComm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/snd-comp-coe-prodcomm--db866925cf1f85413006aca9.md) | 311 | `result-track:db866925cf1f85413006aca931e976f974fdc2fc4ec5b568d423d8799d3ae8bf` |
| 45 | `def` | [prodProdProdComm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodprodprodcomm--93534459cba106543f01a401.md) | 322 | `declaration-track:93534459cba106543f01a4014036e660034dc893e43b62ebd3f2af8dfc2e0b1e` |
| 46 | `theorem` | [prodProdProdComm_symm](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodprodprodcomm-symm--7b8d5ea49c9b8841b8b64b52.md) | 329 | `result-track:7b8d5ea49c9b8841b8b64b52f11b66f3ef1c090d5131623fb55029b475f2506e` |
| 47 | `theorem` | [prodProdProdComm_toAddEquiv](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodprodprodcomm-toaddequiv--a20da6ca439189705f354fcc.md) | 334 | `result-track:a20da6ca439189705f354fccfb084a31c3ff972148d830df84fb5ca974b054cf` |
| 48 | `theorem` | [prodProdProdComm_toMulEquiv](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodprodprodcomm-tomulequiv--d22ac91101ae448766f609f8.md) | 340 | `result-track:d22ac91101ae448766f609f8b712138be3b6ae85a99e244c88e188cf71e967df` |
| 49 | `theorem` | [prodProdProdComm_toEquiv](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodprodprodcomm-toequiv--63a55a56faeb362220e8bd5e.md) | 346 | `result-track:63a55a56faeb362220e8bd5e99640440af4c91dea7cdc2212c0c0e303730ce61` |
| 50 | `def` | [prodZeroRing](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/prodzeroring--607707d34a8fe519f09875c8.md) | 357 | `declaration-track:607707d34a8fe519f09875c80339b843d14fe0bf3a804b8409721dfd6cdcabd1` |
| 51 | `def` | [zeroRingProd](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/zeroringprod--7e5c71bb60baf51cf54ea2e4.md) | 370 | `declaration-track:7e5c71bb60baf51cf54ea2e471beb0a5b1f9de62e05b2b8d6c025a4f58ee8c71` |
| 52 | `theorem` | [false_of_nontrivial_of_product_domain](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/false-of-nontrivial-of-product-domain--6497cc65d8f7d18054f096d8.md) | 384 | `result-track:6497cc65d8f7d18054f096d8bd0bcc72d8cf3eff9e1573f198f71595f6062b9c` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instance--7c7bee9d6a51ea8b2f61923e.md) | 397 | `declaration-track:7c7bee9d6a51ea8b2f61923e83a4637f4aeda0f66db4f054b80103843acb799f` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instance--dcb17cd27df9e81f4f7ee3b9.md) | 405 | `declaration-track:dcb17cd27df9e81f4f7ee3b9372814c7fe60f3f61ca6ca4a28877031a76aaec7` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instance--e5ee34f5ebb62a6d41ed2042.md) | 409 | `declaration-track:e5ee34f5ebb62a6d41ed20421683094f167a6c755b5ca2db70f79011f3e6fb19` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Prod/Varianta904cec3cfade9510a730042e2d51fb63e32c97f0cf700ebac40b262388c8586.lean/declarations/instance--e53254a7ec17da6f3c5d6939.md) | 414 | `declaration-track:e53254a7ec17da6f3c5d69399055ebcd317403cca7d39441e49d1af598eeaff6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
