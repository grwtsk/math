# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaCompactTruncationLinearityControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "352c8f5c0f4b8fc09e7ffae61592f403c8a2f42b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `352c8f5c0f4b8fc09e7ffae61592f403c8a2f42b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaRemainderLinearity`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wiener_cutoff_actual_exists](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-actual-exists--a82f97abed187ea5a5ccd150.md) | 22 | `result-track:a82f97abed187ea5a5ccd1500025ca90dd3e4a445645d28564c2e110c86ccf53` |
| 2 | `theorem` | [wiener_cutoff_radius_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-radius-zero--1caa603799c56f04490f2dc1.md) | 33 | `result-track:1caa603799c56f04490f2dc1939f5d6a85c9adde95f64c7f9a24ec453304eab8` |
| 3 | `theorem` | [wiener_cutoff_core_unit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-core-unit--b6bbe6a20adbe03e521d1c75.md) | 39 | `result-track:b6bbe6a20adbe03e521d1c75309dbc744f11681fdcafbcd8804eb3c20438484e` |
| 4 | `theorem` | [wiener_cutoff_actual_compact](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-actual-compact--b84a04d8bf2199bfdc98a5e2.md) | 47 | `result-track:b84a04d8bf2199bfdc98a5e2bb6ad758f9448de037da8b346f13060fe7d0e5ab` |
| 5 | `theorem` | [wiener_cutoff_actual_temperate](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-actual-temperate--35ded7e158d43be97a09c0e6.md) | 55 | `result-track:35ded7e158d43be97a09c0e65fb155cb063b579c20ce8f1e29e7056130b8db13` |
| 6 | `theorem` | [wiener_cutoff_eventually_exact](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-eventually-exact--3bfeff7d1aae5dae8b25763d.md) | 61 | `result-track:3bfeff7d1aae5dae8b25763dba5346531fabfdfb6d442f2e7d70912339848e32` |
| 7 | `theorem` | [wiener_cutoff_pointwise_limit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-cutoff-pointwise-limit--78f55e4e2681cf689c811e0c.md) | 69 | `result-track:78f55e4e2681cf689c811e0cfdb312139da100894bcc18cc69b4b158a94d605b` |
| 8 | `theorem` | [wiener_actual_fourier_term_add](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-actual-fourier-term-add--9c6b945b66d287f3b79077eb.md) | 80 | `result-track:9c6b945b66d287f3b79077ebe0869ee08b1718a3cbea18987710d787637e1727` |
| 9 | `theorem` | [wiener_actual_arithmetic_add](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-actual-arithmetic-add--73feb4eefa38e8cb1a212f10.md) | 89 | `result-track:73feb4eefa38e8cb1a212f10f7ce6d270e4260c2be97e081c3d776f741b22acb` |
| 10 | `theorem` | [wiener_actual_tail_add](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-actual-tail-add--825d8125b856e592b2263e8b.md) | 98 | `result-track:825d8125b856e592b2263e8bb00ce59e2d2142480efb8007069a9cc5847e8e1f` |
| 11 | `theorem` | [wiener_actual_remainder_add](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-actual-remainder-add--765adde8d6b77ccbb2adf155.md) | 106 | `result-track:765adde8d6b77ccbb2adf1556c7c184dae2be8cc34cdf605e73e7b612d92de5c` |
| 12 | `theorem` | [wiener_actual_truncation_decomposition](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wiener-actual-truncation-decomposition--eaa8029730aef024c0853cea.md) | 115 | `result-track:eaa8029730aef024c0853cea4106bdf5df4e562fb4096406e65f9aefb2a684c4` |
| 13 | `def` | [wienerCutoffStillOpen](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/declarations/wienercutoffstillopen--29d44947309bc352ee4997a3.md) | 127 | `declaration-track:29d44947309bc352ee4997a381908ba86fb8ba2ef7d1d2e8381a4997c665fbe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
