# Verification target: GRWTSK.Analysis.Asymptotics.SquareRootResidualIteration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c1cc3b0057f1c307da2f6fb9c80f8b9c1036b2a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/SquareRootResidualIteration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c1cc3b0057f1c307da2f6fb9c80f8b9c1036b2a`.

Source path: `GRWTSK/Analysis/Asymptotics/SquareRootResidualIteration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/SquareRootResidualIteration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [step](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/step--64ccd5608ff972eb7f2674c1.md) | 14 | `declaration-track:64ccd5608ff972eb7f2674c1d05d4200ea7c7d098bbee25d99bc96c27015f559` |
| 2 | `def` | [bound](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/bound--c5d01721770ce031bfbce26d.md) | 16 | `declaration-track:c5d01721770ce031bfbce26d645976c41f2c3e58d0fb83bd39d3c97c17318e4a` |
| 3 | `theorem` | [step_mono](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/step-mono--b35fe3b4fc527634adeb8160.md) | 20 | `result-track:b35fe3b4fc527634adeb816013a46779629ec15589b3d8470ad4f53ea3a4fc4a` |
| 4 | `theorem` | [finite_return](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/finite-return--2fe739f813989364532fdcf6.md) | 26 | `result-track:2fe739f813989364532fdcf6a686600b7fa9bdbe88279f2c149135018ba4c25c` |
| 5 | `def` | [exponent](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/exponent--dae746fa42abab9cb055ce5e.md) | 36 | `declaration-track:dae746fa42abab9cb055ce5e573c02490dbaf3fe9fa16cffcebe6d1cdf450cbe` |
| 6 | `theorem` | [exponent_step](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/exponent-step--ea7979f5827f93ec8e8d564f.md) | 40 | `result-track:ea7979f5827f93ec8e8d564f5e096b3a9f9cd77c3a8b7aaf1ad5b049b9d2f4ba` |
| 7 | `theorem` | [zero_loss](../../../../mathematics/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrenceb41cc842faa6744e60a24dfb.lean/declarations/zero-loss--bdcf50c916d617142bf15ecb.md) | 44 | `result-track:bdcf50c916d617142bf15ecbc147058131db5fd7159cd28372551e67fe8382b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
