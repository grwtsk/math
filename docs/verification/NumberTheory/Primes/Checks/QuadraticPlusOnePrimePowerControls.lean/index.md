# Verification target: GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOnePrimePowerControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e2499c1ede4feba75b33e7865bc25ae6f16c923",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e2499c1ede4feba75b33e7865bc25ae6f16c923`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts`](../../../../../mathematics/NumberTheory/Primes/QuadraticPlusOnePrimePowerCounts.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [root_two_lifts_to_seven](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/root-two-lifts-to-seven--b44e16eca64adced182a5be5.md) | 25 | `result-track:b44e16eca64adced182a5be56edb75eaf9afe07e67910fec3a612dcada3385f7` |
| 2 | `theorem` | [root_three_lifts_to_eighteen](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/root-three-lifts-to-eighteen--d57b79e5b724a9ea89d13582.md) | 32 | `result-track:d57b79e5b724a9ea89d1358290ce4fe63dd7e7f137df7a430f452d7dbf872ca3` |
| 3 | `theorem` | [wrong_lift_digit_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/wrong-lift-digit-rejected--ced257c1d6fddd6c73df0e60.md) | 39 | `result-track:ced257c1d6fddd6c73df0e606773538149b28e2bda544feccf754ba73091b36c` |
| 4 | `theorem` | [roots_mod_twenty_five](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/roots-mod-twenty-five--6ff576214e4e0335dcc5b4cc.md) | 44 | `result-track:6ff576214e4e0335dcc5b4ccb70fff25777be997ed73f23714dfa2d3f7c9fe73` |
| 5 | `theorem` | [roots_mod_one_hundred_twenty_five_count](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/roots-mod-one-hundred-twenty-five-count--aa826914302eac8af5fc70a7.md) | 49 | `result-track:aa826914302eac8af5fc70a784c61bce97e13bbd43d4f7204f004c4c81c3753a` |
| 6 | `theorem` | [two_adic_branch_is_exceptional](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/two-adic-branch-is-exceptional--56286e0822e4fe4de898409b.md) | 57 | `result-track:56286e0822e4fe4de898409b4d112547a3bf12f6584e75c25890f1c35cd66000` |
| 7 | `theorem` | [noncoprime_multiplicativity_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/noncoprime-multiplicativity-rejected--7944de883ae5d7e9c19c3e9d.md) | 64 | `result-track:7944de883ae5d7e9c19c3e9d6ad4b8c0dd2268a8673d1bb8405ab5cc5dd63b74` |
| 8 | `theorem` | [range_bound_is_not_optional](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/range-bound-is-not-optional--65be30424ca02499622f6652.md) | 72 | `result-track:65be30424ca02499622f66520bca4af581602867f389e943d016bcd287560a5b` |
| 9 | `theorem` | [lifted_local_data_does_not_detect_primality](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/lifted-local-data-does-not-detect-primality--c383b3e28d9e0878e662ca3d.md) | 77 | `result-track:c383b3e28d9e0878e662ca3d23b391395ee8f830e3d4ac74c957c369935b2a4a` |
| 10 | `theorem` | [one_lift_is_not_unbounded](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/one-lift-is-not-unbounded--da7fdc6bf8c3211ce8e6768d.md) | 84 | `result-track:da7fdc6bf8c3211ce8e6768d8f73da09d1a0babf7f1a3ea0730acc54a29a6449` |
| 11 | `theorem` | [local_roots_do_not_force_small_cutoff_prime](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOnePrimePowerControls.lean/declarations/local-roots-do-not-force-small-cutoff-prime--c5b07e61c6bdb3b2dd23bf4a.md) | 91 | `result-track:c5b07e61c6bdb3b2dd23bf4adc559a1d57e10a3b6a59a6fa18ab190f00d341c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
