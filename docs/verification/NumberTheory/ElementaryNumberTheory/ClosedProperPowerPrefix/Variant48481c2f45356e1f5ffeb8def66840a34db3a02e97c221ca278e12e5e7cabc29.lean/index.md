# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefix.Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85750e0d66e8bb95a6b043fc8606483f5ec9ec6d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85750e0d66e8bb95a6b043fc8606483f5ec9ec6d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IsPrimePow` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properExponentInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/properexponentinventory--35e7ffa9cba115ce6fdfb169.md) | 15 | `declaration-track:35e7ffa9cba115ce6fdfb169fe1ed0506e2b6a9876546a43c69a4e7aa6097a17` |
| 2 | `theorem` | [mem_inventory_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/mem-inventory-iff--c3af4bb06d136dbe556697b7.md) | 19 | `result-track:c3af4bb06d136dbe556697b7292381fcff7c3b92357fdd539b693a325e438c16` |
| 3 | `theorem` | [inventory_pow_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/inventory-pow-injective--51d340a5250e03bf6cab348a.md) | 36 | `result-track:51d340a5250e03bf6cab348aa3e805d7eb4b065161ef3f04c4b724cb9d60f44f` |
| 4 | `theorem` | [weighted_difference_eq_proper_exponents](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/weighted-difference-eq-proper-exponents--4f3aed363028bcdbe050ea9f.md) | 50 | `result-track:4f3aed363028bcdbe050ea9ff5d87ecc21fe538a94b90613d0f050e388ba256f` |
| 5 | `def` | [actualProperPowerClosedPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/actualproperpowerclosedprefix--195381bdd2bb5f11b837fe87.md) | 104 | `declaration-track:195381bdd2bb5f11b837fe877fcf9a5c68795b3672006238842931bde87323fb` |
| 6 | `theorem` | [actual_closed_prefix_dictionary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/actual-closed-prefix-dictionary--940c13ba1bb435c73c349a76.md) | 108 | `result-track:940c13ba1bb435c73c349a76cd332b402d9153bef0f89adcd6a6e8543f9db366` |
| 7 | `theorem` | [prime_power_closed_onset_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/prime-power-closed-onset-iff--1bec115b8e0a1f7669e9c1a3.md) | 113 | `result-track:1bec115b8e0a1f7669e9c1a35a7e0777449c7b333739870a2d0884d35bdf60b7` |
| 8 | `theorem` | [actual_inventory_log_onsets_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/actual-inventory-log-onsets-iff--b65b1e7574b5429fa17e28f3.md) | 119 | `result-track:b65b1e7574b5429fa17e28f3631f1195d82bf1cb1a906e742db8d6289defc8c4` |
| 9 | `theorem` | [touching_onset_retained](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefix/Variant48481c2f45356e1f5ffeb8def66840a34db3a02e97c221ca278e12e5e7cabc29.lean/declarations/touching-onset-retained--9d8c1b0230ce76e97fede415.md) | 129 | `result-track:9d8c1b0230ce76e97fede4150c94f4e7fe4d1072c674e4a8589411b3ffe311bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
