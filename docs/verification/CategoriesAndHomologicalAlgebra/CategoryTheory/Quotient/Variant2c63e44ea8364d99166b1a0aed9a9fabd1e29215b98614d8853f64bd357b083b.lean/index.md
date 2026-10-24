# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ea668302cc4c4e943bc6b6d143e5fbc410714a9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ea668302cc4c4e943bc6b6d143e5fbc410714a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Induced` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCompatibleWithShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/iscompatiblewithshift--765dd411a2047071cbc6f5f2.md) | 35 | `declaration-track:765dd411a2047071cbc6f5f2e28b78c50e48017e14642f4d9e35eb5c2e97512a` |
| 2 | `instance` | [HasShift.quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/hasshift-quotient--b3946853d1474cd8d578ee99.md) | 45 | `declaration-track:b3946853d1474cd8d578ee997e92fdaa932b49b99d5ad474f3aa1b4bf11ae793` |
| 3 | `instance` | [Quotient.functor_commShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/quotient-functor-commshift--57a114bb24360f9ed42c33b9.md) | 53 | `declaration-track:57a114bb24360f9ed42c33b992a68db2651807d157b0bc27469bf9e40f333fc7` |
| 4 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/iso--162e38ae9f5c2a1cc5c5c7f6.md) | 70 | `declaration-track:162e38ae9f5c2a1cc5c5c7f62b7c3af483e2a3dd3e19073580cfe299db3136e1` |
| 5 | `lemma` | [iso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/iso-hom-app--3c3eebd5d76616c3f256abbf.md) | 78 | `result-track:3c3eebd5d76616c3f256abbf5d636afdd02e57cdf4f729b5bd715bf1fe68d6c8` |
| 6 | `lemma` | [iso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/iso-inv-app--41b44cd4ffddcfbb29610eb9.md) | 88 | `result-track:41b44cd4ffddcfbb29610eb921839f2c12f6a1eec65f615debd7b058f5f71642` |
| 7 | `instance` | [liftCommShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/liftcommshift--3d231847a4aa02b6668dfed6.md) | 104 | `declaration-track:3d231847a4aa02b6668dfed689750ac132a6087f8333a812fb3f791b2413bda0` |
| 8 | `instance` | [liftCommShift_compatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/declarations/liftcommshift-compatibility--c7f2fb4a9c3f1c184c4972be.md) | 137 | `declaration-track:c7f2fb4a9c3f1c184c4972beadb2943e91a69ea9642c640e823f90c15f91c528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
