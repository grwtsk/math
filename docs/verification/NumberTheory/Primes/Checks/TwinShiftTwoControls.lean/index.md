# Verification target: GRWTSK.NumberTheory.Primes.Checks.TwinShiftTwoControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce505d55c81eb3dbe3e3b8dd7e1b9b7e749ef9c3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce505d55c81eb3dbe3e3b8dd7e1b9b7e749ef9c3`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary`](../../../../../mathematics/NumberTheory/Primes/TwinPrimePowerBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [incompatible_three_six](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/incompatible-three-six--fbd9bfc447d90b6ce01c4c7a.md) | 32 | `result-track:fbd9bfc447d90b6ce01c4c7af46855247c03a41b16a0336ce1b2d2f55c944381` |
| 2 | `theorem` | [compatible_four_six](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/compatible-four-six--e26587472c42361a3aa35b93.md) | 38 | `result-track:e26587472c42361a3aa35b93a62cadc496b41408f958263fa8e75391b06bd0f7` |
| 3 | `theorem` | [residue_count_four_six_thirty](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/residue-count-four-six-thirty--e964c975c6e08326ac64277c.md) | 46 | `result-track:e964c975c6e08326ac64277cd629baa90b99494c8d5584000c5a9a7f02225901` |
| 4 | `theorem` | [incompatible_count_three_six_hundred](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/incompatible-count-three-six-hundred--3cea958deddf98926c16f710.md) | 53 | `result-track:3cea958deddf98926c16f71045fb4a360e5ddb1dac946af24f39e892d70e3981` |
| 5 | `theorem` | [shift_six_not_shift_two](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/shift-six-not-shift-two--8302be5e1e3412e8ed4226b1.md) | 58 | `result-track:8302be5e1e3412e8ed4226b1364ff05fdc5c23146cb121ab11257311d82c609b` |
| 6 | `theorem` | [nine_has_mangoldt_mass_but_is_not_prime](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/nine-has-mangoldt-mass-but-is-not-prime--47c0feccb276d33e211f73d1.md) | 65 | `result-track:47c0feccb276d33e211f73d1ef1b3fad59cf4b210ce232d0288cfd3dede2e034` |
| 7 | `theorem` | [seven_nine_mangoldt_not_twin](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/seven-nine-mangoldt-not-twin--ad122ad1dfb179c83f91218e.md) | 76 | `result-track:ad122ad1dfb179c83f91218eb961c302c295db1875ba953c9608c9da5c87eca0` |
| 8 | `theorem` | [odd_survivor_can_be_composite](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/odd-survivor-can-be-composite--c5bc37b8f3c929cc23526696.md) | 88 | `result-track:c5bc37b8f3c929cc23526696d5cc526a66ba19334f4d8095d8f14f239a6f88cd` |
| 9 | `theorem` | [one_pair_cannot_fake_infinitude](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/one-pair-cannot-fake-infinitude--eef4718a4ea9e4bcee462c21.md) | 94 | `result-track:eef4718a4ea9e4bcee462c21f8185ccff732b8be8f0836942b47e45512214c1e` |
| 10 | `theorem` | [exact_sources_not_twin_witness](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/exact-sources-not-twin-witness--7d13676daac36aa48c5f3e8f.md) | 103 | `result-track:7d13676daac36aa48c5f3e8fea3f64b80e38425aa415e6f0abb2dc694c9ec720` |
| 11 | `theorem` | [strict_margin_equality_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/TwinShiftTwoControls.lean/declarations/strict-margin-equality-rejected--ce3c21927b4979a1422fc5cf.md) | 110 | `result-track:ce3c21927b4979a1422fc5cf5ac56fd43f7e69a054b818712d13785678529d29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
