# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefixAttempt02.Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f46e265ea702b7f5716357978091746df246f2a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f46e265ea702b7f5716357978091746df246f2a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean.json)

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
| 1 | `def` | [properExponentInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/properexponentinventory--752e57c98a7967e39a569caf.md) | 15 | `declaration-track:752e57c98a7967e39a569caf08262bccb9cd6f7daf8f0e0591b6ce3ccbcffa3e` |
| 2 | `theorem` | [mem_inventory_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/mem-inventory-iff--dea3970f574d873b9ea46d36.md) | 19 | `result-track:dea3970f574d873b9ea46d360f42aff88226bc736ecf4b430d2d72f3798002e4` |
| 3 | `theorem` | [inventory_pow_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/inventory-pow-injective--70af055e0f95c80ca197ac7b.md) | 36 | `result-track:70af055e0f95c80ca197ac7b3bed0832ed3fee473b3f9b5c9dd4b3ffd68404c5` |
| 4 | `theorem` | [weighted_difference_eq_proper_exponents](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/weighted-difference-eq-proper-exponents--528efc36d3008289d142536f.md) | 50 | `result-track:528efc36d3008289d142536fa518f010499ec4f507f00fd31c0cef93c56a14e7` |
| 5 | `def` | [actualProperPowerClosedPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/actualproperpowerclosedprefix--ca821b4a49263365133a2060.md) | 104 | `declaration-track:ca821b4a49263365133a206095dccacf03865bf0116c9ad91fbd45703bb860a7` |
| 6 | `theorem` | [actual_closed_prefix_dictionary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/actual-closed-prefix-dictionary--f0d7125829d5160f291b5ab9.md) | 108 | `result-track:f0d7125829d5160f291b5ab94d71309c2c84dc2683d7a0ccc3d8d74bc932f503` |
| 7 | `theorem` | [prime_power_closed_onset_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/prime-power-closed-onset-iff--edbf8f25c8cd9cb532833f2e.md) | 113 | `result-track:edbf8f25c8cd9cb532833f2ebd5da351cea396b88d36b0b7bea9564623f9d088` |
| 8 | `theorem` | [actual_inventory_log_onsets_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/actual-inventory-log-onsets-iff--4d8eb81fc6a7b243dc112675.md) | 119 | `result-track:4d8eb81fc6a7b243dc112675735ac720a469f4d12ce681dc3afea90ce5380ca6` |
| 9 | `theorem` | [touching_onset_retained](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variant2637eb756913d04ddb21df6a6a68dd1d784a83aeeb5c96b93d9391314bd69bc0.lean/declarations/touching-onset-retained--34d18897a595105eb81a2e7f.md) | 129 | `result-track:34d18897a595105eb81a2e7f3c6aa8d6e32ee177587941eba963fa973a904650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
