# Verification target: GRWTSK.Analysis.UnitPacketFourier.Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d14f0855c6a6bdc40ab6c504fe3b0e8226be7238",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/index.md) · [Full source](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d14f0855c6a6bdc40ab6c504fe3b0e8226be7238`.

Source path: `GRWTSK/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean.json)

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
| 1 | `def` | [coefficient](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/coefficient--a248c9f01c21d18097e7048c.md) | 30 | `declaration-track:a248c9f01c21d18097e7048c414fd143747e26ea1b8585d756304c42984b849f` |
| 2 | `def` | [packetMean](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/packetmean--9afe1219792b7861c25c2d2b.md) | 36 | `declaration-track:9afe1219792b7861c25c2d2b82dd70859d6bb01cce257043d7e48fb1f54a3fd0` |
| 3 | `def` | [centered](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/centered--ed50e87e14642e0653fc3802.md) | 41 | `declaration-track:ed50e87e14642e0653fc38028df1e93fbbb98014fc4243b211544d12c62bd6f6` |
| 4 | `theorem` | [complete_character_reconstruction](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/complete-character-reconstruction--4c6450b5cdb42eaeb0eed63e.md) | 43 | `result-track:4c6450b5cdb42eaeb0eed63e6be7d21c71922e705f33c5e294fb468257bad97c` |
| 5 | `theorem` | [principal_coordinate_is_mean](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/principal-coordinate-is-mean--00ec8de73902bc6d8f07a162.md) | 48 | `result-track:00ec8de73902bc6d8f07a162e4263378ee00b95772c9ddafc4eb3350b8262e8c` |
| 6 | `theorem` | [constant_packet_coordinates](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/constant-packet-coordinates--2216545b6bb9d2a881f3b202.md) | 65 | `result-track:2216545b6bb9d2a881f3b202d22762ae0f17ac84241d7f37f1aadbd07069f0e5` |
| 7 | `theorem` | [centered_coordinates](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/centered-coordinates--b3234b5a6c333430a2fada79.md) | 76 | `result-track:b3234b5a6c333430a2fada79865d976404adcecb183c1800efb9aa789a56b347` |
| 8 | `theorem` | [centered_principal_zero](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/centered-principal-zero--bf75e3b347e90d293998fb2d.md) | 85 | `result-track:bf75e3b347e90d293998fb2df7279aff8a5a410cfe264d6d555a9c4f5418a2f7` |
| 9 | `theorem` | [nontrivial_coordinate_unchanged](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/nontrivial-coordinate-unchanged--d5ab773ad0ad8d9933b6e8a9.md) | 89 | `result-track:d5ab773ad0ad8d9933b6e8a9a7f7991678c4ce073522f3452ea1eb8e4b533f5d` |
| 10 | `theorem` | [complete_nontrivial_reconstruction](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/complete-nontrivial-reconstruction--f1ae225a0582aa5645751903.md) | 94 | `result-track:f1ae225a0582aa5645751903c8640ca836d8cce5ed6be7d69883c88e67252ee8` |
| 11 | `def` | [unitPacket](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/unitpacket--e61e90e4297e69b3a1733154.md) | 111 | `declaration-track:e61e90e4297e69b3a17331546606bbe234b0c73b9260d3ee6f202bec4dc7efd0` |
| 12 | `def` | [nonunitPort](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/nonunitport--358a3eafcf8e9d9918238153.md) | 118 | `declaration-track:358a3eafcf8e9d9918238153b58198e5a600626646b8cb0140e35e002ae73b67` |
| 13 | `theorem` | [complete_unit_nonunit_ledger](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/complete-unit-nonunit-ledger--24a15f39eb3c007e9a0f5bd9.md) | 121 | `result-track:24a15f39eb3c007e9a0f5bd9935daf7a6a729fe27f5179901d4d3ef4b37e7882` |
| 14 | `def` | [arithmeticLabel](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/arithmeticlabel--e9e99f925a9b94428b21aaa7.md) | 139 | `declaration-track:e9e99f925a9b94428b21aaa7cf993079d2eb170bb16d0672dcf3ad832da2d851` |
| 15 | `theorem` | [arithmetic_label_nonunit_iff](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/arithmetic-label-nonunit-iff--0b9f284a4e2bcf9632ce7a52.md) | 143 | `result-track:0b9f284a4e2bcf9632ce7a52e565e236c1576df6fce2c23f4e9cf390b378f20e` |
| 16 | `def` | [actualRow](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/actualrow--116989c89f88bce928297bb3.md) | 154 | `declaration-track:116989c89f88bce928297bb370c224c2fdb1decccc20ed789a4cc3963f4fdd8c` |
| 17 | `def` | [actualUnitPacket](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/actualunitpacket--e969588f247d8df5cb5268ac.md) | 162 | `declaration-track:e969588f247d8df5cb5268ac7af1d52bc9ebdd3368277cccff6a2fc2c2eb8d76` |
| 18 | `def` | [actualNonunitPort](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/actualnonunitport--e678320193a3f43f544f34c4.md) | 170 | `declaration-track:e678320193a3f43f544f34c45921eb68e8b32f5c3da2fa665c5c559505103d4f` |
| 19 | `theorem` | [actual_mangoldt_complete_port_ledger](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/actual-mangoldt-complete-port-ledger--78e4c55146aae40e5e76ca4d.md) | 174 | `result-track:78e4c55146aae40e5e76ca4df918afbcea6ec6a05ebe45b7fa641e70703b75fc` |
| 20 | `theorem` | [actual_mangoldt_centered_unit_reconstruction](../../../../mathematics/Analysis/UnitPacketFourier/Variant9084ca9400143af047432afd62cb18345b9a30d47bfc428a704014076e49a259.lean/declarations/actual-mangoldt-centered-unit-reconstruction--1840cea0fb3909bb2e603607.md) | 183 | `result-track:1840cea0fb3909bb2e603607b5a3a33738ccc12ca6e560dd84b9a7fc53d76a20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
