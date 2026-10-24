# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiWithInjectiveKernel.Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0287fb8c1747e1e6f28fccbf444e1e016612318",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0287fb8c1747e1e6f28fccbf444e1e016612318`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [epiWithInjectiveKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/declarations/epiwithinjectivekernel--177f81eb0b60b6c3a57eacef.md) | 39 | `declaration-track:177f81eb0b60b6c3a57eacefb2879d69df50662ea2baef28a68ff6738e8dbec8` |
| 2 | `lemma` | [epiWithInjectiveKernel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/declarations/epiwithinjectivekernel-iff--82569a3de18f891c1078ec32.md) | 45 | `result-track:82569a3de18f891c1078ec32c8921b68f2e8b8349f2e4b3981583e9020834ec2` |
| 3 | `lemma` | [epiWithInjectiveKernel_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/declarations/epiwithinjectivekernel-of-iso--e4de045fe3f52ae572ec45f1.md) | 61 | `result-track:e4de045fe3f52ae572ec45f1bc251e2d47bd82ca85a8b048cd8f49f116dc4c29` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variant7ed2beeb4ac4cc7b2d7dfb818a0cda795ec34a3ec1496efc5cf1439822d4e346.lean/declarations/instance--2f837a79a42cb78a21f39811.md) | 67 | `declaration-track:2f837a79a42cb78a21f39811ccb311e8775600635c56a0e0c24da556a89edc2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
