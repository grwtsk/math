# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Completeness.Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e53901bd3ba7707de4fe02512367c293bfddb05e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e53901bd3ba7707de4fe02512367c293bfddb05e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Uniform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Metric.exists_subseq_summable_dist_of_cauchySeq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/declarations/metric-exists-subseq-summable-dist-of-cauchyseq--9d5ac79be8a558a3254e941f.md) | 39 | `result-track:9d5ac79be8a558a3254e941fb4e13a491fca9934b10a35df6ab8b7be78cf9219` |
| 2 | `lemma` | [NormedAddCommGroup.completeSpace_of_summable_imp_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/declarations/normedaddcommgroup-completespace-of-summable-imp-tendsto--3a76b949eba86cb801d93cd2.md) | 55 | `result-track:3a76b949eba86cb801d93cd294ff83bf38e246fda8d279425e7e1caa3049cf3e` |
| 3 | `lemma` | [NormedAddCommGroup.summable_imp_tendsto_of_complete](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/declarations/normedaddcommgroup-summable-imp-tendsto-of-complete--70ce296eca52d66e439fbe6a.md) | 77 | `result-track:70ce296eca52d66e439fbe6a029a40923a6d18a13fda0dfa1a6d806f4d268ea3` |
| 4 | `lemma` | [NormedAddCommGroup.summable_imp_tendsto_iff_completeSpace](../../../../../mathematics/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/declarations/normedaddcommgroup-summable-imp-tendsto-iff-completespace--09675372f0544f9a5be3c9b4.md) | 84 | `result-track:09675372f0544f9a5be3c9b4f59dc126a064427813259b0b5cae8b4a9b7bc0c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
