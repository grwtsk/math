# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefixAttempt01.Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09d76ba2cdf071752332df18b9ce3cb4d716e411",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09d76ba2cdf071752332df18b9ce3cb4d716e411`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean.json)

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
| 1 | `def` | [properExponentInventory](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/declarations/properexponentinventory--b4ad82738176efbe44a094f8.md) | 23 | `declaration-track:b4ad82738176efbe44a094f878b96bfbc04d22e073287096fa1781e8e7378785` |
| 2 | `theorem` | [inventory_pow_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/declarations/inventory-pow-injective--2cc516e0c04f91fffec5790d.md) | 27 | `result-track:2cc516e0c04f91fffec5790dc4273d7a31a0617fda5a87a55e3da0c8f40c6a0f` |
| 3 | `theorem` | [weighted_difference_eq_proper_exponents](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/declarations/weighted-difference-eq-proper-exponents--a77ae60e3db9798c0c97576f.md) | 41 | `result-track:a77ae60e3db9798c0c97576feac03c569407d15e8fbb701bfb1c16fa91384ec2` |
| 4 | `def` | [actualProperPowerClosedPrefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/declarations/actualproperpowerclosedprefix--fcb478175371829e3dd7d465.md) | 95 | `declaration-track:fcb478175371829e3dd7d46505a5927b29deb422f3036e5d7170b5f3944011c6` |
| 5 | `theorem` | [actual_closed_prefix_dictionary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/declarations/actual-closed-prefix-dictionary--b61dcf80f99fe89adea95e10.md) | 99 | `result-track:b61dcf80f99fe89adea95e10e6193da4e24398fc0098d3d7803c6f0744da6cd3` |
| 6 | `theorem` | [prime_power_closed_onset_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ClosedProperPowerPrefixAttempt01/Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162.lean/declarations/prime-power-closed-onset-iff--a484c13d437d9cebff6d9c94.md) | 104 | `result-track:a484c13d437d9cebff6d9c942452860bf3f15273034718d0ae7ac56cd64bc6b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
