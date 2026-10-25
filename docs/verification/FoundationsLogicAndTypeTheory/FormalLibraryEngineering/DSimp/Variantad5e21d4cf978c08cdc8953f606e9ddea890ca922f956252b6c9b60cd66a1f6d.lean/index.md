# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimp.Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41601fba560be031735f6bebc493f5d89257332b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41601fba560be031735f6bebc493f5d89257332b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.DSimprocDSL` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.Variant` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.Reduce` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.DSimproc` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabDSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/elabdsimpargs--061cb42e3e41e3a5b0489153.md) | 17 | `declaration-track:061cb42e3e41e3a5b0489153ade4e25ad3fd32a3340cba2a656393ce8092b6f6` |
| 2 | `def` | [addDSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/adddsimpargs--873c6837b3f165bbf0722b63.md) | 35 | `declaration-track:873c6837b3f165bbf0722b63d4e15905abc0415b1fa5cd40ce8020964c03e0fd` |
| 3 | `def` | [mkDSimpDefaultMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/mkdsimpdefaultmethods--fdf7ebdb8dbf3ae7352eadda.md) | 43 | `declaration-track:fdf7ebdb8dbf3ae7352eadda80418bc24432825e19c5dff4d0d157dffa270d57` |
| 4 | `def` | [trivialDSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/trivialdsimproc--c7900a3fb19b309626d4c985.md) | 49 | `declaration-track:c7900a3fb19b309626d4c985f403846cb5e0b7ad552b5c1206d514b55c4402ab` |
| 5 | `def` | [elabOptDSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/elaboptdsimproc--60286a9fa7709ee40636dc2a.md) | 52 | `declaration-track:60286a9fa7709ee40636dc2a118a68962360998de1a139e3608d29d98436895f` |
| 6 | `def` | [elabDSimpVariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/elabdsimpvariant--c915cac582ebd5d04ecd8aa6.md) | 56 | `declaration-track:c915cac582ebd5d04ecd8aa66c204208395842c75f7ea4365ee66c753f447301` |
| 7 | `def` | [evalSymDSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimp/Variantad5e21d4cf978c08cdc8953f606e9ddea890ca922f956252b6c9b60cd66a1f6d.lean/declarations/evalsymdsimp--3612dcb48e4165e505a9f9c7.md) | 65 | `declaration-track:3612dcb48e4165e505a9f9c7655aae5a83baf45b1af149e188c1881a4bf2cec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
