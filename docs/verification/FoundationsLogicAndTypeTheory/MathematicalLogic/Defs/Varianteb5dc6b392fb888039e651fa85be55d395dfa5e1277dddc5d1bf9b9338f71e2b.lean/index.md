# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a4df8c040e05e68c216985c24117f507e35c18f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a4df8c040e05e68c216985c24117f507e35c18f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.FreimanHom` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCorner](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscorner--50b8dee79ad287166b307f52.md) | 44 | `declaration-track:50b8dee79ad287166b307f520bf0d7f14d5e8a25849a01851aa2c2e6d016635c` |
| 2 | `def` | [IsCornerFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree--d7c6ce727fee9584f510ab34.md) | 51 | `declaration-track:d7c6ce727fee9584f510ab344afe31dd68c6a21875892a469c84b6e392b7af89` |
| 3 | `lemma` | [isCornerFree_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree-iff--f72b890ba5dd75975f2fd9a2.md) | 54 | `result-track:f72b890ba5dd75975f2fd9a27234a578517cf1430b9b19ad590dfaba9656caa0` |
| 4 | `lemma` | [IsCorner.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscorner-mono--40da464c08e556b1ca120a69.md) | 61 | `result-track:40da464c08e556b1ca120a69cf3beea175495ba8a017ab90a176b4b20b2cac36` |
| 5 | `lemma` | [IsCornerFree.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree-mono--fb5ce3ff5f959eadbab43ec9.md) | 67 | `result-track:fb5ce3ff5f959eadbab43ec95e86b147118dd985372a6ac45bdc11897b285494` |
| 6 | `lemma` | [not_isCorner_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/not-iscorner-empty--e3000ab81fd496236536104e.md) | 70 | `result-track:e3000ab81fd496236536104eae5f8ad69aa6c60e69e1c6e9cf22e2ae4e4b6e41` |
| 7 | `lemma` | [Set.Subsingleton.isCornerFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/set-subsingleton-iscornerfree--4723d55ef95f87a5260abdc0.md) | 72 | `result-track:4723d55ef95f87a5260abdc0e007234eeda03863dc5a1e33ad93e2a1c1bcadc6` |
| 8 | `lemma` | [isCornerFree_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree-empty--5b9c141d2198cab3c11e2c73.md) | 75 | `result-track:5b9c141d2198cab3c11e2c736294823ef274bafcb7d1f45d41f0b08c028a4479` |
| 9 | `lemma` | [isCornerFree_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree-singleton--446fe85e9723445c81202e61.md) | 76 | `result-track:446fe85e9723445c81202e6147c349ef78f9479d8421ac6004f7842887eeebe7` |
| 10 | `lemma` | [IsCorner.image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscorner-image--58c5fda845ff2278ee7298fb.md) | 79 | `result-track:58c5fda845ff2278ee7298fb9f8e1d798ead0e11856f502907fcb518041fd8ed` |
| 11 | `lemma` | [IsCornerFree.of_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree-of-image--9c268f0f71b5042e8365228d.md) | 86 | `result-track:9c268f0f71b5042e8365228d22392213afb71837181721087f784e72f2d64298` |
| 12 | `lemma` | [isCorner_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscorner-image--84cf92b0079ceca9f037c92d.md) | 91 | `result-track:84cf92b0079ceca9f037c92de986470b50728583a605470588fecd675b68b67f` |
| 13 | `lemma` | [isCornerFree_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianteb5dc6b392fb888039e651fa85be55d395dfa5e1277dddc5d1bf9b9338f71e2b.lean/declarations/iscornerfree-image--5d5558b59a51ee121799216d.md) | 102 | `result-track:5d5558b59a51ee121799216d6fa4c9e2b64696047b7ebc2b9a207c5cf58f2998` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
