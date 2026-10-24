# Verification target: GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5b5de2ac09e2d2f5f7f6b3b546dd1844545380`.

Source path: `GRWTSK/NumberTheory/Moebius/PrimeFilterLaplace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PrimeFilterLaplace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimeFilterEnergy`](../../../../mathematics/NumberTheory/Moebius/PrimeFilterEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum.Prime` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noteWindowLaplace](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace--b0aed2252d6a1908a742c1dd.md) | 15 | `declaration-track:b0aed2252d6a1908a742c1dd5b0c94a8c332d589c09c134bb069bc61c45cd110` |
| 2 | `def` | [noteLaplaceTail](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notelaplacetail--fd1976d7aa9e37dfd39f0595.md) | 18 | `declaration-track:fd1976d7aa9e37dfd39f05958dded284ef3c579837cc3eabba65b34d5dba6dad` |
| 3 | `def` | [primeLaplaceWeight](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/primelaplaceweight--74f1addc5f1de6c97ac2b8b7.md) | 21 | `declaration-track:74f1addc5f1de6c97ac2b8b7138ddee27acfb5f553855118dfe012a2eb3ca386` |
| 4 | `theorem` | [primeLaplaceWeight_eq_exp](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/primelaplaceweight-eq-exp--ddeb4293fc10fdf00eb6b57e.md) | 24 | `result-track:ddeb4293fc10fdf00eb6b57e5356f9cf94184170f3f1ff7a04a9c8c9151d2570` |
| 5 | `theorem` | [window_integrand_continuous](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/window-integrand-continuous--b30aa05c434b3ce42f85a29c.md) | 33 | `result-track:b30aa05c434b3ce42f85a29caafc58ca7912d66c797205d03f7b3b9a2c98acbb` |
| 6 | `theorem` | [noteWindowLaplace_primeFilter_before_delay](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace-primefilter-before-delay--cc4d46ef4805a129a5644b93.md) | 40 | `result-track:cc4d46ef4805a129a5644b9349aa70b724c772c853afa158c1206a9ac0c7783c` |
| 7 | `theorem` | [noteWindowLaplace_causalShift](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace-causalshift--9b900213e6d277aab5b32f0a.md) | 57 | `result-track:9b900213e6d277aab5b32f0a3257e66e79a89168ed206be5ea0e7404051a6f67` |
| 8 | `theorem` | [noteWindowLaplace_shorter_add_tail](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace-shorter-add-tail--0180c86a9d3eb4c4987fd815.md) | 98 | `result-track:0180c86a9d3eb4c4987fd8154781f9d20d1760946bf754043def2cda7cbf6493` |
| 9 | `theorem` | [noteWindowLaplace_primeFilter](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace-primefilter--7b2ed1fe7ee152bc99d1c081.md) | 109 | `result-track:7b2ed1fe7ee152bc99d1c08137d64ac276c12df64d1b167a24ddf49ff4dce232` |
| 10 | `theorem` | [noteWindowLaplace_cascade_insert](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace-cascade-insert--d5f81ed03165bbdc6c53560d.md) | 136 | `result-track:d5f81ed03165bbdc6c53560d9745565f487a9517a80369187d0f4be4e2a30770` |
| 11 | `theorem` | [noteWindowLaplace_actual_cascade](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/notewindowlaplace-actual-cascade--91422e5f8366342fb43697e1.md) | 145 | `result-track:91422e5f8366342fb43697e1b1f2e41d1442f7d6a30c10f31a1330516442ca55` |
| 12 | `theorem` | [first_prime_window_not_multiplier](../../../../mathematics/NumberTheory/Moebius/PrimeFilterLaplace.lean/declarations/first-prime-window-not-multiplier--d5be39d91dc51edbfcf3c001.md) | 157 | `result-track:d5be39d91dc51edbfcf3c001b2b2764f044ef5270fe96b8ffa6fc7bf3705c99a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
