# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshParseval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d26b1474108edec8e6b357b30cded7306febbb2d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d26b1474108edec8e6b357b30cded7306febbb2d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshOrthogonality`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [walshPolynomial](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/walshpolynomial--b5d94fdf2550a91d8ca7073f.md) | 37 | `declaration-track:b5d94fdf2550a91d8ca7073f3f285270f4027e2cfc3f47ac044895cf7279e312` |
| 2 | `theorem` | [walshPolynomial_parseval](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/walshpolynomial-parseval--2009377d5defc1d9a376662b.md) | 43 | `result-track:2009377d5defc1d9a376662be03b1d22209ad1d720e6449d8d91121d078cefb4` |
| 3 | `def` | [sourceCorrelation](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/sourcecorrelation--4f266a7bae01cd86e1668a94.md) | 92 | `declaration-track:4f266a7bae01cd86e1668a9489337eeab314966494f711595380de470ee2958b` |
| 4 | `theorem` | [sourceCorrelation_empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/sourcecorrelation-empty--f4ceab30cec8d66dc2edc242.md) | 98 | `result-track:f4ceab30cec8d66dc2edc24222c5b700024d4ef57be58536c06cab65cfe7c57c` |
| 5 | `theorem` | [sourceCorrelation_empty_sample](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/sourcecorrelation-empty-sample--a9800df63b22ffc81b8008ff.md) | 108 | `result-track:a9800df63b22ffc81b8008ffbe2f0543fca660d8c291beecab0ed3783438fe2c` |
| 6 | `theorem` | [booleanCube_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/booleancube-card--18f9d650586c61b6a29c1183.md) | 113 | `result-track:18f9d650586c61b6a29c118389cd2c14bb5d0d1615763154ed721e2a423cc3fb` |
| 7 | `def` | [nonemptyCorrelationEnergy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/nonemptycorrelationenergy--b7dba6a5710a58e522697062.md) | 119 | `declaration-track:b7dba6a5710a58e52269706237f13376b14f3d20ba7e41f3d930bef089f0a314` |
| 8 | `def` | [scaledPatternDeviation](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/scaledpatterndeviation--1efc2a12ea9c5124b5061e74.md) | 126 | `declaration-track:1efc2a12ea9c5124b5061e74c402644a7530385415cbfced91c8b2bf83c457cf` |
| 9 | `theorem` | [scaledPatternDeviation_walsh](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/scaledpatterndeviation-walsh--d9ec792df3fceeb3652c995c.md) | 133 | `result-track:d9ec792df3fceeb3652c995ce455389ce7b0824388beaf4c44224da3938637b4` |
| 10 | `theorem` | [scaledPatternDeviation_parseval](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/scaledpatterndeviation-parseval--2efa0e04ea580d9a4cfe11c5.md) | 166 | `result-track:2efa0e04ea580d9a4cfe11c52fff48d749a79b9c6e86ad7b66eb7157ed8c0c04` |
| 11 | `def` | [chiSquareAgainstUniform](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/chisquareagainstuniform--7733890309c1d3ce2f881d4f.md) | 188 | `declaration-track:7733890309c1d3ce2f881d4f6fb8dc6e124e3a1fc5013b33e5032f57966a6479` |
| 12 | `theorem` | [chiSquareAgainstUniform_eq_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshParseval.lean/declarations/chisquareagainstuniform-eq-energy--4f838d8c86d66add76988309.md) | 196 | `result-track:4f838d8c86d66add76988309773c8baf8792a8026e156fb276d262e5b532c2b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
