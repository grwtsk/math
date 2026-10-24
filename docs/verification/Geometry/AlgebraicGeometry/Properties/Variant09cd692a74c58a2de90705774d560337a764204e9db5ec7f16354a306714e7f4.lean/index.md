# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Properties.Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed6d4a8066b68c57d9108f1b862dd6bff0a98774",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed6d4a8066b68c57d9108f1b862dd6bff0a98774`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--09d1bc3f941159184637b780.md) | 33 | `declaration-track:09d1bc3f941159184637b78003e80d6d3c43306e54f21fa9f367f60f3b7eea1b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--083c43ccf2266c3e83cced2f.md) | 40 | `declaration-track:083c43ccf2266c3e83cced2f2d0615a0f67c29e7708fd14eee036d0523867265` |
| 3 | `class` | [IsReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isreduced--96df5ec2e7aa9cb4bc708499.md) | 51 | `declaration-track:96df5ec2e7aa9cb4bc708499e3569663502a159f9a4824aaee3fe51fb3202c3a` |
| 4 | `theorem` | [isReducedOfStalkIsReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isreducedofstalkisreduced--292b701bfa8736497fd44d3a.md) | 57 | `result-track:292b701bfa8736497fd44d3a0f76c168d407f1d9a1a0a20f1db424899a8242a8` |
| 5 | `instance` | [stalk_isReduced_of_reduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/stalk-isreduced-of-reduced--f262d94c6bae91d32c3389c5.md) | 67 | `declaration-track:f262d94c6bae91d32c3389c5542b5aa8ebb55edf3c2b6aa804bbed9f64061780` |
| 6 | `theorem` | [isReducedOfOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isreducedofopenimmersion--65d06caf5d1260bf6f19dbd2.md) | 80 | `result-track:65d06caf5d1260bf6f19dbd28ee87b53ea77a937cf706a4794df955b6dfb37ba` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--17d03f64d73fbfd9ec95aa89.md) | 93 | `declaration-track:17d03f64d73fbfd9ec95aa893bd796bc83ba2690538b19d8f1e65a9db14abb9b` |
| 8 | `theorem` | [affine_isReduced_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/affine-isreduced-iff--f092b2ffaee98c630e62474a.md) | 101 | `result-track:f092b2ffaee98c630e62474ae9733a319a38dad5713a31a04281dd52c7d2b885` |
| 9 | `theorem` | [isReducedOfIsAffineIsReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isreducedofisaffineisreduced--def727c00ec6af0287870012.md) | 111 | `result-track:def727c00ec6af0287870012303b5629c1fa0bd0d6bd4869c643be4fbab94948` |
| 10 | `theorem` | [reduce_to_affine_global](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/reduce-to-affine-global--b9e34bcae9a4917d280c94cb.md) | 124 | `result-track:b9e34bcae9a4917d280c94cb0e6e92357573a7f57128d1c6c87656def600fb3b` |
| 11 | `theorem` | [reduce_to_affine_nbhd](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/reduce-to-affine-nbhd--cb1d9acb80dc00a83072eccc.md) | 145 | `result-track:cb1d9acb80dc00a83072ecccfbfb965a50d5855040ff1213738c774fa36072fb` |
| 12 | `theorem` | [eq_zero_of_basicOpen_eq_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/eq-zero-of-basicopen-eq-bot--0a5f5e6ec6f1824d236424fc.md) | 156 | `result-track:0a5f5e6ec6f1824d236424fc2b526a466fded79b5c1713a89253711cef43faac` |
| 13 | `theorem` | [basicOpen_eq_bot_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/basicopen-eq-bot-iff--0ef8b0225c84bd9a269614a9.md) | 194 | `result-track:0ef8b0225c84bd9a269614a98d789bbb772f99bead9e1efe081d37e80d961356` |
| 14 | `class` | [IsIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isintegral--dc822e803aae434a6f50bf55.md) | 203 | `declaration-track:dc822e803aae434a6f50bf55b9bf5d9dab992ec3314a64809e05be496a4e40c5` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--07de67950b99b426b4e5c420.md) | 211 | `declaration-track:07de67950b99b426b4e5c420f5ce5d00b5c99636834c71cca60b0a99f612f947` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--1d13bc2214081db8f2206a6a.md) | 215 | `declaration-track:1d13bc2214081db8f2206a6ac2d8859fff5611ab3329486b1c6aa3e44f26248e` |
| 17 | `instance` | [is_irreducible_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/is-irreducible-of-isintegral--e93bcde4f40889206488bcce.md) | 227 | `declaration-track:e93bcde4f40889206488bcce4a26b62371fd5f76139a18cb851b68c96b915ad5` |
| 18 | `theorem` | [isIntegralOfIsIrreducibleIsReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isintegralofisirreducibleisreduced--29c5de62fa5163735b96ed66.md) | 256 | `result-track:29c5de62fa5163735b96ed66e5bd9da3dce77ad78cb77796bd074480af858b6d` |
| 19 | `theorem` | [isIntegral_iff_is_irreducible_and_isReduced](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isintegral-iff-is-irreducible-and-isreduced--05d0e2d9e5a0be99c78a1a90.md) | 278 | `result-track:05d0e2d9e5a0be99c78a1a90ffc9bcaf20746f9c0e8e1e59b06e36cbbcbebaf7` |
| 20 | `theorem` | [isIntegralOfOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isintegralofopenimmersion--4655cf64e3d5e3fb0a56f376.md) | 284 | `result-track:4655cf64e3d5e3fb0a56f37645f44f6ac505f1bc7749bcdd38b88c20acfded5a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--2115d298eeb6223ee6a70363.md) | 298 | `declaration-track:2115d298eeb6223ee6a7036381bbc7a98a76fcbb392ed48731b1d3884c1b3177` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/instance--7988dfc947855b1c4727ecd5.md) | 302 | `declaration-track:7988dfc947855b1c4727ecd5dcf0dc64a7af03c5d28f87b3ffd0c3e54d8dcc0d` |
| 23 | `theorem` | [affine_isIntegral_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/affine-isintegral-iff--85a2932cef39cd4b44e773d3.md) | 305 | `result-track:85a2932cef39cd4b44e773d3bb6fc19fa7f8c7811e342dee69555c5cd4e68e68` |
| 24 | `theorem` | [isIntegralOfIsAffineIsDomain](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/isintegralofisaffineisdomain--398c26d89b48be7c3f474a6f.md) | 311 | `result-track:398c26d89b48be7c3f474a6f4f0fb6a705b1757b0aaea6dbe0f4c17c22ab0298` |
| 25 | `theorem` | [map_injective_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/Properties/Variant09cd692a74c58a2de90705774d560337a764204e9db5ec7f16354a306714e7f4.lean/declarations/map-injective-of-isintegral--92f81449a958de91fcc3cba4.md) | 318 | `result-track:92f81449a958de91fcc3cba40f30073b37d4f74363f74108ecdcaf0b6cf7c361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
