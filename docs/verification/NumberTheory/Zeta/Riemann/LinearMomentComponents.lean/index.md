# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.LinearMomentComponents

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9ab1ac33a12c4833362bc4932e0ed34279fbd2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9ab1ac33a12c4833362bc4932e0ed34279fbd2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Spectral.Sheaf.RationalMomentFredholmBridge`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/Sheaf/RationalMomentFredholmBridge.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexify](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/declarations/complexify--bf04ba68379770fa9eab54bc.md) | 29 | `declaration-track:bf04ba68379770fa9eab54bc0ee6bbbb43f51e211201a206961741d3ccba1145` |
| 2 | `theorem` | [complexify_apply](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/declarations/complexify-apply--7e27e28bddcdcda037c21798.md) | 33 | `result-track:7e27e28bddcdcda037c217984e08bafced3cf6cb33d0d659cebafe8655f8ce4e` |
| 3 | `theorem` | [complexify_zetaMoment](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/declarations/complexify-zetamoment--a1c9bf9482fdbca231370b5a.md) | 38 | `result-track:a1c9bf9482fdbca231370b5aec62ac01f427e89f5898be3e29a19e943dbd7b66` |
| 4 | `theorem` | [complexify_mobiusMoment](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/declarations/complexify-mobiusmoment--1684e0a6b30b094189c0883c.md) | 45 | `result-track:1684e0a6b30b094189c0883c57b37f7915c4f542325997cedc2df60c8950cf35` |
| 5 | `theorem` | [zetaMoment_lseries_eq_riemannZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/declarations/zetamoment-lseries-eq-riemannzeta--4b2978d3820a0606cc7f7239.md) | 52 | `result-track:4b2978d3820a0606cc7f72390689d37b87584388abc8d096e6eddb53d24c5bc6` |
| 6 | `theorem` | [mobiusMoment_lseries_eq_inv_riemannZeta](../../../../../mathematics/NumberTheory/Zeta/Riemann/LinearMomentComponents.lean/declarations/mobiusmoment-lseries-eq-inv-riemannzeta--7d35480153af146bdfe8dc8d.md) | 58 | `result-track:7d35480153af146bdfe8dc8d6693486d90e4008fbf670bc69095bbe1bf62c756` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
