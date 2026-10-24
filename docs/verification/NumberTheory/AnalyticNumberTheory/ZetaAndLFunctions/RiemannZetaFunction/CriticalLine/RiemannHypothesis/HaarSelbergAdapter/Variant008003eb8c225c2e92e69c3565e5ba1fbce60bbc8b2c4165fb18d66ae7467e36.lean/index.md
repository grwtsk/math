# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HaarSelbergAdapter.Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "053ab3db553d5b9fb5888ceed9d711d9364b3eba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `053ab3db553d5b9fb5888ceed9d711d9364b3eba`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PrimeStorage` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blockError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/blockerror--23d5d562089a5c08b0e43b3d.md) | 29 | `declaration-track:23d5d562089a5c08b0e43b3dc19b3252b7d04229c7fc808d718d0e52862b9f4f` |
| 2 | `def` | [uniformHaar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/uniformhaar--97f46c88002a1af4488b3b1e.md) | 36 | `declaration-track:97f46c88002a1af4488b3b1e1444d371eb21ef16b19614c9b22cbf17cc261c9a` |
| 3 | `theorem` | [haar_eq_block_errors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/haar-eq-block-errors--2fa8dbd18c78d247fe2aa4a5.md) | 40 | `result-track:2fa8dbd18c78d247fe2aa4a5b2a8fda8f273dac1b084cb8ad2cf7ce547770156` |
| 4 | `theorem` | [haar_square_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/haar-square-le--e2adb5f8e934d727b820453d.md) | 48 | `result-track:e2adb5f8e934d727b820453d7732f40640fb483128152e4a9160c775d35d5d13` |
| 5 | `theorem` | [actual_storage_block_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/actual-storage-block-error--a6ccdf61b83fb89ee65ee5c9.md) | 60 | `result-track:a6ccdf61b83fb89ee65ee5c972bb46e10db4959a608bb6d5f307e89e0ca3e30b` |
| 6 | `theorem` | [actual_theta_haar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/actual-theta-haar--62555c33f13ace3cebc36af4.md) | 68 | `result-track:62555c33f13ace3cebc36af4726c7cf61ff9324139b1004196c49403f68be8f7` |
| 7 | `theorem` | [actual_theta_haar_square_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Variant008003eb8c225c2e92e69c3565e5ba1fbce60bbc8b2c4165fb18d66ae7467e36.lean/declarations/actual-theta-haar-square-le--3277f51270ed2f08f3522e87.md) | 79 | `result-track:3277f51270ed2f08f3522e875e0b05ce34a964a7ab215c050b6d5086d0c39609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
