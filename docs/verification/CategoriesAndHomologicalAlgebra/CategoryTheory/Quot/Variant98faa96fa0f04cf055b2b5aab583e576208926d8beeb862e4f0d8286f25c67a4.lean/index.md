# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quot.Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb57ad0cd8a9043e10f0bd92df3ea8a97a21aa48",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb57ad0cd8a9043e10f0bd92df3ea8a97a21aa48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.QPF.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientQPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/declarations/quotientqpf--fd8190c18283f8c38bb70799.md) | 36 | `declaration-track:fd8190c18283f8c38bb707990dc04c4cc2fb23d6bc88a57248bb644e292fe95b` |
| 2 | `def` | [Quot1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/declarations/quot1--0572281b8b6032c5adb07718.md) | 52 | `declaration-track:0572281b8b6032c5adb077189b31eabd2c58979e1f35c2e93c29373ad57c8132` |
| 3 | `instance` | [Quot1.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/declarations/quot1-inhabited--460c6dc104cd1b37786462b2.md) | 55 | `declaration-track:460c6dc104cd1b37786462b2ef83dfc04a0125da0e72faeb1223cd2988e37d50` |
| 4 | `def` | [Quot1.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/declarations/quot1-map--e48fd446f650b62e3836b859.md) | 63 | `declaration-track:e48fd446f650b62e3836b859a8126a0fbb48a58636cb656a0aa4e47c53e57ea8` |
| 5 | `def` | [Quot1.mvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/declarations/quot1-mvfunctor--69accd9403d7a83c092f4bb6.md) | 67 | `declaration-track:69accd9403d7a83c092f4bb6f5a0d72adefcc4c709564bdbe5c6a425194e8522` |
| 6 | `def` | [relQuot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quot/Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4.lean/declarations/relquot--d3aa6111f8866bfe21f8c450.md) | 76 | `declaration-track:d3aa6111f8866bfe21f8c4504d6539a2a0a070baa728314355944538c8584be2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
