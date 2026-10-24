# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefix.Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5538281a37d7dd9bd828908c5e3fd1cc1855b223",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5538281a37d7dd9bd828908c5e3fd1cc1855b223`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properExponentInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/properexponentinventory--bab359579ad6e6d0b350c1e8.md) | 23 | `declaration-track:bab359579ad6e6d0b350c1e851a8190e73478741c6e62423aa0ce8ae7c46f0b2` |
| 2 | `theorem` | [mem_inventory_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/mem-inventory-iff--7518f51ceea046d4b1249b6f.md) | 27 | `result-track:7518f51ceea046d4b1249b6f4c0f4c48e027179f92d43cbc42aac32504ed19b0` |
| 3 | `theorem` | [inventory_pow_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/inventory-pow-injective--cf7665ce700f26ba16a430c8.md) | 44 | `result-track:cf7665ce700f26ba16a430c847cbc6b2570d89ccdd499472920751832cc03001` |
| 4 | `theorem` | [weighted_difference_eq_proper_exponents](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/weighted-difference-eq-proper-exponents--1c99b780be47899e836c83be.md) | 58 | `result-track:1c99b780be47899e836c83bea81f6758bd8a6c0ae770f577f40be14ddaa0e02e` |
| 5 | `def` | [actualProperPowerClosedPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/actualproperpowerclosedprefix--90334056265578dfe76d4f19.md) | 112 | `declaration-track:90334056265578dfe76d4f195b5357440866be3ab86a5a13dd5c37276fa50588` |
| 6 | `theorem` | [actual_closed_prefix_dictionary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/actual-closed-prefix-dictionary--06a24f07a31e30bbe51b51f1.md) | 116 | `result-track:06a24f07a31e30bbe51b51f13b1764990c4e56705d3bd26367b062cf35e385cf` |
| 7 | `theorem` | [prime_power_closed_onset_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/prime-power-closed-onset-iff--b7791bb53320b1f5037343fc.md) | 121 | `result-track:b7791bb53320b1f5037343fc9892f24c5e1f544c86ce19a2f7b84b5e3a6c97d7` |
| 8 | `theorem` | [actual_inventory_log_onsets_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/actual-inventory-log-onsets-iff--e16126ef33df105f29433fbb.md) | 127 | `result-track:e16126ef33df105f29433fbb180fbed2ccc33d4894097584c3318bba38a99c1c` |
| 9 | `theorem` | [touching_onset_retained](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant72d1f911a74ae204356591542311867c181b6a7dae24d0dee4b84d470dbc2b3b.lean/declarations/touching-onset-retained--46768f4d291df6fa81488ed6.md) | 137 | `result-track:46768f4d291df6fa81488ed6699d7f9a60d5224fc448b312122bdef08efb18aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
