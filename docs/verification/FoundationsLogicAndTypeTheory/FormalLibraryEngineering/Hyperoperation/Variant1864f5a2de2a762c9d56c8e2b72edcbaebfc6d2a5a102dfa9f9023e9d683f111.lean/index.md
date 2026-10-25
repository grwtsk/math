# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hyperoperation.Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad7d9bfcbf240d9d9dd2f6c9dcd2a91988c550f4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad7d9bfcbf240d9d9dd2f6c9dcd2a91988c550f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hyperoperation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation--09f54753542685f6039c983b.md) | 36 | `declaration-track:09f54753542685f6039c983bcd836a5df009216ca91d29ec749527220d51a0ea` |
| 2 | `theorem` | [hyperoperation_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-zero--1f11b53a0849710fb84c8306.md) | 47 | `result-track:1f11b53a0849710fb84c8306a3f349d06ab09476d5b1bf8c8739c0ea383a09b9` |
| 3 | `theorem` | [hyperoperation_ge_three_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-ge-three-eq-one--39272b839041717ccc512664.md) | 51 | `result-track:39272b839041717ccc512664c0dc742407b68d9fd4081550d0c1cd4a137cdd5e` |
| 4 | `theorem` | [hyperoperation_recursion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-recursion--4a28dcdbae672ca3aeaa9909.md) | 55 | `result-track:4a28dcdbae672ca3aeaa99097dee3334fcdb34558bf565f5b0c44cd3c0f9b371` |
| 5 | `theorem` | [hyperoperation_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-one--d043ff6776adf33984ed3ae4.md) | 62 | `result-track:d043ff6776adf33984ed3ae40808dfc850cf8d8ade491b79e64c3e423af9a76b` |
| 6 | `theorem` | [hyperoperation_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-two--1d6907eaf2c1d5137e559fbc.md) | 71 | `result-track:1d6907eaf2c1d5137e559fbc7c959a5f4d991ffd4bfac9f3d8831856872f4d99` |
| 7 | `theorem` | [hyperoperation_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-three--9f73bd89cb7436724c739eeb.md) | 84 | `result-track:9f73bd89cb7436724c739eeb086b8f61a5711d1fd675e1a96493fa83aad3bdbb` |
| 8 | `theorem` | [hyperoperation_ge_two_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-ge-two-eq-self--8f0a3e9fee4d5cf93fdaa8c9.md) | 93 | `result-track:8f0a3e9fee4d5cf93fdaa8c9159241b52bcc56e9748c50e1dcad9bb54b6736e0` |
| 9 | `theorem` | [hyperoperation_two_two_eq_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-two-two-eq-four--3550b5de3f731ea62f5325c6.md) | 100 | `result-track:3550b5de3f731ea62f5325c62ccc339ef74b734c3f3e1ff058561b755576cc9e` |
| 10 | `theorem` | [hyperoperation_ge_three_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-ge-three-one--8ee57cfcc55dd3668c95a10d.md) | 106 | `result-track:8ee57cfcc55dd3668c95a10dd45116049f302509b0712a1a7fc8527e320abfd4` |
| 11 | `theorem` | [hyperoperation_ge_four_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hyperoperation/Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111.lean/declarations/hyperoperation-ge-four-zero--b043cc43e0689c1a8789d627.md) | 118 | `result-track:b043cc43e0689c1a8789d627c9bb38d8940594a602637744ae3dad38fca03a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
