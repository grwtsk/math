# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qify.Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6f7a4f1b4b8dbc6a161e2d53f7a8321138e1e24",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6f7a4f1b4b8dbc6a161e2d53f7a8321138e1e24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Cast` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Zify` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/declarations/syntax--9e96c3b155e7e74e703bed7b.md) | 58 | `declaration-track:9e96c3b155e7e74e703bed7b7c304905b0c46af5582dca35bab4d44819c03005` |
| 2 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/declarations/macro-rules--cd6375c8ef71f98fce6b7429.md) | 60 | `declaration-track:cd6375c8ef71f98fce6b742909ed83035d8ce0592f18b81042d986fec22de867` |
| 3 | `lemma` | [intCast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/declarations/intcast-eq--8e95910b16660fd0416cd118.md) | 67 | `result-track:8e95910b16660fd0416cd1182d79da47e0aa504ce987e64be6759c24299f87f7` |
| 4 | `lemma` | [intCast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/declarations/intcast-le--7be1341235614478a830a2e2.md) | 68 | `result-track:7be1341235614478a830a2e2ff386704d2e1d22a54db5ee2e1a618c0a8ab122c` |
| 5 | `lemma` | [intCast_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/declarations/intcast-lt--68d4ae050218254a9da564ae.md) | 69 | `result-track:68d4ae050218254a9da564aeb320b51dc33a36789eeda6009404303e6fee4b9e` |
| 6 | `lemma` | [intCast_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Qify/Variant524d373ed0bee6b7f2104bd624755081b5fd9d95d1394cd4eb40801dcc33010a.lean/declarations/intcast-ne--4b62f89e485d33b2fb062799.md) | 70 | `result-track:4b62f89e485d33b2fb062799a6c9440b967f647e3ee3f161a4aff3713a9af8ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
