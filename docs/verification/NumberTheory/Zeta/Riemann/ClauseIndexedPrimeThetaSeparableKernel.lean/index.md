# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaSeparableKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76de3b2e012ab7f2c847671b9c3d98fe31639c5a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76de3b2e012ab7f2c847671b9c3d98fe31639c5a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimeThetaSeparableKernelFactorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimeThetaSeparableKernelFactorization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPrimeThetaKernelCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaKernelCriterion.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPrimeThetaSeparableKernelCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/clauseindexedprimethetaseparablekernelcriterion--de5a4368dccbd606a53214b4.md) | 31 | `declaration-track:de5a4368dccbd606a53214b4b808fd3274cfbbc009bb086fe2e2f02704a38408` |
| 2 | `theorem` | [clauseIndexedSeparableKernel_to_primeKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/clauseindexedseparablekernel-to-primekernel--f84a5dc646c983fb75055477.md) | 38 | `result-track:f84a5dc646c983fb75055477c8f71c6bbcdfe3d1635eb5b946b7dd38d9dcabf6` |
| 3 | `theorem` | [clauseIndexedSeparableKernel_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/clauseindexedseparablekernel-to-recurrence--38987fa7344ac8d72c1f6893.md) | 46 | `result-track:38987fa7344ac8d72c1f6893caa58041d2e8fcc967076435b0008481d610051a` |
| 4 | `theorem` | [clauseIndexedSeparableKernel_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/clauseindexedseparablekernel-to-previous--032baad29e8ffb83058f6373.md) | 55 | `result-track:032baad29e8ffb83058f637326ec6b8f029a4e24ae35b4d02ad0ea5f5c73479e` |
| 5 | `theorem` | [threeClauseIndexedSeparableKernelCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/threeclauseindexedseparablekernelcriterion-iff--20f9d88f962f95fc9fc80604.md) | 74 | `result-track:20f9d88f962f95fc9fc80604e52baf0b8511b90a5332a216468f01e58fc464bb` |
| 6 | `theorem` | [twoClauseIndexedSeparableKernelCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/twoclauseindexedseparablekernelcriterion-iff--2cdc216f3a476bfb2bfb9f5f.md) | 82 | `result-track:2cdc216f3a476bfb2bfb9f5f75670189257b35cc5a9e277466edfabf9b62e567` |
| 7 | `theorem` | [clauseIndexedSeparableKernelCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPrimeThetaSeparableKernel.lean/declarations/clauseindexedseparablekernelcriteria-to-rh--6e51ddec3a37d872372b063e.md) | 92 | `result-track:6e51ddec3a37d872372b063e67afcc45bbbf0ce2d2a41e05809a7213fdc4589c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
