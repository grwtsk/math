# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatiblePlus.Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e45b1720e5096a6d035b3d52a768b5370423ef",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e45b1720e5096a6d035b3d52a768b5370423ef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Plus` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagramCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/diagramcompiso--59799151613533b738fb1008.md) | 49 | `declaration-track:59799151613533b738fb1008e10a22dbc6d5ce46d25aabf98f263e7a3e312c80` |
| 2 | `theorem` | [diagramCompIso_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/diagramcompiso-hom--58cc5b1351b16278cbd525bc.md) | 70 | `result-track:58cc5b1351b16278cbd525bcf02ab12c62efce6b4781a32d5a21ff1bf32d241b` |
| 3 | `def` | [plusCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/pluscompiso--8ddaab8dd735e14d1b80b655.md) | 83 | `declaration-track:8ddaab8dd735e14d1b80b65594a45b48a587174d21634465f5e3a115bc0a3d1f` |
| 4 | `theorem` | [ι_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/pluscompiso-hom--5ab5b4519806b2313ee1d163.md) | 124 | `result-track:5ab5b4519806b2313ee1d163bedc15784943ced3189db636e7b63b42c421b375` |
| 5 | `theorem` | [plusCompIso_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/pluscompiso-whiskerleft--9c34d4f114ba4976f758158c.md) | 141 | `result-track:9c34d4f114ba4976f758158c930faa50dd73613376c012f4ea95447e600b8090` |
| 6 | `def` | [plusFunctorWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/plusfunctorwhiskerleftiso--ee576e3bf27a8338cbd64cec.md) | 168 | `declaration-track:ee576e3bf27a8338cbd64cec8cbaf741edba15641cf9cbd131946b83da4eca2d` |
| 7 | `theorem` | [plusCompIso_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/pluscompiso-whiskerright--24a51796c0c55fdd31058753.md) | 177 | `result-track:24a51796c0c55fdd310587533f29f5016d93683483e670e235aa5bd5e4b62b0f` |
| 8 | `def` | [plusFunctorWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/plusfunctorwhiskerrightiso--e451e122bea8f5486a32a325.md) | 205 | `declaration-track:e451e122bea8f5486a32a32581c2ec8b3f976256c48d5e1ce8dd97c6cfcb55ec` |
| 9 | `theorem` | [whiskerRight_toPlus_comp_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/whiskerright-toplus-comp-pluscompiso-hom--4151378f69b041dae4bb0d9a.md) | 212 | `result-track:4151378f69b041dae4bb0d9a544b2378499d09db5cb7879bf5aa65fce3dc9bf7` |
| 10 | `theorem` | [toPlus_comp_plusCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/toplus-comp-pluscompiso-inv--49ef046d873302f4d87d0d23.md) | 229 | `result-track:49ef046d873302f4d87d0d2349353ef9fbf9c35311a731bb06dfbc08de014565` |
| 11 | `theorem` | [plusCompIso_inv_eq_plusLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variant56176c9fbe68613b3329a98c00fd8c63ac1553bfd20a65b5e1a2982adc1500ac.lean/declarations/pluscompiso-inv-eq-pluslift--60fa691521d6d42ac51c9e41.md) | 233 | `result-track:60fa691521d6d42ac51c9e416afc5a5919effc8351647471d1d30501ce0394a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
