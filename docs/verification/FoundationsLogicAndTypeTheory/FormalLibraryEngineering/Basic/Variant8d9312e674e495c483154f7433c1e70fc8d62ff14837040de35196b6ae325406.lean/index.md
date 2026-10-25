# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eae9e4cc2bc9b9dd478625af21ae75b5d18006c1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eae9e4cc2bc9b9dd478625af21ae75b5d18006c1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.BuiltinTerm` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.BuiltinNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.Name` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Lean.InfoTree` — import line 9; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Attr` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [holeCodeActionProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/declarations/holecodeactionprovider--bf9c063c280deed4d9b4422f.md) | 29 | `declaration-track:bf9c063c280deed4d9b4422f04b52dade497ebcdc4d4159874dcb01267cedcb6` |
| 2 | `inductive` | [FindTacticResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/declarations/findtacticresult--2668fed74f135ba16e2976ab.md) | 47 | `declaration-track:2668fed74f135ba16e2976ab3698b1307d08554f3c7cc651694d4131719ea889` |
| 3 | `def` | [findTactic?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/declarations/findtactic--9998b399d76bd1ccbb7dec98.md) | 77 | `declaration-track:9998b399d76bd1ccbb7dec9899a96f7c913a2bc68e0decf3bc933f13d5706623` |
| 4 | `def` | [findInfoTree?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/declarations/findinfotree--65aa6f297d3ff6f8af3faf3a.md) | 146 | `declaration-track:65aa6f297d3ff6f8af3faf3a28b99dbc3e6231efcac61d4fbd777b428d8345fa` |
| 5 | `def` | [tacticCodeActionProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/declarations/tacticcodeactionprovider--bdd3755a4b5b7cfca0104920.md) | 166 | `declaration-track:bdd3755a4b5b7cfca01049208bc541f2088ef1d1280579eb8995f9e953bbdf0f` |
| 6 | `def` | [cmdCodeActionProvider](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8d9312e674e495c483154f7433c1e70fc8d62ff14837040de35196b6ae325406.lean/declarations/cmdcodeactionprovider--fc9438afad2abf13609729c1.md) | 213 | `declaration-track:fc9438afad2abf13609729c1a7eca2ed18ffc2accc46512db8ce26a0663f820a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
