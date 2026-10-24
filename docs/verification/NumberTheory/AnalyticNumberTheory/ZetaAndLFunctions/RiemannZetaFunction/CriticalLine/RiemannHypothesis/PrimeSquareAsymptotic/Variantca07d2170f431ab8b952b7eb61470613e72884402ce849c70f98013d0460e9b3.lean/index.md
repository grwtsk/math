# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeSquareAsymptotic.Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a8b8b4a81886c96e80f458cf924ca09ab79ef9a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a8b8b4a81886c96e80f458cf924ca09ab79ef9a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSquareError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/primesquareerror--f4d4619694295f7df3529d32.md) | 34 | `declaration-track:f4d4619694295f7df3529d32ab1986eef84e740c08858fbf85c4ca2c5b003e20` |
| 2 | `def` | [primeSquareErrorBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/primesquareerrorbudget--0bf2b5c36fbf4b51cb321cde.md) | 39 | `declaration-track:0bf2b5c36fbf4b51cb321cde5b10acfce106952c1f5911339d334800e40c22b0` |
| 3 | `theorem` | [primeSquareErrorBudget_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/primesquareerrorbudget-nonneg--f0e287d0583b606dada010ff.md) | 42 | `result-track:f0e287d0583b606dada010ffa721685d5124df28a4cf7c243743de629a585591` |
| 4 | `theorem` | [remainder_derivative_norm_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/remainder-derivative-norm-bound--9ad96d8ca368a359e836b603.md) | 47 | `result-track:9ad96d8ca368a359e836b603b25411aca84117f11580461d7f83a3970591e4f6` |
| 5 | `theorem` | [remainder_derivative_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/remainder-derivative-integrable--d4dac1363b280ef55a16f1c4.md) | 58 | `result-track:d4dac1363b280ef55a16f1c457eff60912f820a726b0a15c2185ed82ac32a59b` |
| 6 | `theorem` | [remainder_derivative_intervalIntegrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/remainder-derivative-intervalintegrable--538046fb4dfef193adcdefb5.md) | 71 | `result-track:538046fb4dfef193adcdefb533f36114e7abfa3baf51eee91a123caa6a9d48a8` |
| 7 | `theorem` | [primeSquareError_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/primesquareerror-abs-le--430870ce8e7531fc5221759c.md) | 77 | `result-track:430870ce8e7531fc5221759cdf7e0feaf0f62476ade60344ac0c92cf1577bf98` |
| 8 | `theorem` | [primeSquareContribution_eq_main_sub_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/primesquarecontribution-eq-main-sub-error--070bd6b08afa47f14695a13d.md) | 112 | `result-track:070bd6b08afa47f14695a13d4ea6a259f90f74de001a54e42caa58094227bb3d` |
| 9 | `theorem` | [primeSquareContribution_asymptotic_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/primesquarecontribution-asymptotic-bound--2feeccefd177908bcb0906aa.md) | 123 | `result-track:2feeccefd177908bcb0906aa821ba838f0bc547562f7c795949c4619160a8294` |
| 10 | `theorem` | [actual_primeSquare_signed_asymptotic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variantca07d2170f431ab8b952b7eb61470613e72884402ce849c70f98013d0460e9b3.lean/declarations/actual-primesquare-signed-asymptotic--c7fafd6865d06e3fffe11cc1.md) | 135 | `result-track:c7fafd6865d06e3fffe11cc10c47742f06440a799d7a699137a3e980aca19877` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
