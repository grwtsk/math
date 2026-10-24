# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshTotalVariation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbeaaf1fca22e3a5824d1ffe051907315ee43f80",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbeaaf1fca22e3a5824d1ffe051907315ee43f80`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshParseval`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.Order.Chebyshev` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [totalVariationFromUniform](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/totalvariationfromuniform--82f4f1502c16f432eb3316d2.md) | 37 | `declaration-track:82f4f1502c16f432eb3316d2b36f5b1880cbea7b1adc59064f20b50bb6abb796` |
| 2 | `theorem` | [boolCube_card_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/boolcube-card-pos--32ec6926aad9a5510e2da40f.md) | 44 | `result-track:32ec6926aad9a5510e2da40fc1da58a61a9461c9e4aea0fc3fd0d2940518eeec` |
| 3 | `theorem` | [totalVariationFromUniform_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/totalvariationfromuniform-nonneg--c759f6c5276e6e8e8d14c6db.md) | 51 | `result-track:c759f6c5276e6e8e8d14c6db2891e2958c7b827caa31e789a345c35c347e5087` |
| 4 | `theorem` | [scaledDeviation_l1_sq_le_card_mul_l2](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/scaleddeviation-l1-sq-le-card-mul-l2--dc2b640110e8f5a917e4ba74.md) | 61 | `result-track:dc2b640110e8f5a917e4ba745a988e0d5c74183f5e24e349dd578004778fd303` |
| 5 | `theorem` | [scaledDeviation_l1_sq_le_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/scaleddeviation-l1-sq-le-energy--0537a247e466e505e8b5868b.md) | 74 | `result-track:0537a247e466e505e8b5868b4c83fa4a8da8055923a8137331ea72f83c540686` |
| 6 | `theorem` | [two_mul_totalVariation_sq_le_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/two-mul-totalvariation-sq-le-energy--cdf4442f6c8ac388faf0c17a.md) | 92 | `result-track:cdf4442f6c8ac388faf0c17a2a4e190e741f8f008c620f7d0c7467d96d2ea0fa` |
| 7 | `theorem` | [totalVariation_le_half_sqrt_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshTotalVariation.lean/declarations/totalvariation-le-half-sqrt-energy--0d430c09720ffefadb041f8e.md) | 114 | `result-track:0d430c09720ffefadb041f8eb00549ac3ff0cbede963d727a200fc27ced68536` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
