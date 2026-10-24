# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommGrp.Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c136400a37e533f3eaafb4f924ba94796c2491c5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c136400a37e533f3eaafb4f924ba94796c2491c5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CommGrp_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/declarations/tocommgrp--67539c35e0b10e9311ce4557.md) | 39 | `declaration-track:67539c35e0b10e9311ce45572c2287b8b0b5aac865907dceff42a0ffee44b73a` |
| 2 | `theorem` | [monoidal_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/declarations/monoidal-hom-ext--a38c32daf2729204e4aec3c1.md) | 54 | `result-track:a38c32daf2729204e4aec3c11e1a87ef8480ffd92d6e345e6eadf9e6465b36ea` |
| 3 | `def` | [commGrpEquivalenceAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/declarations/commgrpequivalenceaux--b94619d8314abc420bb3724d.md) | 62 | `declaration-track:b94619d8314abc420bb3724d8a0f75dcb865582e74f918ec6158afb12032bf62` |
| 4 | `def` | [commGrpEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant9bad64664b0e68a2c7724dad52bfb7ad9b4b88da2f6e317f5426bccefddff854.lean/declarations/commgrpequivalence--a619646222b47b138ae59b13.md) | 82 | `declaration-track:a619646222b47b138ae59b1346c19949a43e22e8392a7412eb76b6790c34adbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
