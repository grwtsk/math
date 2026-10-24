# Verification target: GRWTSK.Geometry.AlgebraicGeometry.StructureSheaf.Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a568f6bba0307bac003a3a5ae4eab9ef6313a07",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a568f6bba0307bac003a3a5ae4eab9ef6313a07`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.LocallyRingedSpace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/isfraction--1804009b93a68a7c5e15fd75.md) | 76 | `declaration-track:1804009b93a68a7c5e15fd7560d2ca63258de77359a0f4ed03c94f12d87f2ee4` |
| 2 | `def` | [isFractionPrelocal](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/isfractionprelocal--5024e2592a749abde4103f98.md) | 86 | `declaration-track:5024e2592a749abde4103f98b7bb4a8fd9ff64e2024efa9958acd25f5ee02be1` |
| 3 | `def` | [isLocallyFraction](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/islocallyfraction--ddf71d63c136ce1fafc4f6f1.md) | 94 | `declaration-track:ddf71d63c136ce1fafc4f6f1a65e3c5a1483346a2402703fd2ad4e820780f62b` |
| 4 | `theorem` | [zeroMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/zeromem--3b24f48b026eff68744cafe1.md) | 104 | `result-track:3b24f48b026eff68744cafe152423b9d059f01a81fedb045f44354fb5a0ecf73` |
| 5 | `theorem` | [oneMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/onemem--97d58659d8dca84563d93ba7.md) | 109 | `result-track:97d58659d8dca84563d93ba790caecffc0cf6c811280040470d5239622002248` |
| 6 | `theorem` | [addMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/addmem--8a6165e1fb21462645d38e41.md) | 114 | `result-track:8a6165e1fb21462645d38e41655c6ae2eee4983ba6cfb2c1f7e3d0a86cfadbd0` |
| 7 | `theorem` | [negMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/negmem--710bd71e74c48d4ed6f7d680.md) | 137 | `result-track:710bd71e74c48d4ed6f7d68010682da6a17bcff51c4433b32283feacade56279` |
| 8 | `theorem` | [mulMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/mulmem--094e97d2096384bcc6a46aef.md) | 146 | `result-track:094e97d2096384bcc6a46aef2c5d402ae0b68616fc68a06be224ca418b431f99` |
| 9 | `def` | [sectionsSubring](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/sectionssubring--fb8914dec6ca1f08dac0071d.md) | 177 | `declaration-track:fb8914dec6ca1f08dac0071dd0753e5ba82e06fc40a5928e5d88fee197ec7575` |
| 10 | `def` | [structureSheafInType](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/structuresheafintype--0085d1747f624274239b5d8c.md) | 191 | `declaration-track:0085d1747f624274239b5d8c095e180456fb91aea3712cdac1373fce479918fe` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/commringstructuresheafintypeobj--d2f6a73a31287fb9544e08ea.md) | 195 | `declaration-track:d2f6a73a31287fb9544e08ea87d61979f03d64700264d143c8dca0234cdce4a8` |
| 12 | `def` | [structurePresheafInCommRing](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/structurepresheafincommring--5eee5938d74eba5ec8d04c73.md) | 203 | `declaration-track:5eee5938d74eba5ec8d04c73864c85a588a9f213988130eebf0e24b5de2daf62` |
| 13 | `def` | [structurePresheafCompForget](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/structurepresheafcompforget--376fbb5fa9ef9067c86cb217.md) | 216 | `declaration-track:376fbb5fa9ef9067c86cb217a8491a18b79efdce89df556cdbc3fe388028ce84` |
| 14 | `def` | [Proj.structureSheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/proj-structuresheaf--bb415b6556d3e90d5b3a7f71.md) | 228 | `declaration-track:bb415b6556d3e90d5b3a7f71c6e8aac1a6fe5356867df0f700aa58e9ed8f24c4` |
| 15 | `theorem` | [res_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/res-apply--0bc9106d9a0b894f341e8814.md) | 244 | `result-track:0bc9106d9a0b894f341e8814e24e1761f4cd8cf1baab9afd9b3c55b24d31085d` |
| 16 | `def` | [Proj.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/proj-tosheafedspace--c665f64edbf71b5fa6b313e7.md) | 251 | `declaration-track:c665f64edbf71b5fa6b313e70dfde4e07e5fa6f9539314da7bf13b6a59b09e62` |
| 17 | `def` | [openToLocalization](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/opentolocalization--b199251f041a615d1b2f09b6.md) | 261 | `declaration-track:b199251f041a615d1b2f09b6acdd48f5457954a405ca74fc1ffe6c360bb4cd2b` |
| 18 | `def` | [stalkToFiberRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/stalktofiberringhom--f17343b50a92e29d6271a88b.md) | 273 | `declaration-track:f17343b50a92e29d6271a88b804a0b3bf2e7386d8e020c49bd5cae9d10b160c1` |
| 19 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/germ-comp-stalktofiberringhom--0f9ce8e74ced1bfee1677f91.md) | 285 | `result-track:0f9ce8e74ced1bfee1677f910f0299be92078339fea2f9cadf61c085b186275c` |
| 20 | `theorem` | [stalkToFiberRingHom_germ'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/stalktofiberringhom-germ--cfcf91fe49c2ef6094f5e6fe.md) | 292 | `result-track:cfcf91fe49c2ef6094f5e6feb3af7b382639d24611bd4bb1d127ac7b8273664e` |
| 21 | `theorem` | [stalkToFiberRingHom_germ](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/stalktofiberringhom-germ--3b9c1be1ac15d6e9becb2147.md) | 299 | `result-track:3b9c1be1ac15d6e9becb2147efaace78dc86d6cc935b8ace0a484dcc2dbc9166` |
| 22 | `theorem` | [HomogeneousLocalization.mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/homogeneouslocalization-mem-basicopen--4cb2218ee492cddb677134f9.md) | 305 | `result-track:4cb2218ee492cddb677134f9db4efb0b45e7a3d1193e0af9a9d056e69b6a78a2` |
| 23 | `def` | [sectionInBasicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/sectioninbasicopen--77d77e23e54f4c89d300ea26.md) | 314 | `declaration-track:77d77e23e54f4c89d300ea262c74c7926bd32e598c1e9c8494d75ec1464d1909` |
| 24 | `def` | [homogeneousLocalizationToStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/homogeneouslocalizationtostalk--3d791f0a6ea40f88250d573a.md) | 325 | `declaration-track:3d791f0a6ea40f88250d573a78c0d1eed6d22ea3d665e76a0557b6d603e2f4c7` |
| 25 | `def` | [Proj.stalkIso'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/proj-stalkiso--b0635d568680c0869250df40.md) | 334 | `declaration-track:b0635d568680c0869250df403cb57ab246ff46ee3ce2dfb36eddbc1b6d91942e` |
| 26 | `def` | [Proj.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantf26050b0d3d0860550f66ff0c79ce9802049b59685c55b5d777301d9b150345b.lean/declarations/proj-tolocallyringedspace--ec8aeba852f4bfaea8a2e91d.md) | 404 | `declaration-track:ec8aeba852f4bfaea8a2e91d06ef21516ace66a126c00e308f197e823f1421b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
