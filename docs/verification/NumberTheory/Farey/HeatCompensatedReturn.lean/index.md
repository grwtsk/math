# Verification target: GRWTSK.NumberTheory.Farey.HeatCompensatedReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0e0329b9f0877b5fbdd08105279b873ada242c2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/HeatCompensatedReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0e0329b9f0877b5fbdd08105279b873ada242c2`.

Source path: `GRWTSK/NumberTheory/Farey/HeatCompensatedReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/HeatCompensatedReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteHeatRecovery`](../../../../mathematics/Geometry/Hodge/FiniteHeatRecovery.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Farey.WeightedReturnBalance`](../../../../mathematics/NumberTheory/Farey/WeightedReturnBalance.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [returnHeatTime](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/returnheattime--5d00e532fe1978bd1532a746.md) | 48 | `declaration-track:5d00e532fe1978bd1532a7465033bcdead1fef0f4bc2d6fc04424beaa9d7ae78` |
| 2 | `theorem` | [returnHeatTime_nonneg](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/returnheattime-nonneg--d6c8f62c6535bf20ce5d9497.md) | 51 | `result-track:d6c8f62c6535bf20ce5d9497994f5cf2d0e60914d9348dc3ca989ac69d585f9f` |
| 3 | `def` | [heatReturnCompensator](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatreturncompensator--e1cd89a4188c0d4a958c5f60.md) | 57 | `declaration-track:e1cd89a4188c0d4a958c5f60619615b8d0890b7728c95e0b702112b27dc4c13e` |
| 4 | `theorem` | [heatReturnCompensator_is_unit_heat](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatreturncompensator-is-unit-heat--961701fc76dbed26f091b8df.md) | 61 | `result-track:961701fc76dbed26f091b8df8af432ff42d486248dc77bf06620fcea8e8ed9b9` |
| 5 | `theorem` | [heatReturnCompensator_eq_inv_pow](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatreturncompensator-eq-inv-pow--050d333d8005abdf9e48d5b7.md) | 69 | `result-track:050d333d8005abdf9e48d5b71d32b7f2a817d4709a5765ef2443ce6b3a2a92c6` |
| 6 | `def` | [heatNormalizedSpiral](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatnormalizedspiral--a70a238162445c1a3eb0904c.md) | 81 | `declaration-track:a70a238162445c1a3eb0904c8b4c5a1e3c5398e27f431e402bcae324dd0f06e0` |
| 7 | `theorem` | [heatNormalizedSpiral_eq_compensatedSample](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatnormalizedspiral-eq-compensatedsample--7250a046b3154605f05ff166.md) | 86 | `result-track:7250a046b3154605f05ff1664ac5c729b0a82b5721d95840b27b6627b7f5141d` |
| 8 | `theorem` | [heatNormalizedSpiral_eq_phase](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatnormalizedspiral-eq-phase--3b7f14b064c95a694ec1ce6f.md) | 93 | `result-track:3b7f14b064c95a694ec1ce6f4bb4926a4df15a47d7ff8b23492cd5d1e7305b77` |
| 9 | `theorem` | [heatNormalized_four_consecutive_zero](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/heatnormalized-four-consecutive-zero--eada942a6859c81423da3089.md) | 99 | `result-track:eada942a6859c81423da30891b8c387fa21ca986e117a76745909fec3211c322` |
| 10 | `theorem` | [raw_return_four_not_zero](../../../../mathematics/NumberTheory/Farey/HeatCompensatedReturn.lean/declarations/raw-return-four-not-zero--19921d454f57ff34a19111c2.md) | 109 | `result-track:19921d454f57ff34a19111c216d8e51512f7a55dd652941645f5390cc3ed7654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
