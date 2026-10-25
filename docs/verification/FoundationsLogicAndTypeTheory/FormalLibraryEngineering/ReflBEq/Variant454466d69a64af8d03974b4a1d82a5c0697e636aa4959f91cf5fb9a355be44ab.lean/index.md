# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflBEq.Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bc4e5004b410ac0eed88fa876a4b94b064fee24",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bc4e5004b410ac0eed88fa876a4b94b064fee24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Init.LawfulBEqTactics` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkReflBEqInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/declarations/mkreflbeqinstancecmds--a75c6f8a88482dddbe55f2ac.md) | 19 | `declaration-track:a75c6f8a88482dddbe55f2ac5c617386a7c401923d7bbffa566927f52277b27c` |
| 2 | `def` | [mkReflBEqInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/declarations/mkreflbeqinstance--17de12854d9b816602362b7b.md) | 40 | `declaration-track:17de12854d9b816602362b7bf7717219a8fdea82baf9e3db694da96605c31df0` |
| 3 | `def` | [mkReflBEqInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/declarations/mkreflbeqinstancehandler--cfa1da80e85b1b388576eeb2.md) | 45 | `declaration-track:cfa1da80e85b1b388576eeb2ab38d669cb29ea821cdbbd1d4d39690c3af6629a` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflBEq/Variant454466d69a64af8d03974b4a1d82a5c0697e636aa4959f91cf5fb9a355be44ab.lean/declarations/builtin-initialize--322c5de2cc314718dc88400e.md) | 53 | `declaration-track:322c5de2cc314718dc88400e9c78d4c544eef36a2781b2a689de5d1df558e9da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
