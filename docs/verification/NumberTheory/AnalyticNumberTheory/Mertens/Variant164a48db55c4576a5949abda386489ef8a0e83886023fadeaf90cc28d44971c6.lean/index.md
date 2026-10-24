# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.Mertens.Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8844e14d8038651a633d20e5bbe7b7fdec07580c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8844e14d8038651a633d20e5bbe7b7fdec07580c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.GeomSum` — import line 42; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 43; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 44; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 45; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 46; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 47; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 48; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 49; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.EulerMaclaurin` — import line 50; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ioc_one_eq_sum_Ioc_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-ioc-one-eq-sum-ioc-zero--3fdf92aecb7cb931afb8b24e.md) | 63 | `result-track:3fdf92aecb7cb931afb8b24e57fbb967d51da163fb85a0f266dcd850340a2005` |
| 2 | `theorem` | [sum_log_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-log-eq--2f9f6aa0e15fc04c34d89c2d.md) | 69 | `result-track:2f9f6aa0e15fc04c34d89c2d95ad3273208c9295aa9ff3279092a01bc909a432` |
| 3 | `theorem` | [sum_log_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-log-le--3e82bd24ffc0da2285f8aecc.md) | 87 | `result-track:3e82bd24ffc0da2285f8aecc06a72b16c9492f1a2aeafca0979355df3a78ecc8` |
| 4 | `lemma` | [integral_log_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/integral-log-le--df44de285eb1f98908c7baa2.md) | 101 | `result-track:df44de285eb1f98908c7baa26c94c7313a0915b424cb3d767681d89a74cfbc6a` |
| 5 | `theorem` | [sum_log_ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-log-ge--a8c7e2ff5d0b24e3d8ce5b08.md) | 113 | `result-track:a8c7e2ff5d0b24e3d8ce5b085b42bbc103a85de5990e3c9a5fe4d828bed69f16` |
| 6 | `theorem` | [sum_log_eq_log_factorial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-log-eq-log-factorial--fd3226001710a03c0866baa3.md) | 142 | `result-track:fd3226001710a03c0866baa32fe0ee7406f4da005ca25e328df4bdec4f285d32` |
| 7 | `theorem` | [sum_log_eq_sum_mangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-log-eq-sum-mangoldt--78adfb3dd5d6e32065d9177d.md) | 151 | `result-track:78adfb3dd5d6e32065d9177d2269c0becc7b4283e5b9a04855d486dcfe2b61a8` |
| 8 | `abbrev` | [E₁Λ](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/e--c434a0178cd2138ff9a4551e.md) | 157 | `declaration-track:c434a0178cd2138ff9a4551e23b518e294dde0a63b8f84042814cd06da2ef154` |
| 9 | `theorem` | [sum_mangoldt_div_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-mangoldt-div-eq--ab649fc03d6d7793ac8309cb.md) | 159 | `result-track:ab649fc03d6d7793ac8309cbfa43cb0a7c3a8b541fd48af0a9c670d73ebe71ea` |
| 10 | `theorem` | [E₁Λ.ge](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/e-ge--cb89e7e5ed775d4a0af3c9fa.md) | 163 | `result-track:cb89e7e5ed775d4a0af3c9fa860bed7e2efce5b12f3985a5fe3de9823cc88a19` |
| 11 | `theorem` | [E₁Λ.le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/e-le--db8a2f622afdc32f673f3b19.md) | 181 | `result-track:db8a2f622afdc32f673f3b191ccb3d23922f0902a5b269532ae9035aab22c7af` |
| 12 | `theorem` | [sum_mangoldt_div_eq_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/sum-mangoldt-div-eq-log--caa5231feea6378629e8c125.md) | 203 | `result-track:caa5231feea6378629e8c1254e84fa20f5e7d902d39cc34f7ef7c81e864d5263` |
| 13 | `theorem` | [E₁Λ.bounded'](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/Mertens/Variant164a48db55c4576a5949abda386489ef8a0e83886023fadeaf90cc28d44971c6.lean/declarations/e-bounded--14eb45df05366eca7a210607.md) | 207 | `result-track:14eb45df05366eca7a210607d931468b2082467587743a0ac0a13d58656933eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
