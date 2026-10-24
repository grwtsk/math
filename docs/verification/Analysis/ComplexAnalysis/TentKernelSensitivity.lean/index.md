# Verification target: GRWTSK.Analysis.Complex.TentKernelSensitivity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edba02e1a6c72fe2264645d0cac886ea56a5bf00",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentKernelSensitivity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edba02e1a6c72fe2264645d0cac886ea56a5bf00`.

Source path: `GRWTSK/Analysis/Complex/TentKernelSensitivity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentKernelSensitivity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentMellinQuadrature`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinQuadrature.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_parameter_error](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/declarations/density-parameter-error--3775ea51a7e3d672653271f8.md) | 26 | `result-track:3775ea51a7e3d672653271f898ddb1de8aa8f95d9f8b844bc96283357e41b5e5` |
| 2 | `theorem` | [affine_parameter_error](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/declarations/affine-parameter-error--45c105b275f2b15284ab8fa5.md) | 36 | `result-track:45c105b275f2b15284ab8fa50dc2733c29f3ff74c5cbac61b68dd8a0d4a20eab` |
| 3 | `theorem` | [tentKernel_eq_affine](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/declarations/tentkernel-eq-affine--1f3328e3331918d8c5ad5b0b.md) | 66 | `result-track:1f3328e3331918d8c5ad5b0b99570809150c6e65985a208e54d31f326bf2b996` |
| 4 | `theorem` | [norm_tent_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/declarations/norm-tent-sub-le--7dcc875d9fdda0edefee498c.md) | 90 | `result-track:7dcc875d9fdda0edefee498c2b91245f5876d2ea90026f6790153fb734b1fdd6` |
| 5 | `theorem` | [finite_enclosure_error](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelSensitivity.lean/declarations/finite-enclosure-error--dbe2a252a7d435d429c08bcc.md) | 132 | `result-track:dbe2a252a7d435d429c08bcc88264d0957e3313d8cf573d35f98c1e0a57099e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
