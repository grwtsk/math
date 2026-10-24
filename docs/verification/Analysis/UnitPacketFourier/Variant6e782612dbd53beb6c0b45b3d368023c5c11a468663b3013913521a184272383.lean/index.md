# Verification target: GRWTSK.Analysis.UnitPacketFourier.Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba997b48a4d59ce1d47128081d0f743ed73d3e34",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/index.md) · [Full source](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba997b48a4d59ce1d47128081d0f743ed73d3e34`.

Source path: `GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PortBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/coefficient--7dc0ede0b3f8fe79fe3939ab.md) | 25 | `declaration-track:7dc0ede0b3f8fe79fe3939ab4d900bf455db7d60c8c48a8a3ce219e2d7da4cbe` |
| 2 | `def` | [packetMean](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/packetmean--861a34b753c4dfffd9af6697.md) | 27 | `declaration-track:861a34b753c4dfffd9af66970e0cfbbd151ba7ddc5e7661cad93964757cffdea` |
| 3 | `def` | [centered](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/centered--ce7edf4c294e324a764ccb48.md) | 28 | `declaration-track:ce7edf4c294e324a764ccb48179ea3147bfda969b560e15c23daf453c33a9eee` |
| 4 | `theorem` | [complete_character_reconstruction](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/complete-character-reconstruction--8dc6053e2c8ea2fb73cdd5f9.md) | 30 | `result-track:8dc6053e2c8ea2fb73cdd5f946566ad7b6b214d903988ddcc63b48db936295c3` |
| 5 | `theorem` | [principal_coordinate_is_mean](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/principal-coordinate-is-mean--68126b80ee9a5e2e3475e860.md) | 35 | `result-track:68126b80ee9a5e2e3475e8600dd4ecab2e0c6416ef9d8f3c8588366234f4f89a` |
| 6 | `theorem` | [constant_packet_coordinates](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/constant-packet-coordinates--f11d6e02c95e2ef285339338.md) | 52 | `result-track:f11d6e02c95e2ef2853393386cced2634be4991e833493200bed4693ade02a62` |
| 7 | `theorem` | [centered_coordinates](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/centered-coordinates--b7c492b7e3134b3c7e9aa27a.md) | 63 | `result-track:b7c492b7e3134b3c7e9aa27a7347a6c48f439fe91aa5a924fb5e229511c7b2d0` |
| 8 | `theorem` | [centered_principal_zero](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/centered-principal-zero--049cc8374f743c6acac0c006.md) | 72 | `result-track:049cc8374f743c6acac0c00669d635be836af7f5cde25fcf0607f134e70b312c` |
| 9 | `theorem` | [nontrivial_coordinate_unchanged](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/nontrivial-coordinate-unchanged--b0039bc49801b27a4528ea41.md) | 76 | `result-track:b0039bc49801b27a4528ea41b6071476ea10b7c6c54c48ede0c0de3c183b9e1b` |
| 10 | `theorem` | [complete_nontrivial_reconstruction](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/complete-nontrivial-reconstruction--329bb70923d2baa23a2bd847.md) | 81 | `result-track:329bb70923d2baa23a2bd84759b3dcfc2c7419bf55c324da55943f8c7e24828f` |
| 11 | `def` | [unitPacket](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/unitpacket--7ebc020f39ff9ad384225a73.md) | 93 | `declaration-track:7ebc020f39ff9ad384225a73b5bb75e58aa44c6a3ae4c540ec69f1420abf2e17` |
| 12 | `def` | [nonunitPort](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/nonunitport--8f74128089d0f7f6d22259ea.md) | 95 | `declaration-track:8f74128089d0f7f6d22259ea33f903966488ecd6b5604a177af41b0585c043f2` |
| 13 | `theorem` | [complete_unit_nonunit_ledger](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/complete-unit-nonunit-ledger--6eb60e99a212351f7eb7f632.md) | 98 | `result-track:6eb60e99a212351f7eb7f632972dd6c1c9fb4588d1ae011b147c7dce936c2f8d` |
| 14 | `def` | [arithmeticLabel](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/arithmeticlabel--870d46faf257653374de7789.md) | 110 | `declaration-track:870d46faf257653374de7789bdd1e24395f2fcb4e6d8056cdbe195cfbab3ca4c` |
| 15 | `theorem` | [arithmetic_label_nonunit_iff](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/arithmetic-label-nonunit-iff--d7ca48262c628e926b5e2c68.md) | 114 | `result-track:d7ca48262c628e926b5e2c6851be43f2eaa7a03c1caf24370165a251bc055b53` |
| 16 | `def` | [actualRow](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/actualrow--68147e3ac861886db3cecfee.md) | 120 | `declaration-track:68147e3ac861886db3cecfee0e519a6e082781393bddad3ff386ea2dc454c6f3` |
| 17 | `def` | [actualUnitPacket](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/actualunitpacket--a0dd94586995f26bc6a7c549.md) | 123 | `declaration-track:a0dd94586995f26bc6a7c54918d5b38e5d2594a98f7026568f234cccedd5fe5e` |
| 18 | `def` | [actualNonunitPort](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/actualnonunitport--6166143fe12d28884575d897.md) | 127 | `declaration-track:6166143fe12d28884575d8971b0df327ccd6fa6122f4d3ff60b92c43a5515e61` |
| 19 | `theorem` | [actual_mangoldt_complete_port_ledger](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/actual-mangoldt-complete-port-ledger--29b5f28c9b20729b96024f6e.md) | 131 | `result-track:29b5f28c9b20729b96024f6ee36abdabd9ed433c3e86b334b4806f6c4b0fb86a` |
| 20 | `theorem` | [actual_mangoldt_centered_unit_reconstruction](../../../../mathematics/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean/declarations/actual-mangoldt-centered-unit-reconstruction--fc6b27a7aca15b570166c57a.md) | 140 | `result-track:fc6b27a7aca15b570166c57a4fccc058781b131979fab4aff5df7df3975880c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
