# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Covering.Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df4be3e457222a67c5f15c87fb97d086665f5f2d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df4be3e457222a67c5f15c87fb97d086665f5f2d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Cast` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Sum` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Quiver.Star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-star--1a1e0c704612671b3da9aa5b.md) | 62 | `declaration-track:1a1e0c704612671b3da9aa5bda14acc81ad79ef3e28ea9a78d8aa0f3eae08da4` |
| 2 | `abbrev` | [Quiver.Star.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-star-mk--76409446672fba0d9217d796.md) | 66 | `declaration-track:76409446672fba0d9217d7961ea4c3b7263a908677a9cc4040f4134b6ceefebb` |
| 3 | `abbrev` | [Quiver.Costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-costar--9832e075858042ef2ff22811.md) | 71 | `declaration-track:9832e075858042ef2ff228117b9210ac5d9aabc349b8910cf54d317a23fc9b4b` |
| 4 | `abbrev` | [Quiver.Costar.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-costar-mk--ccb5f0736cb994de2b48fa9f.md) | 75 | `declaration-track:ccb5f0736cb994de2b48fa9f5b0312f3014b5cbdfef2df01ef10427aec0162e6` |
| 5 | `def` | [Prefunctor.star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-star--363a20d6faf493f0c1bd9b46.md) | 80 | `declaration-track:363a20d6faf493f0c1bd9b46aef991cba141a521f685230314f18165353a9c73` |
| 6 | `def` | [Prefunctor.costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-costar--0b01fcb6f8aab971ffe9f051.md) | 85 | `declaration-track:0b01fcb6f8aab971ffe9f051ebe0e536f0236e85746e0668c63a442723c84fc8` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-star-apply--d839ddc68be8dbb0723655be.md) | 89 | `result-track:d839ddc68be8dbb0723655bef92ae2a7a060573d6a088d69c400cebb558c7174` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-costar-apply--84c59ac5cec80e36b5e73470.md) | 94 | `result-track:84c59ac5cec80e36b5e734708ff7bb45c7df57b93b9b9e7eff71bdaf0c8ad5ed` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-star-comp--1b5e3fb0c4ff3b82bbc874a0.md) | 98 | `result-track:1b5e3fb0c4ff3b82bbc874a02dea89012ee639c5907c52273c50a91967e37faf` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-costar-comp--e52fb1be32641e0ac27cb300.md) | 101 | `result-track:e52fb1be32641e0ac27cb300869a41d0dd3dbc5b514d366b641cfb394477dcf9` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering--acc37cfc0fb34c2c5bacc892.md) | 105 | `declaration-track:acc37cfc0fb34c2c5bacc892696cb419e4d2ba139892cf9253177848289b93f7` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-map-injective--aa415856887fc89b88ce9e18.md) | 110 | `result-track:aa415856887fc89b88ce9e18eeb5df8a6ec68e93baa9c6cdafdf7547d13a2e66` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-comp--ebb6fbc64f1ca7f62ae176de.md) | 116 | `result-track:ebb6fbc64f1ca7f62ae176de3328226484839c30a3eaae1ff17f37a10d7fa6d4` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-of-comp-right--fdb4aafd517676c600416a2a.md) | 120 | `result-track:fdb4aafd517676c600416a2a0a7ce8ad5ef962a664fd575a73ea68840eb8962c` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-of-comp-left--6ed33e48bf40b615ba5849e4.md) | 125 | `result-track:6ed33e48bf40b615ba5849e430dbf795decce8754163d65241cb82e0ec02753b` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-symmetrifystar--8798cc018fe93461de972e91.md) | 133 | `declaration-track:8798cc018fe93461de972e911c3a4b1ddd25f6d5ef82760a49488e77972d8ade` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-symmetrifycostar--9c2d0913df8de27f69e9d0dc.md) | 139 | `declaration-track:9c2d0913df8de27f69e9d0dc0fc8faac9e839347bcf047989bf127dfcad1b5cf` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-symmetrifystar--60ca79c81d5a266f1d699139.md) | 143 | `result-track:60ca79c81d5a266f1d6991399e55f3de2c039666b0da0ff4f3ecaf52dba1c526` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-symmetrifycostar--744e096132a0f769d260ed3e.md) | 154 | `result-track:744e096132a0f769d260ed3e4126fa3c08012c91abeeed38e45f7349e729c547` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-symmetrify--1a8c6c71adfefc4c8f0f6a2e.md) | 165 | `result-track:1a8c6c71adfefc4c8f0f6a2ea82dd2fa031d983bc8b6dfa2dac23a69fb074fd8` |
| 21 | `abbrev` | [Quiver.PathStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-pathstar--4f5c6695dedb6e09053d07b7.md) | 172 | `declaration-track:4f5c6695dedb6e09053d07b7cd97e25faad4e012137fc60d3c453da523494d14` |
| 22 | `abbrev` | [Quiver.PathStar.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-pathstar-mk--0198b259be284b49864bbc1d.md) | 176 | `declaration-track:0198b259be284b49864bbc1d5add72b740187a7c560f49463eb91f2558c3dfa3` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-pathstar--9cfc60399d2af8812b7c7497.md) | 180 | `declaration-track:9cfc60399d2af8812b7c74978930bdc7f92ef8f28153dc8c2abab6ef8e1f3164` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-pathstar-apply--cd4765341d3dafe2bb46e49e.md) | 184 | `result-track:cd4765341d3dafe2bb46e49e339676658176d77cf85d95352d4e60f4ce3114dc` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-pathstar-injective--183122e433e76ff7d57e43b0.md) | 188 | `result-track:183122e433e76ff7d57e43b0d339bd2e50aeb0cb1a796c7e4ad3b630bddcc4b2` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-pathstar-surjective--6c756bec80eab03df4b2699d.md) | 230 | `result-track:6c756bec80eab03df4b2699d4e30c3d5c898814eda0792b7d3f0214e8dd48035` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-pathstar-bijective--d325ca6d0d78817e4e0f9682.md) | 251 | `result-track:d325ca6d0d78817e4e0f96827852c8edde0116a85e46515ef84846ef2122ebc2` |
| 28 | `theorem` | [pathStar_bijective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/pathstar-bijective--baaf86298ec071f9bf99a7fc.md) | 259 | `result-track:baaf86298ec071f9bf99a7fcae867f92e37e7e12b151af860a9d6fb518360e2b` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-starequivcostar--6b36edc9f49fbed744e1c4ef.md) | 271 | `declaration-track:6b36edc9f49fbed744e1c4ef15a1700689aedc4933a4d5c2161527f9ef280081` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-starequivcostar-apply--109de16ef6279359d3337c50.md) | 278 | `result-track:109de16ef6279359d3337c50cc5ba9fa2d4d2932c7c0beca61cf77e125ecfb9a` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/quiver-starequivcostar-symm-apply--6cb5d722b1f484c272a369aa.md) | 283 | `result-track:6cb5d722b1f484c272a369aa3539f019228f1df394fccd1c81de33b90ce8c139` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-costar-conj-star--e858f25978b3e2582168266d.md) | 289 | `result-track:e858f25978b3e2582168266d7daf0dc64be29c6afa84d0070c92af5c8e0142d3` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-bijective-costar-iff-bijective-star--5d3078fd567eb7fc670a8f2c.md) | 293 | `result-track:5d3078fd567eb7fc670a8f2c2cdc52c4288c5e1254058d0c43be4564c0aa87ff` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-of-bijective-star--bb1f6f8f0154be72b61073b2.md) | 297 | `result-track:bb1f6f8f0154be72b61073b2b185df10fda6148dd2b3a72eb323bb1af0f42c4c` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean/declarations/prefunctor-iscovering-of-bijective-costar--532848e8ff56e33d00d8ba88.md) | 300 | `result-track:532848e8ff56e33d00d8ba88cff996de9c77dcd77ceda9f9435d695873021f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
