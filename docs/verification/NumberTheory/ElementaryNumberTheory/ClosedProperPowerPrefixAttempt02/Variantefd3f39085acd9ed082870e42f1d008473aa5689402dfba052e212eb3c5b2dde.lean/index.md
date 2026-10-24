# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefixAttempt02.Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a6c2e1ee39ac8aa60883dbef8c947352d01650a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a6c2e1ee39ac8aa60883dbef8c947352d01650a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean.json)

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
| 1 | `def` | [properExponentInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/properexponentinventory--e6585482bb182d8c8027d8cd.md) | 23 | `declaration-track:e6585482bb182d8c8027d8cd6c6e0a7bc1a6311585bff8a798807ed01a72d8cf` |
| 2 | `theorem` | [mem_inventory_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/mem-inventory-iff--e1ea8542057781ef326afd3d.md) | 27 | `result-track:e1ea8542057781ef326afd3d149a3e64fc8d49142e5816b7d0a634fda6e3f65e` |
| 3 | `theorem` | [inventory_pow_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/inventory-pow-injective--5c3edd50c138bd3558f7ca7d.md) | 44 | `result-track:5c3edd50c138bd3558f7ca7db44aa100c459abb02744e13250785e671d419d4e` |
| 4 | `theorem` | [weighted_difference_eq_proper_exponents](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/weighted-difference-eq-proper-exponents--3ccac05a5d7ee9d4990f3533.md) | 58 | `result-track:3ccac05a5d7ee9d4990f3533f65a1baf4360e4b0313084d09596d9a18ec5cd95` |
| 5 | `def` | [actualProperPowerClosedPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/actualproperpowerclosedprefix--c287433ef76e7ca755b51098.md) | 112 | `declaration-track:c287433ef76e7ca755b51098eaf0a716463471fcc63bf5d8592345c482ebc9fc` |
| 6 | `theorem` | [actual_closed_prefix_dictionary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/actual-closed-prefix-dictionary--3f01bf1a544a6243a2645734.md) | 116 | `result-track:3f01bf1a544a6243a264573493c0b08b6a416b014519e0a86233c80968db0507` |
| 7 | `theorem` | [prime_power_closed_onset_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/prime-power-closed-onset-iff--9814d371dde841b3399ac2ec.md) | 121 | `result-track:9814d371dde841b3399ac2ec7ea460d94c11bb687eab2d48390203a40fa1622a` |
| 8 | `theorem` | [actual_inventory_log_onsets_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/actual-inventory-log-onsets-iff--6be88a7362aead64ebb1cce7.md) | 127 | `result-track:6be88a7362aead64ebb1cce7837006ec08337c2e2e9e060c5d3592229f573134` |
| 9 | `theorem` | [touching_onset_retained](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt02/Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde.lean/declarations/touching-onset-retained--4586edc3d5102936b7652cd1.md) | 137 | `result-track:4586edc3d5102936b7652cd14d9c5903231b0aa0daf924562298e8f7e5281d28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
