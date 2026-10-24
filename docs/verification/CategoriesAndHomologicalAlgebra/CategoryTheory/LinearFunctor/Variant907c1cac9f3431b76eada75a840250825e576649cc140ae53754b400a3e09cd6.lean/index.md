# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearFunctor.Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb62acf939cf390147da6c105d94228645533c49",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb62acf939cf390147da6c105d94228645533c49`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/functor-linear--78cb9ed9924cf0293ad060a3.md) | 31 | `declaration-track:78cb9ed9924cf0293ad060a3922db7fe93be2abb0fea19dd1c77963100b60b01` |
| 2 | `theorem` | [map_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/map-smul--fc42c532734162ae0b7a8adf.md) | 48 | `result-track:fc42c532734162ae0b7a8adfef6c3694da476a0cc0d4c2fd3a0f3f7a4bb41e95` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/instance--96e9396fc083e9ef950769d2.md) | 52 | `declaration-track:96e9396fc083e9ef950769d22403403226f14dd87a7d9792b3d5f2c94f9357c0` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/instance--ee28d2c8bf303e4de84033ad.md) | 54 | `declaration-track:ee28d2c8bf303e4de84033ad9240e93079419be5d7acf5fc78a0baaa957831b3` |
| 5 | `def` | [mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/maplinearmap--71efa13287ea5d60403a67f3.md) | 61 | `declaration-track:71efa13287ea5d60403a67f3ce2f0a1ba09860ff778daaa15b8a1b6921c5583b` |
| 6 | `theorem` | [coe_mapLinearMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/coe-maplinearmap--42a7e31e5c3fdef3737aacfb.md) | 65 | `result-track:42a7e31e5c3fdef3737aacfb1c9da090fd2e5c39e2cd8e0e90e4a3fce2c388cc` |
| 7 | `instance` | [inducedFunctorLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/inducedfunctorlinear--4c22b0fce320774c3b2fef22.md) | 75 | `declaration-track:4c22b0fce320774c3b2fef22d48845a7518aa662c1bb3a0246e04dc166606291` |
| 8 | `instance` | [fullSubcategoryInclusionLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/fullsubcategoryinclusionlinear--b7a0891e69cb3cf67dfebdf8.md) | 80 | `declaration-track:b7a0891e69cb3cf67dfebdf8f20e7b28c0ff0cbbb91a459854ff9b276cfd70d7` |
| 9 | `instance` | [natLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/natlinear--026c7f5d6c91df0c22a6baeb.md) | 89 | `declaration-track:026c7f5d6c91df0c22a6baebdecf9b5689763c08d8e97ba5f43041de9d42c2f5` |
| 10 | `instance` | [intLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/intlinear--ee02cf554a118e33724c1005.md) | 93 | `declaration-track:ee02cf554a118e33724c1005cd1e5d41f4df14da081265eea7c8db344d55ec2c` |
| 11 | `instance` | [ratLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/ratlinear--6b3f3caffca2ca3ea62d98fa.md) | 99 | `declaration-track:6b3f3caffca2ca3ea62d98fa62a65691138e99bc1d1bac8ec2c0d96cf10976dd` |
| 12 | `instance` | [inverseLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LinearFunctor/Variant907c1cac9f3431b76eada75a840250825e576649cc140ae53754b400a3e09cd6.lean/declarations/inverselinear--bc902bdb50ceafe0f99f324d.md) | 112 | `declaration-track:bc902bdb50ceafe0f99f324d939a61d251c30813bc40415a187cd72617aa5678` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
