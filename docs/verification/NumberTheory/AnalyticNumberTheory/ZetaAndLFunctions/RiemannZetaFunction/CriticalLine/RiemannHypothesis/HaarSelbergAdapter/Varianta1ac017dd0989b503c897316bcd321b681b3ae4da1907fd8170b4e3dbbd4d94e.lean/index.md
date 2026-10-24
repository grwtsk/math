# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HaarSelbergAdapter.Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dfb6fe2b9c8231af5f5d1df082eac6897fc9baf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dfb6fe2b9c8231af5f5d1df082eac6897fc9baf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean.json)

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
| 1 | `def` | [blockError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/blockerror--615ebef7ce1cedd64792d20a.md) | 25 | `declaration-track:615ebef7ce1cedd64792d20a26085df34a7e78a97f2d30f4e3107abf6fc335d2` |
| 2 | `def` | [uniformHaar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/uniformhaar--054bfa4f0652527400d28262.md) | 27 | `declaration-track:054bfa4f0652527400d28262f874a36a7ab845f46795c47882530999e4a68abe` |
| 3 | `theorem` | [haar_eq_block_errors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/haar-eq-block-errors--17fec469d2451b7822366782.md) | 31 | `result-track:17fec469d2451b78223667826a1319a2941723e9301a5fe44f969e37d298e12f` |
| 4 | `theorem` | [haar_square_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/haar-square-le--2b9970d1d81f8a1edab912e2.md) | 39 | `result-track:2b9970d1d81f8a1edab912e200cf92284be5be0b5371487d6e7bc67a2e574577` |
| 5 | `theorem` | [actual_storage_block_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/actual-storage-block-error--0e57874c7b25fa04fa467c9c.md) | 51 | `result-track:0e57874c7b25fa04fa467c9c53ec40a33f78f625e85888fc3ad97090bea49bad` |
| 6 | `theorem` | [actual_theta_haar](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/actual-theta-haar--659ebf1f796e213308258b52.md) | 59 | `result-track:659ebf1f796e213308258b52c5d93bd632e60776541510982b33618d8f984351` |
| 7 | `theorem` | [actual_theta_haar_square_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HaarSelbergAdapter/Varianta1ac017dd0989b503c897316bcd321b681b3ae4da1907fd8170b4e3dbbd4d94e.lean/declarations/actual-theta-haar-square-le--23c37cee438c72fdcf6867d5.md) | 70 | `result-track:23c37cee438c72fdcf6867d5ec056997f7ba0c6145f7aa7119d9e5e4d7e9f5b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
