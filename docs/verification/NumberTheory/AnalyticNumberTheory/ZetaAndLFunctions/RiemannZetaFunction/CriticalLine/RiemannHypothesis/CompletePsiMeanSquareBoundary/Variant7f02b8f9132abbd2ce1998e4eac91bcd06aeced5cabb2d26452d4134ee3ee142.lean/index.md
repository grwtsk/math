# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompletePsiMeanSquareBoundary.Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46c3b72dfe62480f0fd5c549eb79e031d443fb20",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46c3b72dfe62480f0fd5c549eb79e031d443fb20`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completePsiSquare](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/declarations/completepsisquare--7a68a05b9ee687251d26a88a.md) | 27 | `declaration-track:7a68a05b9ee687251d26a88ab8163e743fb5c186dfdfb82bab99b84a27b788a3` |
| 2 | `theorem` | [eventual_positive_square_floor_excludes_vanishing_factor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/declarations/eventual-positive-square-floor-excludes-vanishing-factor--fb22e7423d25c7e5470874aa.md) | 29 | `result-track:fb22e7423d25c7e5470874aa044b705ada1b55deeb6d25f5751762852fa4ed10` |
| 3 | `theorem` | [positive_log_power_factor_tends_to_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/declarations/positive-log-power-factor-tends-to-zero--45671f55bfb0fceb88479a18.md) | 44 | `result-track:45671f55bfb0fceb88479a18df959362f31d62db5950e8a6caf39b49c1d51ef6` |
| 4 | `theorem` | [complete_psi_floor_excludes_negative_log_saving](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CompletePsiMeanSquareBoundary/Variant7f02b8f9132abbd2ce1998e4eac91bcd06aeced5cabb2d26452d4134ee3ee142.lean/declarations/complete-psi-floor-excludes-negative-log-saving--8fc9a38ee603a6c6370181ca.md) | 52 | `result-track:8fc9a38ee603a6c6370181cacc8e122eea3e31a0913880afd96f851f4cc7905f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
