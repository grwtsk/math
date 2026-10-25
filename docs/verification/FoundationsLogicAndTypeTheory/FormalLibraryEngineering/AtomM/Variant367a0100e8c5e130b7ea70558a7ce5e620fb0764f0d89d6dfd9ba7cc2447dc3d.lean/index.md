# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtomM.Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "320c78ba254ca70307e8ef34005cecbc28c00f42",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `320c78ba254ca70307e8ef34005cecbc28c00f42`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Types` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtomM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/atomm-context--d48cf2c024998facb9747a1a.md) | 34 | `declaration-track:d48cf2c024998facb9747a1aaadd35dceda5d1a12ac6866dbab001ac28411f09` |
| 2 | `structure` | [AtomM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/atomm-state--5a07997a4413296eb462901e.md) | 43 | `declaration-track:5a07997a4413296eb462901e4086b8366f9811295f8acf0595713a19901ed150` |
| 3 | `abbrev` | [AtomM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/atomm--ac71316d3ba4f2b1dd25c9c9.md) | 48 | `declaration-track:ac71316d3ba4f2b1dd25c9c9a59f8aee6ba909a614ad4d7b3c0a6144c8dfd4a7` |
| 4 | `def` | [AtomM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/atomm-run--03c431dd2b3dc3deb5b24112.md) | 51 | `declaration-track:03c431dd2b3dc3deb5b241126c1cc7f7b725cf8fd0cf441dd9a0dd59614617b8` |
| 5 | `def` | [isDefEqSafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/isdefeqsafe--4523ebd1db0414b2ae44ae84.md) | 61 | `declaration-track:4523ebd1db0414b2ae44ae84b2563ea7811f3bfada70275dfb5ced1ad7533934` |
| 6 | `def` | [AtomM.addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/atomm-addatom--277ae630d14695851bf1439a.md) | 71 | `declaration-track:277ae630d14695851bf1439a63e2f4dd347c7e1e540c5bb907d963828f93fd01` |
| 7 | `def` | [AtomM.addAtomQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant367a0100e8c5e130b7ea70558a7ce5e620fb0764f0d89d6dfd9ba7cc2447dc3d.lean/declarations/atomm-addatomq--9652601ee795892f4c9b41c7.md) | 88 | `declaration-track:9652601ee795892f4c9b41c7ca1451300f0831834a617987e26f3a4b0cc7ec28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
