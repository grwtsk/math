# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PairwiseIntersections.Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fafb2fec95bd776622e5ee315127cf8d3cb54cf",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fafb2fec95bd776622e5ee315127cf8d3cb54cf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.OpensLeCover` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Pairwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/issheafpairwiseintersections--f99bedcc06d8cd7fd49027f1.md) | 60 | `declaration-track:f99bedcc06d8cd7fd49027f1690506d78ec38de1115a59f40bf850b3ddb0c884` |
| 2 | `def` | [IsSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/issheafpreserveslimitpairwiseintersections--bc5d15f7647bac844c1d30ce.md) | 73 | `declaration-track:bc5d15f7647bac844c1d30ce31d4f3521722779936acb54551478e3113e1579b` |
| 3 | `def` | [pairwiseToOpensLeCoverObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/pairwisetoopenslecoverobj--e35b41682dc641c7e877bcd9.md) | 90 | `declaration-track:e35b41682dc641c7e877bcd917f64487bf6ced26e0935491d4d545158923f79b` |
| 4 | `def` | [pairwiseToOpensLeCoverMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/pairwisetoopenslecovermap--6bd1a6f5156e0fc8d41657d8.md) | 101 | `declaration-track:6bd1a6f5156e0fc8d41657d80ed009ae7c2cfb05e6dbd23fcd9ee19bd2e27762` |
| 5 | `def` | [pairwiseToOpensLeCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/pairwisetoopenslecover--4a6d35140cf2ec710f715e6b.md) | 114 | `declaration-track:4a6d35140cf2ec710f715e6b94759cb60e39873d53c373a269cf40d3752785cb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/instance--c863773afefdc5358eae4f2c.md) | 120 | `declaration-track:c863773afefdc5358eae4f2c60a67ab0e5a72ec8d9199e5c1c77f3dd533018b2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/instance--81b2a7c69d6ea7902cfbb19f.md) | 128 | `declaration-track:81b2a7c69d6ea7902cfbb19ffa4f08591af2b1403a65c596b738469401fc3d66` |
| 8 | `def` | [pairwiseDiagramIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/pairwisediagramiso--92c8169e93403fe47a145182.md) | 220 | `declaration-track:92c8169e93403fe47a145182e98b8d065e48cd78fc3def930e1a0f2079e14bd3` |
| 9 | `def` | [pairwiseCoconeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/pairwisecoconeiso--71714b5e90729abec9508436.md) | 232 | `declaration-track:71714b5e90729abec95084367e701eeb50344035c6460afaba9dc643e345c5e4` |
| 10 | `theorem` | [isSheafOpensLeCover_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/issheafopenslecover-iff-issheafpairwiseintersections--f5e4ae39416f7d53a3d4ff4a.md) | 251 | `result-track:f5e4ae39416f7d53a3d4ff4ae7b8fc3dadc54eae3ba6ebd722a57c89e1babc7b` |
| 11 | `theorem` | [isSheaf_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/issheaf-iff-issheafpairwiseintersections--cc804edfb44828ea720199eb.md) | 280 | `result-track:cc804edfb44828ea720199eb45f040b29bee62b4808c1abbf90e457c3c51331e` |
| 12 | `theorem` | [isSheaf_iff_isSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/issheaf-iff-issheafpreserveslimitpairwiseintersections--88941481baa02106cef710ba.md) | 290 | `result-track:88941481baa02106cef710ba0546effd7eaebf6853a35677db33d8f22c8def55` |
| 13 | `def` | [interUnionPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackcone--42748ab8564d75b75522b71d.md) | 312 | `declaration-track:42748ab8564d75b75522b71d911645fc3112aa340a4472480491fe1276bd0f78` |
| 14 | `theorem` | [interUnionPullbackCone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackcone-pt--6213b8290bd65a856284de27.md) | 322 | `result-track:6213b8290bd65a856284de27353e1db863df463d4fe561456f06754d61aa6951` |
| 15 | `theorem` | [interUnionPullbackCone_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackcone-fst--8e8bb5f1030cef6a6c2161ee.md) | 328 | `result-track:8e8bb5f1030cef6a6c2161eed3d468a070082bd36d518ea447d7b05e29de9850` |
| 16 | `theorem` | [interUnionPullbackCone_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackcone-snd--39de9b3a6ae63a25278d9a0c.md) | 335 | `result-track:39de9b3a6ae63a25278d9a0c34ad37a2ae9b3a3a89af7564df47dbf67e4dbdc3` |
| 17 | `def` | [interUnionPullbackConeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackconelift--1f79ba3b164f48b019a12df4.md) | 348 | `declaration-track:1f79ba3b164f48b019a12df40238c5cbf2a7d411d0d635062be7e7793ac4042f` |
| 18 | `theorem` | [interUnionPullbackConeLift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackconelift-left--a407bd821afbe4f5480be6ea.md) | 383 | `result-track:a407bd821afbe4f5480be6eafe51886f58348129e5f6215d8d15919e3540dfa7` |
| 19 | `theorem` | [interUnionPullbackConeLift_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/interunionpullbackconelift-right--fbeef50fea161946c03423c8.md) | 393 | `result-track:fbeef50fea161946c03423c81723924aa9780c8605e7b09b295b5912eabff443` |
| 20 | `def` | [isLimitPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/islimitpullbackcone--101e172fc4bda78f342d44f2.md) | 404 | `declaration-track:101e172fc4bda78f342d44f237a5ab82186a80d5cc6482c50a35269e44dfa395` |
| 21 | `def` | [isProductOfDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/isproductofdisjoint--15b78c137e17f9ee325bbf4e.md) | 445 | `declaration-track:15b78c137e17f9ee325bbf4e349c5bc9e06e405e9601b98838602d807e974c26` |
| 22 | `def` | [objSupIsoProdEqLocus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/objsupisoprodeqlocus--f49c3a550de2e119d1a6f2c8.md) | 454 | `declaration-track:f49c3a550de2e119d1a6f2c88ad069ecc9e5271f64d3b4a37957df02703cf971` |
| 23 | `theorem` | [objSupIsoProdEqLocus_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/objsupisoprodeqlocus-hom-fst--56b5c66974e9131360785e87.md) | 466 | `result-track:56b5c66974e9131360785e87b4b05559c44e934ef3a92ea2d7d654110e873861` |
| 24 | `theorem` | [objSupIsoProdEqLocus_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/objsupisoprodeqlocus-hom-snd--8b4c188f384be7207c5619e8.md) | 475 | `result-track:8b4c188f384be7207c5619e8a684d04b1dee64e80070b4d0da3cd635d0d8ff85` |
| 25 | `theorem` | [objSupIsoProdEqLocus_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/objsupisoprodeqlocus-inv-fst--1f3bf318bf232a89f753796e.md) | 484 | `result-track:1f3bf318bf232a89f753796e1eaf75d996f15d509683696a3e129c7f4b523004` |
| 26 | `theorem` | [objSupIsoProdEqLocus_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/declarations/objsupisoprodeqlocus-inv-snd--474449431c96f32e59647605.md) | 493 | `result-track:474449431c96f32e596476056def0141616dea8c08547dcd60892dfbd589bf2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
