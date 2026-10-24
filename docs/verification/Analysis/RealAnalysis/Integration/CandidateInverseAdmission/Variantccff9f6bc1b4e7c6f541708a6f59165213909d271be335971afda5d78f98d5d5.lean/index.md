# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateInverseAdmission.Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec29bc4a93070e50881443803a006d0b19919880",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec29bc4a93070e50881443803a006d0b19919880`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateRealization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateTilt` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [candidate_boundaryInverse_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/declarations/candidate-boundaryinverse-bounded--1eaa9c880024a8a4760aa912.md) | 16 | `result-track:1eaa9c880024a8a4760aa912c8dd2695b63be2320bd41d6a2075b8e0f76a7a8c` |
| 2 | `theorem` | [candidate_boundaryInverse_half_shift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/declarations/candidate-boundaryinverse-half-shift--8447cd8eb2f7844336e6ec8b.md) | 36 | `result-track:8447cd8eb2f7844336e6ec8b8d4594c21afc608546fa66590e99ac8060f3c5cf` |
| 3 | `theorem` | [candidate_boundaryInverse_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/declarations/candidate-boundaryinverse-exp-bound--7963a8f2dc947dc05bead469.md) | 52 | `result-track:7963a8f2dc947dc05bead469bcfcceeaf4208853ae6634b70596fa05f61a373f` |
| 4 | `theorem` | [candidate_boundaryInverse_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/declarations/candidate-boundaryinverse-integrable--8b4c5f7a05fa914d3573b990.md) | 64 | `result-track:8b4c5f7a05fa914d3573b990ae6d667c4e9efc606fb4f7db8bf75b3c3ba7bebd` |
| 5 | `theorem` | [candidate_boundaryInverse_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateInverseAdmission/Variantccff9f6bc1b4e7c6f541708a6f59165213909d271be335971afda5d78f98d5d5.lean/declarations/candidate-boundaryinverse-laplace-integrable--9b414ff4d56cb21befb7c631.md) | 83 | `result-track:9b414ff4d56cb21befb7c631a379a4aa2b716103c9298e5a91c89c9eeee9aa0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
