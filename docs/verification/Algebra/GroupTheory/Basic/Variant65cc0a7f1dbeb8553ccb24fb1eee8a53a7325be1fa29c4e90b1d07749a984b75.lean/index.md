# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7dd309cac8ed92c45e3c3d67d710a626c4009b4",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7dd309cac8ed92c45e3c3d67d710a626c4009b4`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Contraction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.TypeTags` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Representation](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/representation--d6da5a5b09280086cbc055b4.md) | 44 | `declaration-track:d6da5a5b09280086cbc055b4d145a0aefa5f1f946253c895cf301ef917493e04` |
| 2 | `def` | [trivial](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/trivial--9580566243413464f13c0f7a.md) | 57 | `declaration-track:9580566243413464f13c0f7ad501a31de6cbdff134976c66d461735cd50d409e` |
| 3 | `theorem` | [trivial_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/trivial-apply--874d854cd65b4f58295003d4.md) | 63 | `result-track:874d854cd65b4f58295003d4ee5d2078b3c0321bbc096c381f5e8e877982dfbd` |
| 4 | `class` | [IsTrivial](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/istrivial--9ad6ab164d3d9387ba57050b.md) | 69 | `declaration-track:9ad6ab164d3d9387ba57050bb7f4c0414abd98819a771266693a33c4afe13055` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--ecdb0ae014530689b1ab7a4e.md) | 72 | `declaration-track:ecdb0ae014530689b1ab7a4e7783a4a90e8b666aacc03ee1d4df290d7b9e1098` |
| 6 | `theorem` | [isTrivial_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/istrivial-def--40951d03e8ad9d950cad88a3.md) | 75 | `result-track:40951d03e8ad9d950cad88a37f483a1d89632ef804dc6f5db0513e5d348f0ff5` |
| 7 | `theorem` | [isTrivial_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/istrivial-apply--7d0315f9b9cfaaeb679b8b08.md) | 78 | `result-track:7d0315f9b9cfaaeb679b8b0876b292e45ba75a20d31da1f07a512a52712aac17` |
| 8 | `theorem` | [inv_self_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/inv-self-apply--63215818cf2316b7949175b1.md) | 89 | `result-track:63215818cf2316b7949175b1fc88ce5395d809b851dc8a651e1944ebd79cf57e` |
| 9 | `theorem` | [self_inv_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/self-inv-apply--121541d33a1531a8fff62e10.md) | 94 | `result-track:121541d33a1531a8fff62e10c9f870058039a5fb84eaf806b9ff13ee5c63f7c3` |
| 10 | `lemma` | [apply_bijective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/apply-bijective--8884a04031a54bcddb6a14be.md) | 98 | `result-track:8884a04031a54bcddb6a14beb5fadd355461cfd9cc69d6a28dccf3b488e3fbe7` |
| 11 | `def` | [asAlgebraHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asalgebrahom--ed93968dca5f42838932ff3c.md) | 112 | `declaration-track:ed93968dca5f42838932ff3ca1e60811880d28408debd8f5b58c82355411c46b` |
| 12 | `theorem` | [asAlgebraHom_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asalgebrahom-def--7429b218667de65238805bcf.md) | 115 | `result-track:7429b218667de65238805bcff3b15e93b925399566b17000ce01da5d2333633f` |
| 13 | `theorem` | [asAlgebraHom_single](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asalgebrahom-single--914ea11718ea3397397e493a.md) | 119 | `result-track:914ea11718ea3397397e493aff1acb063167ad2b50bd4417b7f5431405a53623` |
| 14 | `theorem` | [asAlgebraHom_single_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asalgebrahom-single-one--350cb9e22f8245c875258bb1.md) | 123 | `result-track:350cb9e22f8245c875258bb1d7d8efdae2e8d535a7c7a992bdf476767e15bfc7` |
| 15 | `theorem` | [asAlgebraHom_of](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asalgebrahom-of--e309634772a497131ffcb39d.md) | 125 | `result-track:e309634772a497131ffcb39d498ab7903a2b36e03236a275914a82f254081482` |
| 16 | `def` | [asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asmodule--f735a0c68a942d75479d2e17.md) | 134 | `declaration-track:f735a0c68a942d75479d2e172172b2c07f27d6a5426f5d933b20706a2c91b4e5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--52a2f47351b2546fc62982aa.md) | 139 | `declaration-track:52a2f47351b2546fc62982aa66c970a83bad51b46643ebd8c1ad4b640ff2b9c5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--4413ab73754480cd0d323ca4.md) | 141 | `declaration-track:4413ab73754480cd0d323ca4d5248c7d64612e3f95e00bb27f2b135088821f90` |
| 19 | `instance` | [instModuleAsModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instmoduleasmodule--bcbbd3a590575ed8fb41185e.md) | 147 | `declaration-track:bcbbd3a590575ed8fb41185e09b78cbef619236be3176a4e8948201bf799042c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--d046fcb1fb133a1ee1c530e6.md) | 150 | `declaration-track:d046fcb1fb133a1ee1c530e67b0efbeb7bb477830bbad8e35c3ef7a6aa48b18c` |
| 21 | `def` | [asModuleEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asmoduleequiv--eff9f4c9e68e4faed3aa4443.md) | 157 | `declaration-track:eff9f4c9e68e4faed3aa4443ce938f31b54a40cc1d6889426101b3f996a528d9` |
| 22 | `theorem` | [asModuleEquiv_map_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asmoduleequiv-map-smul--a239d800538188cbc36b95c7.md) | 161 | `result-track:a239d800538188cbc36b95c72a837e6df98527b987520a7b524e370cad3f850d` |
| 23 | `theorem` | [asModuleEquiv_symm_map_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asmoduleequiv-symm-map-smul--98b968b528a3034eabffbb0f.md) | 165 | `result-track:98b968b528a3034eabffbb0f458fc289c4d3966b99f04b65cf9611e2e3494a61` |
| 24 | `theorem` | [asModuleEquiv_symm_map_rho](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asmoduleequiv-symm-map-rho--2fec7d5ca61fa1249b3318e4.md) | 171 | `result-track:2fec7d5ca61fa1249b3318e43b8b3cf7b791e12395f38a130bafcb594cbc6748` |
| 25 | `def` | [ofModule'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmodule--6f78a2f3f12f35d1482abeb9.md) | 185 | `declaration-track:6f78a2f3f12f35d1482abeb94d48528bcf38f85215286b02813811a8688d99d1` |
| 26 | `def` | [ofModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmodule--1d8a3294e5a69d82a00de5a5.md) | 198 | `declaration-track:1d8a3294e5a69d82a00de5a53dda2d237f4e57988d1bdf3c87399750c905b5e6` |
| 27 | `theorem` | [ofModule_asAlgebraHom_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmodule-asalgebrahom-apply-apply--321c675c4baf21eaf7963bc2.md) | 223 | `result-track:321c675c4baf21eaf7963bc28b229a6c50d4714afc0cf26dc531452ae248a9d2` |
| 28 | `theorem` | [ofModule_asModule_act](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmodule-asmodule-act--d095dee422d7a8fa3e4ba6ef.md) | 238 | `result-track:d095dee422d7a8fa3e4ba6ef4521019282981778e8804ad205baff55d71f3ceb` |
| 29 | `theorem` | [smul_ofModule_asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/smul-ofmodule-asmodule--ae17f8b1adbbc2814e455559.md) | 247 | `result-track:ae17f8b1adbbc2814e455559cad54f941b81a96bc87a59ee14bb0e678f2b1ade` |
| 30 | `lemma` | [single_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/single-smul--8d95d2b346359a4635cefd11.md) | 256 | `result-track:8d95d2b346359a4635cefd119322942afef2fdb475fe1a381b259208c77cceb0` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--134359f30e012987e25e53a9.md) | 261 | `declaration-track:134359f30e012987e25e53a94d1a39990b14aea9d62d305a346617620d1194bc` |
| 32 | `def` | [subrepresentation](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/subrepresentation--3f65c153ef56a7ca5c7d014a.md) | 282 | `declaration-track:3f65c153ef56a7ca5c7d014a2c9559f8856c4ddccff785d5caf9cf8d10db3fc3` |
| 33 | `def` | [quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/quotient--2099049e87ac97b4165e77ba.md) | 298 | `declaration-track:2099049e87ac97b4165e77ba7a1c85d8c9747d37655e15a74586a8dfe83ec844` |
| 34 | `lemma` | [apply_eq_of_coe_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/apply-eq-of-coe-eq--b8e06541d0aec3ad71927f3f.md) | 311 | `result-track:b8e06541d0aec3ad71927f3f732c73ac3269542af26ce7e8dacd5235f2fc483d` |
| 35 | `def` | [ofQuotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofquotient--9505628256c8c9d6b4983f10.md) | 322 | `declaration-track:9505628256c8c9d6b4983f10494114a4c1447ea45b8cb275a55a488055b7e903` |
| 36 | `lemma` | [ofQuotient_coe_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofquotient-coe-apply--824a3606968313a69ea1409c.md) | 331 | `result-track:824a3606968313a69ea1409c062bdc7addffcd5920d7c014fd769a32ca2a8b53` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--b1e8e10069e5b8ce10757618.md) | 342 | `declaration-track:b1e8e10069e5b8ce1075761890e837a824051a5e2f28b5070cc0fa8a9a008c38` |
| 38 | `def` | [ofMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmulaction--a6a8fdab5c659d70417b72e6.md) | 352 | `declaration-track:a6a8fdab5c659d70417b72e6a033f30ba235e83e4edefee3b0ea40e3e935de62` |
| 39 | `theorem` | [ofMulAction_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmulaction-def--624f4a6497e145b50b7abc0d.md) | 364 | `result-track:624f4a6497e145b50b7abc0d2f9183a8fd03c27ff1155fc1af5e5061bf60424b` |
| 40 | `theorem` | [ofMulAction_single](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmulaction-single--bbbeb638698e99829cd02199.md) | 368 | `result-track:bbbeb638698e99829cd02199b86bb40cc9321293a01f4bdfc298bc17e17c07bc` |
| 41 | `def` | [ofDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofdistribmulaction--cebec0878a87d593dce88a1e.md) | 380 | `declaration-track:cebec0878a87d593dce88a1ebe1c30a42150c025fd9eeed8cd3298685e84c492` |
| 42 | `theorem` | [ofDistribMulAction_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofdistribmulaction-apply-apply--eb81111e2cdb4180070911c2.md) | 389 | `result-track:eb81111e2cdb4180070911c24d5f3b9a26d768b89c8d158f08c47a56074c152b` |
| 43 | `def` | [ofMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmuldistribmulaction--f40062440e026bb4eb8efe66.md) | 398 | `declaration-track:f40062440e026bb4eb8efe66ab8e4ec1e589d4388314ab2d0914bab977d79b81` |
| 44 | `theorem` | [ofMulDistribMulAction_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmuldistribmulaction-apply-apply--e45852a9feb350b418608fb1.md) | 402 | `result-track:e45852a9feb350b418608fb1e4ae308a4f329dc8318839b1f8d674248928b001` |
| 45 | `theorem` | [ofMulAction_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmulaction-apply--d47fe8470635686136934a85.md) | 412 | `result-track:d47fe8470635686136934a858859a81ff91e856a849f27974f0438d5bad58653` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/instance--a5968d7fa75002858db41044.md) | 423 | `declaration-track:a5968d7fa75002858db410440547813ff39d212071394ec5847e639b83f116fc` |
| 47 | `theorem` | [ofMulAction_self_smul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmulaction-self-smul-eq-mul--7c5199087b5bfda412f1284f.md) | 427 | `result-track:7c5199087b5bfda412f1284f111bc93cb6ebbd2dafe8fa49cb941053e80b572d` |
| 48 | `def` | [ofMulActionSelfAsModuleEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/ofmulactionselfasmoduleequiv--b9f47fcc1c8d1fe025009b23.md) | 448 | `declaration-track:b9f47fcc1c8d1fe025009b2304996b5e36a3a811b604e434bef7247dbbd77e6d` |
| 49 | `def` | [asGroupHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asgrouphom--c3e1385f8d12d2f062cf8cca.md) | 455 | `declaration-track:c3e1385f8d12d2f062cf8cca396c71bd5ffae2cb23741eaca1c6d0c77e51685f` |
| 50 | `theorem` | [asGroupHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/asgrouphom-apply--3428c8f1facb224600361cf0.md) | 458 | `result-track:3428c8f1facb224600361cf0ea6fc601f604d9b98c83470ee09a8b826221c575` |
| 51 | `def` | [tprod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/tprod--29cd97050132535b51e9cc2a.md) | 474 | `declaration-track:29cd97050132535b51e9cc2ab2c5cf6255a3c24937bf48785d4ff660e4067bf7` |
| 52 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/tprod-apply--f1afde1279313c50d33f7625.md) | 482 | `result-track:f1afde1279313c50d33f7625474a6cb5a822c08164e45c3a9aaf068c6421e5c6` |
| 53 | `theorem` | [smul_tprod_one_asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/smul-tprod-one-asmodule--4546fbbf72058cc932e91208.md) | 485 | `result-track:4546fbbf72058cc932e912082739e311c03ed4549d15ab5a8eb35c50bbccafa9` |
| 54 | `theorem` | [smul_one_tprod_asModule](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/smul-one-tprod-asmodule--5873d19a560629e1c8ccbc3c.md) | 496 | `result-track:5873d19a560629e1c8ccbc3cc715631116f197b1f3b877384945620336539ae5` |
| 55 | `def` | [linHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/linhom--cd0a6f4ba580897fc6d76657.md) | 517 | `declaration-track:cd0a6f4ba580897fc6d76657d5da60f33c3053813778ea0ba0b1fdec0437036e` |
| 56 | `theorem` | [linHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/linhom-apply--24e9d416d32efd7955d6b9da.md) | 526 | `result-track:24e9d416d32efd7955d6b9da59de9da05d179dabf9bca2b93c775d800f8fab6b` |
| 57 | `def` | [dual](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/dual--4167d3671d6eece61d27bc6c.md) | 532 | `declaration-track:4167d3671d6eece61d27bc6cb1850ac9e60ea05ec9a8a80fcb6e9d9c52d9af85` |
| 58 | `theorem` | [dual_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/dual-apply--baf39b13e811f69ab6cddc4c.md) | 543 | `result-track:baf39b13e811f69ab6cddc4c632aa233a14646baeaf78f89096254791a57ea34` |
| 59 | `theorem` | [dualTensorHom_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant65cc0a7f1dbeb8553ccb24fb1eee8a53a7325be1fa29c4e90b1d07749a984b75.lean/declarations/dualtensorhom-comm--b4c6629547a1866689d7980b.md) | 552 | `result-track:b4c6629547a1866689d7980b404061da7fd2cf9ad14920ade31a8f49b8945d8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
