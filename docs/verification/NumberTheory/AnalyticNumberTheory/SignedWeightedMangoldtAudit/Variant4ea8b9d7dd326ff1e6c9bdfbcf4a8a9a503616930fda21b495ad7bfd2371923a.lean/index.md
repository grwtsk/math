# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SignedWeightedMangoldtAudit.Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17757f18f42c9683947fe2ff3c9943c8cacb66c5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17757f18f42c9683947fe2ff3c9943c8cacb66c5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedmangoldt--601bd599d05bdd1cc565a80b.md) | 35 | `declaration-track:601bd599d05bdd1cc565a80b9d7ed3932cc744cd7e899e970603a8e1a34ebbbe` |
| 2 | `theorem` | [log_factorial_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/log-factorial-eq-sum--ecf53c4adf00032d21572652.md) | 38 | `result-track:ecf53c4adf00032d21572652196ab79dcb2b8a0f72ffcf8adbe827a7899d25ee` |
| 3 | `theorem` | [factorial_identity](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/factorial-identity--1646e6558f791ce70fe59db9.md) | 48 | `result-track:1646e6558f791ce70fe59db995d49bb2c538f23a7422d33ff5773ffbf044eb29` |
| 4 | `theorem` | [natural_division_error_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/natural-division-error-le-one--1eebfbba6aa7b372b8613c85.md) | 55 | `result-track:1eebfbba6aa7b372b8613c85b1c31729a25ce8556067339abf1ffa0cd8b38ee0` |
| 5 | `theorem` | [factorial_le_scaled_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/factorial-le-scaled-weighted--91175b17467831699c20fd35.md) | 66 | `result-track:91175b17467831699c20fd35ddbdd031ef2141c2afb0d6786ba4ed8c7da34fe3` |
| 6 | `theorem` | [scaled_weighted_le_factorial_add_psi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/scaled-weighted-le-factorial-add-psi--3b68cbf4ccc1a35832ca1774.md) | 78 | `result-track:3b68cbf4ccc1a35832ca1774895744c5f028ba0f21747c3fd13e13d447dbd4a4` |
| 7 | `theorem` | [log_factorial_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/log-factorial-lower--62e33c0bf9d3f794ee6f3542.md) | 96 | `result-track:62e33c0bf9d3f794ee6f3542da02777e30bbfda3f494497e8240d9aec582c86f` |
| 8 | `theorem` | [log_factorial_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/log-factorial-upper--4ef7bff3bd9a2f1c3ec3b067.md) | 103 | `result-track:4ef7bff3bd9a2f1c3ec3b067fc6e4e517260898b8eeacf83ad5d3fb16e82e898` |
| 9 | `theorem` | [weightedMangoldt_sub_log_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedmangoldt-sub-log-bounds--58815621a78fd462aef8e44d.md) | 110 | `result-track:58815621a78fd462aef8e44d75837dc2ceff5608a3a975fb97ff089b71ba16de` |
| 10 | `theorem` | [weightedMangoldt_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedmangoldt-mertens--179e07c47e16e08a7c72bf20.md) | 120 | `result-track:179e07c47e16e08a7c72bf20e687a752934426c16b52fd6c79d3cfb278e7dfc9` |
| 11 | `def` | [primeCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/primecoefficient--97b8fef4a073978bc81a5ed7.md) | 126 | `declaration-track:97b8fef4a073978bc81a5ed75767a5d46afa849de7b89b06036b29fa37052b36` |
| 12 | `def` | [properPowerCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/properpowercoefficient--f3ce9378473dfd664bc32340.md) | 128 | `declaration-track:f3ce9378473dfd664bc32340992bff0d67da4bc43a55726f6d60aed9a8045c08` |
| 13 | `def` | [weightedPrime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedprime--183a0b8c92cfbf1a69060523.md) | 130 | `declaration-track:183a0b8c92cfbf1a6906052348623d8e974421ddb3fd813f5911a7006aa71a50` |
| 14 | `theorem` | [properPowerCoefficient_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/properpowercoefficient-nonneg--3d4ef8f4702f12a13e223e24.md) | 132 | `result-track:3d4ef8f4702f12a13e223e2499b7cedecef98039490c7e04ab8c3df94017fd7f` |
| 15 | `theorem` | [properPower_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/properpower-prefix--881d3b4a1e189eb3a9a33f10.md) | 137 | `result-track:881d3b4a1e189eb3a9a33f10a6ebfcbe515e00a2f9fef95f4f8762c7cafa0c6c` |
| 16 | `theorem` | [weighted_difference](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weighted-difference--23ef5d3e25bfc2c9d9130fff.md) | 146 | `result-track:23ef5d3e25bfc2c9d9130fff2c08e7f9cf8a0546dbe36beae558e0e2805caff7` |
| 17 | `theorem` | [weighted_difference_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weighted-difference-nonneg--b484c576b0d495a525da9788.md) | 152 | `result-track:b484c576b0d495a525da9788a3649daf0cdd4cbc7421d89b66dfccdfc40251b4` |
| 18 | `theorem` | [weighted_difference_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weighted-difference-abel--2d9e555a71e81607f9c29915.md) | 157 | `result-track:2d9e555a71e81607f9c29915f208630437aa177bd13e1dccdc535384171da4e9` |
| 19 | `theorem` | [properPower_integrand_integrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/properpower-integrand-integrable--06a8eb48e265bcfd822981ca.md) | 196 | `result-track:06a8eb48e265bcfd822981caaeb794eb26a854da820071de58b40c0cfbd2c92c` |
| 20 | `theorem` | [sqrt_div_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/sqrt-div-square--9ceb453ff4b4a957480e9480.md) | 209 | `result-track:9ceb453ff4b4a957480e94804dda7dc8311c658ee0cc1eb82689c2c814b7fcf0` |
| 21 | `theorem` | [weighted_difference_bound_of_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weighted-difference-bound-of-sqrt--23020f7dbde9e9d42ad6c273.md) | 214 | `result-track:23020f7dbde9e9d42ad6c273807205e0191eecba86397388b221b37ed77ace5f` |
| 22 | `theorem` | [weighted_difference_uniformly_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weighted-difference-uniformly-bounded--0b3ee743b926b78e018e4378.md) | 257 | `result-track:0b3ee743b926b78e018e43785e1f189fc2269ce24a174d2ef2407b2450418890` |
| 23 | `theorem` | [weightedPrime_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedprime-mertens--5b49bf7e8946057013554794.md) | 267 | `result-track:5b49bf7e8946057013554794fe2cf0767e306cf5c501329237c9b13f7ee35631` |
| 24 | `theorem` | [weightedPrime_eq_filtered](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedprime-eq-filtered--3d18ac9a3cae7cdc602cdd6c.md) | 277 | `result-track:3d18ac9a3cae7cdc602cdd6c87878a626cb6ef09e843cfb1f57a857e9bed53a1` |
| 25 | `theorem` | [log_floor_error](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/log-floor-error--30b9d3f66f30d6f258b6e8b1.md) | 285 | `result-track:30b9d3f66f30d6f258b6e8b122a5d917179f95c8bbfe7f21ac0033fef31c2935` |
| 26 | `theorem` | [weightedPrime_mertens_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedprime-mertens-real--7b25c22a6a7b3b266956c656.md) | 302 | `result-track:7b25c22a6a7b3b266956c6568c8f56f6eecf87e5aa520bc316c6818fceacce1a` |
| 27 | `theorem` | [weightedPrime_mertens_log_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant4ea8b9d7dd326ff1e6c9bdfbcf4a8a9a503616930fda21b495ad7bfd2371923a.lean/declarations/weightedprime-mertens-log-cutoff--22bf6b17d9a953d387935c8e.md) | 322 | `result-track:22bf6b17d9a953d387935c8e5317afd72c4d0950fe3a887069096bf614e896f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
