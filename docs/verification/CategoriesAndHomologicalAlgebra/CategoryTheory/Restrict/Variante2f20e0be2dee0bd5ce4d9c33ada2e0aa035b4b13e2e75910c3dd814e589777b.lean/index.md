# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Restrict.Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b72adde9ebf9d742ea213260b5bfa03982e3f4ce",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b72adde9ebf9d742ea213260b5bfa03982e3f4ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/declarations/restrictfullyfaithful--992a2ade069d766f008935df.md) | 46 | `declaration-track:992a2ade069d766f008935df8720fe6c09281ccd43da7c5b92d874f9e2a24bae` |
| 2 | `lemma` | [map_restrictFullyFaithful_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/declarations/map-restrictfullyfaithful-unit-app--14c8c9826cefe1e3bbd9db16.md) | 66 | `result-track:14c8c9826cefe1e3bbd9db1650edb10a64e692a40acb4e5ddf1efa2638ded882` |
| 3 | `lemma` | [map_restrictFullyFaithful_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/declarations/map-restrictfullyfaithful-counit-app--2f31737ab854fea754b64fe0.md) | 72 | `result-track:2f31737ab854fea754b64fe0590b4d0dff9746d710c530b266f50270d3f91cc1` |
| 4 | `lemma` | [restrictFullyFaithful_homEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/declarations/restrictfullyfaithful-homequiv-apply--874aa536f505d2ed573d28ca.md) | 78 | `result-track:874aa536f505d2ed573d28caf45ec8d42a9c7527275ab63394da5718dda2e7df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
