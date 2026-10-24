# Verification target: GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17.FiniteLogarithmSums

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e8f24b71dc5e11d369cc983a9748814d226329",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e8f24b71dc5e11d369cc983a9748814d226329`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialLogSum](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/partiallogsum--778067cd93481ddf1351344b.md) | 48 | `declaration-track:778067cd93481ddf1351344b1e129622b80f4ae166d94553ff61b01abb467b43` |
| 2 | `lemma` | [partialLogSum_zero](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/partiallogsum-zero--1fb621c76c7c8754cf376a47.md) | 52 | `result-track:1fb621c76c7c8754cf376a47ae7bd792292b6e8b3239e2e6db0d369a3850b91d` |
| 3 | `lemma` | [partialLogSum_at_zero](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/partiallogsum-at-zero--0f66122b8e7ce81897e8c216.md) | 56 | `result-track:0f66122b8e7ce81897e8c216b59e6ef051b79a8a341e03646b07416703631ce0` |
| 4 | `lemma` | [logTaylor_succ_neg](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/logtaylor-succ-neg--de4efddbf9cb3a54db338c6a.md) | 59 | `result-track:de4efddbf9cb3a54db338c6a6a101ee15ec80cca08f65fe6035df82bf215b77f` |
| 5 | `lemma` | [partialLogSum_succ](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/partiallogsum-succ--b572323e8e64c387c9f3562d.md) | 76 | `result-track:b572323e8e64c387c9f3562d31df1fa0b3b51f371ebd304fada115f9753ff754` |
| 6 | `lemma` | [logTaylor_neg_eq_neg_sum](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/logtaylor-neg-eq-neg-sum--881ddd9e5c33646d7237ce4f.md) | 83 | `result-track:881ddd9e5c33646d7237ce4fdd1f349db50928b3af98ec608bf6c0601870725a` |
| 7 | `lemma` | [partialLogSum_eq_sum](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/partiallogsum-eq-sum--c9e595fdb5e67db7b3e019e8.md) | 96 | `result-track:c9e595fdb5e67db7b3e019e854ac9a81145941b33c23da56ea628f3fa8eb0b08` |
| 8 | `lemma` | [norm_partialLogSum_le_nat_mul_max_one_norm_pow](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/FiniteLogarithmSums.lean/declarations/norm-partiallogsum-le-nat-mul-max-one-norm-pow--6e1b7cd14ff05c2a6f2e5246.md) | 100 | `result-track:6e1b7cd14ff05c2a6f2e524657c859b9219ea85f0619b358ba7868ffeb94306f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
