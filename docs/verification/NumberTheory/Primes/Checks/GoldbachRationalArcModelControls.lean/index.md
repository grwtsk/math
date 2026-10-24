# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcModelControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c01ec819c3e5855e5790f90e8ab21e5e8a17b8d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c01ec819c3e5855e5790f90e8ab21e5e8a17b8d`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [character_argument_add_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/character-argument-add-control--880ad68ea46afc55d2291901.md) | 31 | `result-track:880ad68ea46afc55d2291901fac5dff367d6dae8b0bc60f1ec3a29028753107d` |
| 2 | `theorem` | [character_integral_period_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/character-integral-period-control--9d479b93e60ab3adc18d781e.md) | 37 | `result-track:9d479b93e60ab3adc18d781e3cb699970144f6716f892692472810397085aa6f` |
| 3 | `theorem` | [rational_phase_mod_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/rational-phase-mod-control--7a89cf25ee520aa2f48d4922.md) | 42 | `result-track:7a89cf25ee520aa2f48d492224068c3013f57595c6ba758fb99257d8d770a2a1` |
| 4 | `theorem` | [residue_kernel_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/residue-kernel-control--0f368786d1108600f36134ad.md) | 50 | `result-track:0f368786d1108600f36134adc7491496e7ebdb06113d87320001f551f77c53b6` |
| 5 | `theorem` | [indexed_denominator_positive](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/indexed-denominator-positive--5566d167a3afddc14a6d854e.md) | 57 | `result-track:5566d167a3afddc14a6d854e7706619e199227cde92d6d09debdb6dbea935483` |
| 6 | `theorem` | [exact_one_half_model_residual_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/exact-one-half-model-residual-zero--49fc2b426bdb08e877fef18b.md) | 65 | `result-track:49fc2b426bdb08e877fef18b28c5630355fa2a6097d1e7aef313a68a2511ab98` |
| 7 | `theorem` | [exact_residue_model_residual_sum_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/exact-residue-model-residual-sum-zero--0a5270716fd6fda076c28155.md) | 72 | `result-track:0a5270716fd6fda076c28155da6c7acd095db72c83065ba1e28d3aadd10a2639` |
| 8 | `theorem` | [zero_model_requires_full_residual](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/zero-model-requires-full-residual--936ad00e4a6fccc426fc2a27.md) | 83 | `result-track:936ad00e4a6fccc426fc2a27e1fd2506cb5a597d9337b474247f04d5fa0d499f` |
| 9 | `theorem` | [residue_identity_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/residue-identity-not-goldbach-witness--93a214e0fe7d7acfe200e7e6.md) | 91 | `result-track:93a214e0fe7d7acfe200e7e605d29b3fa5be34e79d7cc40df97d5c62063f5e17` |
| 10 | `theorem` | [zero_aggregate_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachRationalArcModelControls.lean/declarations/zero-aggregate-margin-rejected--734828615d0db41903376d10.md) | 101 | `result-track:734828615d0db41903376d10bdcfa61c96b0320a3cdcd7b34bee51760af2e2c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
