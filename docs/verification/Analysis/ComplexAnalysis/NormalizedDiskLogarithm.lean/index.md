# Verification target: GRWTSK.Analysis.Complex.NormalizedDiskLogarithm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaf1fb8d46341790cb57331e575174e918657c60",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaf1fb8d46341790cb57331e575174e918657c60`.

Source path: `GRWTSK/Analysis/Complex/NormalizedDiskLogarithm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/NormalizedDiskLogarithm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.NormalizedLogDerivativeBound`](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.HasPrimitives` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_normalized_log](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/declarations/exists-normalized-log--40e40cea30084602dd057aaf.md) | 29 | `result-track:40e40cea30084602dd057aaf3cfc207ec95f609d53d83fd745950bc10f109291` |
| 2 | `theorem` | [differentiableOn_of_log_derivative](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/declarations/differentiableon-of-log-derivative--81faeeda2e053a8f3b242334.md) | 57 | `result-track:81faeeda2e053a8f3b242334199014141cb0bd509a5e0d262fe88b7d967f58fc` |
| 3 | `theorem` | [normalized_primitives_eqOn](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/declarations/normalized-primitives-eqon--e91d915ca7710ccbe60755d9.md) | 63 | `result-track:e91d915ca7710ccbe60755d91c136c1a9a187901127ad1944b6d470fbc2a306d` |
| 4 | `theorem` | [re_log_le_of_modulus](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/declarations/re-log-le-of-modulus--dbbff8938800be62b75e2328.md) | 79 | `result-track:dbbff8938800be62b75e2328b0d0f9c65ae04995bd6eba68dc263e3cc620e27c` |
| 5 | `theorem` | [exists_normalized_log_bounded](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedDiskLogarithm.lean/declarations/exists-normalized-log-bounded--8bfcf3635be1c3a38374eae2.md) | 96 | `result-track:8bfcf3635be1c3a38374eae295b712afa95cf823de691174aee05b010125c1c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
