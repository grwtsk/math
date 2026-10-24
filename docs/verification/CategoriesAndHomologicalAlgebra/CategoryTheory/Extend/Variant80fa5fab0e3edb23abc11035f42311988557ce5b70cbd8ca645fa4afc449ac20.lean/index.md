# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extend.Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12db97de34bd5b3db9cd2db280bdb35ff487aba9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12db97de34bd5b3db9cd2db280bdb35ff487aba9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.LightProfinite.AsLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Extend` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/functor--b25140c610adf9980f6911f7.md) | 52 | `declaration-track:b25140c610adf9980f6911f75728272e1b9afcf70dde7a9706680b7db7a033e6` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/example--a50a84a8ca9d9df18fed2af4.md) | 57 | `declaration-track:a50a84a8ca9d9df18fed2af428b7c7fedf990a7482074ad27a9be28d8a32a9da` |
| 3 | `def` | [functorOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/functorop--c2f5b8226c9caaa1de335cda.md) | 65 | `declaration-track:c2f5b8226c9caaa1de335cdab3e6a6c742d7e369f0ca8ca5c8beaa00e1641b36` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/example--c6600a841002fdb8577bb850.md) | 69 | `declaration-track:c6600a841002fdb8577bb850108e8c7df22d6a836ef7dafe46642ed3b43b8eeb` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/example--74966302b9684cb93e46df60.md) | 73 | `declaration-track:74966302b9684cb93e46df60d7d88d6863ba4549a3c67eeec639b29ee56f69ca` |
| 6 | `theorem` | [functor_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/functor-initial--964952e7dcdd843470ab7055.md) | 80 | `result-track:964952e7dcdd843470ab7055ba0e35e2693ea4bda57f87edbf810883f4884c32` |
| 7 | `theorem` | [functorOp_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/functorop-final--7886a801f3f8d50508a7ec27.md) | 90 | `result-track:7886a801f3f8d50508a7ec27f816da9519d42b35b722d115c65cde308e4b3b9e` |
| 8 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/cone--c54a0f38d72b5741813f398c.md) | 109 | `declaration-track:c54a0f38d72b5741813f398c29513837ab65679113506ea56628f7a826691ce4` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/example--005108df08d92e4b1c61afbf.md) | 121 | `declaration-track:005108df08d92e4b1c61afbf60ecb3e9e6efd4cfbdc8347e4aa9961fa65a3301` |
| 10 | `def` | [isLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/islimitcone--23008368d90f6bf6205eb913.md) | 128 | `declaration-track:23008368d90f6bf6205eb913dea002bbb236e366ff2a0150163a4f8b9e0692a0` |
| 11 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/cocone--bb0beca3bb8b7ca4f07e33b1.md) | 146 | `declaration-track:bb0beca3bb8b7ca4f07e33b1949e651691d2fc77fd2aca84063f0bda18d435bd` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/example--99987643c54adc9fb1270c4f.md) | 158 | `declaration-track:99987643c54adc9fb1270c4f6dbb973a0799865bc053abcf1d229a3109e2e685` |
| 13 | `def` | [isColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/iscolimitcocone--698d050caf6c2138686bab6c.md) | 166 | `declaration-track:698d050caf6c2138686bab6ce3836d6dcb0e89d91c156a3cf983faeed2c36fa9` |
| 14 | `abbrev` | [fintypeDiagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/fintypediagram--8044a28016c15206af029aa8.md) | 185 | `declaration-track:8044a28016c15206af029aa83ffb644000002fd16229b0df19ff6b141e73cc20` |
| 15 | `abbrev` | [diagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/diagram--7226f2daabc4059eab7eb578.md) | 189 | `declaration-track:7226f2daabc4059eab7eb57895a685a2a80f096ae510cf5630a42beafefc2023` |
| 16 | `def` | [asLimitCone'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/aslimitcone--2cd370a6ef94c38930dc7682.md) | 193 | `declaration-track:2cd370a6ef94c38930dc76820e14d8eb10dcff7b6d4000967012bfa5bd7487b9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/instance--4ade25c28672e6729e39dafd.md) | 195 | `declaration-track:4ade25c28672e6729e39dafd21f6bd18617c8a4fd9fb58b1d376097fcb1663cf` |
| 18 | `def` | [asLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/aslimit--bd92c0112923b6ba04579391.md) | 199 | `declaration-track:bd92c0112923b6ba045793917c7582915b200316af4fa39fc745d763bb479948` |
| 19 | `def` | [lim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant80fa5fab0e3edb23abc11035f42311988557ce5b70cbd8ca645fa4afc449ac20.lean/declarations/lim--82cb7f2bcfdfe3098c4fa5a1.md) | 202 | `declaration-track:82cb7f2bcfdfe3098c4fa5a1f6ed84e38bd10ad3935794a139b79584220c240a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
