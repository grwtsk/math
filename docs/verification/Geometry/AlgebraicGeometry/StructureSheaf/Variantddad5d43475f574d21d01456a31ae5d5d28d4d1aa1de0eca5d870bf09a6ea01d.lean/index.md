# Verification target: GRWTSK.Geometry.AlgebraicGeometry.StructureSheaf.Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c12a1efe941e2216f5f2f6721459019d8ee00d7d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c12a1efe941e2216f5f2f6721459019d8ee00d7d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.LocallyRingedSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/isfraction--6d5914ea8f1ce71c8c90c1cc.md) | 84 | `declaration-track:6d5914ea8f1ce71c8c90c1cc238e00c56fd663127b03b994eeeee3bda25a2c26` |
| 2 | `def` | [isFractionPrelocal](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/isfractionprelocal--19b5d62c159a50ed26a0ff0d.md) | 94 | `declaration-track:19b5d62c159a50ed26a0ff0d9d1d313f3ecce67fab59e07ffcf4b26ded35840e` |
| 3 | `def` | [isLocallyFraction](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/islocallyfraction--cd5f445eebfee2672fe0b26d.md) | 102 | `declaration-track:cd5f445eebfee2672fe0b26d007215e160970fd0ab1e12cb22b90469089527fd` |
| 4 | `theorem` | [zeroMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/zeromem--038bc72c58185c1610b8e9e8.md) | 112 | `result-track:038bc72c58185c1610b8e9e8c8ff0a16f823a6b17a1d055d3b5094039aa8f1a5` |
| 5 | `theorem` | [oneMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/onemem--c178f11b298861e349384ceb.md) | 117 | `result-track:c178f11b298861e349384ceb4b4c2a28fbf417770f04798d4f1f07c5fe561726` |
| 6 | `theorem` | [addMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/addmem--2f4d0169b4d52d3ff1148a38.md) | 122 | `result-track:2f4d0169b4d52d3ff1148a386ab0e443ac5aab29f6859ee25830a8f327cdfe97` |
| 7 | `theorem` | [negMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/negmem--94f0c78e220091c09dbd76e9.md) | 145 | `result-track:94f0c78e220091c09dbd76e99fd0aeefd2436dc736d5d0f8572bd174bf76102c` |
| 8 | `theorem` | [mulMem'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/mulmem--d0fa3171e307b85fd2c7be63.md) | 154 | `result-track:d0fa3171e307b85fd2c7be6347f0e70094d5e9c1279e1b3a054bf823c88713e5` |
| 9 | `def` | [sectionsSubring](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/sectionssubring--b9931bef48c59b751ed74895.md) | 185 | `declaration-track:b9931bef48c59b751ed74895e5d94e9012923da389c7c5144e09dd1270a74777` |
| 10 | `def` | [structureSheafInType](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/structuresheafintype--aff2ba5fe653550e923c7d5c.md) | 199 | `declaration-track:aff2ba5fe653550e923c7d5c8efa430a4792eff64923e511840900d016934c1a` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/commringstructuresheafintypeobj--a66faf444dc7ab0744175829.md) | 203 | `declaration-track:a66faf444dc7ab07441758295f10a062c25410d99163b5789e0127edb935369f` |
| 12 | `def` | [structurePresheafInCommRing](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/structurepresheafincommring--2cfaa25c87739526f2135c98.md) | 211 | `declaration-track:2cfaa25c87739526f2135c981e407441d99106b2a5a54f602fb7f10a9812b502` |
| 13 | `def` | [structurePresheafCompForget](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/structurepresheafcompforget--472c9c0ba35df307d7dbf2b8.md) | 224 | `declaration-track:472c9c0ba35df307d7dbf2b8ef7eb42ecf9bb45e744e5095c3d581a6fbf4bbbf` |
| 14 | `def` | [Proj.structureSheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/proj-structuresheaf--d9152a8e5c7d7e728d35ce3e.md) | 236 | `declaration-track:d9152a8e5c7d7e728d35ce3e5a9cad52b37cae460e0dbe8e89579ace8487f954` |
| 15 | `theorem` | [res_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/res-apply--443e813d383b80a0da2220e3.md) | 252 | `result-track:443e813d383b80a0da2220e3f9af00485a3746438353893adb003a19e285f928` |
| 16 | `def` | [Proj.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/proj-tosheafedspace--ca477912d4815f9b7f00bc06.md) | 259 | `declaration-track:ca477912d4815f9b7f00bc06b56692ce4817ea3705b8155e50cd2466ba1b9dcf` |
| 17 | `def` | [openToLocalization](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/opentolocalization--571a47bf3c99953a3327441c.md) | 269 | `declaration-track:571a47bf3c99953a3327441c92faba808f024ff5774927ee07b6befd6045e6ad` |
| 18 | `def` | [stalkToFiberRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/stalktofiberringhom--254874a409c0a3f2bab22ca4.md) | 281 | `declaration-track:254874a409c0a3f2bab22ca4bf1fb27cd85c24f476a95f43048e02f43c9568a8` |
| 19 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/germ-comp-stalktofiberringhom--96d85cf06363a37411cb16d5.md) | 293 | `result-track:96d85cf06363a37411cb16d57703555b6564fbd38ac736bc4955718e8a802159` |
| 20 | `theorem` | [stalkToFiberRingHom_germ'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/stalktofiberringhom-germ--ec6f50623ec5d42884da7111.md) | 300 | `result-track:ec6f50623ec5d42884da71114bb7ea94f4508e7d14f20286e12c2b21e5f3b2bf` |
| 21 | `theorem` | [stalkToFiberRingHom_germ](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/stalktofiberringhom-germ--d971851993b2cb3dd090d916.md) | 307 | `result-track:d971851993b2cb3dd090d9164614f71bf372c2babebcdde0d5f3ab5b6060dd5f` |
| 22 | `theorem` | [HomogeneousLocalization.mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/homogeneouslocalization-mem-basicopen--c9082b237fea38ff0bfc8255.md) | 313 | `result-track:c9082b237fea38ff0bfc825547dcb885fd9e959d18c395f13e9a0dabc9f800d3` |
| 23 | `def` | [sectionInBasicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/sectioninbasicopen--196e8af1424660dd20ed0eb2.md) | 322 | `declaration-track:196e8af1424660dd20ed0eb2de4c40a8aca3f554947350bd6f22d05d65359a67` |
| 24 | `def` | [homogeneousLocalizationToStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/homogeneouslocalizationtostalk--3d7fc3cee5609d3d26552c53.md) | 333 | `declaration-track:3d7fc3cee5609d3d26552c53e9ab8abf8205bc4cc696ac0c3d206a093396b042` |
| 25 | `def` | [Proj.stalkIso'](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/proj-stalkiso--9d769cfcbc126f6e4f31da9e.md) | 342 | `declaration-track:9d769cfcbc126f6e4f31da9e010441b64d2bb0a9aee9d60c4ff18fbbc2c90d7b` |
| 26 | `def` | [Proj.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/StructureSheaf/Variantddad5d43475f574d21d01456a31ae5d5d28d4d1aa1de0eca5d870bf09a6ea01d.lean/declarations/proj-tolocallyringedspace--8a5041d0a8de6057ccfe60ff.md) | 412 | `declaration-track:8a5041d0a8de6057ccfe60ff9e32f195e9b11f4d047e60cf8eae2c765d499604` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
