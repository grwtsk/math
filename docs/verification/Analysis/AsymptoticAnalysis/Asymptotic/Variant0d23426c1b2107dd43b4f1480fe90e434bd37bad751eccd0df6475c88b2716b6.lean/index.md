# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotic.Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87e0b087251b13c855037151652d1d79b8670074",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87e0b087251b13c855037151652d1d79b8670074`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_isLittleO_logCounting_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/one-islittleo-logcounting-single--783a886e17a519d1c051f7d4.md) | 53 | `result-track:783a886e17a519d1c051f7d439176ed9e956642606a35e0871ba8fdd79974ce8` |
| 2 | `lemma` | [zero_iff_logCounting_bounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/zero-iff-logcounting-bounded--d7f398de327da4a2e73d919b.md) | 67 | `result-track:d7f398de327da4a2e73d919b8a378df178db5cfbc287cf893a597b1c10a8f513` |
| 3 | `lemma` | [logCounting_single_isBigO_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/logcounting-single-isbigo-log--3743fdb6fa2a445b936c4320.md) | 102 | `result-track:3743fdb6fa2a445b936c432031512d267ee213c65b2f2816cb67f7f47447803f` |
| 4 | `lemma` | [logCounting_isBigO_log_of_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/logcounting-isbigo-log-of-finite-support--cc901fc2657b030c60fa8b76.md) | 114 | `result-track:cc901fc2657b030c60fa8b76d0c7c7becbe3e8e2a325591aeaf3a98509aa0e57` |
| 5 | `lemma` | [finite_support_of_logCounting_isBigO_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/finite-support-of-logcounting-isbigo-log--29ff8143a019b9944881541e.md) | 124 | `result-track:29ff8143a019b9944881541e155fd9d713607d8ac425b5a992428851c11e75a1` |
| 6 | `theorem` | [finite_support_iff_logCounting_isBigO_log](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/finite-support-iff-logcounting-isbigo-log--259d4e84ae7a3c2811daa317.md) | 172 | `result-track:259d4e84ae7a3c2811daa31708346e8a2635a5a1ed1808e9af8cd1c8cf285a5e` |
| 7 | `theorem` | [logCounting_isBigO_one_iff_analyticOnNhd](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/logcounting-isbigo-one-iff-analyticonnhd--d772f449155f5acfa1d57a33.md) | 193 | `result-track:d772f449155f5acfa1d57a338b67897057ef0f797b3cc56a4f30aa4196b256ea` |
| 8 | `theorem` | [logCounting_isBigO_log_iff_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotic/Variant0d23426c1b2107dd43b4f1480fe90e434bd37bad751eccd0df6475c88b2716b6.lean/declarations/logcounting-isbigo-log-iff-finite-support--6f07b69309c8d47fda7288ce.md) | 204 | `result-track:6f07b69309c8d47fda7288cea2427b19545801c62d0e78c8e81e2aa6870ed1cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
