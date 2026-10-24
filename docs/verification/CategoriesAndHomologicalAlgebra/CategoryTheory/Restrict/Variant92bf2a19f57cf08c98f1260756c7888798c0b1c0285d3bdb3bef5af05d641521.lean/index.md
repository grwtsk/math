# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Restrict.Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bc3f50a92d6bf73128ad386be3366f97089ee0c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bc3f50a92d6bf73128ad386be3366f97089ee0c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/declarations/restrictfullyfaithful--9cc6502dc0fae005b4c78ac7.md) | 38 | `declaration-track:9cc6502dc0fae005b4c78ac7f8da99642a8326d4808b7bc682412f84b0b45422` |
| 2 | `lemma` | [map_restrictFullyFaithful_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/declarations/map-restrictfullyfaithful-unit-app--cdce13b2b1a0ae13d9045d33.md) | 58 | `result-track:cdce13b2b1a0ae13d9045d33df1b88421be2ebd7c395888704a9fc1b524c516b` |
| 3 | `lemma` | [map_restrictFullyFaithful_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/declarations/map-restrictfullyfaithful-counit-app--45014f6bedc7f32e722c16e7.md) | 64 | `result-track:45014f6bedc7f32e722c16e70e6bfdd762d7faca6d7827395c8262d6c46b236e` |
| 4 | `lemma` | [restrictFullyFaithful_homEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variant92bf2a19f57cf08c98f1260756c7888798c0b1c0285d3bdb3bef5af05d641521.lean/declarations/restrictfullyfaithful-homequiv-apply--729315c71f8e05f92480cc45.md) | 70 | `result-track:729315c71f8e05f92480cc45690b35c9951b7fac8528c88d4184f42a0f494019` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
