# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17bdaf5309883b091f0adf22ca45a9f242da19ce",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17bdaf5309883b091f0adf22ca45a9f242da19ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/evaluationleftadjoint--25add235173351187b4ce1a2.md) | 42 | `declaration-track:25add235173351187b4ce1a2444fe219152fd1337ae5f54880a04af92267b4c2` |
| 2 | `def` | [evaluationAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/evaluationadjunctionright--060a0d8c5e1541430dbda860.md) | 56 | `declaration-track:060a0d8c5e1541430dbda86060461fb380f8b6b4150350b722d977a6bda47501` |
| 3 | `instance` | [evaluationIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/evaluationisrightadjoint--993a755a0e41781ab1d0c958.md) | 81 | `declaration-track:993a755a0e41781ab1d0c9589224e679caf4048929aca9a54bf1c6ba55a40397` |
| 4 | `theorem` | [NatTrans.mono_iff_mono_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/nattrans-mono-iff-mono-app--80594e7496078f9c5a8eea8b.md) | 86 | `result-track:80594e7496078f9c5a8eea8bb91659a85bacfa0b6944fdfe32807eba828e25f6` |
| 5 | `def` | [evaluationRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/evaluationrightadjoint--10db5b4c980d984049860a8d.md) | 101 | `declaration-track:10db5b4c980d984049860a8d3b977fed348f6ae287958d2f49325c8c3fa3b7a4` |
| 6 | `def` | [evaluationAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/evaluationadjunctionleft--daf9ac32f2e8237164f77111.md) | 115 | `declaration-track:daf9ac32f2e8237164f771113e2540a722906eddcf52c8c426b19a348cfd6bbe` |
| 7 | `instance` | [evaluationIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/evaluationisleftadjoint--b8aeb1f72adc48a8fa0cdf00.md) | 138 | `declaration-track:b8aeb1f72adc48a8fa0cdf00c67bc60e8667d9e890235df4891bced458f7187a` |
| 8 | `theorem` | [NatTrans.epi_iff_epi_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722.lean/declarations/nattrans-epi-iff-epi-app--92b2e3ec39bd19d7521fe1a6.md) | 143 | `result-track:92b2e3ec39bd19d7521fe1a6255d594417148141f918661c33d32cc1974a77e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
