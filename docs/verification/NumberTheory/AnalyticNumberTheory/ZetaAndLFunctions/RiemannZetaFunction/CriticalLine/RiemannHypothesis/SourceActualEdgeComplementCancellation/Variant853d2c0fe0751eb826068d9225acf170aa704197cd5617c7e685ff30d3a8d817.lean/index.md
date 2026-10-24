# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEdgeComplementCancellation.Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f69c38dc8722ffc28b94313375b5d91ecb191fa7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f69c38dc8722ffc28b94313375b5d91ecb191fa7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroNormalizedCancellation` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualNegativeEdgeMangoldt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualNegativeEdgeComplement_scaled_eventually_positive](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean/declarations/actualnegativeedgecomplement-scaled-eventually-positive--23add34c21c6c721672b5998.md) | 29 | `result-track:23add34c21c6c721672b59986250bf43fac4077b9ea614a5775925a1f47d230b` |
| 2 | `theorem` | [actualNegativeEdgeComplement_eventually_positive_growth](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean/declarations/actualnegativeedgecomplement-eventually-positive-growth--432e0b9f1dba5aa430bdba1d.md) | 54 | `result-track:432e0b9f1dba5aa430bdba1d35bd1a5c7672eb79b9353723395c10b3c89a628b` |
| 3 | `theorem` | [actualNegativeEdgeComplement_tendsto_atTop](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEdgeComplementCancellation/Variant853d2c0fe0751eb826068d9225acf170aa704197cd5617c7e685ff30d3a8d817.lean/declarations/actualnegativeedgecomplement-tendsto-attop--d5aac3f2cae37dd6c23083af.md) | 70 | `result-track:d5aac3f2cae37dd6c23083afd751c06ea765fec73dde21f71a9e4409a6253f43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
