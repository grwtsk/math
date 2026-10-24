# Verification target: GRWTSK.Algebra.StructureSheaf.Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e5cc4c679f3cd3fa275ed3e4681cf0a74ce6013",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/index.md) · [Full source](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e5cc4c679f3cd3fa275ed3e4681cf0a74ce6013`.

Source path: `GRWTSK/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/isfraction--e862bae4c89eaac33ec0ae4b.md) | 71 | `declaration-track:e862bae4c89eaac33ec0ae4b9bd29e3dfc19e08899a53c20e726cb47e8301b64` |
| 2 | `def` | [isFractionPrelocal](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/isfractionprelocal--351571ea27549872dcac4b5f.md) | 78 | `declaration-track:351571ea27549872dcac4b5fe7a047f57891de5661c3922d2ce8b4b8c726e93c` |
| 3 | `def` | [isLocallyFraction](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/islocallyfraction--22e6bd4ce50cdfbd1869c4d8.md) | 85 | `declaration-track:22e6bd4ce50cdfbd1869c4d81c1736024abe94998f6516eef7d986b2746087e1` |
| 4 | `theorem` | [zero_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/zero-mem--05ca5f3b5b4af40689521095.md) | 94 | `result-track:05ca5f3b5b4af40689521095bd283e43ef77dd5f47b040f047a7a3050e172eb7` |
| 5 | `theorem` | [one_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/one-mem--449c70b2ab2fb15a7e8f2ab3.md) | 98 | `result-track:449c70b2ab2fb15a7e8f2ab3cf5b4e5ef1557d202a43b47981598535a8a31aa1` |
| 6 | `theorem` | [add_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/add-mem--62f9617c40f7c8b83d1b7e2e.md) | 102 | `result-track:62f9617c40f7c8b83d1b7e2e16b85d428bbfcec8aa1129573f0fd35a37a4f94e` |
| 7 | `theorem` | [neg_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/neg-mem--86f580367249166e44e4b44a.md) | 118 | `result-track:86f580367249166e44e4b44a96cf5e56f9db86dbd89ceb1ec744ae5b4b22fc80` |
| 8 | `theorem` | [mul_mem'](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/mul-mem--3b9b554cffce849bf9718298.md) | 125 | `result-track:3b9b554cffce849bf9718298e96934f1a6acb89f321d928a9e10db563d4dc684` |
| 9 | `def` | [sectionsSubring](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/sectionssubring--e9844463bc63e1c6d482dead.md) | 149 | `declaration-track:e9844463bc63e1c6d482dead7cd86e9f0b9d52a2efa12efb63cac6b0cdc54308` |
| 10 | `def` | [structureSheafInType](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/structuresheafintype--af72521c7f479adf623c741d.md) | 162 | `declaration-track:af72521c7f479adf623c741d0e4bd20c868c042719cea07f43cbfbe8bc01dad6` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/commringstructuresheafintypeobj--38326d5e723ebbcbe027510f.md) | 165 | `declaration-track:38326d5e723ebbcbe027510f518468b128f52820ac384352470042115c33cda2` |
| 12 | `def` | [structurePresheafInCommRing](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/structurepresheafincommring--022e28361ba51a1b23abd1be.md) | 172 | `declaration-track:022e28361ba51a1b23abd1befe128f7fdc9af2458360f44beb8e9aa1491f1906` |
| 13 | `def` | [structurePresheafCompForget](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/structurepresheafcompforget--cb36e07e9c00f662137d0b9c.md) | 183 | `declaration-track:cb36e07e9c00f662137d0b9cbb18794067100b0e4e23f81bacce15716967569d` |
| 14 | `def` | [Proj.structureSheaf](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-structuresheaf--888283606b7f44f73e258c2c.md) | 194 | `declaration-track:888283606b7f44f73e258c2c02b5a0efa8387979bc8cd191f24328b2540e27dd` |
| 15 | `theorem` | [Proj.res_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-res-apply--c523509d99a2f963eb789ae7.md) | 212 | `result-track:c523509d99a2f963eb789ae746c5108af15805db7834294d0c8a1afa855c9782` |
| 16 | `theorem` | [Proj.ext](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-ext--2a4c2189e9802d7334ded197.md) | 214 | `result-track:2a4c2189e9802d7334ded19738fe4cac3d25528d71836ec97658300ea8bc7eff` |
| 17 | `theorem` | [Proj.add_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-add-apply--2515b61cee913364feda1dad.md) | 215 | `result-track:2515b61cee913364feda1dad7d50c51906828128c53f813ce0f3c69e25fcea32` |
| 18 | `theorem` | [Proj.mul_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-mul-apply--474c03f82223b45ba3696486.md) | 216 | `result-track:474c03f82223b45ba3696486958849ea532df615b0de86b7653fb3d2360a53c2` |
| 19 | `theorem` | [Proj.sub_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-sub-apply--1f2d3e1174cb78345c03f26f.md) | 217 | `result-track:1f2d3e1174cb78345c03f26fdcfed2ff50f13bf3d462e66965417b56e992e646` |
| 20 | `theorem` | [Proj.pow_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-pow-apply--bfebad5aa0e59cb099e1b685.md) | 218 | `result-track:bfebad5aa0e59cb099e1b685eb19eb216d33d94d0f6e7b8a11e420ed0e30136b` |
| 21 | `theorem` | [Proj.zero_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-zero-apply--757d76f69a84b79e013faa43.md) | 219 | `result-track:757d76f69a84b79e013faa43ac144c8ec2e9e854ff05884f44a4ffddb41699b1` |
| 22 | `theorem` | [Proj.one_apply](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-one-apply--d6e2f07ba664dd56f18317d1.md) | 220 | `result-track:d6e2f07ba664dd56f18317d1dbe5cdddbdd22845d9b4b5920a3319a1dd34f618` |
| 23 | `def` | [Proj.toSheafedSpace](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-tosheafedspace--53762cb2b899c70c85a7eb8f.md) | 225 | `declaration-track:53762cb2b899c70c85a7eb8f5bc5b6da684ab98295687835918191e89bf20549` |
| 24 | `def` | [openToLocalization](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/opentolocalization--f4420b0790b92e160938e111.md) | 233 | `declaration-track:f4420b0790b92e160938e111dad93f346419401a6a7084b5e2c9212c84657d12` |
| 25 | `def` | [stalkToFiberRingHom](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/stalktofiberringhom--7797b7544c94a4914c148aa9.md) | 245 | `declaration-track:7797b7544c94a4914c148aa9529d908790f9d5a65718ab1ce075c6647e8f86aa` |
| 26 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/germ-comp-stalktofiberringhom--9b2a2d2b1cf4a69e510540cc.md) | 254 | `result-track:9b2a2d2b1cf4a69e510540cc6a2da5e2a7b3cdce9c605cfbcd6f6c9ab92e5c89` |
| 27 | `theorem` | [stalkToFiberRingHom_germ](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/stalktofiberringhom-germ--cc62606c346b1b4b3d4d56c4.md) | 261 | `result-track:cc62606c346b1b4b3d4d56c4be0a51f824f8423c2457ec18d17dc9d59973b2a2` |
| 28 | `theorem` | [mem_basicOpen_den](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/mem-basicopen-den--3d1c1c78d0417f728c33e821.md) | 266 | `result-track:3d1c1c78d0417f728c33e821711664112f28d910e73654144340b73b11e32369` |
| 29 | `def` | [sectionInBasicOpen](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/sectioninbasicopen--06c0997410951de827b664f5.md) | 275 | `declaration-track:06c0997410951de827b664f5235caee179969fb1d62b833967c546c99ca1eb3c` |
| 30 | `def` | [homogeneousLocalizationToStalk](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/homogeneouslocalizationtostalk--bc04af733a6d6e4623440ebd.md) | 287 | `declaration-track:bc04af733a6d6e4623440ebd8ca9ba8ab26175d7d4b3e691c0d7d4b256adae06` |
| 31 | `lemma` | [homogeneousLocalizationToStalk_stalkToFiberRingHom](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/homogeneouslocalizationtostalk-stalktofiberringhom--1d9817abd844a6ab24d03095.md) | 309 | `result-track:1d9817abd844a6ab24d03095039a04e6a053c56fe26557ef3830dac627c8aace` |
| 32 | `lemma` | [stalkToFiberRingHom_homogeneousLocalizationToStalk](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/stalktofiberringhom-homogeneouslocalizationtostalk--44fb08f429a0ec373fd43c12.md) | 327 | `result-track:44fb08f429a0ec373fd43c12f2529f02f8f5c71a6ef5bb14939094338414004f` |
| 33 | `def` | [Proj.stalkIso'](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-stalkiso--d4db89bb4ca96b9af22d2598.md) | 335 | `declaration-track:d4db89bb4ca96b9af22d2598cb4ff2e82f8044c191cae55158927d14bd2e4b89` |
| 34 | `theorem` | [Proj.stalkIso'_germ](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-stalkiso-germ--5d6fef57857bddc10ebb46aa.md) | 343 | `result-track:5d6fef57857bddc10ebb46aa2642c71f4d57ad687fe4f41d902366b1036d45b8` |
| 35 | `theorem` | [Proj.stalkIso'_symm_mk](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-stalkiso-symm-mk--cc38c18dfe53b73af19f25df.md) | 349 | `result-track:cc38c18dfe53b73af19f25dfd1de51400f00be8cb8cc314954c8033f87a4d447` |
| 36 | `def` | [Proj.toLocallyRingedSpace](../../../../mathematics/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean/declarations/proj-tolocallyringedspace--de618a99f17050cc98508884.md) | 354 | `declaration-track:de618a99f17050cc985088842c764081f96228e8e87150c886ce1982ca223678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
