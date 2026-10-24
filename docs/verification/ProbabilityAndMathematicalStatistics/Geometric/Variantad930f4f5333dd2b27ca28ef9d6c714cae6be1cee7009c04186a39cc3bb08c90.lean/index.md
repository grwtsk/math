# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.Geometric.Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcb4a641494275054e9648d3f58510000fbd0773",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcb4a641494275054e9648d3f58510000fbd0773`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [geometricPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/geometricpmfreal--9e81872b550ad83e124bcd17.md) | 36 | `declaration-track:9e81872b550ad83e124bcd179c96e8a4022ee2d6324c65f986853b36d1832c38` |
| 2 | `lemma` | [geometricPMFRealSum](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/geometricpmfrealsum--7af3f7cebcca144e1580f9d3.md) | 38 | `result-track:7af3f7cebcca144e1580f9d322a507d846d0561a588ec269dc53b9fd01a6fa75` |
| 3 | `lemma` | [geometricPMFReal_pos](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/geometricpmfreal-pos--0cdea461d16ff87a9d50e893.md) | 48 | `result-track:0cdea461d16ff87a9d50e893f8672bd92f24f7a4a8d6cf1b4ed068b81a6b50ee` |
| 4 | `lemma` | [geometricPMFReal_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/geometricpmfreal-nonneg--b56a3cf6eb242c88d99a2974.md) | 54 | `result-track:b56a3cf6eb242c88d99a297473bce4522344bb35da8fc6c225f81578eae4fe6a` |
| 5 | `def` | [geometricPMF](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/geometricpmf--ed4965da8ccebd6dcdf62842.md) | 62 | `declaration-track:ed4965da8ccebd6dcdf628426a9932270b6d2c8da6f018220ff6d49bf44b8cf6` |
| 6 | `lemma` | [measurable_geometricPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/measurable-geometricpmfreal--467496051a4d6a6032246bc6.md) | 71 | `result-track:467496051a4d6a6032246bc6bd39bed7b538a0ab0f31010a91b558e149406455` |
| 7 | `lemma` | [stronglyMeasurable_geometricPMFReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/stronglymeasurable-geometricpmfreal--beedea9db71e95406d536b5b.md) | 75 | `result-track:beedea9db71e95406d536b5be21e44ab81e5304b8b5948a281e0a71a62febf96` |
| 8 | `def` | [geometricMeasure](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/geometricmeasure--c00e6a1e1c12eb23e1f7c753.md) | 82 | `declaration-track:c00e6a1e1c12eb23e1f7c753d755799d1069ee8764cc50ae79e429c3fdd32016` |
| 9 | `lemma` | [isProbabilityMeasureGeometric](../../../../mathematics/ProbabilityAndMathematicalStatistics/Geometric/Variantad930f4f5333dd2b27ca28ef9d6c714cae6be1cee7009c04186a39cc3bb08c90.lean/declarations/isprobabilitymeasuregeometric--b5190c22c30a10c5307dbb35.md) | 85 | `result-track:b5190c22c30a10c5307dbb356e3dcf5d85978f6a5666c1dbc1d2d8f52d2655d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
