# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractArgument.Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "544842d561a5e5827f8c21e9b80ae1c182cfcf1e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `544842d561a5e5827f8c21e9b80ae1c182cfcf1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Factorization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RetractArrow.ofLeftLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/declarations/retractarrow-ofleftliftingproperty--14f68f1fadad5bb2e0d13684.md) | 39 | `declaration-track:14f68f1fadad5bb2e0d136847883deae66b5a40ea1b6cc7e4b0b6a29711822e5` |
| 2 | `def` | [RetractArrow.ofRightLiftingProperty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/declarations/retractarrow-ofrightliftingproperty--3f9f5443f81641eb714c9233.md) | 48 | `declaration-track:3f9f5443f81641eb714c9233e86e6086d4e3f5879cc754ed9ada8d3ac4182c2f` |
| 3 | `lemma` | [llp_eq_of_le_llp_of_hasFactorization_of_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/declarations/llp-eq-of-le-llp-of-hasfactorization-of-isstableunderretracts--3591398414c11777f98bd5cc.md) | 59 | `result-track:3591398414c11777f98bd5cc2623401e1bd782a0eda07402ad4fa82eef16321f` |
| 4 | `lemma` | [rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/declarations/rlp-eq-of-le-rlp-of-hasfactorization-of-isstableunderretracts--c057a4880c1691b55131d4c3.md) | 67 | `result-track:c057a4880c1691b55131d4c3dc45d9a99bd7923c62fa5f6e2a028f1dd2661508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
