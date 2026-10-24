# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionModelControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f59861dc1cce8fd5696179ee4a81b5d6fe21553c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f59861dc1cce8fd5696179ee4a81b5d6fe21553c`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integer_kernel_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/integer-kernel-zero--56cc545bd598d3bcbd5410b9.md) | 32 | `result-track:56cc545bd598d3bcbd5410b9e3539ae69d1a1b63279b4508ace09b16e4f1f989` |
| 2 | `theorem` | [noncoprime_residue_main_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/noncoprime-residue-main-zero--9424ce8a25b603ceb2b9740b.md) | 37 | `result-track:9424ce8a25b603ceb2b9740bc74a9601f8f77c2bdf7aaa750b492165f9cdb94e` |
| 3 | `theorem` | [normalized_coefficient_denominator_one](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/normalized-coefficient-denominator-one--c3a9e7f4ff86b254f8b69868.md) | 42 | `result-track:c3a9e7f4ff86b254f8b69868059be875e98aafc0fcfd20bfff5c2eb94975c775` |
| 4 | `theorem` | [even_residue_discrepancy_at_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/even-residue-discrepancy-at-two--49bd6f6e34c7a8e354dba202.md) | 50 | `result-track:49bd6f6e34c7a8e354dba202e2a66e0a7156ef22199266ce6fb44d6af33868e4` |
| 5 | `theorem` | [zero_residue_error_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/zero-residue-error-rejected--c05872fae89f1dbdc97c9f97.md) | 60 | `result-track:c05872fae89f1dbdc97c9f974580961e06481db9a9ad84d3bfe76c336f8b34b1` |
| 6 | `theorem` | [exact_progression_reconstruction_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/exact-progression-reconstruction-control--490e9a3f54456c14b584eb3e.md) | 71 | `result-track:490e9a3f54456c14b584eb3eb60937154c6bd686fdf9195fb59ab4e78506c0c9` |
| 7 | `theorem` | [normalized_coefficient_norm_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/normalized-coefficient-norm-control--e90bbdd0aeceb9864d867a3e.md) | 79 | `result-track:e90bbdd0aeceb9864d867a3e36284202ad957d8a903387e29f1b34b1c3000c6b` |
| 8 | `theorem` | [coarse_six_radius_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/coarse-six-radius-control--b11cba3a7d22d20248709e21.md) | 86 | `result-track:b11cba3a7d22d20248709e219e3ca63c3081397758f546d8a400ed0aba059782` |
| 9 | `theorem` | [progression_bookkeeping_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/progression-bookkeeping-not-goldbach-witness--87adc0aa036c1060d522934a.md) | 92 | `result-track:87adc0aa036c1060d522934a5c27ed6ca9e4260d89ec12df8856226e9fcbbefb` |
| 10 | `theorem` | [zero_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/zero-margin-rejected--ff5579ca469634577a04db6f.md) | 104 | `result-track:ff5579ca469634577a04db6ffa1c5f9f15e418fbaeaaffdfb6101788cabba0b8` |
| 11 | `theorem` | [pointwise_budget_not_count](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/declarations/pointwise-budget-not-count--b5b0e6820d4a5427225495e1.md) | 110 | `result-track:b5b0e6820d4a5427225495e1223431887e5a0f956ac8bfdccaa7b0dc7775d580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
