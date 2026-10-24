# Verification target: GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "648ba8cc9873e647af70dd079847d85f7eea27f4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `648ba8cc9873e647af70dd079847d85f7eea27f4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/HigherPrimePowerSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals`](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers`](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowers.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.FiniteSquareBudget`](../../../../mathematics/Analysis/ErrorBounds/FiniteSquareBudget.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_eq_mathlib_psi](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/source-eq-mathlib-psi--3fee5a7f3ed3ac249a53fa17.md) | 33 | `result-track:3fee5a7f3ed3ac249a53fa176b59900b268613bc1bbbf03079a5aa17c8c3479c` |
| 2 | `theorem` | [sum_Ioc_difference](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/sum-ioc-difference--806edffd18196e4ff7b5b6a9.md) | 48 | `result-track:806edffd18196e4ff7b5b6a9350085648d91d4a71ed13bcf8dad4a3a4261e556` |
| 3 | `theorem` | [squareIncrement_eq_vonMangoldt_sum](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/squareincrement-eq-vonmangoldt-sum--b3e1542407483751f8953a68.md) | 63 | `result-track:b3e1542407483751f8953a6818fa0c779f058a15d30e3d14d10ca5291f9ff3bd` |
| 4 | `def` | [squarePrimeIncrement](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/squareprimeincrement--8a27dbd3ce40bcb4b63129b2.md) | 74 | `declaration-track:8a27dbd3ce40bcb4b63129b2ea9ff5b456f33ad602c0163d9f3bf95c7bec0e29` |
| 5 | `theorem` | [primePowerBases_one](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/primepowerbases-one--ea855911b5cf532397fcd804.md) | 79 | `result-track:ea855911b5cf532397fcd8046e8bce03e7ead887a7371b7bfb3e3938dc068f28` |
| 6 | `theorem` | [squarePrimeIncrement_eq_first_fiber](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/squareprimeincrement-eq-first-fiber--4fccf775ac18a0396c6ff58c.md) | 90 | `result-track:4fccf775ac18a0396c6ff58c48af1aba8ff9b7e09acc1b98c634da43f23b3e27` |
| 7 | `def` | [primePowerPairs](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/primepowerpairs--39e5410f754953b4dcf32292.md) | 98 | `declaration-track:39e5410f754953b4dcf32292550f40ce4736939bef0ddcdfe8699cea5ddd8431` |
| 8 | `theorem` | [mem_primePowerPairs_iff](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/mem-primepowerpairs-iff--6e021fd245d87dc764812a0f.md) | 103 | `result-track:6e021fd245d87dc764812a0f24fc6e4700df8d6e25b5bfc0fa95c8a0a896e30c` |
| 9 | `theorem` | [pair_mass_eq_vonMangoldt_sum](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/pair-mass-eq-vonmangoldt-sum--b1d6c3fa63aa11e045cc0d84.md) | 116 | `result-track:b1d6c3fa63aa11e045cc0d84180439159e9ca33e0d4c4259b3d28f133d8a37d0` |
| 10 | `theorem` | [pair_mass_eq_exponent_sum](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/pair-mass-eq-exponent-sum--7589c96cbd2771fe237d741d.md) | 145 | `result-track:7589c96cbd2771fe237d741d4146d6387171304b8f23197f84f92ef323b36101` |
| 11 | `theorem` | [squareIncrement_decomposition](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/squareincrement-decomposition--08766ad28a16e57edb9e2f83.md) | 151 | `result-track:08766ad28a16e57edb9e2f8377d1de4a1ec77c92f74467d64a451949c58d45ee` |
| 12 | `theorem` | [source_correction_bounds](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/source-correction-bounds--6add6e0fd1deebbc65fcd34b.md) | 175 | `result-track:6add6e0fd1deebbc65fcd34b5995da8b16bd80672300e18a286a220840dda6c9` |
| 13 | `theorem` | [prime_error_eq](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/prime-error-eq--075b23f87d10ef75d1069b8a.md) | 183 | `result-track:075b23f87d10ef75d1069b8af0b218fc341ec7435713d6a80b050130b231d58d` |
| 14 | `theorem` | [prime_error_square_sum_le](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/prime-error-square-sum-le--df227744a89fcc7040a53e74.md) | 190 | `result-track:df227744a89fcc7040a53e74dee94a08852ac6dfc824377b47f15c54789f9b99` |
| 15 | `theorem` | [source_error_square_sum_le](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/source-error-square-sum-le--f97c7811e4545def05779f26.md) | 202 | `result-track:f97c7811e4545def05779f262798ee8d312c578d5f1bf0e0f7a5899dd77c6a55` |
| 16 | `theorem` | [correction_square_sum_le_log_budget](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/declarations/correction-square-sum-le-log-budget--41a16b69a2f9e832238dc1a9.md) | 219 | `result-track:41a16b69a2f9e832238dc1a94d45c2a3d5da6af6544fef064b8aebd825531faa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
