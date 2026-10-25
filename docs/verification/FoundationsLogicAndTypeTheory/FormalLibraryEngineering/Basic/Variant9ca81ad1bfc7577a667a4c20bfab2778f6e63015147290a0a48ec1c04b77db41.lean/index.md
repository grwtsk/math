# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16623aede5361fff4bfac9758f5a5f8d27ad7006",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16623aede5361fff4bfac9758f5a5f8d27ad7006`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.BuiltinTerm` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Name` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Lean.InfoTree` — import line 14; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Attr` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [holeCodeActionProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/declarations/holecodeactionprovider--e29abb7d6f47b60d2eeb0311.md) | 37 | `declaration-track:e29abb7d6f47b60d2eeb0311402631724eddbf77c8d8eccfb32f6f6ce3978ead` |
| 2 | `inductive` | [FindTacticResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/declarations/findtacticresult--3922834bf576b3f3f5a62814.md) | 55 | `declaration-track:3922834bf576b3f3f5a62814553dd3d5bea7e325eb0d5fab5944f9b1e78825ec` |
| 3 | `def` | [findTactic?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/declarations/findtactic--c0b64f074874b39eb325536e.md) | 85 | `declaration-track:c0b64f074874b39eb325536e5243371bbe9f99639564668a0ec05c763710b9e8` |
| 4 | `def` | [findInfoTree?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/declarations/findinfotree--5ffd27d656e35cc294087e34.md) | 154 | `declaration-track:5ffd27d656e35cc294087e340609cb9cb2ad61fb9afe9cffea01a0a5863d762f` |
| 5 | `def` | [tacticCodeActionProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/declarations/tacticcodeactionprovider--0302c7f775a2ceff7cee779b.md) | 174 | `declaration-track:0302c7f775a2ceff7cee779b000c98bb7163b8a0fc53fcec7ba385d6ef022512` |
| 6 | `def` | [cmdCodeActionProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9ca81ad1bfc7577a667a4c20bfab2778f6e63015147290a0a48ec1c04b77db41.lean/declarations/cmdcodeactionprovider--ceed5540a9d2808511ca6a9d.md) | 221 | `declaration-track:ceed5540a9d2808511ca6a9dc3f377f4eacc671c0b0c7e3786af3ca5f39ceb11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
