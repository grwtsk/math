# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Zero.Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e410ee454c7a61981d2e1d5f14fc79505c292af",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e410ee454c7a61981d2e1d5f14fc79505c292af`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/iszero-of-subsingleton--9cf553fee8b9200ab7bdbd53.md) | 35 | `result-track:9cf553fee8b9200ab7bdbd53cbf843d970b2b50c0243d797739b3f9c60741c6b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/instance--cf470052eefb181311c7d9b6.md) | 44 | `declaration-track:cf470052eefb181311c7d9b63feb534e113fa721464e50c870d189a12b193930` |
| 3 | `lemma` | [subsingleton_of_isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/subsingleton-of-iszero--846920d565d64c8f57f851a4.md) | 48 | `result-track:846920d565d64c8f57f851a4683daf7a78ce9dbc1ebf7740674a440f54b07cc1` |
| 4 | `lemma` | [isZero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/iszero-iff-subsingleton--67db6cd343192c048e2061a8.md) | 53 | `result-track:67db6cd343192c048e2061a8b0ae43a09721e14c3861c2c2f6006dc438ff9fe5` |
| 5 | `lemma` | [isZero_of_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/iszero-of-iff-subsingleton--534b2db1ca5872fd87a4c30f.md) | 57 | `result-track:534b2db1ca5872fd87a4c30f00db77397adf7769ce13d24e97329d324b3c9777` |
| 6 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/iszero-of-subsingleton--81762df9a1c1ddc29519fe9a.md) | 66 | `result-track:81762df9a1c1ddc29519fe9adcfcf200fab42956c094a9ba8240125503bd1ea4` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/instance--5dc833df9ee48fe95fbbc92c.md) | 75 | `declaration-track:5dc833df9ee48fe95fbbc92c46809c20f516948f76fb043501d91a410b6fd860` |
| 8 | `lemma` | [subsingleton_of_isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/subsingleton-of-iszero--b90a382b6b471171d7eee8b3.md) | 79 | `result-track:b90a382b6b471171d7eee8b3f0c9d76e9b7a921bf9e991c34210544e74840d73` |
| 9 | `lemma` | [isZero_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/iszero-iff-subsingleton--e2856c58f95f0fd75062a462.md) | 84 | `result-track:e2856c58f95f0fd75062a4627ed2537c4970542b3097ee9b0af3f30c2dfa808d` |
| 10 | `lemma` | [isZero_of_iff_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Zero/Variant0ee57eb9603dad8683e79ac370f5e52ddbc9d4f3bafdfe87b123994427cfe398.lean/declarations/iszero-of-iff-subsingleton--1b74ad6225593ea366b4999a.md) | 88 | `result-track:1b74ad6225593ea366b4999a5b4dab4eb5d8f5c5487273bd16f963d7e57add32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
