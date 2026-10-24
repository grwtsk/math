# Verification target: GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebce207c21c404772dc3a7f87491ee18c58fbbae",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebce207c21c404772dc3a7f87491ee18c58fbbae`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularExpansion`](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularExpansion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachCharacterWindowValue](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachcharacterwindowvalue--eeec1025940a6d800b828ca0.md) | 44 | `declaration-track:eeec1025940a6d800b828ca0f19358f1fa5403a83b520f81c92357423a3b4136` |
| 2 | `def` | [goldbachSymmetricCharacterIntegral](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetriccharacterintegral--625ede86c50a264ffec6d2d8.md) | 53 | `declaration-track:625ede86c50a264ffec6d2d8ca3677922ddb8ba89342df498ded9bb5295757f1` |
| 3 | `theorem` | [goldbachCharacterWindowValue_of_ne_zero](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachcharacterwindowvalue-of-ne-zero--c894f7b2d88dd064f8a4725e.md) | 59 | `result-track:c894f7b2d88dd064f8a4725e6adf56423c5782b65eebd42aaa65cbf0ee3108b9` |
| 4 | `theorem` | [goldbachCharacterWindowValue_zero](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachcharacterwindowvalue-zero--d5e3f8134794b39cc442f5e6.md) | 71 | `result-track:d5e3f8134794b39cc442f5e6604ce142bbd87d6d21a046bd6a023c270483bb37` |
| 5 | `theorem` | [goldbachCharacterWindowValue_neg](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachcharacterwindowvalue-neg--d314e4c31650958bd7aa9624.md) | 76 | `result-track:d314e4c31650958bd7aa962400a1c93659d2c8e757447349573036a45087b4f4` |
| 6 | `theorem` | [goldbachSymmetricCharacterIntegral_formula](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetriccharacterintegral-formula--7eb06df810f84693aff4f640.md) | 94 | `result-track:7eb06df810f84693aff4f640933ca12259765f174bd2e40685d4185be94b3964` |
| 7 | `theorem` | [goldbachSymmetricRealSingularIntegral_eq_interval](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetricrealsingularintegral-eq-interval--0e6b97dcd8bd6e7427328df6.md) | 136 | `result-track:0e6b97dcd8bd6e7427328df6061c05897f0dc637c78fe5b15fd654c987db8e9e` |
| 8 | `theorem` | [goldbachSymmetricRealSingularIntegral_eq_pairEvaluation](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetricrealsingularintegral-eq-pairevaluation--5dd32d25a87aa1849d052191.md) | 151 | `result-track:5dd32d25a87aa1849d05219130fbd098a5b50ea5e911a23da13e7b8241ae2d97` |
| 9 | `def` | [goldbachSingularDiagonalMain](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsingulardiagonalmain--a4de8de062fb9b7d9520009d.md) | 175 | `declaration-track:a4de8de062fb9b7d9520009d55a54ccc94b31831f6fa62d1a061332d874f8769` |
| 10 | `theorem` | [goldbachSingularDiagonalMain_eq_two_mul_div](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsingulardiagonalmain-eq-two-mul-div--760561b12adc91b4eac68082.md) | 181 | `result-track:760561b12adc91b4eac68082db66247271e3136438eb83f50dad0a3daa519546` |
| 11 | `def` | [goldbachSingularOscillatoryCorrection](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsingularoscillatorycorrection--77dcdcd48a6f376402ea8bce.md) | 196 | `declaration-track:77dcdcd48a6f376402ea8bcef68032b386226a7fdad944b35ab9336b1d874907` |
| 12 | `def` | [goldbachSingularOscillatoryBudget](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsingularoscillatorybudget--9cfb9db2cc40e1f51774f3b9.md) | 204 | `declaration-track:9cfb9db2cc40e1f51774f3b9cb7baaca8f8b0a5c32d991682e0e6d3014e06e72` |
| 13 | `theorem` | [goldbachSymmetricRealSingularIntegral_eq_main_add_correction](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetricrealsingularintegral-eq-main-add-correction--713d27363e96b84dea8025a6.md) | 213 | `result-track:713d27363e96b84dea8025a6afa2dacacee1e07340dfebca770cbcbad8eed708` |
| 14 | `theorem` | [goldbachSingularOscillatoryBudget_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsingularoscillatorybudget-nonneg--0a6e5d379034b8d770033227.md) | 246 | `result-track:0a6e5d379034b8d7700332270f789a8c7b98dd2d49ec58846c856335f0a69c9c` |
| 15 | `theorem` | [norm_goldbachSingularOscillatoryCorrection_le](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/norm-goldbachsingularoscillatorycorrection-le--ae0a4846d1f9f84c1a92a9a7.md) | 254 | `result-track:ae0a4846d1f9f84c1a92a9a7bebb8585ad0b80b4fa002c4462d24bf3c02d3874` |
| 16 | `theorem` | [goldbachSymmetricRealSingularIntegral_im](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetricrealsingularintegral-im--62b4addc181dc8d9164eacf1.md) | 280 | `result-track:62b4addc181dc8d9164eacf1a9af51196673120ddff120bc9ede8089ee8defa7` |
| 17 | `theorem` | [goldbachSingularDiagonalMain_sub_budget_le_re](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsingulardiagonalmain-sub-budget-le-re--9069a4990de614e1830e64cc.md) | 289 | `result-track:9069a4990de614e1830e64cce1eb30d690ae22b401e883b07f2fe71a44cdb8dd` |
| 18 | `theorem` | [goldbachSymmetricRealSingularIntegral_re_pos_of_budget](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularEvaluation.lean/declarations/goldbachsymmetricrealsingularintegral-re-pos-of-budget--7abc214c63e74fa483bb20dd.md) | 311 | `result-track:7abc214c63e74fa483bb20dd10e16af81161fa7044466f310a61448db4c6e9b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
