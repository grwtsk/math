# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75acef8ef499f6285d2b37844bc3c4b26a0993c1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75acef8ef499f6285d2b37844bc3c4b26a0993c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.PreservesInjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/functor-preservesinjectiveobjects--927cf05539c62095f4331229.md) | 34 | `declaration-track:927cf05539c62095f43312298e0c2adcd545953c90d016c468d0fe4ecf7af6aa` |
| 2 | `instance` | [Functor.injective_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/functor-injective-obj--9579ba3623e429f0f8fed173.md) | 39 | `declaration-track:9579ba3623e429f0f8fed1736f6a348fcede33c279aa66c1745502bcbd14042d` |
| 3 | `theorem` | [Functor.injective_obj_of_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/functor-injective-obj-of-injective--44a0ab20494b722ecd5f23fb.md) | 44 | `result-track:44a0ab20494b722ecd5f23fb00ad2a2dedb3fddf26f89e273cd51b12e64e6ff2` |
| 4 | `instance` | [Functor.preservesInjectiveObjects_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/functor-preservesinjectiveobjects-comp--149ac1e3f7d7834a14fcdaff.md) | 48 | `declaration-track:149ac1e3f7d7834a14fcdaffac15cc823cfd4c7a57d76a27e4de4a197acdad14` |
| 5 | `theorem` | [Functor.preservesInjectiveObjects_of_adjunction_of_preservesMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/functor-preservesinjectiveobjects-of-adjunction-of-preservesmonomorphism--23b2c3de2d5ef486142339e3.md) | 53 | `result-track:23b2c3de2d5ef486142339e37149e15717eca8e727aba1dc5438ffadba0e8e97` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/instance--822700069af72a0a0691ee99.md) | 58 | `declaration-track:822700069af72a0a0691ee99469322bbad416b04ffa45d0b45d9bbced27483bf` |
| 7 | `theorem` | [Functor.preservesMonomorphisms_of_adjunction_of_preservesInjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant973476278f4aed51779a01e4b1a9331695b7ec8a1821d043a4d61801b8de21c1.lean/declarations/functor-preservesmonomorphisms-of-adjunction-of-preservesinjectiveobject--e6fac4b988452f442f0d3cd7.md) | 63 | `result-track:e6fac4b988452f442f0d3cd751e0e5ab42605d210495626fc3684fe3a63666f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
