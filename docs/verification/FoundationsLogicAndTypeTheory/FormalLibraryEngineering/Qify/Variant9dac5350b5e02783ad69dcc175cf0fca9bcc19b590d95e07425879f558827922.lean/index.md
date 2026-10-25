# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "195e7a3e32215b3a52739d94aa9e88358de10728",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `195e7a3e32215b3a52739d94aa9e88358de10728`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Cast` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/declarations/syntax--d6f8847a418a319bcc99776f.md) | 66 | `declaration-track:d6f8847a418a319bcc99776f44240d83a500ee450e4af16b26f2364359d0a9d7` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/declarations/macro-rules--d09e2544a12c3428871f5b9f.md) | 68 | `declaration-track:d09e2544a12c3428871f5b9fe21e8efa09e587d40ebb8c841c2ab515d98e4200` |
| 3 | `lemma` | [intCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/declarations/intcast-eq--e3e852b8e9ae82c8dfc3eb18.md) | 75 | `result-track:e3e852b8e9ae82c8dfc3eb182baa540b6cff9130ea86b0991361357f4fde91fb` |
| 4 | `lemma` | [intCast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/declarations/intcast-le--2098c810e88038e5cfd1296d.md) | 76 | `result-track:2098c810e88038e5cfd1296db8a26e61a7330fa30c6f6a7720fe34ae6891958a` |
| 5 | `lemma` | [intCast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/declarations/intcast-lt--402d4483bdb0706bc161efc7.md) | 77 | `result-track:402d4483bdb0706bc161efc7c6511c7704073ed374b7232c636305f6c8aaadac` |
| 6 | `lemma` | [intCast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant9dac5350b5e02783ad69dcc175cf0fca9bcc19b590d95e07425879f558827922.lean/declarations/intcast-ne--f641e0b3f8f53e4c20e861e9.md) | 78 | `result-track:f641e0b3f8f53e4c20e861e9f607d5ee7523b66f7538cc3e31cbad9ecac15ae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
