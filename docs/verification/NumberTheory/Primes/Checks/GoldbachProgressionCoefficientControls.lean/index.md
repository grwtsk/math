# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionCoefficientControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "298eeacf6794b936ab55ce26131dd531f8c22ecd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `298eeacf6794b936ab55ce26131dd531f8c22ecd`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachProgressionCoefficientBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_two_even_coefficient](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/prime-two-even-coefficient--ef75670f7795b1f4576b147e.md) | 27 | `result-track:ef75670f7795b1f4576b147ec9198c9e3db8dd52b535c139a6c755b8ed2e5ca2` |
| 2 | `theorem` | [prime_two_odd_coefficient](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/prime-two-odd-coefficient--7768fcd4211d4a1361013ab6.md) | 35 | `result-track:7768fcd4211d4a1361013ab66cc77cb5863e863d7ccaa19a115d0e7db30a4b8e` |
| 3 | `theorem` | [prime_three_divisor_coefficient](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/prime-three-divisor-coefficient--34fc20dc96bdfed30cef75e3.md) | 42 | `result-track:34fc20dc96bdfed30cef75e3611ec1832ea6924ac2dcbe8497667ce078935608` |
| 4 | `theorem` | [prime_three_nondivisor_coefficient](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/prime-three-nondivisor-coefficient--faada749e7be6015a48b2d50.md) | 51 | `result-track:faada749e7be6015a48b2d50c65316e35f926133c2a2b59d6b9e1f8cfd4e0e0e` |
| 5 | `theorem` | [coefficient_not_local_factor](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/coefficient-not-local-factor--e2faf2dd9bc9bd6271d9c19f.md) | 60 | `result-track:e2faf2dd9bc9bd6271d9c19f74d8db5dc6c6b7e990ee5db85a55a7a068006c10` |
| 6 | `theorem` | [prime_five_local_factor_bridge](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/prime-five-local-factor-bridge--8f776ab01e2da958a5b0cb8d.md) | 73 | `result-track:8f776ab01e2da958a5b0cb8de50bba7b14f80d32c223ec716ff0d6271cb964e0` |
| 7 | `theorem` | [cutoff_five_target_ten](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/cutoff-five-target-ten--e525d501bec8edad77a18367.md) | 84 | `result-track:e525d501bec8edad77a1836732031266c6769d0cab086adc8af6272e4bf88618` |
| 8 | `theorem` | [cutoff_five_odd_target_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/cutoff-five-odd-target-zero--c69c69d3a92795d8881adf76.md) | 96 | `result-track:c69c69d3a92795d8881adf76ea176ef176a4055ba343615b8a9ec18b07da3e22` |
| 9 | `theorem` | [positive_coefficient_product_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/positive-coefficient-product-not-goldbach-witness--e0d39ac1f820cbe9609b2811.md) | 105 | `result-track:e0d39ac1f820cbe9609b2811d0656e20bb7464831b17ae5984269edc7163bd98` |
| 10 | `theorem` | [factored_major_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/factored-major-not-goldbach-witness--6e6a44073446164f93fc4f03.md) | 116 | `result-track:6e6a44073446164f93fc4f03fdf22121ae962bb2e2567f5148a60723b3a364d4` |
| 11 | `theorem` | [coefficient_zero_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionCoefficientControls.lean/declarations/coefficient-zero-margin-rejected--e452a24b8b7864b9f457ed22.md) | 128 | `result-track:e452a24b8b7864b9f457ed2285b6c1a3b1065435900f24d99d68c9de34c80be8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
