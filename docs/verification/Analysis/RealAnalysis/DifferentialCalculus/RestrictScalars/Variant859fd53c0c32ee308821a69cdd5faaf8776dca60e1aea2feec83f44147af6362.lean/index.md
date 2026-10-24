# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RestrictScalars.Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "454b6e9707d37a3c8ada8f07be159400d056e505",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `454b6e9707d37a3c8ada8f07be159400d056e505`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fderivWithin_restrictScalars_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/declarations/fderivwithin-restrictscalars-comp--91f23d12b8a8123536b910ff.md) | 33 | `result-track:91f23d12b8a8123536b910ff9b9b8613b87cd59407509613c6d989f894ecc0e1` |
| 2 | `theorem` | [ContDiffWithinAt.restrictScalars_iteratedFDerivWithin_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/declarations/contdiffwithinat-restrictscalars-iteratedfderivwithin-eventuallyeq--d8f3cd6a197d562d16806ae0.md) | 48 | `result-track:d8f3cd6a197d562d16806ae04040e79dd9254a3770cf8a447593fae33f17a7c1` |
| 3 | `theorem` | [ContDiffAt.restrictScalars_iteratedFDeriv_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/declarations/contdiffat-restrictscalars-iteratedfderiv-eventuallyeq--4af5ccc8da42f1a5df9beeb1.md) | 82 | `result-track:4af5ccc8da42f1a5df9beeb19e322e9b604c73782516288d66bcfc72286e33df` |
| 4 | `theorem` | [ContDiffAt.restrictScalars_iteratedFDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RestrictScalars/Variant859fd53c0c32ee308821a69cdd5faaf8776dca60e1aea2feec83f44147af6362.lean/declarations/contdiffat-restrictscalars-iteratedfderiv--8e0f3182765f12deac48f0db.md) | 93 | `result-track:8e0f3182765f12deac48f0dbf3cd3f996ada1c681b1551e792fed803695a3ee5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
