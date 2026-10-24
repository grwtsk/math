# Verification target: GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.LogarithmSeries.Variant254f09818c7c6a17.LogarithmTailBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c7585042bfd8a2757d6225251deb7feab915045",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c7585042bfd8a2757d6225251deb7feab915045`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean.json)

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
| 1 | `lemma` | [neg_log_one_sub_eq_tsum](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/declarations/neg-log-one-sub-eq-tsum--789626d619149270bcb104c6.md) | 50 | `result-track:789626d619149270bcb104c65dbbb9cce6b0b137219f3a45f20c0635036e5d5c` |
| 2 | `def` | [logTail](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/declarations/logtail--27945a143cf276a20b19c111.md) | 58 | `declaration-track:27945a143cf276a20b19c111a8feb3b668e149409cc239a85a76446363e5cbcf` |
| 3 | `lemma` | [summable_logTail](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/declarations/summable-logtail--445adbda86877d41a282a195.md) | 61 | `result-track:445adbda86877d41a282a1957edb245d6d0cc8049ff09b413feaa264c1ff67f8` |
| 4 | `lemma` | [norm_logTail_le](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/declarations/norm-logtail-le--f9b7647956cb0b5a9f481f64.md) | 87 | `result-track:f9b7647956cb0b5a9f481f645331f53e291e19d7539520165f73f89154456777` |
| 5 | `lemma` | [norm_logTail_le_two_mul_norm_pow](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/declarations/norm-logtail-le-two-mul-norm-pow--42067b3a6637a133014736ba.md) | 130 | `result-track:42067b3a6637a133014736baebfeff9a46e97194fadeb456edf412518e0cff81` |
| 6 | `lemma` | [neg_log_one_sub_eq_partialLogSum_add_logTail](../../../../../../../../mathematics/Analysis/ComplexAnalysis/LocalTheory/PowerSeries/LogarithmSeries/Variant254f09818c7c6a17/LogarithmTailBounds.lean/declarations/neg-log-one-sub-eq-partiallogsum-add-logtail--f878388e4abc269b2496125a.md) | 135 | `result-track:f878388e4abc269b2496125aa55cad695a36f25e79b3dc2f15ad0b7367749879` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
