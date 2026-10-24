# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorMainFullAudit.Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bab73e5be4570edc15210578a85b33a24f1095cf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bab73e5be4570edc15210578a85b33a24f1095cf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisorremaindercore--40764f16c759d84ad19032e9.md) | 24 | `declaration-track:40764f16c759d84ad19032e9630a6cd5cd81b3da2b4cade856248be374e35323` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisorremaindercore-measurable--0bc3c69439e8134294e90336.md) | 30 | `result-track:0bc3c69439e8134294e90336b606788d0bf6846f6d02f2e408aab3ca5196b127` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisorremaindercore-sq-le--14ad2d0c7b1ba8dbdb7aea36.md) | 42 | `result-track:14ad2d0c7b1ba8dbdb7aea36c19effad8d8076e3adfdd1543e31f82b73ad03ce` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/remaindermajorant-integrable--b262655178743906f103c91c.md) | 71 | `result-track:b262655178743906f103c91c11488fcdff940e6268d4f5a25f016d0906301d38` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisorremaindercore-memlp--88df759cc403da280ecd9599.md) | 78 | `result-track:88df759cc403da280ecd9599b0466c8c1d837a6b16971420a9a9081e2233b41c` |
| 6 | `def` | [divisorRemainderVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisorremaindervector--4ab8033831de10bbc3c51da8.md) | 89 | `declaration-track:4ab8033831de10bbc3c51da80be1a1b9228195a5631ad0700b631985b3718081` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisorremaindervector-norm-le--4b53ae7f6d97fc75af909794.md) | 93 | `result-track:4b53ae7f6d97fc75af909794afff820ad37ceb8b3aeee02d459b6884ccd8529a` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/sourcemultiplier-divisorremainder-norm-le--6b6f77319a58aa373dc5c779.md) | 116 | `result-track:6b6f77319a58aa373dc5c77934846f65d9b9b78873634e5ff16828e7c58e4b7d` |
| 9 | `def` | [divisorMainResidual](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisormainresidual--2853d6f2145618726a837101.md) | 141 | `declaration-track:2853d6f2145618726a83710117cff64e9aabcbac889d2f6938f54ab8187d6e4b` |
| 10 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/arithmeticresidual-eq-main-sub-remainder--64ce30fe6ac107fb56d19aba.md) | 151 | `result-track:64ce30fe6ac107fb56d19aba757b781f0d57e90fa2d2bffe1678383dc182cf3d` |
| 11 | `def` | [divisorMainCore](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisormaincore--653c9862653dfa5af9463536.md) | 162 | `declaration-track:653c9862653dfa5af946353623539ac18f9eb8ced8954d5b4ddc9645cfdc20c3` |
| 12 | `theorem` | [mainCore_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/maincore-eq-add--3e0d929d4365dc521178f8ef.md) | 166 | `result-track:3e0d929d4365dc521178f8ef6cbcbb9890a0bb9a0dbd16e7de7b79d63170349e` |
| 13 | `theorem` | [divisorMainCore_memLp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisormaincore-memlp--65746f20351c0f450f35d479.md) | 181 | `result-track:65746f20351c0f450f35d4795998574afffbad3ce20bd6338e15fd5a2ce0ab6e` |
| 14 | `def` | [divisorMainVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/divisormainvector--ee4ed71a141e3d4c3ff84095.md) | 189 | `declaration-track:ee4ed71a141e3d4c3ff84095b4d6adddf19c17c526bc3028eb20c11a760938da` |
| 15 | `theorem` | [mainVector_eq_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/mainvector-eq-add--b4ffca8d4ab2c254697bd832.md) | 193 | `result-track:b4ffca8d4ab2c254697bd8322bf333a8973e8053bb5f6590ae0cd65f4396a4af` |
| 16 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainFullAudit/Variant67c639271378570cd4c580cdda95a5fd0baa0e2e44799ca76382896cad3644a7.lean/declarations/filtered-core-main-norm-difference-le--592761a24d6006484299aa2a.md) | 211 | `result-track:592761a24d6006484299aa2a0b315c29e7fe06bacf5456be0393ed7f697bef8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
