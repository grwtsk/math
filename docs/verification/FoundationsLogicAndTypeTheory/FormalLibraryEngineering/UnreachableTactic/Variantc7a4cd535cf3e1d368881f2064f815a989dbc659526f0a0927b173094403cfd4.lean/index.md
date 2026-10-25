# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnreachableTactic.Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1da37ef564b7a5bed4ffd3f5a565d61f32ebf123",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1da37ef564b7a5bed4ffd3f5a565d61f32ebf123`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Linter.Util` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.Command` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.Unreachable` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.unreachableTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/linter-unreachabletactic--6a93463aa42e5d2adcd1345e.md) | 23 | `declaration-track:6a93463aa42e5d2adcd1345e761d362c0775886f544b3d03df5adc6ed80c88ea` |
| 2 | `def` | [getLinterUnreachableTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/getlinterunreachabletactic--13dc2f373ff5c76cfb237b9c.md) | 30 | `declaration-track:13dc2f373ff5c76cfb237b9c784c1ea72c756f1ca0efa65c995f0fe8094a51ba` |
| 3 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/m--7df519a2a8993982613e50ca.md) | 33 | `declaration-track:7df519a2a8993982613e50caf0d6ada54062951f62d96876d1dce24d46948a05` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/initialize--15223e8fb14aaa1971156a92.md) | 39 | `declaration-track:15223e8fb14aaa1971156a92d22ad2e02e8721a0e6f5d7a7d386a7cf7208ee85` |
| 5 | `def` | [isIgnoreTacticKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/isignoretactickind--6daf0827a1abb4327dcee613.md) | 50 | `declaration-track:6daf0827a1abb4327dcee613e8bada714327c4bfd24dd5b5c20453925b9e31a0` |
| 6 | `def` | [addIgnoreTacticKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/addignoretactickind--5fa3411d91a9399ae1fef307.md) | 59 | `declaration-track:5fa3411d91a9399ae1fef30787e2423ce33aa432c1055ed7c429ccb5c9412aae` |
| 7 | `def` | [getTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/gettactics--8e8e5a2de283875214488680.md) | 64 | `declaration-track:8e8e5a2de283875214488680f6b252d91d5b541681c5b556080014c8d4764b78` |
| 8 | `def` | [eraseUsedTacticsList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/eraseusedtacticslist--562dfa4452618b913d7b9d67.md) | 75 | `declaration-track:562dfa4452618b913d7b9d67f4c366cffa25bd87f5723d5a34a3236afd2534f9` |
| 9 | `def` | [eraseUsedTactics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/eraseusedtactics--386e13fabfb09e69186b267c.md) | 79 | `declaration-track:386e13fabfb09e69186b267ccb7b3fb2260ab8b12cf8cb7bb39f4f7c1af2b376` |
| 10 | `def` | [unreachableTacticLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/unreachabletacticlinter--aacc2b638fd9fe876ecb72ec.md) | 91 | `declaration-track:aacc2b638fd9fe876ecb72ec3460df5feb29dac8d3096268b701779a3b5275cf` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnreachableTactic/Variantc7a4cd535cf3e1d368881f2064f815a989dbc659526f0a0927b173094403cfd4.lean/declarations/initialize--634ee38b92df510787360813.md) | 113 | `declaration-track:634ee38b92df510787360813c7aada9827bf0d65ff0d07fe89fcb3ceeb910a84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
