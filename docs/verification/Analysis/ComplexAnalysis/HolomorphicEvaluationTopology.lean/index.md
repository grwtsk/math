# Verification target: GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b0f9089f9ca3f1a7ff6cf183306cfde6540e831",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicEvaluationTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b0f9089f9ca3f1a7ff6cf183306cfde6540e831`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicEvaluationTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicEvaluationTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicEvaluationSpectrum`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationSpectrum.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [section_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/section-continuous--b5473200913b644e0b9494d2.md) | 13 | `result-track:b5473200913b644e0b9494d256fa5faf00ce2e9ff79934a41fd64a6910d143d6` |
| 2 | `theorem` | [preimage_zeroLocus](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/preimage-zerolocus--0536cc9c1838b9158de622ab.md) | 23 | `result-track:0536cc9c1838b9158de622ab40b419aec91507e947ddd6a6705adec7fb957ec8` |
| 3 | `theorem` | [pointToSpectrum_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/pointtospectrum-continuous--55b3134d33195a01bfb129d9.md) | 40 | `result-track:55b3134d33195a01bfb129d93cbd5b3f692a558fb1970762876cca3f1dda5c12` |
| 4 | `def` | [continuousPointToSpectrum](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/continuouspointtospectrum--2c40d88c88c133dfb8eda96d.md) | 50 | `declaration-track:2c40d88c88c133dfb8eda96d7b33e9069e85f89761dda68ff91ff3f666cb7c86` |
| 5 | `def` | [constantSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/constantsection--4fdbbae98bfbc0c6e572f51f.md) | 56 | `declaration-track:4fdbbae98bfbc0c6e572f51f1b56643bcd24ab9f769b3a17f64b8c1884afbc8b` |
| 6 | `def` | [coordinateSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/coordinatesection--659a12fb6d32205cf2a99454.md) | 61 | `declaration-track:659a12fb6d32205cf2a994548110945a8ce8fc9d969fbfa85b15579d8e55494b` |
| 7 | `theorem` | [evaluationRingHom_surjective](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/evaluationringhom-surjective--8352d8098f60e7aedac497cf.md) | 66 | `result-track:8352d8098f60e7aedac497cf23eee1aef353369c96a2576b4b534f481847c618` |
| 8 | `theorem` | [pointToSpectrum_injective](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/pointtospectrum-injective--03db7c846281edcb48617e5a.md) | 75 | `result-track:03db7c846281edcb48617e5ab29f2592be28a85770741050cf38ad0dd06f2b06` |
| 9 | `theorem` | [continuous_restriction_naturality](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicEvaluationTopology.lean/declarations/continuous-restriction-naturality--f1861bf8ac3bae0efda3abeb.md) | 89 | `result-track:f1861bf8ac3bae0efda3abeb16d6f48bc1e6c3f299e9bc567876a4b333a4258a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
