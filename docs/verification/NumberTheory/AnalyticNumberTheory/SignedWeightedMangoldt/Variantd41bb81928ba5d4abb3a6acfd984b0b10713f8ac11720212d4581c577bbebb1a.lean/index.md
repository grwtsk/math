# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SignedWeightedMangoldt.Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3568007bb600d27e57edf73f439920cc7325021a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3568007bb600d27e57edf73f439920cc7325021a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedmangoldt--698a07df0f96556499f0cdd6.md) | 27 | `declaration-track:698a07df0f96556499f0cdd688d0071f09f5601fa5905aec731bee8dd017d68b` |
| 2 | `theorem` | [log_factorial_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/log-factorial-eq-sum--9379c6a41b3ddeb247c4cf27.md) | 30 | `result-track:9379c6a41b3ddeb247c4cf27921b47df8d88fee9ad28e4c3a7815a84d1d353f5` |
| 3 | `theorem` | [factorial_identity](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/factorial-identity--d11f8b8ffdd1e853720d7cea.md) | 40 | `result-track:d11f8b8ffdd1e853720d7cea623feb2b0fcaea2031281524283ebcd76655fa3d` |
| 4 | `theorem` | [natural_division_error_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/natural-division-error-le-one--fba4994ac359561a0950bdf0.md) | 47 | `result-track:fba4994ac359561a0950bdf0212962b6f34fff5d4b12dc5ee8849befd4d0f7a6` |
| 5 | `theorem` | [factorial_le_scaled_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/factorial-le-scaled-weighted--0200a107a8538eb721d276e4.md) | 58 | `result-track:0200a107a8538eb721d276e4a8672507e4902ed616b6b3fbb2b63d91061fb0da` |
| 6 | `theorem` | [scaled_weighted_le_factorial_add_psi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/scaled-weighted-le-factorial-add-psi--002e9046cc34483ca5ce098e.md) | 70 | `result-track:002e9046cc34483ca5ce098e71259d1449e2e62825fdb8e76834d9becef3f905` |
| 7 | `theorem` | [log_factorial_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/log-factorial-lower--045fd128d0afe5372fc69dfb.md) | 88 | `result-track:045fd128d0afe5372fc69dfb18deb96f9750293ca2d8353b450f09328001e2c1` |
| 8 | `theorem` | [log_factorial_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/log-factorial-upper--a1833573b1236b4d74d8abf1.md) | 95 | `result-track:a1833573b1236b4d74d8abf1a85fdd6ded63b03cd6467310e6f35988bd82811a` |
| 9 | `theorem` | [weightedMangoldt_sub_log_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedmangoldt-sub-log-bounds--09410513b2908a4e4a2a82a4.md) | 102 | `result-track:09410513b2908a4e4a2a82a48944f86fc07410b763beec316903a8abf61036c0` |
| 10 | `theorem` | [weightedMangoldt_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedmangoldt-mertens--2b0763618c12f5be33529d18.md) | 112 | `result-track:2b0763618c12f5be33529d188d3a54efa058caed00856fd641f347ae1262682f` |
| 11 | `def` | [primeCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/primecoefficient--7abab598f47260268fe85dfc.md) | 118 | `declaration-track:7abab598f47260268fe85dfc1b14288ffe75e48d0c0f5d3ba65bfa5323d05d62` |
| 12 | `def` | [properPowerCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/properpowercoefficient--d26327c0d5e491aff0fe480d.md) | 120 | `declaration-track:d26327c0d5e491aff0fe480d5fa9aef1d050ddf3c9785a798b3750c760828af6` |
| 13 | `def` | [weightedPrime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedprime--5ab62b74d32819bf8f8bd109.md) | 122 | `declaration-track:5ab62b74d32819bf8f8bd109a3cc900b304fdff984d8983405df3782a75831d2` |
| 14 | `theorem` | [properPowerCoefficient_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/properpowercoefficient-nonneg--afb1bfa485d71b9cc435b96b.md) | 124 | `result-track:afb1bfa485d71b9cc435b96b7745e25da05b009f15171ca744d847bb3406e6e7` |
| 15 | `theorem` | [properPower_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/properpower-prefix--7d198d305d37139b46b51d35.md) | 129 | `result-track:7d198d305d37139b46b51d352f7975373467f33c678a06d0f25f4c028f03d582` |
| 16 | `theorem` | [weighted_difference](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weighted-difference--aa3cc69c0b171ea72ef32c68.md) | 138 | `result-track:aa3cc69c0b171ea72ef32c6829e8c2f10764138f436923decd93a1fa5d3d65f1` |
| 17 | `theorem` | [weighted_difference_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weighted-difference-nonneg--0d2d083295b7dbc29f930aaa.md) | 144 | `result-track:0d2d083295b7dbc29f930aaa7f4a87d0d73f21e556cb4fc065145e678964b31d` |
| 18 | `theorem` | [weighted_difference_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weighted-difference-abel--023894fc806d9f020ab2335d.md) | 149 | `result-track:023894fc806d9f020ab2335d7c247d01699242d0fef7bc295d3b6e1731306fa0` |
| 19 | `theorem` | [properPower_integrand_integrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/properpower-integrand-integrable--49b9c86ccbc91e843acde3a2.md) | 188 | `result-track:49b9c86ccbc91e843acde3a25ff6bff464a4a2e1393bce10781bafc8a7c19f9b` |
| 20 | `theorem` | [sqrt_div_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/sqrt-div-square--e32121b15aacacff9bdce1cc.md) | 201 | `result-track:e32121b15aacacff9bdce1ccc93f7b0328c30c0d5bb9c438525601398a5aada9` |
| 21 | `theorem` | [weighted_difference_bound_of_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weighted-difference-bound-of-sqrt--6e6bd7c72e0e8692e0113827.md) | 206 | `result-track:6e6bd7c72e0e8692e011382750bb7c6a8ba43a1406684cd4438fafc3ad4bcc08` |
| 22 | `theorem` | [weighted_difference_uniformly_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weighted-difference-uniformly-bounded--7fa3cb215950a1de56bf8d2d.md) | 249 | `result-track:7fa3cb215950a1de56bf8d2d10614ca9820e8bdada12d7c76207b24ed331282b` |
| 23 | `theorem` | [weightedPrime_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedprime-mertens--4e094fd49dffed62cdec86cc.md) | 259 | `result-track:4e094fd49dffed62cdec86cc14776ae0251b00e211b7622f419ab63205a0e4c2` |
| 24 | `theorem` | [weightedPrime_eq_filtered](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedprime-eq-filtered--a1e82d278b4807c24f7332f7.md) | 269 | `result-track:a1e82d278b4807c24f7332f7b6fd72ab6223e9d2c8cfdb0e76e5ae0d1865ead6` |
| 25 | `theorem` | [log_floor_error](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/log-floor-error--e1c911a510da976ded542f11.md) | 277 | `result-track:e1c911a510da976ded542f11b28d7ff45ace8772b9fe70765e8345a1be101578` |
| 26 | `theorem` | [weightedPrime_mertens_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedprime-mertens-real--81b169a443d3ec19533e5e4c.md) | 294 | `result-track:81b169a443d3ec19533e5e4c66471397f5d58a3249ef52e8962ec1462373350f` |
| 27 | `theorem` | [weightedPrime_mertens_log_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variantd41bb81928ba5d4abb3a6acfd984b0b10713f8ac11720212d4581c577bbebb1a.lean/declarations/weightedprime-mertens-log-cutoff--c12c649ee1468a90f591d181.md) | 314 | `result-track:c12c649ee1468a90f591d1812434346e055b5c4efb0bf3a0de61fbe37eb68509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
