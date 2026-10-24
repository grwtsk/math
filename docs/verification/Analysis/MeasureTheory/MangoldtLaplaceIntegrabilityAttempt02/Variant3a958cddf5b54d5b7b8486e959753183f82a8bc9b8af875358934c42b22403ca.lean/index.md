# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt02.Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16812e8daae5cff467b7ecbca3ac246a6dac7c52",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16812e8daae5cff467b7ecbca3ac246a6dac7c52`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/mangoldtlogprefix-measurable--1c0adc73c54273f1b77e69e0.md) | 25 | `result-track:1c0adc73c54273f1b77e69e09313bc25527b7f60e9d5595ad33f2eb2b8de5367` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/mangoldtlogerror-measurable--400a88db00ce1c6a158a39e9.md) | 29 | `result-track:400a88db00ce1c6a158a39e91f8874f856d0511fb82ab5ee44c9e7674c2f7db2` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/centeredmangoldterror-measurable--06c2606c7af7fd5ef9afb584.md) | 33 | `result-track:06c2606c7af7fd5ef9afb584942dfc4a311d16372e935c815ec8c40ada938811` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/centeredmangoldterror-bound--93a8481a198d017dd41d278d.md) | 38 | `result-track:93a8481a198d017dd41d278d8c64f8c263e298932aa7986a5702d86026705241` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/centeredmangoldterror-laplace-integrable--e1103ce178c5dde5f06ad25e.md) | 44 | `result-track:e1103ce178c5dde5f06ad25e6264ad34a84ed69741eef918f16dddb70b2f1e53` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/mangoldtlogerror-laplace-integrable--7529b8e99850f51613b51679.md) | 66 | `result-track:7529b8e99850f51613b51679e046eed811729b72a0dd26df8a3ca51c20e067ac` |
| 7 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt02/Variant3a958cddf5b54d5b7b8486e959753183f82a8bc9b8af875358934c42b22403ca.lean/declarations/centeredmangoldterror-below-first-atom--9a384cbb578967c514049ccd.md) | 77 | `result-track:9a384cbb578967c514049ccdd942e36cadb86db89eeef0af5294af4e278240ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
