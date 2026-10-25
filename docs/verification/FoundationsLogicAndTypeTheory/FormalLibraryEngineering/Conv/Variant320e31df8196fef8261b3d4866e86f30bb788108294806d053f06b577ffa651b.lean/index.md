# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Conv.Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50cd77a425f8df9f8843179a71b34a1151902e95",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50cd77a425f8df9f8843179a71b34a1151902e95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Position` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SolveReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/declarations/solvereturn--d1317132f442cc6abc76710f.md) | 21 | `declaration-track:d1317132f442cc6abc76710f5f0e3b1f350b23e7687ff11f122296cfcb11a4b9` |
| 2 | `def` | [solveLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/declarations/solvelevel--75c4dc10138d58ab796e1da9.md) | 26 | `declaration-track:75c4dc10138d58ab796e1da95a0b9de57ee5b369af2d94188ed9d659cbd9fe49` |
| 3 | `def` | [insertEnter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/declarations/insertenter--904479a5fc4658defe836d9d.md) | 89 | `declaration-track:904479a5fc4658defe836d9d10ef0a5e25bb0c73aed8e84d0112056ef79d2adf` |
| 4 | `def` | [ConvSelectionPanel.rpc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/declarations/convselectionpanel-rpc--5355d6c248d9266009dcdd62.md) | 123 | `declaration-track:5355d6c248d9266009dcdd6295177ce2fb8fb8b9fb95953d84e681863b9e6d98` |
| 5 | `def` | [ConvSelectionPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/declarations/convselectionpanel--f873285b5d2e81b7353f5f0b.md) | 130 | `declaration-track:f873285b5d2e81b7353f5f0bef871addcdefbc082946c5fc25f09779e2adb8c3` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant320e31df8196fef8261b3d4866e86f30bb788108294806d053f06b577ffa651b.lean/declarations/elab--c66ea9c074fcaed972e1bc75.md) | 136 | `declaration-track:c66ea9c074fcaed972e1bc75cecc2bd4a60690a3716da3affb77840334796c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
