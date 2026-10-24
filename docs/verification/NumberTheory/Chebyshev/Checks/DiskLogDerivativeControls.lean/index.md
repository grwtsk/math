# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.DiskLogDerivativeControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9904cda1583782566009e40b798b3a6054404c4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9904cda1583782566009e40b798b3a6054404c4`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.JensenDiskLogDerivative`](../../../../../mathematics/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [normalized_boundary_value](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/normalized-boundary-value--2e2db0edd03bc58fff2bd823.md) | 15 | `result-track:2e2db0edd03bc58fff2bd823e2d98e5a2b9785039487d3caa1aa56b67acdf085` |
| 2 | `theorem` | [normalized_center_value](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/normalized-center-value--44a05863fab68eced51ea2fa.md) | 18 | `result-track:44a05863fab68eced51ea2fa0d6f898c4e8a5d70aaedeaaebd10e4327b79ac93` |
| 3 | `theorem` | [removed_point_value](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/removed-point-value--d2e1ba19292b43e7b8f55363.md) | 21 | `result-track:d2e1ba19292b43e7b8f553631806e23e37faf498b519aa283d82d2f63c3a9bb9` |
| 4 | `theorem` | [at_zero_logDeriv_is_totalized](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/at-zero-logderiv-is-totalized--5fa89e70ea7909fb6b878910.md) | 25 | `result-track:5fa89e70ea7909fb6b8789109c20e8c8b01a541d51b4a73f1bf8444a6aed1d38` |
| 5 | `theorem` | [regular_term_is_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/regular-term-is-not-zero--20f3d3d91ef0c867dcbc2d58.md) | 29 | `result-track:20f3d3d91ef0c867dcbc2d585ba9aaf6f7a8dca1a709d48f182e9a2400a915c6` |
| 6 | `theorem` | [double_factor_counts_twice](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/double-factor-counts-twice--93ccbc995aa911842630983d.md) | 34 | `result-track:93ccbc995aa911842630983d293b0645527b7d9cd02e419ec6e672b929d51ae8` |
| 7 | `theorem` | [zero_free_factor_changes_derivative](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/zero-free-factor-changes-derivative--70bcfafcadd8c80567691abe.md) | 41 | `result-track:70bcfafcadd8c80567691abe308d6f6d53eb09bcbfc0b390defc484035d357e0` |
| 8 | `theorem` | [boundary_root_not_unit](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/boundary-root-not-unit--118ca68d7f455443181e8d97.md) | 48 | `result-track:118ca68d7f455443181e8d9707e731d5ea6d29220286ab6e6d863b9be9f65635` |
| 9 | `theorem` | [disk_ratio_is_not_band_ratio](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/disk-ratio-is-not-band-ratio--368fd93edd1c087f52825ddb.md) | 52 | `result-track:368fd93edd1c087f52825ddbe2e1ef7fb611a2eb1212fec989936e4df3085c07` |
| 10 | `theorem` | [left_strip_outside_core](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DiskLogDerivativeControls.lean/declarations/left-strip-outside-core--c83800030b4641e3306fda45.md) | 55 | `result-track:c83800030b4641e3306fda456c2e2d9403da1177dc21c0e7c5c76197bd983cc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
