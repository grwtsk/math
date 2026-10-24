# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3e367620acc5d59fdcd2bde9b8b02f4fa878f6`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FiniteDivisorSummatoryBound`](../../../../mathematics/NumberTheory/FiniteDivisorSummatoryBound.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoprimeObstruction`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCoprimeObstruction.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDDiagonalKernelBound`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Data.Nat.GCD.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTailIncidenceSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/centeredtailincidenceset--46e120e09b619d0f73396caf.md) | 36 | `declaration-track:46e120e09b619d0f73396caf498d5029bec0dc72f9b277f9ad83d4239ab136e9` |
| 2 | `theorem` | [mem_centeredTailIncidenceSet_iff](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/mem-centeredtailincidenceset-iff--1f92997ad6a2060e3e3db8ad.md) | 42 | `result-track:1f92997ad6a2060e3e3db8ad2715f90514639a47edbc8f326fa72e53012fbfdd` |
| 3 | `theorem` | [centeredDivisibilityTail_eq_incidenceSum](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/centereddivisibilitytail-eq-incidencesum--46de3e026c48fa7c1169a936.md) | 52 | `result-track:46de3e026c48fa7c1169a9365582df35144385d96870136c9623c05cbd0a3cdf` |
| 4 | `def` | [centeredTailIncidenceMap](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/centeredtailincidencemap--4443d09790b2f41864f3fd2d.md) | 104 | `declaration-track:4443d09790b2f41864f3fd2d5936991b0d2f0bec25a405be08d1cf1648df94aa` |
| 5 | `theorem` | [centeredTailIncidenceMap_mapsTo](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/centeredtailincidencemap-mapsto--7e17c5262057593b9532b3d7.md) | 110 | `result-track:7e17c5262057593b9532b3d71b01b61f6b3c296546806d11a0eebef2e3bd2c47` |
| 6 | `theorem` | [centeredTailIncidenceMap_injOn](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/centeredtailincidencemap-injon--fe926b80a81e4153cf6f1529.md) | 136 | `result-track:fe926b80a81e4153cf6f152977cd4555c201a948204ff282caffac40ab27a0d6` |
| 7 | `theorem` | [centeredTailIncidenceSet_card_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/centeredtailincidenceset-card-le--db537f6c4577691bd987505b.md) | 167 | `result-track:db537f6c4577691bd987505b647485a5cb03120f9455bc6730b176688f2c6dfd` |
| 8 | `theorem` | [abs_weight_mul_mobiusLogTerm_le_log_four_mul_scale](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/abs-weight-mul-mobiuslogterm-le-log-four-mul-scale--40dc7d7adf2871f68722b2a6.md) | 178 | `result-track:40dc7d7adf2871f68722b2a68162f2aefe36b9593f8c41c0691c584d761e8183` |
| 9 | `theorem` | [abs_centeredDivisibilityTail_le_incidenceMass_mul_log](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/abs-centereddivisibilitytail-le-incidencemass-mul-log--cc1cca939447e36712582d56.md) | 206 | `result-track:cc1cca939447e36712582d567817f7f9a678f7607f42a88ea47e41293195bdd8` |
| 10 | `theorem` | [abs_centeredDivisibilityTail_le_quotient_log_product](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/declarations/abs-centereddivisibilitytail-le-quotient-log-product--6b1df7956c7b70776ea849ed.md) | 246 | `result-track:6b1df7956c7b70776ea849ed7dfbd7e41d5e0a6385486de8b22524b72fa07660` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
