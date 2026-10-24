# Verification target: GRWTSK.Algebra.LinearAlgebra.OfBasis.Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88065f83c0f02742394220b65e548b1d7143a3f2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88065f83c0f02742394220b65e548b1d7143a3f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped--674cb7d2f271ec5216d806f1.md) | 46 | `declaration-track:674cb7d2f271ec5216d806f1751a4d0bc193676cf6af353ffc58af0208509e75` |
| 2 | `theorem` | [mem_parallelepiped_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/mem-parallelepiped-iff--5c6fbda1e2af156970f6eda5.md) | 49 | `result-track:5c6fbda1e2af156970f6eda5845cfb976fb57c9f7d2f74c0e693563c7d24fc44` |
| 3 | `theorem` | [parallelepiped_basis_eq](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped-basis-eq--2d1778447e83918d855b6b30.md) | 53 | `result-track:2d1778447e83918d855b6b30977f79dd27f42108b6c4e28633a03407d6be676d` |
| 4 | `theorem` | [image_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/image-parallelepiped--7b320d604667c7f900d3fba2.md) | 63 | `result-track:7b320d604667c7f900d3fba22a27d1b3311620df38ea511b3bd53d94387be1a8` |
| 5 | `theorem` | [parallelepiped_comp_equiv](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped-comp-equiv--84c3e4a596daf7ace1151023.md) | 71 | `result-track:84c3e4a596daf7ace11510238361523864edda24c46a22c530384bebdffe6139` |
| 6 | `theorem` | [parallelepiped_orthonormalBasis_one_dim](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped-orthonormalbasis-one-dim--cc4b03f83330e9681e54cdd1.md) | 92 | `result-track:cc4b03f83330e9681e54cdd10e5ebf9156c2d2edec53e9968bc2eea633478661` |
| 7 | `theorem` | [parallelepiped_eq_sum_segment](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped-eq-sum-segment--3716c939ae03632ef2e0e730.md) | 121 | `result-track:3716c939ae03632ef2e0e7300ff0a8b253a5aa4b8e3bd68c57c0224100bff6ee` |
| 8 | `theorem` | [convex_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/convex-parallelepiped--d8d400d98a69fcca8479a2ec.md) | 133 | `result-track:d8d400d98a69fcca8479a2ec1016f31e792c129f7908f6ccdc78d69547768aac` |
| 9 | `theorem` | [parallelepiped_eq_convexHull](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped-eq-convexhull--74f7a7418dbcbd6aa97c5a7f.md) | 138 | `result-track:74f7a7418dbcbd6aa97c5a7f1d501a0890c65bebc82aa2a1770ab6c26daa7600` |
| 10 | `theorem` | [parallelepiped_single](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/parallelepiped-single--04c3ebc21985a3edc12e1c35.md) | 143 | `result-track:04c3ebc21985a3edc12e1c357c65148ea90c29990383b6cfd0049e0a3d63dea9` |
| 11 | `def` | [Basis.parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-parallelepiped--40968a68d2d90e3170174970.md) | 180 | `declaration-track:40968a68d2d90e3170174970cd49566e7c05aa2f0ecea2a03a370a85ab9e0bf7` |
| 12 | `theorem` | [Basis.coe_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-coe-parallelepiped--fe87b70bcf5f6873163880f2.md) | 197 | `result-track:fe87b70bcf5f6873163880f2900183e25149d1b9018d0e272b799a36d78bb057` |
| 13 | `theorem` | [Basis.parallelepiped_reindex](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-parallelepiped-reindex--db057e44f5da6e2ff83a5b44.md) | 201 | `result-track:db057e44f5da6e2ff83a5b44d0d4561fe95ff9582d2962feb9b5ff64ca0b29f9` |
| 14 | `theorem` | [Basis.parallelepiped_map](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-parallelepiped-map--d3c1a71cc45e30cb71c0aa7a.md) | 206 | `result-track:d3c1a71cc45e30cb71c0aa7ac2767e6d3bc6a3f3caddda83918fe06ffac21576` |
| 15 | `theorem` | [Basis.prod_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-prod-parallelepiped--d10df31ae330ea9935f7aff5.md) | 214 | `result-track:d10df31ae330ea9935f7aff5ef214370bcbd775c1c5ea84b24f919fb43ac4561` |
| 16 | `instance` | [IsAddHaarMeasure_basis_addHaar](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/isaddhaarmeasure-basis-addhaar--bedcaf39152d954abe23352b.md) | 251 | `declaration-track:bedcaf39152d954abe23352b5b6ec0915c0ca309fb32c170de0521f525089a11` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/instance--561f9bfa2645aec3d719fb5c.md) | 254 | `declaration-track:561f9bfa2645aec3d719fb5c318b54ad9535808c8ba472c27d0e5bd1f002ff5b` |
| 18 | `theorem` | [Basis.addHaar_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-addhaar-eq-iff--775b458638e36e883487cb8a.md) | 260 | `result-track:775b458638e36e883487cb8a7c3a6ad8098ba7625f8ed3ccdbd9d2d456c61f98` |
| 19 | `theorem` | [Basis.addHaar_reindex](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-addhaar-reindex--266ea8f405388d94eb9267f5.md) | 267 | `result-track:266ea8f405388d94eb9267f5a977b9c07915b6348995015cc618a87aa7e98942` |
| 20 | `theorem` | [Basis.addHaar_self](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-addhaar-self--88de88b90ab62c11a8bfedc9.md) | 271 | `result-track:88de88b90ab62c11a8bfedc99a7689842893b8e2add96052b5549a2fc9e96bbb` |
| 21 | `theorem` | [Basis.prod_addHaar](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/basis-prod-addhaar--876ec13e4c436e60f029f84f.md) | 276 | `result-track:876ec13e4c436e60f029f84fa299bf9fa494e46228803e08aa502f5f32f7eb3f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/instance--d13bed2e21d88ab6a4cfd43d.md) | 301 | `declaration-track:d13bed2e21d88ab6a4cfd43d1ec2a7cef1520701f6723b9ea307488b45dcaf72` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/instance--df8d8d24802d36350f0c1b05.md) | 305 | `declaration-track:df8d8d24802d36350f0c1b0592fb02e8afa1b3111e7e86fa7640dfa49d0e2cb8` |
| 24 | `instance` | [Real.measureSpace](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/real-measurespace--ffbc2f74404a61e5e4cc0c0b.md) | 311 | `declaration-track:ffbc2f74404a61e5e4cc0c0bdbb563fb51c6cea1526ca14d6610d321287f1741` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/instance--bc2c70c0c2556067e921f6e4.md) | 324 | `declaration-track:bc2c70c0c2556067e921f6e4ad16765fc81939b9a3da2ecc554ec6b0cc4af92e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/instance--0fb508cccee83d52cd9cccc0.md) | 326 | `declaration-track:0fb508cccee83d52cd9cccc0a8239a14b82d48e0467fef09c7fe28f29d0161a1` |
| 27 | `def` | [measurableEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/measurableequiv--64c88048bc7f3011b1b84fb2.md) | 330 | `declaration-track:64c88048bc7f3011b1b84fb2ce7a4574be80596d70d1e1c3aa633d382cd5e597` |
| 28 | `theorem` | [coe_measurableEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/coe-measurableequiv--97a2622f2b68af274ea7ccda.md) | 335 | `result-track:97a2622f2b68af274ea7ccdaad95cd62c3a04ca304eca098e1f86b95d0fbfc33` |
| 29 | `theorem` | [coe_measurableEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant0b7e78336e906b291d96cb2960f8e962e1780e578f95bf1ab0131cb04c8211c8.lean/declarations/coe-measurableequiv-symm--910baa5c24f452d7002e0a86.md) | 337 | `result-track:910baa5c24f452d7002e0a8608458fec04a30d906f0a4821a7dc045fce9c0ff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
