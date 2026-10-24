# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Oplax.Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93578bff54777e40a858819bf61a3abb606ebbce",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93578bff54777e40a858819bf61a3abb606ebbce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.NaturalTransformation.Oplax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Modification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/modification--e9587434f389a6dc709205e4.md) | 43 | `declaration-track:e9587434f389a6dc709205e4a1c3d758d9e18b7d3b5cbedccaeaf98835d7e09f` |
| 2 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/id--5d4081d67e955aacf2e71914.md) | 62 | `declaration-track:5d4081d67e955aacf2e7191420d0528c9e5514a454ce7f4e8df879ef89b618ae` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/instance--241361bab58192053789bac8.md) | 64 | `declaration-track:241361bab58192053789bac87f26c046e73b15b524f100ad635053c749762df9` |
| 4 | `theorem` | [whiskerLeft_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/whiskerleft-naturality--36149ae7b3883e28c80b9c52.md) | 74 | `result-track:36149ae7b3883e28c80b9c523a851ae61ca38812c507de225118aa2e467d67db` |
| 5 | `theorem` | [whiskerRight_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/whiskerright-naturality--f8eb26ea4ef8b3ebb84eacee.md) | 79 | `result-track:f8eb26ea4ef8b3ebb84eaceec008e17840b1e3122ed0583d2ced14c748ccdfc9` |
| 6 | `def` | [vcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/vcomp--1119bc253491528815ed31a7.md) | 88 | `declaration-track:1119bc253491528815ed31a7aef628f448d6e195d7ce924fe2f9c22d486b018b` |
| 7 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/category--33522ff948ebd784a34455b7.md) | 95 | `declaration-track:33522ff948ebd784a34455b711c87f3164fd0afe6f641d2e6389ccca934ebd10` |
| 8 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/ext--5f69dde156775b65251045b0.md) | 101 | `result-track:5f69dde156775b65251045b042b918ac9eee9ee6cd9ca9ce0fbf730d9a88efc3` |
| 9 | `lemma` | [Modification.id_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/modification-id-app--ec080f7b6d18b8dfa9ffd2d2.md) | 109 | `result-track:ec080f7b6d18b8dfa9ffd2d239bbc6abb7f7a38773b7ca33679b15ab34ce095b` |
| 10 | `lemma` | [Modification.comp_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/modification-comp-app--74fcb46b8ab2d620ad5a45a0.md) | 114 | `result-track:74fcb46b8ab2d620ad5a45a06bb4486df3cb1d3deea132ab35c581374fbe5937` |
| 11 | `def` | [ModificationIso.ofComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant23a4eb085ec05a308f282b872a045e3bf4af763ada194ba65d4d5294c2bef0b1.lean/declarations/modificationiso-ofcomponents--fa772cf5e7bca24c856b1638.md) | 122 | `declaration-track:fa772cf5e7bca24c856b163881ffcf76979bfbe0b11490ecee156abbafa05a47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
