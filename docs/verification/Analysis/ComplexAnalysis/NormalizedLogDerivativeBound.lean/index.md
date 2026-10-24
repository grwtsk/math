# Verification target: GRWTSK.Analysis.Complex.NormalizedLogDerivativeBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44b683e049ac87227567f5bcccc8d2cbd10209af",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44b683e049ac87227567f5bcccc8d2cbd10209af`.

Source path: `GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/NormalizedLogDerivativeBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DiskBlaschkeFactors`](../../../../mathematics/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.BorelCaratheodory` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_log_le_twenty](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/declarations/norm-log-le-twenty--51ae7124b8ec5904a6b03fa7.md) | 31 | `result-track:51ae7124b8ec5904a6b03fa78da7ed89d2ca7b318db56fab4643ce2b6de4e372` |
| 2 | `theorem` | [small_circle_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/declarations/small-circle-norm-le--fe77d835b6b809b022942bdc.md) | 44 | `result-track:fe77d835b6b809b022942bdc6ab98228211fd9393f0ff55d115cd6086e8d106a` |
| 3 | `theorem` | [norm_deriv_log_le_eighty](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/declarations/norm-deriv-log-le-eighty--72350bdc9dafb55820bb8aba.md) | 51 | `result-track:72350bdc9dafb55820bb8aba32e3a4d36154018c32c7f86c702eded879182c0f` |
| 4 | `theorem` | [logDeriv_exp](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/declarations/logderiv-exp--8505276aa1a75075c176f47d.md) | 69 | `result-track:8505276aa1a75075c176f47d6f9c17057def95eb66b3a984e456cdbf102cca0b` |
| 5 | `theorem` | [logDeriv_of_factorization](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/declarations/logderiv-of-factorization--2d8d4ea5e24c330728299dba.md) | 75 | `result-track:2d8d4ea5e24c330728299dba662d574dbbb40db7bfed2b76ec55ce96640b6fb3` |
| 6 | `theorem` | [norm_logDeriv_of_factorization](../../../../mathematics/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/declarations/norm-logderiv-of-factorization--6d0b6e3c969784e714372627.md) | 106 | `result-track:6d0b6e3c969784e714372627c383acbfef9fc144538ac03378858f69bbec3350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
