# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ArithmeticLaurentAttempt01.Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9de41b2cf8c0a55e7fbf7fed2d96c1305ce7748e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9de41b2cf8c0a55e7fbf7fed2d96c1305ce7748e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLaurentSlope` — import line 6; external provider; requires a separately pinned dependency.
- `ActualFirstStieltjesDerivative` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_regular_negative_derivative](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/declarations/actual-regular-negative-derivative--a20197a25b3fe7344c5786e6.md) | 22 | `result-track:a20197a25b3fe7344c5786e6ebd500694d3782ab95565776eee42163007cf3b5` |
| 2 | `theorem` | [actual_regular_negative_slope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/declarations/actual-regular-negative-slope--65681ed0c48307bcc5c04de1.md) | 29 | `result-track:65681ed0c48307bcc5c04de1e7ef483f8a11033ca641e4b8a672aa4ed6ca47bb` |
| 3 | `theorem` | [actual_negative_log_laurent_slope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/declarations/actual-negative-log-laurent-slope--262de1f8d36da9b03933244b.md) | 37 | `result-track:262de1f8d36da9b03933244b84d87b424e149d56505a05ff659f2e52b5ee9b38` |
| 4 | `theorem` | [actual_vonMangoldt_series_laurent_slope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/declarations/actual-vonmangoldt-series-laurent-slope--8fe3b475cebc298915cb6a6c.md) | 46 | `result-track:8fe3b475cebc298915cb6a6cb4579ee3fb506d3a50e00c90cac87ccab336899b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
