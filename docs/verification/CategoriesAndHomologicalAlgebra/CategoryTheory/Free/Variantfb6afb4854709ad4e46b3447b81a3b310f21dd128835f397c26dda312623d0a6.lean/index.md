# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1d0c27fc194a358d21ac8d637220ccc000d2844",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1d0c27fc194a358d21ac8d637220ccc000d2844`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freeobj--04900e02803a3cc8b3300e97.md) | 51 | `declaration-track:04900e02803a3cc8b3300e97c9407de0fc73df47aebccfe1cdc7dad9979bf618` |
| 2 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/free--697e640ce54c2109089214a3.md) | 60 | `declaration-track:697e640ce54c2109089214a30960fb9de2ef518c41cc8cbbdfbb7300aed25bce` |
| 3 | `def` | [freeObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freeobjdesc--de9ba0c1db3e968ff0551d05.md) | 75 | `declaration-track:de9ba0c1db3e968ff0551d05562898433f58c83bab3ca103cd5f1249f6b57731` |
| 4 | `def` | [freeAdjunctionUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freeadjunctionunit--cde7462ab6b7481bba716283.md) | 87 | `declaration-track:cde7462ab6b7481bba716283439751fffefb26459a89f79a27d532522240e2cf` |
| 5 | `def` | [freeHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freehomequiv--e0bb0ac7bfd55ebf39809ad2.md) | 95 | `declaration-track:e0bb0ac7bfd55ebf39809ad21ed8539f34382b13067b4b0cc72f4811964e4ada` |
| 6 | `lemma` | [free_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/free-hom-ext--da9ac6148121120572aed551.md) | 101 | `result-track:da9ac6148121120572aed5514952d5c2714319288d0b69a3e1e148f2755acfb4` |
| 7 | `def` | [freeAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freeadjunction--145629405ea28fa97dee457c.md) | 111 | `declaration-track:145629405ea28fa97dee457ce86da73ae95b9e9309d6a1328bf078e4efc098cf` |
| 8 | `lemma` | [freeAdjunction_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freeadjunction-homequiv--4f472b6926dbc70cd4afeaa3.md) | 122 | `result-track:4f472b6926dbc70cd4afeaa37fae3d5ed911026b10eb2cee01dd0bd68152709d` |
| 9 | `lemma` | [freeAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variantfb6afb4854709ad4e46b3447b81a3b310f21dd128835f397c26dda312623d0a6.lean/declarations/freeadjunction-unit-app--90aefb0c1e88360b6f529545.md) | 127 | `result-track:90aefb0c1e88360b6f529545edb7de02382e983ab4865d2037d87c91f6c8da5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
