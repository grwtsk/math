# Verification target: GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b67fec30d9ab190861f7207fbc804dc31cb88c3e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicEvaluationSpectrum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b67fec30d9ab190861f7207fbc804dc31cb88c3e`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicEvaluationSpectrum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicEvaluationSpectrum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicSectionRing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicSectionRing.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationRingHom](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/evaluationringhom--127a1f610f70a30f9df39198.md) | 10 | `declaration-track:127a1f610f70a30f9df39198e3577835e195bfb4489e5a148af8df09a7cbc301` |
| 2 | `def` | [evaluationPrime](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/evaluationprime--f17803acfaeb97afa5a5b831.md) | 23 | `declaration-track:f17803acfaeb97afa5a5b831bf132a69ccc86581ba4cfa342e192f51af98a4d0` |
| 3 | `def` | [pointToSpectrum](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/pointtospectrum--3d11d658ccb054727e709897.md) | 30 | `declaration-track:3d11d658ccb054727e709897866d924ffd73c4ef82b449c0fd14523018d16f6f` |
| 4 | `theorem` | [evaluationPrime_comap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/evaluationprime-comap--7929d16acbd74d64187d6699.md) | 38 | `result-track:7929d16acbd74d64187d6699891f1febcb1ef1c332bdb0981dc1b37e11bf5da1` |
| 5 | `structure` | [EvaluationNaturalityCertificate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/evaluationnaturalitycertificate--f50e7080d9736ccc0cf8d2f8.md) | 47 | `declaration-track:f50e7080d9736ccc0cf8d2f83000c29c91adaf06caa09bb5d09b70cc0cc120f0` |
| 6 | `def` | [canonical](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/canonical--cc02877d14714bc5cb9186ab.md) | 56 | `declaration-track:cc02877d14714bc5cb9186abcbac1a06d8b0a7fcf460daedfa7ba7260bcde0fd` |
| 7 | `theorem` | [restrictionPath_evaluation_natural](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/declarations/restrictionpath-evaluation-natural--c65096a58b3c05b08b6fed71.md) | 67 | `result-track:c65096a58b3c05b08b6fed713eb406075ec3872556199a8bbc10a8b0c7566acf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
