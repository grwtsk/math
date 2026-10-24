# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2af785df5c85605597173bcc852a24274626c1e0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2af785df5c85605597173bcc852a24274626c1e0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaIdentity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaIdentity.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicCircleGeometry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_zeta_le_cube_on_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/norm-zeta-le-cube-on-disk--a34b635f544dfa7476b9dfee.md) | 30 | `result-track:a34b635f544dfa7476b9dfee4fc3720f3238d3506e2c1f02349bb735ce97f071` |
| 2 | `theorem` | [upper_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/upper-circle-bound--c0aa6721c2cb9191f6481861.md) | 44 | `result-track:c0aa6721c2cb9191f64818612684b55fed7adaf33c4f53eda9d13c73987799fc` |
| 3 | `theorem` | [lower_circle_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/lower-circle-bound--5d3e7d4d9854ec10a405053a.md) | 49 | `result-track:5d3e7d4d9854ec10a405053ab4286597f46a2c86b54a6df4685d0307d035039f` |
| 4 | `def` | [localCountBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/localcountbudget--a527452c43a39e83ed30e14d.md) | 55 | `declaration-track:a527452c43a39e83ed30e14db4a6f6386842e55730ee8aafa118fb4d2fb4e214` |
| 5 | `theorem` | [bandMass_le_localCountBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/bandmass-le-localcountbudget--684b23f039aa8342b06f8b73.md) | 59 | `result-track:684b23f039aa8342b06f8b736aff5372611485fe5ff9c301b0fc2f9895f72ddd` |
| 6 | `theorem` | [localCountBudget_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/localcountbudget-nonneg--c047fbd53b3fe86c0cbeb41f.md) | 66 | `result-track:c047fbd53b3fe86c0cbeb41f69e97336a10345c0151a1c611d3a7749c2e6e5fd` |
| 7 | `theorem` | [clearance_le_actual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/clearance-le-actual--a8505769081c6078025f20d0.md) | 73 | `result-track:a8505769081c6078025f20d0496a9ff5055b44f0d772dfa9c7e18a5eb2213e33` |
| 8 | `theorem` | [local_principal_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/declarations/local-principal-le--4a482bf1801f98b9f27b0e41.md) | 78 | `result-track:4a482bf1801f98b9f27b0e41f39a6c1ab950c4a2b3a861f222743184b0c4149b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
