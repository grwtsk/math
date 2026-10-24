# Verification target: GRWTSK.Topology.GeneralTopology.ApproximateUnit.Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7079e5c938c4b3f83afc3f8d2e98f25bc8623d3`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.SpecialFunctions.PosPart` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ApproximateUnit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CFC.monotoneOn_one_sub_one_add_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/cfc-monotoneon-one-sub-one-add-inv--af9a36491b3c0d40b9dfdcc2.md) | 56 | `result-track:af9a36491b3c0d40b9dfdcc2dde9e891fab6a420077b507ba285c75851a7b362` |
| 2 | `lemma` | [Set.InvOn.one_sub_one_add_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/set-invon-one-sub-one-add-inv--9bfeef05fb339b9a74bb9633.md) | 75 | `result-track:9bfeef05fb339b9a74bb9633aa1e97682467142addc7ff35ecd60cb23a6c1f82` |
| 3 | `lemma` | [norm_cfcₙ_one_sub_one_add_inv_lt_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/norm-cfc-one-sub-one-add-inv-lt-one--61d84f15ffd8bc1709efaf63.md) | 87 | `result-track:61d84f15ffd8bc1709efaf6397eb447270350e604df3b8b6dfaaa5587c297fc5` |
| 4 | `lemma` | [CStarAlgebra.directedOn_nonneg_ball](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/cstaralgebra-directedon-nonneg-ball--6bb39f4a08e9bfc6fa532f0b.md) | 93 | `result-track:6bb39f4a08e9bfc6fa532f0b09f40fcb08b913b080e2d25d4fe78252f79f2668` |
| 5 | `structure` | [Filter.IsIncreasingApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/filter-isincreasingapproximateunit--712ea2a5a32cf6f2738ec228.md) | 129 | `declaration-track:712ea2a5a32cf6f2738ec2288e286103799229c55a218b81f3cc1710f4d47fd1` |
| 6 | `lemma` | [eventually_nnnorm](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/eventually-nnnorm--c43b7f8f65521d665791955e.md) | 136 | `result-track:c43b7f8f65521d665791955ea166775689f189672ab1006756f6a7fe9cb97913` |
| 7 | `lemma` | [eventually_isSelfAdjoint](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/eventually-isselfadjoint--8e2808e5fe95d6e33b8d9d1c.md) | 140 | `result-track:8e2808e5fe95d6e33b8d9d1c5d73cedd5d0f101fd782516c9c5322ee04e91135` |
| 8 | `lemma` | [eventually_star_eq](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/eventually-star-eq--1ae5ae3246c5c81c6a7355db.md) | 144 | `result-track:1ae5ae3246c5c81c6a7355db9f1ed456440c8a0d2bab74c1381a31b5600c1143` |
| 9 | `lemma` | [tendsto_mul_right_of_forall_nonneg_tendsto](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/tendsto-mul-right-of-forall-nonneg-tendsto--146bb2f2493692c45cc813de.md) | 155 | `result-track:146bb2f2493692c45cc813dee3295800bfe71ffbc0ad646dab3bee8401c5bd17` |
| 10 | `lemma` | [tendsto_mul_left_iff_tendsto_mul_right](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/tendsto-mul-left-iff-tendsto-mul-right--e49905a7f4452dff5c34ccdb.md) | 169 | `result-track:e49905a7f4452dff5c34ccdbd0708512a50c876122c49ec989b20f4035f3ed39` |
| 11 | `lemma` | [isBasis_nonneg_sections](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/isbasis-nonneg-sections--ed8a1f32c0890fcebe614c00.md) | 180 | `result-track:ed8a1f32c0890fcebe614c00e7f632e0e48328f13145ee2e439c82541f93a748` |
| 12 | `def` | [approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/approximateunit--8b8ef8cc3505aec51e902383.md) | 189 | `declaration-track:8b8ef8cc3505aec51e902383f6e2e0e57d2cdb68292ffb17648d09ba9b857657` |
| 13 | `lemma` | [hasBasis_approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/hasbasis-approximateunit--cf0d36a8b1dc954109c18558.md) | 194 | `result-track:cf0d36a8b1dc954109c1855810d996c75ec95f0f32a88f701a7c16ac5d8bbd16` |
| 14 | `lemma` | [nnnorm_sub_mul_self_le](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/nnnorm-sub-mul-self-le--b7638c78b27edaf0d438a9b5.md) | 202 | `result-track:b7638c78b27edaf0d438a9b552b61a2ffebeb440959336e4a7b49942351dcdd6` |
| 15 | `lemma` | [norm_sub_mul_self_le](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/norm-sub-mul-self-le--5be6697a9835fb6205e92457.md) | 220 | `result-track:5be6697a9835fb6205e92457b6490493bece1f4dad3ef66c4a0f20a6e985ce26` |
| 16 | `lemma` | [norm_sub_mul_self_le_of_inr](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/norm-sub-mul-self-le-of-inr--5ee81320a7cc71b55846a87d.md) | 228 | `result-track:5ee81320a7cc71b55846a87d172834ebd173f4eec36fd7fb526731b6a512fdd4` |
| 17 | `lemma` | [tendsto_mul_right_approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/tendsto-mul-right-approximateunit--f5f110e3b1343418d6a28dd3.md) | 242 | `result-track:f5f110e3b1343418d6a28dd3c4e95b5fd5df140a49e325abc6a44e567a0a2273` |
| 18 | `lemma` | [increasingApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variantdd3923fee0e069428be62fbf81bacbe6fec1565d0860f2c030c688cf03eddc0a.lean/declarations/increasingapproximateunit--9b8bb9a719778e2760b82144.md) | 296 | `result-track:9b8bb9a719778e2760b82144e6f9df0705d79d03f37d5767c2b52f60c4a0eca1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
