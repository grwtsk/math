# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96e7584e04af5e8781cacf0f4f0b1483c827c219",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96e7584e04af5e8781cacf0f4f0b1483c827c219`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AnatomicBoxes`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/index.md) — import line 19; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AnatomicFactorization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicFactorization.lean/index.md) — import line 20; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/MomentReindexing.lean/index.md) — import line 21; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Ring` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/dyadicscale--7a96a6a0c4a1da1e20d2b3b7.md) | 38 | `declaration-track:7a96a6a0c4a1da1e20d2b3b7398e119eec3659e4441e788a7173ee12944baf79` |
| 2 | `theorem` | [closedDyadic_dyadicScale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/closeddyadic-dyadicscale--2cdc60ea56ce791f0a96a1a9.md) | 40 | `result-track:2cdc60ea56ce791f0a96a1a95018cbcab34ae8af511e3aee7efcc51867d0d1ba` |
| 3 | `theorem` | [dyadicScale_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/dyadicscale-le--76ed0bb9cf7b800b4f236eb0.md) | 47 | `result-track:76ed0bb9cf7b800b4f236eb0fa91a23013f76ba099816c2a25ccf2b2373ffdfb` |
| 4 | `def` | [dyadicExponentTuples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/dyadicexponenttuples--05b021dcea3fc83412ce1717.md) | 53 | `declaration-track:05b021dcea3fc83412ce1717d5be391625301f1b4685a5f9165e6fcff4bbd0d6` |
| 5 | `theorem` | [mem_dyadicExponentTuples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/mem-dyadicexponenttuples--8b0d6f235fd8abeee232ea7d.md) | 57 | `result-track:8b0d6f235fd8abeee232ea7d5479f3a3958428fdc1e4abbffbe87f7f20880469` |
| 6 | `def` | [residualTuples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/residualtuples--6e981412ce78c86e7a7547e1.md) | 62 | `declaration-track:6e981412ce78c86e7a7547e1d6bbc8288c498fb9e289776a6ea36d81b76b0219` |
| 7 | `theorem` | [mem_residualTuples](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/mem-residualtuples--de19897891d17afe121f278c.md) | 66 | `result-track:de19897891d17afe121f278c28a772767e25e5af22db60274d9d488fd8f5e190` |
| 8 | `abbrev` | [RawIndex](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/rawindex--72ea3ffb17e65c853376ddaa.md) | 72 | `declaration-track:72ea3ffb17e65c853376ddaabe7dc9e7c1955a7d0f1b7745b32ebbb615d1b93f` |
| 9 | `def` | [parametersOfIndex](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/parametersofindex--1192b89b26628a67deccd724.md) | 76 | `declaration-track:1192b89b26628a67deccd72401c471ec4727cb10308e9ef9cffa2e01d57c72f0` |
| 10 | `def` | [rawParameterIndices](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/rawparameterindices--c21e4847db5707dbdfd5b6ef.md) | 83 | `declaration-track:c21e4847db5707dbdfd5b6efbfd00044dd04bb1b0bdda3968095f39fef0ce5ed` |
| 11 | `def` | [parameterCandidates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/parametercandidates--7cf9c75d84e62d1e1ea1bf6d.md) | 90 | `declaration-track:7cf9c75d84e62d1e1ea1bf6d88a820e4b931b1610faed916c9d13c4090dc3012` |
| 12 | `theorem` | [card_parameterCandidates_le](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/card-parametercandidates-le--801e68db8a58380af823af4a.md) | 93 | `result-track:801e68db8a58380af823af4a8c72d651ac720961c36fc488e94f6ee2d2b735f0` |
| 13 | `def` | [residualCap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/residualcap--e7ad8d0a1684c5cbd69bee8a.md) | 106 | `declaration-track:e7ad8d0a1684c5cbd69bee8a7da495a5c971130abb1e3aaac2ac0774ccd8fb68` |
| 14 | `theorem` | [supportProduct_dvd_monomial](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/supportproduct-dvd-monomial--47d7010a8cce144a5108618b.md) | 109 | `result-track:47d7010a8cce144a5108618b3b723e14d5553fe09549e4c1b9f342cb2f032e62` |
| 15 | `theorem` | [carrierA_dvd_totalA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/carriera-dvd-totala--7c756d93e407c70b0e0048b9.md) | 116 | `result-track:7c756d93e407c70b0e0048b9c1d56ea37d3ecc036f71b96dd7537162ff114e26` |
| 16 | `theorem` | [carrierB_dvd_totalB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/carrierb-dvd-totalb--59cbdb87c818c06faf932149.md) | 120 | `result-track:59cbdb87c818c06faf932149e5e73239b201361e4a6dcfaa6eb1f78bffe57460` |
| 17 | `theorem` | [carrierC_dvd_totalC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/carrierc-dvd-totalc--75107c919e10f43a9d8c0247.md) | 124 | `result-track:75107c919e10f43a9d8c024708fd15c0086bc3fea5d99eef42d1b2acd8f0d5ad` |
| 18 | `theorem` | [residual_le_cap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/residual-le-cap--f7246a4c5ff762ce6f1388de.md) | 128 | `result-track:f7246a4c5ff762ce6f1388de70c2a239eb282b0b0f5694bf498a7a1bca99dfbb` |
| 19 | `theorem` | [log_le_log_of_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/log-le-log-of-pos--1c0fe73a751b87c74eb5ef01.md) | 134 | `result-track:1c0fe73a751b87c74eb5ef0179b6df7515a3d41281cd03b0ee2c87e5ce3b34e3` |
| 20 | `theorem` | [boundedTriples_subset_covered](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/boundedtriples-subset-covered--eead714f1f01a6ec3f47fdcb.md) | 141 | `result-track:eead714f1f01a6ec3f47fdcb35a8b5d5858154f96ea678f2d2736f44e0c294b3` |
| 21 | `theorem` | [card_boundedTriples_le_parameter_mul_sup](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/card-boundedtriples-le-parameter-mul-sup--850fd5aaf94af1ba966b9f86.md) | 236 | `result-track:850fd5aaf94af1ba966b9f861c38c7631f67455c375e8552709612b308dfa48b` |
| 22 | `theorem` | [card_boundedTriples_le_explicit_parameter_bound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/declarations/card-boundedtriples-le-explicit-parameter-bound--bb08dada06dbf3356f808f7b.md) | 248 | `result-track:bb08dada06dbf3356f808f7b19b356d2a14964f87c1cd0d7c3efb32260bd30b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
