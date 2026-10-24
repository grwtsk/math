# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQOneBoundaryEstimatesControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f2d50d852847fcab16f73fd9494e94c6e176f47",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f2d50d852847fcab16f73fd9494e94c6e176f47`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneBoundaryEstimates`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wiener_qone_actualLambda](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-actuallambda--7ef576b3e9fe95e1dc3de8df.md) | 22 | `result-track:7ef576b3e9fe95e1dc3de8df0bde372d8c9729a7c2faa75077294ce9e7bfab06` |
| 2 | `theorem` | [wiener_qone_exact_pole](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-exact-pole--7b3044c77c3aaa5d874a1249.md) | 30 | `result-track:7b3044c77c3aaa5d874a12495714140637cfd0810b6185db5f00e9a404e8950b` |
| 3 | `theorem` | [wiener_qone_absolute_LSeries](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-absolute-lseries--b457da0d3d099e89daaf0e0a.md) | 38 | `result-track:b457da0d3d099e89daaf0e0ae7392d82e82970382fce56463038cb374d3f6a0d` |
| 4 | `theorem` | [wiener_qone_closed_halfplane](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-closed-halfplane--b6f97cb4d4dda396f88940d9.md) | 45 | `result-track:b6f97cb4d4dda396f88940d9f4f1f4aa7c02f9001beecb93846225b44256a3ef` |
| 5 | `theorem` | [wiener_qone_boundary_is_integrable](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-boundary-is-integrable--0083fc2442c72dbfb2188495.md) | 52 | `result-track:0083fc2442c72dbfb2188495e8f4c4459ad30441cfc5123486db041f241f7e7c` |
| 6 | `theorem` | [wiener_qone_boundary_vanishes](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-boundary-vanishes--577d3ac97a4b931d9fbd3dfb.md) | 63 | `result-track:577d3ac97a4b931d9fbd3dfbf62c84a9c0bba03c61dbe307b13e808961bddcd6` |
| 7 | `theorem` | [wiener_qone_compact_sigma_boundary](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-qone-compact-sigma-boundary--3b5e739a6e71ec007128361d.md) | 79 | `result-track:3b5e739a6e71ec007128361d840a77b5c0062cb6a7aaf0b89c2c6f24ed2e6e1c` |
| 8 | `theorem` | [wiener_fourier_schwartz_uniform_decay](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-fourier-schwartz-uniform-decay--3af942d39da5c17d39984045.md) | 101 | `result-track:3af942d39da5c17d39984045f81587ddc84da8723054100f05054a2674054510` |
| 9 | `theorem` | [wiener_fourier_schwartz_integrable](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wiener-fourier-schwartz-integrable--dba6c95723d4108c56914c7b.md) | 112 | `result-track:dba6c95723d4108c56914c7bd1ee49e6eaf3c552ba58fffdcea84d133ea4b42b` |
| 10 | `def` | [wienerStillOpenQuantifiedSuppliers](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wienerstillopenquantifiedsuppliers--b2d8f3a922da802ff237899e.md) | 123 | `declaration-track:b2d8f3a922da802ff237899e3a551044bc3c7f350b7510dddf10ec04bb9e70b3` |
| 11 | `def` | [wienerProhibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneBoundaryEstimatesControls.lean/declarations/wienerprohibitedpromotions--dfe5d042f84cd577c1af8328.md) | 131 | `declaration-track:dfe5d042f84cd577c1af83287150c664a0ebf5e8f427c59060abeede05dfaffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
