# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dd4de4981da36d83740711c6a82843af6c98ca2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dd4de4981da36d83740711c6a82843af6c98ca2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/declarations/smul--00ad72c7ba7374e4be6a2dbb.md) | 40 | `declaration-track:00ad72c7ba7374e4be6a2dbb71c0e13067c88df20fb9b2af0bf88278d2c5135d` |
| 2 | `lemma` | [smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/declarations/smul-eq--79b7713c4155c87cd00abb51.md) | 50 | `result-track:79b7713c4155c87cd00abb51098f1d579f08db569a74af965f44fca721855cd8` |
| 3 | `def` | [module'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/declarations/module--6cddf3450fb7e5a24ae8f128.md) | 57 | `declaration-track:6cddf3450fb7e5a24ae8f1287912e926f2cf0447f3c6b48f44f19d1a95deb4a2` |
| 4 | `def` | [module](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/declarations/module--8bb70215356d7f83ff38a392.md) | 86 | `declaration-track:8bb70215356d7f83ff38a392bae72356d301e8d503ede202061e4b8c4687d49e` |
| 5 | `def` | [linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/declarations/linear--07c2272778a014563d779427.md) | 98 | `declaration-track:07c2272778a014563d7794277dac440a3cfcf17886fe8175b740c67a79104b69` |
| 6 | `instance` | [linear_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantd382d9cf74ddeab0d075a5afd775a54e1b28b01c472c8bb84761fd615df17010.lean/declarations/linear-functor--7528158d32cfc4307a906b98.md) | 115 | `declaration-track:7528158d32cfc4307a906b9818ef943cf47e57ace73188266dbd4ddbca89bbee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
