# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivingCountable.Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e9b233f4cdd5c4cd115c594bc590ca8139be2b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e9b233f4cdd5c4cd115c594bc590ca8139be2b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [S](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/s--55a4ba0c49368c5a702ce66f.md) | 14 | `declaration-track:55a4ba0c49368c5a702ce66fae12fb507155b3a166cdd085b2a2f9f62292bcb5` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--1a4dbd11832dbb35e56dd480.md) | 19 | `declaration-track:1a4dbd11832dbb35e56dd480fd55278f5fc583e2fa63f1a52d38505053d8982b` |
| 3 | `inductive` | [T](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/t--08326b6341fbf774a83e10f9.md) | 24 | `declaration-track:08326b6341fbf774a83e10f99dbe2d5386d5a06676df13ec8f7f8e73bb5c97af` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--2819f815eea356ec4a1987f2.md) | 30 | `declaration-track:2819f815eea356ec4a1987f2526fbe982ab4e4ee2710daf4be19bbb019be2ddf` |
| 5 | `inductive` | [PreCantor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/precantor--f5c32420c3258523c10301ec.md) | 35 | `declaration-track:f5c32420c3258523c10301ece4de20eb1b2515043d975c58320213dbb2c2cc1e` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--ac5f857f3a85ba14132752cc.md) | 40 | `declaration-track:ac5f857f3a85ba14132752cc6a5aac5e26e1c38fa808122bf4320a969c8b5764` |
| 7 | `inductive` | [PList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/plist--7dd8bc71e0e53c35d3313683.md) | 45 | `declaration-track:7dd8bc71e0e53c35d3313683d4c1f043c6f2088c7cb666d01595a88e5393de02` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--74a162e9a1955829200b401d.md) | 50 | `declaration-track:74a162e9a1955829200b401d30721f85c138b54e5a79f13ce3ab09c29d59a4fc` |
| 9 | `inductive` | [I](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/i--bf361e4cea11f2fa1ff10b36.md) | 56 | `declaration-track:bf361e4cea11f2fa1ff10b36492e50ce749eec7051dda5fcfe463649817de768` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--ff53b15f45b064d1ff98582c.md) | 61 | `declaration-track:ff53b15f45b064d1ff98582c13e338816132002f40b055dad95ccb7fbb22c2f0` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--91e8f7c48d473c50dc12c31c.md) | 62 | `declaration-track:91e8f7c48d473c50dc12c31cf1758a36128c69ec586667866e64541053aa1559` |
| 12 | `inductive` | [T1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/t1--dde68e35dd7755f825795fe9.md) | 68 | `declaration-track:dde68e35dd7755f825795fe9cb29659c0a12b03a7a1a31995aa10349086dc91b` |
| 13 | `inductive` | [T2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/t2--124239c001b0501484c0c68c.md) | 72 | `declaration-track:124239c001b0501484c0c68c6b8f8637ed05b54e48946d0062bc8679f055eda0` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--2b2dfbf020b6e9b8c56e0c9c.md) | 78 | `declaration-track:2b2dfbf020b6e9b8c56e0c9c703820553d2426026e3a0d897f9bf7cf0d537456` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/example--f0e39aab6b26b1294fb50b38.md) | 79 | `declaration-track:f0e39aab6b26b1294fb50b385d7a78c7d73de4e7f6f0c6413cd302f2589e0076` |
| 16 | `inductive` | [Nested](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/nested--d8b630f5b05b57a5eaca645b.md) | 89 | `declaration-track:d8b630f5b05b57a5eaca645bb0299e07e078ecf8419701b79396c245a86493f1` |
| 17 | `inductive` | [Reflex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Variantab6894fcc3aee18d75b3069712de32831d7040f9cc5157b35f29611b85afe3f1.lean/declarations/reflex--ff4bf57ae5269bb94afffa69.md) | 100 | `declaration-track:ff4bf57ae5269bb94afffa6945173528d800f457940b78682c06082f6145f181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
