# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Naturality.Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50bfc6590078fcc958f5805d26f4b3d3b6fd6e16",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50bfc6590078fcc958f5805d26f4b3d3b6fd6e16`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Construction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatTrans` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Natural](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/declarations/natural--b021e4463c68f4ab18649162.md) | 26 | `declaration-track:b021e4463c68f4ab18649162d2df7a51dd7c789280550381c275137fcd07e414` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/declarations/id--d005f3a0dea3e2971fc6d0e7.md) | 34 | `declaration-track:d005f3a0dea3e2971fc6d0e74e44552cd01aa8c3a260da1c8fa7835a6c801021` |
| 3 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/declarations/comp--fb4c79a9a5a7c7727d5bfd9c.md) | 40 | `declaration-track:fb4c79a9a5a7c7727d5bfd9c0bdb7ec230750ad172cfa8c9ff469b437a1ca6f1` |
| 4 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/declarations/id-hom--a8a709593c57d71c15645afa.md) | 48 | `result-track:a8a709593c57d71c15645afa4b16b88c4007e6bb0fb767e54e7a5453977ebe95` |
| 5 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Naturality/Variantf7b6c75582b7177fb81ca3c91ac1b2e5e6c16a71b210f607e444bbb20ea86ade.lean/declarations/comp-hom--acf50225e0671adbf70bb865.md) | 55 | `result-track:acf50225e0671adbf70bb865ba4c8a62acb9eb10d1943c85ac36c5a14684e668` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
