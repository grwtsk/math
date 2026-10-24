# Verification target: GRWTSK.NumberTheory.Primes.Checks.QuadraticSieveObstructionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8378a94ef7d3e88c1dc99d082975e6a2358b2b0c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8378a94ef7d3e88c1dc99d082975e6a2358b2b0c`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction`](../../../../../mathematics/NumberTheory/Primes/QuadraticSieveObstruction.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.QuadraticValuePowerExclusion`](../../../../../mathematics/NumberTheory/Primes/QuadraticValuePowerExclusion.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.QuadraticMangoldtBoundary`](../../../../../mathematics/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [composite_small_sieve_survivor](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/composite-small-sieve-survivor--1a61c606a03b5da1360f62c8.md) | 20 | `result-track:1a61c606a03b5da1360f62c894db5494aa305e4a957f1001572fd9e9972fd07c` |
| 2 | `theorem` | [fixed_sieve_unbounded_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/fixed-sieve-unbounded-control--1e31c5d5f51a15bd719a19c7.md) | 26 | `result-track:1e31c5d5f51a15bd719a19c7b0f8fd98269aae627b1ec5deac658dcceb593018` |
| 3 | `theorem` | [small_constructed_survivor](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/small-constructed-survivor--9167029968071cac1756eedb.md) | 31 | `result-track:9167029968071cac1756eedb635ef555c0df622a2ec2372072332f8d00082e8f` |
| 4 | `theorem` | [even_power_exclusion_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/even-power-exclusion-control--bef5bdf9cff72dca2b3b6089.md) | 34 | `result-track:bef5bdf9cff72dca2b3b6089840185b835cbf571c0118d6592c6d077dd2470c8` |
| 5 | `theorem` | [zero_index_square_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/zero-index-square-control--6d15cd478e9615bf805681f3.md) | 39 | `result-track:6d15cd478e9615bf805681f31861832dad5d488effc537cd6d3e90b250632619` |
| 6 | `theorem` | [index_value_count_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/index-value-count-control--6880e68688e0a5f221dd96e4.md) | 42 | `result-track:6880e68688e0a5f221dd96e4c54b179d8d6cdfe0f3822ae30fcfb627f767873f` |
| 7 | `theorem` | [empty_mangoldt_control](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/empty-mangoldt-control--a25986b51162c8ea4cd2e927.md) | 47 | `result-track:a25986b51162c8ea4cd2e927cd28f6506302d0f03d8a4f70aaa15d327a8c50a9` |
| 8 | `theorem` | [reject_nonstrict_fresh_margin](../../../../../mathematics/NumberTheory/Primes/Checks/QuadraticSieveObstructionControls.lean/declarations/reject-nonstrict-fresh-margin--0d28fea144332f24765186b9.md) | 52 | `result-track:0d28fea144332f24765186b9d16191b1cfb9b5119d552c645e66e62af84bd6ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
