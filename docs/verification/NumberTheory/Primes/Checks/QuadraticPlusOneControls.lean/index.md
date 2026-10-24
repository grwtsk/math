# Verification target: GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOneControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "243ab2ff651c12e56f1914f5c3be98c6fc974fba",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `243ab2ff651c12e56f1914f5c3be98c6fc974fba`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary`](../../../../../mathematics/NumberTheory/Primes/QuadraticPrimeBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [root_count_one_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/root-count-one-control--812ad431ab21cd992dd6a048.md) | 30 | `result-track:812ad431ab21cd992dd6a048eb471da59efe64219999ca7d1dbf1143eca87427` |
| 2 | `theorem` | [root_count_two_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/root-count-two-control--da0d8f810d9baead8d961c59.md) | 35 | `result-track:da0d8f810d9baead8d961c59ea0985400286de603dca28e30606cf440116cc59` |
| 3 | `theorem` | [prime_five_root_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/prime-five-root-control--cf0d68ed4ec98f05fd1614d9.md) | 43 | `result-track:cf0d68ed4ec98f05fd1614d998f09cb23042426875214c20f18b2d58d6b8e2cd` |
| 4 | `theorem` | [prime_three_root_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/prime-three-root-control--e2c97a0059f361ec37edf776.md) | 52 | `result-track:e2c97a0059f361ec37edf776ee764879df8143800cab86982e91710d9e69f8ff` |
| 5 | `theorem` | [coprime_multiplicativity_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/coprime-multiplicativity-control--5e029de18d6bdbe99b9b35a8.md) | 58 | `result-track:5e029de18d6bdbe99b9b35a844d351fd136bc41845942ce789962644d721ab45` |
| 6 | `theorem` | [noncoprime_multiplicativity_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/noncoprime-multiplicativity-rejected--ca40811aea2f24bc1a6a3c6d.md) | 68 | `result-track:ca40811aea2f24bc1a6a3c6dd6b48238112c077b1a0c15689d3122ad2ae04917` |
| 7 | `theorem` | [residue_block_count_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/residue-block-count-control--566a067a548d260fdd27e47e.md) | 76 | `result-track:566a067a548d260fdd27e47ec64861957302548904db74624ac407e9944658eb` |
| 8 | `theorem` | [residue_discrepancy_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/residue-discrepancy-control--9c1182d2dae107533e5ea633.md) | 83 | `result-track:9c1182d2dae107533e5ea633c1e2923a69c7eca28c601361c259dcee5b56cc3f` |
| 9 | `theorem` | [prime_power_modulus_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/prime-power-modulus-control--f679284a11aedb59b840a52c.md) | 96 | `result-track:f679284a11aedb59b840a52c23001e1af1fc822b5d1ecddb63e0134e059e5cf1` |
| 10 | `theorem` | [composite_local_survivor_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/composite-local-survivor-control--bfdd2ffa96a53234a95d54d1.md) | 103 | `result-track:bfdd2ffa96a53234a95d54d18685ed6983fe5799597fc810779b81ee44cf6700` |
| 11 | `theorem` | [gaussian_norm_sixty_five_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/gaussian-norm-sixty-five-control--50dfbb2656a6cb42eb4c2f66.md) | 110 | `result-track:50dfbb2656a6cb42eb4c2f66a7b2e5d603110d06e286dd94d3d1e560836922e4` |
| 12 | `theorem` | [gaussian_factorization_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/gaussian-factorization-control--18676b336ef2ebf96de3d41d.md) | 116 | `result-track:18676b336ef2ebf96de3d41d8555a0e41319cf53141bb2d3c5f3a8b2bed5c0c3` |
| 13 | `theorem` | [fixed_imaginary_coordinate_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/fixed-imaginary-coordinate-control--444954fb8ded57e432f6533c.md) | 125 | `result-track:444954fb8ded57e432f6533c3ab3d8c95b53b7dbda44432fdf3ba3d5f9ab864c` |
| 14 | `theorem` | [repeated_index_reuse_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/repeated-index-reuse-rejected--1edf425503db8d975fbf8beb.md) | 140 | `result-track:1edf425503db8d975fbf8bebfd9c3c20a14b3e71a9cef5b6487b15fb795aab6b` |
| 15 | `theorem` | [exact_local_data_not_prime_witness](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/exact-local-data-not-prime-witness--7fb73a809cafae9835aa93fa.md) | 149 | `result-track:7fb73a809cafae9835aa93faf3efc14a39bdfa5235626987cb72bcdf26a8adb4` |
| 16 | `theorem` | [strict_quadratic_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticPlusOneControls.lean/declarations/strict-quadratic-margin-rejected--81149dd352f0d7a2f7addeba.md) | 155 | `result-track:81149dd352f0d7a2f7addeba6c4d0647557e4f5373d0b453fa6fd97d56110a0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
