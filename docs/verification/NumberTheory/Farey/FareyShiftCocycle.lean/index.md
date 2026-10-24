# Verification target: GRWTSK.NumberTheory.Farey.FareyShiftCocycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd4f7acf7caed85dbe5c9b388fe1533e78c97175",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/FareyShiftCocycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd4f7acf7caed85dbe5c9b388fe1533e78c97175`.

Source path: `GRWTSK/NumberTheory/Farey/FareyShiftCocycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/FareyShiftCocycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.TurnwiseScalarObstruction`](../../../../mathematics/NumberTheory/Farey/TurnwiseScalarObstruction.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.LinearAlgebra.PeriodicCocycleData`](../../../../mathematics/Algebra/LinearAlgebra/PeriodicCocycleData.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Sturmian`](../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Schedule](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/schedule--fc59f6b90b1f0e77c1f9ea94.md) | 57 | `declaration-track:fc59f6b90b1f0e77c1f9ea9460b5363ca805a55b21eafa03a6be2ebf22b337b0` |
| 2 | `def` | [shift](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/shift--3c3c1cc81d42d5bcd3e8008e.md) | 61 | `declaration-track:3c3c1cc81d42d5bcd3e8008e2a8d7c3fdc5493f832a1bc861801daec7e12b3fc` |
| 3 | `theorem` | [shift_iterate_apply](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/shift-iterate-apply--27ef316b3b5f8c4029cc1b72.md) | 64 | `result-track:27ef316b3b5f8c4029cc1b729ef577118b3821996d8ee1fe031186284950bc90` |
| 4 | `def` | [chronologicalPrefix](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/chronologicalprefix--8c20fc43e3b5396e25185320.md) | 76 | `declaration-track:8c20fc43e3b5396e25185320747884d7929b2c20967f76b876396a46f14c3f1d` |
| 5 | `theorem` | [chronologicalPrefix_matrix_succ](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/chronologicalprefix-matrix-succ--34ae3412325c6fbedfdaf28a.md) | 81 | `result-track:34ae3412325c6fbedfdaf28a11dd9ea9ae78c1a44b4d4518247950ca2470da31` |
| 6 | `theorem` | [chronological_farey_frame](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/chronological-farey-frame--0fbe9656299be3a77d13676f.md) | 89 | `result-track:0fbe9656299be3a77d13676f824f80337b31bba30a1177c76cab3cbb09231442` |
| 7 | `theorem` | [det_turnShear](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/det-turnshear--1b10478ce872a149abc5df41.md) | 97 | `result-track:1b10478ce872a149abc5df4192274ea0db5ab5a0967c171fcba5331b360925f9` |
| 8 | `abbrev` | [SL3](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/sl3--1fee66ea399087b6a8737494.md) | 104 | `declaration-track:1fee66ea399087b6a8737494702e804acb0d054f1b81e0774d55a6eaad77fde7` |
| 9 | `def` | [dualTurn](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/dualturn--75be7d2a05bf218793bac264.md) | 108 | `declaration-track:75be7d2a05bf218793bac2640b3cc33a61d324e1fb33a8c9e1784b9ca7a349d1` |
| 10 | `theorem` | [dualTurn_coe](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/dualturn-coe--9b4df021c6ec6db29cf1e6d9.md) | 113 | `result-track:9b4df021c6ec6db29cf1e6d9cdaed637cea0b5a994ee28413553a9dcf1fbb848` |
| 11 | `def` | [dualStep](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/dualstep--fffa85f45486319c4d518028.md) | 118 | `declaration-track:fffa85f45486319c4d518028ea3ae77b6b8aa25fb75cc12cc3ff3c231b46e7e5` |
| 12 | `theorem` | [dualCocycle_sourceMatrix](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/dualcocycle-sourcematrix--e2e4682ba2899e4c9a5f9a9e.md) | 122 | `result-track:e2e4682ba2899e4c9a5f9a9e183e9c2e8ca966ab1a4b588e3b19b52731ab7408` |
| 13 | `def` | [repeatLR](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/repeatlr--3b80feb8abc2f3bd16d2c01b.md) | 147 | `declaration-track:3b80feb8abc2f3bd16d2c01b1e9c684e4ed72814e14bc0afaa865f6a86211b62` |
| 14 | `theorem` | [repeatLR_shift_period_two](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/repeatlr-shift-period-two--aa14771ea6b0a90fbbf3656b.md) | 150 | `result-track:aa14771ea6b0a90fbbf3656b33340d1b3541e35a1f2a03781be876eca81625c2` |
| 15 | `theorem` | [repeatLR_prefix_two](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/repeatlr-prefix-two--a3b8f6e5621ca93bd8f3c312.md) | 160 | `result-track:a3b8f6e5621ca93bd8f3c312169f8f20e9f005912b72590820e164f62df467b5` |
| 16 | `theorem` | [repeatLR_periodic_matrix](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/repeatlr-periodic-matrix--59613712719698d6c8d2d77e.md) | 166 | `result-track:59613712719698d6c8d2d77ea0dc5732615b29a8480816dbda089de982a8cbf6` |
| 17 | `theorem` | [repeatLR_monodromy_ne_one](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/repeatlr-monodromy-ne-one--2c63b2b481745b48a52c2092.md) | 175 | `result-track:2c63b2b481745b48a52c2092b28e93e0ed099b1f5d2c309ffbfef8285e7641fc` |
| 18 | `theorem` | [fullShift_no_pure_coboundary](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/fullshift-no-pure-coboundary--949ae823f81763e6c36c0b8e.md) | 188 | `result-track:949ae823f81763e6c36c0b8e9ca3b36072be1e7474628e239746832759fe560a` |
| 19 | `theorem` | [fullShift_no_gauge_trivializes_LR](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/fullshift-no-gauge-trivializes-lr--b39c29f0ef31f244d5ffba9a.md) | 196 | `result-track:b39c29f0ef31f244d5ffba9aed0a1cb6c9d906bf390fe5bc53d35da158a077f2` |
| 20 | `theorem` | [nontrivial_word_dual_product](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/nontrivial-word-dual-product--61d4456df41f217e6236fe52.md) | 207 | `result-track:61d4456df41f217e6236fe522ae861f5992aa005023732878ca13b09b035779a` |
| 21 | `theorem` | [periodic_source_word_not_coboundary](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/periodic-source-word-not-coboundary--14ef1d61dcfb8b6fe49cb9e9.md) | 220 | `result-track:14ef1d61dcfb8b6fe49cb9e9f6a6dba56d8b25f323ce68a5566333fa483ee224` |
| 22 | `theorem` | [periodic_source_word_resists_gauge](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/periodic-source-word-resists-gauge--af92a125372ad8e841476e3c.md) | 231 | `result-track:af92a125372ad8e841476e3c68ef01eff9c8f226202d79eb9a24b4ce7f85a265` |
| 23 | `def` | [sturmianTurns](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/sturmianturns--308bff9489c5900f3f59ea20.md) | 245 | `declaration-track:308bff9489c5900f3f59ea2029d5fdd1f57c936fd84a4bd6c436270fe01f7d61` |
| 24 | `theorem` | [sturmianTurns_left_iff](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/sturmianturns-left-iff--8913b4087c4a6f45c4c79956.md) | 251 | `result-track:8913b4087c4a6f45c4c79956a6820d21a9c36085a953ea86b289540e9cf04a73` |
| 25 | `theorem` | [sturmian_source_dual_product](../../../../mathematics/NumberTheory/Farey/FareyShiftCocycle.lean/declarations/sturmian-source-dual-product--5f8ad562e77321a979aa59f8.md) | 259 | `result-track:5f8ad562e77321a979aa59f839573084b985cc857ae29a7278163c26e85023a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
