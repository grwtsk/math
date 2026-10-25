# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b61db643700d0d7f5f2f62f5672142d51777453",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b61db643700d0d7f5f2f62f5672142d51777453`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Induction` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getAltNumFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean/declarations/getaltnumfields--2931792e661d54ab7a4ee749.md) | 48 | `declaration-track:2931792e661d54ab7a4ee749ea7ceca0894b1c5a658b3c5ea7033244364933be` |
| 2 | `def` | [ElimApp.evalNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean/declarations/elimapp-evalnames--a3ec8b68cb48bb37eee4da3c.md) | 54 | `declaration-track:a3ec8b68cb48bb37eee4da3c6b8c4515682bda5e56076e6594c3bb822ee650cb` |
| 3 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean/declarations/elab--570a33e769c3f98457ded9bc.md) | 102 | `declaration-track:570a33e769c3f98457ded9bc1c27a3e26abd94f1181316f63d7e61027a5b5033` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cases/Variant076d0c744fb93398bb10f72e070db378b8baef9a94d015a3c98aabf5a9676114.lean/declarations/elab--29f47b98b001035b40397c38.md) | 157 | `declaration-track:29f47b98b001035b40397c38fc3b06f91e6321532000dad0573e6b32b6a0b987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
