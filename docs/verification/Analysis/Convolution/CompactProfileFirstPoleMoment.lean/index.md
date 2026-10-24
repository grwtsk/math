# Verification target: GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74baec6042165051d94875b6c1b449de453f6f76",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/CompactProfileFirstPoleMoment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74baec6042165051d94875b6c1b449de453f6f76`.

Source path: `GRWTSK/Analysis/Convolution/CompactProfileFirstPoleMoment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/CompactProfileFirstPoleMoment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Distribution.CompactProfileDilation`](../../../../mathematics/Analysis/Distribution/CompactProfileDilation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.ExponentialMoments`](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.FirstMomentConvolution`](../../../../mathematics/Analysis/Convolution/FirstMomentConvolution.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_source_first_exponential_integrable](../../../../mathematics/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/declarations/normalized-source-first-exponential-integrable--8fc9bac8a12fa632f68b63d9.md) | 29 | `result-track:8fc9bac8a12fa632f68b63d96caa1244d687c01a0b1ac77ad38382f95c7e6f6d` |
| 2 | `theorem` | [first_exponential_correlation_integrable](../../../../mathematics/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/declarations/first-exponential-correlation-integrable--a48ebc552804e1753ae4b5a5.md) | 40 | `result-track:a48ebc552804e1753ae4b5a5355d44a4152b006a80ff167f808aa7e3c12902fe` |
| 3 | `theorem` | [first_pole_correlation_integral_zero](../../../../mathematics/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/declarations/first-pole-correlation-integral-zero--35cd06efa95a2f5a27068d85.md) | 74 | `result-track:35cd06efa95a2f5a27068d858f5cb0971a81d7eed43169e15cffb7114a7b3bcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
