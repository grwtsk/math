# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Classification.Types

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e808a93fb682311098f8b96b31365373ba4159",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classification/Types.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e808a93fb682311098f8b96b31365373ba4159`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classification/Types.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Classification/Types.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.Order.Taxonomy.Core`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrenceff64c52e66675ffeecbdd61c.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Signature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/signature--4464e54e9dfafa193ddb16ea.md) | 25 | `declaration-track:4464e54e9dfafa193ddb16eaf249ed62b634a5834a9be8325bdb6a1fce4c261d` |
| 2 | `def` | [leanTypeSignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/leantypesignature--f50793e41876ab05f3cfd712.md) | 31 | `declaration-track:f50793e41876ab05f3cfd712cfe105bb648636a55ddb0f96db7b394ca7fe6168` |
| 3 | `def` | [propositionSignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/propositionsignature--b5b03c28f2e9bdad8b28d63f.md) | 36 | `declaration-track:b5b03c28f2e9bdad8b28d63f4ea6e64cb6392f6bb17ecf80367e210fc8bb7c6d` |
| 4 | `def` | [policySignature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/policysignature--06c42edab4340bb9975d8165.md) | 41 | `declaration-track:06c42edab4340bb9975d816595716790737710db1904eb9cb8efab3347f568a4` |
| 5 | `structure` | [CheckedTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/checkedterm--064c379c91b9accf45b05595.md) | 47 | `declaration-track:064c379c91b9accf45b05595e0011f8bc3b18e5a14a4d8420a2a5ddc2c71f86e` |
| 6 | `def` | [signatureOfFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/signatureoffamily--78536e49c76fcc98465c589a.md) | 53 | `declaration-track:78536e49c76fcc98465c589ad49818dd8069c6e01ca7244720247131251c8d64` |
| 7 | `theorem` | [signatureOfFamily_el](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/signatureoffamily-el--01c06616bd015882e3483908.md) | 56 | `result-track:01c06616bd015882e3483908e5718c885e68326d2e12ab4f169f4515a3c156f6` |
| 8 | `structure` | [Binding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/binding--a8419e542b84b3284b8095d8.md) | 61 | `declaration-track:a8419e542b84b3284b8095d81fd3cf2769de04b3edcbf54083b361dbf9f40ed7` |
| 9 | `def` | [Binding.identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/binding-identity--4477d0aeafa066f99f61b8e8.md) | 65 | `declaration-track:4477d0aeafa066f99f61b8e804b44b012d449fef5c09392df70d32637b2477b5` |
| 10 | `def` | [Binding.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/binding-comp--d4575e9b7ba7ffa87c8ebe01.md) | 68 | `declaration-track:d4575e9b7ba7ffa87c8ebe016c5d216c67fb24a6fa06c519f2a2ac13cc3ab25c` |
| 11 | `structure` | [ReversibleBinding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/reversiblebinding--34281df974e5021dab2531c4.md) | 74 | `declaration-track:34281df974e5021dab2531c4032acb4865c3ad6e3fbeaac9fc0753de3c81f4d3` |
| 12 | `structure` | [RestrictionSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/restrictionsystem--50cded9280ff5130877dde42.md) | 81 | `declaration-track:50cded9280ff5130877dde420aed96264f570ffd560ed9dce4f4975f66b28b45` |
| 13 | `def` | [RestrictionSystem.CompatiblePair](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/restrictionsystem-compatiblepair--dbe7da7f103e22115dec7d83.md) | 91 | `declaration-track:dbe7da7f103e22115dec7d839568fb50d5e9f7e09c514f94adcd38d884bcc60e` |
| 14 | `def` | [RestrictionSystem.UniqueLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/restrictionsystem-uniquelift--c1d33b465a455a38d9693e16.md) | 97 | `declaration-track:c1d33b465a455a38d9693e168a8030b2636869f80888594d82f8674ca51aa78b` |
| 15 | `def` | [RestrictionSystem.bindOfUniqueLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/restrictionsystem-bindofuniquelift--ce6d19171ccc8b76a49c28a2.md) | 102 | `declaration-track:ce6d19171ccc8b76a49c28a2861b480244b88b7de5eea88b3426f1229fd1e602` |
| 16 | `theorem` | [RestrictionSystem.bindOfUniqueLift_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/restrictionsystem-bindofuniquelift-compatible--3df0952cf9efa85cdd2fbfd6.md) | 106 | `result-track:3df0952cf9efa85cdd2fbfd6d8e013e764677b25e720a8a931c03f31075f90c3` |
| 17 | `theorem` | [noUniversalConversion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Types__SourceOccurrence7faa93eed6cd75bf1a41e5da.lean/declarations/nouniversalconversion--3e9a9eb04c5ba2b3fa29f241.md) | 113 | `result-track:3e9a9eb04c5ba2b3fa29f2412ddb1bf94a90e07629b660e9f6fb2e7c2ef246dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
