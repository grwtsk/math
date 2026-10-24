# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da83117bc669abd2250065ee901f84835fca74e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da83117bc669abd2250065ee901f84835fca74e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/comp--7f99eccbe83dd15e1941622c.md) | 30 | `declaration-track:7f99eccbe83dd15e1941622c45debeacd9af6f4e14b85ebf140a36b42a82dc79` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/instance--d156214a69a721e810c27f3b.md) | 40 | `declaration-track:d156214a69a721e810c27f3bdfd029477e6f9a8e203b56ef0cd650138d705e94` |
| 3 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/mk--81596da906809eec4923ea5c.md) | 43 | `declaration-track:81596da906809eec4923ea5cfc289fbb1ddf8612604833b80843de9e854b8b9f` |
| 4 | `def` | [get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/get--963c106300441308e18c7cc4.md) | 47 | `declaration-track:963c106300441308e18c7cc4e3464fb7370fbb58af5e2d312f7b8178302f7b91` |
| 5 | `theorem` | [mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/mk-get--27a85aea090b0e14d0e4ba6b.md) | 51 | `result-track:27a85aea090b0e14d0e4ba6b0046459a55fc50626f08d934ef0dcb841ff5fd6d` |
| 6 | `theorem` | [get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/get-mk--864c6ff7046721cdf391a53e.md) | 55 | `result-track:864c6ff7046721cdf391a53e643d6064c07aa12f63b3b79252fda22e28a9d513` |
| 7 | `def` | [map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/map--fc809f605b0a210e496b7bca.md) | 59 | `declaration-track:fc809f605b0a210e496b7bcad3d3d43d38ed0d4e1629848b606af28c53f51bfa` |
| 8 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/map--720c255b179b3d9ce3b44125.md) | 63 | `declaration-track:720c255b179b3d9ce3b441253e1fa9d2ba26e1093544f686cb947365de7f3df6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/instance--0017e3c5fe29291701a637ff.md) | 67 | `declaration-track:0017e3c5fe29291701a637ff1c598f26e3e42a0465756516ed145ee535069720` |
| 10 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/map-mk--f6de0f1ec24802d184e376cb.md) | 69 | `result-track:f6de0f1ec24802d184e376cbdf810c51a1683b7a15a2406bc72a6352d7be1658` |
| 11 | `theorem` | [get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/get-map--367304ea2d890b28c11279cd.md) | 73 | `result-track:367304ea2d890b28c11279cd50331328cba72dd8e4eae817457ec6baad8a5085` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8.lean/declarations/instance--f1af938613c52e3504ed6df6.md) | 77 | `declaration-track:f1af938613c52e3504ed6df61d5d982224ccbef00f1a5255758bee87e2999268` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
