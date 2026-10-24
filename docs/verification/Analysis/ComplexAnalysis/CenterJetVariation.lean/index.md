# Verification target: GRWTSK.Analysis.Complex.CenterJetVariation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "599d0c6d4ed707bd4338b76a1ab2e0c6a39f8a81",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/CenterJetVariation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `599d0c6d4ed707bd4338b76a1ab2e0c6a39f8a81`.

Source path: `GRWTSK/Analysis/Complex/CenterJetVariation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/CenterJetVariation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ClosedDiskCauchy`](../../../../mathematics/Analysis/ComplexAnalysis/ClosedDiskCauchy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [center_derivative_norm](../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/declarations/center-derivative-norm--5f0f88afdb2291afb3deb8a2.md) | 22 | `result-track:5f0f88afdb2291afb3deb8a29da57329c940c6377448273f4c25de2b61f5a167` |
| 2 | `theorem` | [derivative_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/declarations/derivative-norm-le--1a3884bb7b9af60dada7191c.md) | 31 | `result-track:1a3884bb7b9af60dada7191c44b1e1ffa337f72968f4292549128b7acc77701a` |
| 3 | `theorem` | [value_variation](../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/declarations/value-variation--951bd730d827446209cd72c6.md) | 48 | `result-track:951bd730d827446209cd72c6b82e04683d2c1cde54f8fa9ef13179e07f9d5aee` |
| 4 | `theorem` | [cauchy_derivative_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/CenterJetVariation.lean/declarations/cauchy-derivative-norm-le--44ac042a882b5313ea66c1e4.md) | 62 | `result-track:44ac042a882b5313ea66c1e4b094b2e2a1d2524d9659c71d460ae580a27194c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
