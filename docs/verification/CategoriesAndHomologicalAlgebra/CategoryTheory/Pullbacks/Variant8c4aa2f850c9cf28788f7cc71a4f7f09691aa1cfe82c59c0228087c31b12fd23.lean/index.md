# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fadc3c593b312e7d74012419abbdbfcebee17226",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fadc3c593b312e7d74012419abbdbfcebee17226`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/pullbackobjiso--d21402b4ffd6fb6c8c778bd9.md) | 35 | `declaration-track:d21402b4ffd6fb6c8c778bd968d9cb313b72468dd785162eda0d02cc3b6a9d7e` |
| 2 | `theorem` | [pullbackObjIso_hom_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/pullbackobjiso-hom-comp-fst--0f03781508024e2c792cee7d.md) | 40 | `result-track:0f03781508024e2c792cee7d1c0f4a8a3d1e1bc1232feac8201abd7e22e19732` |
| 3 | `theorem` | [pullbackObjIso_hom_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/pullbackobjiso-hom-comp-snd--66c6a97b618be526c4c649c9.md) | 45 | `result-track:66c6a97b618be526c4c649c9054e3f3045658c18da8190cdfa91884b67a9b5bc` |
| 4 | `theorem` | [pullbackObjIso_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/pullbackobjiso-inv-comp-fst--ae9dc4df14df5fad35818ea6.md) | 50 | `result-track:ae9dc4df14df5fad35818ea61cbba9982f31c1ab3b1ec180c26170cbc56b6e8a` |
| 5 | `theorem` | [pullbackObjIso_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/pullbackobjiso-inv-comp-snd--29fcbc290ecaf2c316599be3.md) | 55 | `result-track:29fcbc290ecaf2c316599be3193f965315ceb5ca39dd060d5cedd69f689e5301` |
| 6 | `def` | [pushoutObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/pushoutobjiso--ce47e5aa51b62cd33ad3614c.md) | 66 | `declaration-track:ce47e5aa51b62cd33ad3614c2635cbf856eee4dbb8ca911cae345ebb877f30a8` |
| 7 | `theorem` | [inl_comp_pushoutObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/inl-comp-pushoutobjiso-hom--7234559b54fc21163f0580ef.md) | 71 | `result-track:7234559b54fc21163f0580efea195b00d6e8770a2bf62e45e7d7c9576290e994` |
| 8 | `theorem` | [inr_comp_pushoutObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/inr-comp-pushoutobjiso-hom--c2b3364ee806e997b05b31b5.md) | 76 | `result-track:c2b3364ee806e997b05b31b53d526e85e4aad860c57c16e3387d54356d901e20` |
| 9 | `theorem` | [inl_comp_pushoutObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/inl-comp-pushoutobjiso-inv--eb21c6aaac1898b69eed2225.md) | 81 | `result-track:eb21c6aaac1898b69eed222550b42e6b86b78c18dedc4576c8fe8f0264fe3a2b` |
| 10 | `theorem` | [inr_comp_pushoutObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant8c4aa2f850c9cf28788f7cc71a4f7f09691aa1cfe82c59c0228087c31b12fd23.lean/declarations/inr-comp-pushoutobjiso-inv--a6c822c8c59d82a67e1c60d2.md) | 86 | `result-track:a6c822c8c59d82a67e1c60d21c16f535b6e1b7d701f9a7f12e275810320a4333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
