# Verification target: GRWTSK.Topology.GeneralTopology.ApproximateUnit.Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d874507c98db41ac7cc14f01676e2d6a52fdee7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d874507c98db41ac7cc14f01676e2d6a52fdee7`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.SpecialFunctions.PosPart` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ApproximateUnit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CFC.monotoneOn_one_sub_one_add_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/cfc-monotoneon-one-sub-one-add-inv--6692a85229c9c0b830dbf51b.md) | 48 | `result-track:6692a85229c9c0b830dbf51b5cc19614e1fcffd33d09c8461ad6fce63f10a15a` |
| 2 | `lemma` | [Set.InvOn.one_sub_one_add_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/set-invon-one-sub-one-add-inv--fce5d71511bd413f866c8668.md) | 67 | `result-track:fce5d71511bd413f866c8668666fa651963503bb573e37c20d421490ed8ab732` |
| 3 | `lemma` | [norm_cfcₙ_one_sub_one_add_inv_lt_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/norm-cfc-one-sub-one-add-inv-lt-one--1f381004beb8473605208bfd.md) | 79 | `result-track:1f381004beb8473605208bfd34947525a228d88fa66750b8ff0c18d80366ecd9` |
| 4 | `lemma` | [CStarAlgebra.directedOn_nonneg_ball](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/cstaralgebra-directedon-nonneg-ball--4eab04ad5ddf673b75406305.md) | 85 | `result-track:4eab04ad5ddf673b75406305ef971edc94c533671ad9bb0e7f78fb48659d1bf1` |
| 5 | `structure` | [Filter.IsIncreasingApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/filter-isincreasingapproximateunit--04ec2647c472eb7d9ea7ee31.md) | 121 | `declaration-track:04ec2647c472eb7d9ea7ee31ac961a4f607d1c7d2a995f6feacf4b671fdbeaeb` |
| 6 | `lemma` | [eventually_nnnorm](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/eventually-nnnorm--2ff4bb32187ab9d38e1d4a13.md) | 128 | `result-track:2ff4bb32187ab9d38e1d4a138ed2f0fb682e99362d4940ae9d584614abf41709` |
| 7 | `lemma` | [eventually_isSelfAdjoint](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/eventually-isselfadjoint--935f67c9c9bfca98c18c458c.md) | 132 | `result-track:935f67c9c9bfca98c18c458c1471a3cd93cc0792c12251a18790f5b3b566666a` |
| 8 | `lemma` | [eventually_star_eq](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/eventually-star-eq--343ab6653642f6320cb20260.md) | 136 | `result-track:343ab6653642f6320cb2026016bd04699d009830b536445eb5e0b44f8a090b40` |
| 9 | `lemma` | [tendsto_mul_right_of_forall_nonneg_tendsto](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/tendsto-mul-right-of-forall-nonneg-tendsto--616de3fe6d056928c4dc1caa.md) | 147 | `result-track:616de3fe6d056928c4dc1caa790b32839817ba3898657547c52be16a9aa3fcef` |
| 10 | `lemma` | [tendsto_mul_left_iff_tendsto_mul_right](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/tendsto-mul-left-iff-tendsto-mul-right--fa6a5791ae521e6cd01f0a7f.md) | 161 | `result-track:fa6a5791ae521e6cd01f0a7f271b7a657d3fd687d7378372d4dc7a6ba9a0476c` |
| 11 | `lemma` | [isBasis_nonneg_sections](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/isbasis-nonneg-sections--3e8049e23ce40a510e9eb63e.md) | 172 | `result-track:3e8049e23ce40a510e9eb63eddd57cc3cb37df71fbda3dc60060f26255cf076e` |
| 12 | `def` | [approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/approximateunit--9a70e0fc1968caab1ea541ec.md) | 181 | `declaration-track:9a70e0fc1968caab1ea541ecc99f2f44cc31dcc0a2a0781152025a37e5c19277` |
| 13 | `lemma` | [hasBasis_approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/hasbasis-approximateunit--ec0dbfdbb9e8d13946521882.md) | 186 | `result-track:ec0dbfdbb9e8d1394652188270dac0e624b1a3407239644b27b3ae50f2334413` |
| 14 | `lemma` | [nnnorm_sub_mul_self_le](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/nnnorm-sub-mul-self-le--be8c61c3df715854d8391218.md) | 194 | `result-track:be8c61c3df715854d83912185d66868f2f07dc57ae89886b1c5299bdfa52b9ce` |
| 15 | `lemma` | [norm_sub_mul_self_le](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/norm-sub-mul-self-le--a96b8b0506dc7752a31f4e84.md) | 212 | `result-track:a96b8b0506dc7752a31f4e846bfa59085c780590298e9fdd464134cfa18934f8` |
| 16 | `lemma` | [norm_sub_mul_self_le_of_inr](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/norm-sub-mul-self-le-of-inr--511cdf047d093248a02d7111.md) | 220 | `result-track:511cdf047d093248a02d71110ee5d9a3a86dca3a7eefe0c449c01e76e391fc52` |
| 17 | `lemma` | [tendsto_mul_right_approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/tendsto-mul-right-approximateunit--564090fc3c61ff2ba7169313.md) | 234 | `result-track:564090fc3c61ff2ba7169313ea27556745b4d3dc7bf1e120c3876efdeaea11e7` |
| 18 | `lemma` | [increasingApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Varianta66564ed27ded29c8ddb29183d26284c169f09c9381df532065495db53e2091b.lean/declarations/increasingapproximateunit--827c12cf5078eeb96cc0b1b2.md) | 288 | `result-track:827c12cf5078eeb96cc0b1b2f60c7163ffac6ab403c03573d87b8448d645299e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
