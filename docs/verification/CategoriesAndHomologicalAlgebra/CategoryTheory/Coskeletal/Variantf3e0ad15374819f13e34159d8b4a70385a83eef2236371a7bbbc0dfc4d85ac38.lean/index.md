# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coskeletal.Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b2062c1d8d8c303af65bb51572ce94df8120c3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b2062c1d8d8c303af65bb51572ce94df8120c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rightExtensionInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/declarations/rightextensioninclusion--fff39af8f5c58774afd00591.md) | 53 | `declaration-track:fff39af8f5c58774afd005911eece7a910e8d03a69b37e43ccefe4012a88b78a` |
| 2 | `class` | [IsCoskeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/declarations/iscoskeletal--909b48f27c5d5061cbb0f745.md) | 64 | `declaration-track:909b48f27c5d5061cbb0f7453cc2d0c5c002b506b22e6ca86ee2f70f5b3ac2a3` |
| 3 | `def` | [IsCoskeletal.isUniversalOfIsRightKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/declarations/iscoskeletal-isuniversalofisrightkanextension--03d0b5ade639b2f36bc82e9e.md) | 76 | `declaration-track:03d0b5ade639b2f36bc82e9e2d51c5ca219117f7bea89936e97973322ef26c26` |
| 4 | `theorem` | [isCoskeletal_iff_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/declarations/iscoskeletal-iff-isiso--142313d92ff9ad67dd3d72a3.md) | 80 | `result-track:142313d92ff9ad67dd3d72a38c74a1ae6cb195b22a998daf32830286262eab7c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/declarations/instance--52180c8f1301ca5b9a7e340a.md) | 85 | `declaration-track:52180c8f1301ca5b9a7e340a49b65474f89bbd6f9c55143864fb9813d6fca29a` |
| 6 | `def` | [isoCoskOfIsCoskeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coskeletal/Variantf3e0ad15374819f13e34159d8b4a70385a83eef2236371a7bbbc0dfc4d85ac38.lean/declarations/isocoskofiscoskeletal--242ab045602dbae864fcae1a.md) | 92 | `declaration-track:242ab045602dbae864fcae1a802a88dc4624b9585a1f44c62c766bbedfbd0ba2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
