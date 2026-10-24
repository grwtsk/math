# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateInverseAdmission.Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "796cbad6da855967a70386f0840f22e8ed80d6e7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `796cbad6da855967a70386f0840f22e8ed80d6e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateRealization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateTilt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [candidate_boundaryInverse_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/declarations/candidate-boundaryinverse-bounded--bcc4d8fba994a660af025d04.md) | 24 | `result-track:bcc4d8fba994a660af025d0418b5a798d821e984a6f58cddf989a58a0e202a5d` |
| 2 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/declarations/candidate-boundaryinverse-half-shift--fd6ea4b3cd0ed69cd8d0861c.md) | 44 | `result-track:fd6ea4b3cd0ed69cd8d0861cd87e0c666b0d248479bcd55eb8ac4aa773632d8b` |
| 3 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/declarations/candidate-boundaryinverse-exp-bound--db3a5e128bffb0284b171a5a.md) | 60 | `result-track:db3a5e128bffb0284b171a5a54db4002479a3ec8d7f7a87ec60bed676ad8cea1` |
| 4 | `theorem` | [candidate_boundaryInverse_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/declarations/candidate-boundaryinverse-integrable--dcf2360eb64ead77b4e3dce7.md) | 72 | `result-track:dcf2360eb64ead77b4e3dce782a6ba785611fc020b791b56397a7c3188e0e8f6` |
| 5 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantd7432af1edb16121e24675e7b7b80e560b5a478b05face3069e7db9b03dfb5e7.lean/declarations/candidate-boundaryinverse-laplace-integrable--7b3f038bda84bf55455a945a.md) | 91 | `result-track:7b3f038bda84bf55455a945a1ef2069457202dd96f5be836896589878ae9dee8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
