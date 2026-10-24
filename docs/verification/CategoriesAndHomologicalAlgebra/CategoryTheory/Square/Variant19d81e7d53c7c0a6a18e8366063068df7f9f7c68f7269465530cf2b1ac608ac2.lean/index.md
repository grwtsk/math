# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1649423248eee3ea43256f8810868ace50297f80",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1649423248eee3ea43256f8810868ace50297f80`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Arrow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CommSq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/square--3aaa3ae3cc1446586177f7b4.md) | 51 | `declaration-track:3aaa3ae3cc1446586177f7b4ed058b04abbbcbbd46b0ec518eca12d28db103fd` |
| 2 | `lemma` | [commSq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/commsq--59c2b8b07d8902660bfe3e67.md) | 74 | `result-track:59c2b8b07d8902660bfe3e67f77fe75392c508c676ed5b67bff54a190a8aefd7` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/hom--3352c8c12f034a0d8d285b48.md) | 80 | `declaration-track:3352c8c12f034a0d8d285b48de70342c102d190b70c622a77ead296b14644178` |
| 4 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/id--af01bb1f91f104a132439f23.md) | 100 | `declaration-track:af01bb1f91f104a132439f23df9ea15c91367fd2fecbcc87d24af740d729c001` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/comp--84e02a75fe119e8caf361d53.md) | 108 | `declaration-track:84e02a75fe119e8caf361d53a7ce2923da3ef75a6effc377ef64bfe53e0b0039` |
| 6 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/category--4f2d4e7cde94c130abea924a.md) | 117 | `declaration-track:4f2d4e7cde94c130abea924ac9cd7203784c0cfcc280047b6135a8cfd67d5ed1` |
| 7 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/hom-ext--2c796c948a6da6bfd46910d8.md) | 123 | `result-track:2c796c948a6da6bfd46910d853850cdec9e17f707a623a5ff47610407ea7d373` |
| 8 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/isomk--81cc1eceff12f7efd5be9100.md) | 129 | `declaration-track:81cc1eceff12f7efd5be9100225319ca18fe357ef4e36dcc16d15e4b3d6ec044` |
| 9 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/flip--1f4a119180e6fb4bbadbc903.md) | 157 | `declaration-track:1f4a119180e6fb4bbadbc90330c0e2c87644e151b3861451bca3dee59f74f102` |
| 10 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/flipfunctor--d8427ce394af1a381d927021.md) | 166 | `declaration-track:d8427ce394af1a381d9270214e985b22d5df847740b828e563e1dc409f0619e0` |
| 11 | `def` | [flipEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/flipequivalence--9f86028a6ac8ce1b0a9914fd.md) | 176 | `declaration-track:9f86028a6ac8ce1b0a9914fde21360b60f22d6e194ffc4b7e0741ad529ad2b5a` |
| 12 | `def` | [toArrowArrowFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/toarrowarrowfunctor--0e62373ebe478f29a4971aae.md) | 186 | `declaration-track:0e62373ebe478f29a4971aaeec1d2c7a7d2c108dc4316086d058371f98578b36` |
| 13 | `def` | [fromArrowArrowFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/fromarrowarrowfunctor--0e6f7e0ceb7ece89b3722c72.md) | 195 | `declaration-track:0e6f7e0ceb7ece89b3722c725674ad90a8e7057b1ef9d11ce0996776a1344d80` |
| 14 | `def` | [arrowArrowEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/arrowarrowequivalence--9f7d0e448246b649e9d57794.md) | 211 | `declaration-track:9f7d0e448246b649e9d5779403391952573670200362cbf6c4c14bc7b85ad2f5` |
| 15 | `def` | [toArrowArrowFunctor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/toarrowarrowfunctor--d3f83b2ebb0f8ee35b24c46a.md) | 221 | `declaration-track:d3f83b2ebb0f8ee35b24c46abc6165ad10d5d98514692464dfcfc289d678a238` |
| 16 | `def` | [fromArrowArrowFunctor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/fromarrowarrowfunctor--51d8e681d89440c4ca19b017.md) | 230 | `declaration-track:51d8e681d89440c4ca19b0174241e2f8148308a8215388051dc5ff60890a2273` |
| 17 | `def` | [arrowArrowEquivalence'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/arrowarrowequivalence--817f86d7b716afa11bdf0372.md) | 246 | `declaration-track:817f86d7b716afa11bdf0372b18437168b28a4303e3c23c543229db147a0c84e` |
| 18 | `def` | [evaluation₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/evaluation--667292d0b618cb64a2ff0b88.md) | 254 | `declaration-track:667292d0b618cb64a2ff0b8819c2d0ca5302c176b7b4e2747b9d893eb7f7c69b` |
| 19 | `def` | [evaluation₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/evaluation--23c1fdbca7c23d54f479c2dd.md) | 260 | `declaration-track:23c1fdbca7c23d54f479c2dd159b62e88dc8bed89ded242ac31c4d88a3519179` |
| 20 | `def` | [evaluation₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/evaluation--22be6925ce7502530e49d709.md) | 266 | `declaration-track:22be6925ce7502530e49d7093e94cf2f1b9c0b881ef9c4e830979cd7a4bb18a6` |
| 21 | `def` | [evaluation₄](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/evaluation--b77c4879875329b46d9984e7.md) | 272 | `declaration-track:b77c4879875329b46d9984e7f5ea6ac950298d69d8bd920a3ac642e39a386855` |
| 22 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/op--8aa48da7c464f41d4fe69916.md) | 279 | `declaration-track:8aa48da7c464f41d4fe69916aa9dc8be83f24e2f74ea7b8876619a60991767cc` |
| 23 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/unop--b43444da64653d68ce04b0f9.md) | 289 | `declaration-track:b43444da64653d68ce04b0f95f40a9e4c4ccf38c6be6c2f02a50478da6d846c8` |
| 24 | `def` | [opFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/opfunctor--d194e6c810712427d771c2b5.md) | 298 | `declaration-track:d194e6c810712427d771c2b52fd62126e70d174eb28d3a117a81f657f4aa5c74` |
| 25 | `def` | [unopFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/unopfunctor--2eee1e3837ce7a6085709c80.md) | 311 | `declaration-track:2eee1e3837ce7a6085709c800c317b9e871094375a6979c8eef6d93b04418bba` |
| 26 | `def` | [opEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/opequivalence--7f5a3897e8e7ec85a4cd3beb.md) | 324 | `declaration-track:7f5a3897e8e7ec85a4cd3beb3c988e4660f213c58f1b2c974763d2e6aa2d27cc` |
| 27 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/map--f372bc2c7bcb8405b2a46570.md) | 332 | `declaration-track:f372bc2c7bcb8405b2a46570dbd984505efae1095cb5e65ee8f8b006d6001e65` |
| 28 | `def` | [mapSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/mapsquare--c5c22b064f89e3798305131b.md) | 347 | `declaration-track:c5c22b064f89e3798305131bae8055b572f99ce1fb69ae12f0e7ce2569497f95` |
| 29 | `def` | [NatTrans.mapSquare](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/nattrans-mapsquare--1b33b873629c03ff5309397e.md) | 364 | `declaration-track:1b33b873629c03ff5309397e852682457b906ffb89376cb8e8a62c79e98f00cf` |
| 30 | `def` | [Square.mapFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant19d81e7d53c7c0a6a18e8366063068df7f9f7c68f7269465530cf2b1ac608ac2.lean/declarations/square-mapfunctor--538534b95d0733c6b94671cb.md) | 374 | `declaration-track:538534b95d0733c6b94671cb3f2e2b0c9786350e9c6ece91f44860bad3cb16c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
