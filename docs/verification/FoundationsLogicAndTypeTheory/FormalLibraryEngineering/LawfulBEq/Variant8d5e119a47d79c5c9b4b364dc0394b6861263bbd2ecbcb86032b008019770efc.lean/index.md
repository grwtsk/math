# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulBEq.Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb437e5f57f3e4a31399783c145683c206dc9fe5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb437e5f57f3e4a31399783c145683c206dc9fe5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Init.LawfulBEqTactics` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkLawfulBEqInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/declarations/mklawfulbeqinstancecmds--222869c5e1fb69cbd0e4c097.md) | 27 | `declaration-track:222869c5e1fb69cbd0e4c09710eab464c5172d01971041c49d958987cf2d9194` |
| 2 | `instance` | [$binders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/declarations/binders--0437bd2b01af97875d5b73c1.md) | 41 | `declaration-track:0437bd2b01af97875d5b73c151c62d5ecacda059ad2825518545cc213b0bb18c` |
| 3 | `def` | [mkLawfulBEqInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/declarations/mklawfulbeqinstance--9c35e273328cc099b679c776.md) | 49 | `declaration-track:9c35e273328cc099b679c7765f50bf26f629ca982f0ba22f3aec50cc7bdc6c9b` |
| 4 | `def` | [mkLawfulBEqInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/declarations/mklawfulbeqinstancehandler--b9bdaa8dc5dce1d21e39110e.md) | 54 | `declaration-track:b9bdaa8dc5dce1d21e39110e545d120b984f8ea15a4539c9483201a444e62939` |
| 5 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEq/Variant8d5e119a47d79c5c9b4b364dc0394b6861263bbd2ecbcb86032b008019770efc.lean/declarations/builtin-initialize--1186842364ae881fd773efef.md) | 62 | `declaration-track:1186842364ae881fd773efef7299e009a10663dc84ac3ddc3aa0794ee7095cd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
