# Verification target: GRWTSK.Analysis.Asymptotics.DyadicNormBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c9ac095a156a4517e278cc9378ce0e0d4b267e7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/DyadicNormBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence50cfa4b050d1955309283ce0.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence50cfa4b050d1955309283ce0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c9ac095a156a4517e278cc9378ce0e0d4b267e7`.

Source path: `GRWTSK/Analysis/Asymptotics/DyadicNormBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/DyadicNormBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence`](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mass_eq_sum](../../../../mathematics/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence50cfa4b050d1955309283ce0.lean/declarations/mass-eq-sum--d1f0926543bf7a9dfaf1fb35.md) | 15 | `result-track:d1f0926543bf7a9dfaf1fb35ac9ff5fbb16eb954d52d0f2f358bf6a740573b0d` |
| 2 | `theorem` | [finite_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence50cfa4b050d1955309283ce0.lean/declarations/finite-iteration--d8babe741351fd0cb9a9552f.md) | 22 | `result-track:d8babe741351fd0cb9a9552f2983b8344f4dcaa2fa648212411b6f38e7bf90b9` |
| 3 | `theorem` | [normalized_log_le](../../../../mathematics/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence50cfa4b050d1955309283ce0.lean/declarations/normalized-log-le--804f16fe6d672dc3a52fb98d.md) | 31 | `result-track:804f16fe6d672dc3a52fb98d7a721798172b295bd7bcd39a335daba3cf436afc` |
| 4 | `theorem` | [dyadic_log_tendsto_zero](../../../../mathematics/Analysis/AsymptoticAnalysis/DyadicNormBudget__SourceOccurrence50cfa4b050d1955309283ce0.lean/declarations/dyadic-log-tendsto-zero--be5279ab6b92c0a34a48f9e9.md) | 41 | `result-track:be5279ab6b92c0a34a48f9e95dbb72d18e59ac04143a74f07079cd41ba2dd547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
