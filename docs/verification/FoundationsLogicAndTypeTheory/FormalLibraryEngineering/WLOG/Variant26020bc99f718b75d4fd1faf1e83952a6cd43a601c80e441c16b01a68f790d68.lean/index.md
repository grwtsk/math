# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOG.Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4ca815f65a646b642f27b78ec657364f698c4ff",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4ca815f65a646b642f27b78ec657364f698c4ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WLOGResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean/declarations/wlogresult--2185843a19a014f6ebca9400.md) | 34 | `declaration-track:2185843a19a014f6ebca9400c3e47c6629e0d6f9b53dfd9e6efa94c268a9449c` |
| 2 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WLOGResult.Variant5e7d06e8188bc4b19bb5fa7e17b1ef1d352155f0d749b7dd56d4eff607f1cb64.Lean.MVarId.wlog](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-wlogr--1f0935068435fc3ba5c90e9c.md) | 72 | `declaration-track:1f0935068435fc3ba5c90e9c79dfc69278ad4b31b137d3460eba5749aafa941b` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean/declarations/syntax--8f43749a27b420f561e9f665.md) | 137 | `declaration-track:8f43749a27b420f561e9f665836766c99c67d4bbf1c8cdc699cfe8f755c76398` |
| 4 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WLOG/Variant26020bc99f718b75d4fd1faf1e83952a6cd43a601c80e441c16b01a68f790d68.lean/declarations/elab-rules--dfa67999e75bd8164f1f6db4.md) | 140 | `declaration-track:dfa67999e75bd8164f1f6db43dab7d51567925a60cf3f0982ba380192a7a138d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
