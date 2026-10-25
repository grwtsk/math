# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveLetLinter.Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e326b2b395f5252cfa8019d51a2afa20f2ea2bd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e326b2b395f5252cfa8019d51a2afa20f2ea2bd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Server.InfoUtils` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeclarationNames` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.haveLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/linter-havelet--f86c6d27e723e7c36f9f74a1.md) | 50 | `declaration-track:f86c6d27e723e7c36f9f74a1c316521347d18a9263abfe9347367cf099a52235` |
| 2 | `def` | [isHave?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/ishave--ab54ad6b8a0fad7264b11115.md) | 61 | `declaration-track:ab54ad6b8a0fad7264b11115daa910e0522eb8a7bd93a1e91d6e4c6cdeadd2d4` |
| 3 | `def` | [InfoTree.foldInfoM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/infotree-foldinfom--19361b4a8328357d16e73c31.md) | 73 | `declaration-track:19361b4a8328357d16e73c310569aa5fc8b5d5b93ba59fd43cc4d46ad306d8b9` |
| 4 | `def` | [toFormat_propTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/toformat-proptypes--f9329231f45b556456744f2a.md) | 86 | `declaration-track:f9329231f45b556456744f2abce76893a10edcee38767ad49f9235ee2c178522` |
| 5 | `def` | [nonPropHaves](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/nonprophaves--ed2cb50727834462dc8499ed.md) | 96 | `declaration-track:ed2cb50727834462dc8499eda7fa101e5bddf9a84971be5d503a4798651c663d` |
| 6 | `def` | [haveLetLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/haveletlinter--bfadc5856857ed0628495428.md) | 121 | `declaration-track:bfadc5856857ed0628495428a6eea687566e534f67561d991b92ec1212fe438d` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveLetLinter/Variant6bdddfc5419c80f3c549d33995b0b237b808b98ca6d707ec2259cb4cdbcad1d7.lean/declarations/initialize--ce6a55dc52fcc532ba8c078b.md) | 132 | `declaration-track:ce6a55dc52fcc532ba8c078b83274326f818a6f1b3b2db43f517489cf0413f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
