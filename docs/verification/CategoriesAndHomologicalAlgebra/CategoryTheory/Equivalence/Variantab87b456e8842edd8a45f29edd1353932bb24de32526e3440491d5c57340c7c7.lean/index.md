# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equivalence.Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef30e1ec6d53808ec423ce90f1c1af6e8a6746dd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef30e1ec6d53808ec423ce90f1c1af6e8a6746dd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Predicate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CatCommSq` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/declarations/equivalence--ab998649476fe880ba9f1caa.md) | 48 | `declaration-track:ab998649476fe880ba9f1caa922011ec3074fa2d69fdec67604027225de26c87` |
| 2 | `lemma` | [equivalence_counitIso_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/declarations/equivalence-counitiso-app--7026733ec9c3561457756994.md) | 53 | `result-track:7026733ec9c35614577569943864d77c22f2ff3a390f26cc1395b073592fc84c` |
| 3 | `lemma` | [isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/declarations/isequivalence--522179760801c8dfb5ec9a00.md) | 64 | `result-track:522179760801c8dfb5ec9a004cdfd6bc362eb41f36c2b6f617443deb50c0296c` |
| 4 | `lemma` | [of_equivalence_source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/declarations/of-equivalence-source--48eca5156c8a74fe8830c608.md) | 76 | `result-track:48eca5156c8a74fe8830c608a201c40962fd8451b045e6850650a06a333b0657` |
| 5 | `lemma` | [of_equivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/declarations/of-equivalences--cc4c95dbb777ebdf12fb3512.md) | 108 | `result-track:cc4c95dbb777ebdf12fb3512b027de931eeb6cce18968d6855380d80d0448853` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
