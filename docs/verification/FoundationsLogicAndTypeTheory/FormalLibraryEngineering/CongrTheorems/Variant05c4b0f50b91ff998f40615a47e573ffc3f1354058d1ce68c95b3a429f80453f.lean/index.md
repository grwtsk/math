# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrTheorems.Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17a63349b0bee7c75c01af8e24b747246ce56ba6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17a63349b0bee7c75c01af8e24b747246ce56ba6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Cleanup` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.IsEmpty` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/initialize--d85840a5b474d905a57ef107.md) | 24 | `declaration-track:d85840a5b474d905a57ef107658e6b04c0a752e56061588dfad3966192dc2f1c` |
| 2 | `def` | [mkHCongrWithArity'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/mkhcongrwitharity--786d1792680de88c975aab3e.md) | 38 | `declaration-track:786d1792680de88c975aab3e295129795ebdb2d27fb23021fc4a89e0ef106a7a` |
| 3 | `class` | [FastSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/fastsubsingleton--8c25accbbcae838ed87ecf4c.md) | 105 | `declaration-track:8c25accbbcae838ed87ecf4c42a2f1b0c0b1d2b9dde85baea9b99af33978e82e` |
| 4 | `class` | [FastIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/fastisempty--4f3dde8f19a97d6678f8df88.md) | 110 | `declaration-track:4f3dde8f19a97d6678f8df88d4ef661c98ddc126b386251d8ca1f8e47d356e20` |
| 5 | `theorem` | [FastSubsingleton.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/fastsubsingleton-elim--22d34ce53d5b20a2b99ceaac.md) | 113 | `result-track:22d34ce53d5b20a2b99ceaac400f08e4be479145da226e3f7367671f4b25dada` |
| 6 | `theorem` | [FastSubsingleton.helim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/fastsubsingleton-helim--98353d5451958e27f09043ea.md) | 116 | `result-track:98353d5451958e27f09043ead7dd093ce10c9d6af57c99ca7fa4ff816e3ce456` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--d823f766e297d2adc44cd67d.md) | 121 | `declaration-track:d823f766e297d2adc44cd67d46b32fe068fb4bd7ff45717d7a9585f3c01e8d41` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--f0ac23d62178437db95961c8.md) | 124 | `declaration-track:f0ac23d62178437db95961c82ed9319fddcc45b1b3297929688f7e8c8e47c371` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--3307443d874bbf92bfe00f51.md) | 126 | `declaration-track:3307443d874bbf92bfe00f51c432dd1e783e9232f6dafcdd18a261b5fab21dbd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--843bad18162fe7f3874e372a.md) | 128 | `declaration-track:843bad18162fe7f3874e372ace2550683b8a9d40788d0d737671d6dc3d7b3ef9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--a3bf10a75610a244c125b2b1.md) | 130 | `declaration-track:a3bf10a75610a244c125b2b17308a0499fa9164cfb416b2c361b5e85b692a363` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--73d0999ab83f002b12f26345.md) | 132 | `declaration-track:73d0999ab83f002b12f26345e71e816911f2c0f498ee18e5fe982b6fcb10baae` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--0d122727e307c552f4068924.md) | 134 | `declaration-track:0d122727e307c552f4068924835f8f676dd551ac708b79ae6729e8e2b1c5956c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--8d64ff65b638ab14b6328487.md) | 136 | `declaration-track:8d64ff65b638ab14b6328487b1df3e80127a329845764d283c59ee6307d5451a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--13f67edd2d38c8f62435e702.md) | 138 | `declaration-track:13f67edd2d38c8f62435e702441faf8b25958b24bd36014f7ddbf94a022ed1f5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/instance--f0c6ac8d14c23946ded98046.md) | 142 | `declaration-track:f0c6ac8d14c23946ded98046ca3c7b793498601e74075342ca3e86163d0bcab5` |
| 17 | `def` | [withSubsingletonAsFast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/withsubsingletonasfast--871e1aefab9623dbffae3dc3.md) | 152 | `declaration-track:871e1aefab9623dbffae3dc3cb1deb6e8e7dbf8e143034e36adbfc551fe154b7` |
| 18 | `def` | [fastSubsingletonElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/fastsubsingletonelim--771b5701830d585763e0de42.md) | 167 | `declaration-track:771b5701830d585763e0de42fa9c579e7760834a21a36c1c5e2bcf4067da516f` |
| 19 | `def` | [mkRichHCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Variant05c4b0f50b91ff998f40615a47e573ffc3f1354058d1ce68c95b3a429f80453f.lean/declarations/mkrichhcongr--ec02b9eb954b22405cf7a3de.md) | 222 | `declaration-track:ec02b9eb954b22405cf7a3de48606d2312e05e75fc0404aed76bc7f8c7dbf856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
