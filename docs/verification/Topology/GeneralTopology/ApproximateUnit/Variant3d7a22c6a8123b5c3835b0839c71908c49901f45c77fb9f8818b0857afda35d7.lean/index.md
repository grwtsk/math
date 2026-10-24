# Verification target: GRWTSK.Topology.GeneralTopology.ApproximateUnit.Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea918994fce91465b3822c97a0f2af0e641f63cc",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea918994fce91465b3822c97a0f2af0e641f63cc`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CFC.monotoneOn_one_sub_one_add_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/cfc-monotoneon-one-sub-one-add-inv--5d4c6012700b1b889f43cc2b.md) | 61 | `result-track:5d4c6012700b1b889f43cc2bfdbc77f14b6cd2d327ce84ab9a64789e7fbde156` |
| 2 | `lemma` | [CFC.monotoneOn_one_sub_one_add_inv_real](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/cfc-monotoneon-one-sub-one-add-inv-real--00524d3c6aeff707bb02d3f1.md) | 79 | `result-track:00524d3c6aeff707bb02d3f12b7fdc906cbd5c651635eaafdafb437429525678` |
| 3 | `lemma` | [Set.InvOn.one_sub_one_add_inv](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/set-invon-one-sub-one-add-inv--703c0b9100a0ad37f4d7eb50.md) | 95 | `result-track:703c0b9100a0ad37f4d7eb50a71119572504e34af9df99fec3701b0298b86466` |
| 4 | `lemma` | [norm_cfcₙ_one_sub_one_add_inv_lt_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/norm-cfc-one-sub-one-add-inv-lt-one--3bb0bd2a5bba848c52c67af5.md) | 108 | `result-track:3bb0bd2a5bba848c52c67af5f28e6068ecaf15e9fc8550edf87d9b3db7a73d15` |
| 5 | `lemma` | [CStarAlgebra.directedOn_nonneg_ball](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/cstaralgebra-directedon-nonneg-ball--cc5f1c49e1747a1733d9c957.md) | 112 | `result-track:cc5f1c49e1747a1733d9c957c8f58b6ebc96f513cf7cb3c878c2b66295a1990e` |
| 6 | `structure` | [Filter.IsIncreasingApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/filter-isincreasingapproximateunit--621272d98b34b2d8f1dae4bb.md) | 151 | `declaration-track:621272d98b34b2d8f1dae4bbcc2599d2b93b414c14cc000f87eb05564414a75f` |
| 7 | `lemma` | [eventually_nnnorm](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/eventually-nnnorm--b2df2706f72fb58c3488a24d.md) | 158 | `result-track:b2df2706f72fb58c3488a24d6fc4a92e6f4697edf910f716886158dd09f3c35c` |
| 8 | `lemma` | [eventually_isSelfAdjoint](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/eventually-isselfadjoint--fa6e0d27efbba7700887a3f3.md) | 162 | `result-track:fa6e0d27efbba7700887a3f3b248bb794cb216eb81efc4c00b91131fd86897a9` |
| 9 | `lemma` | [eventually_star_eq](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/eventually-star-eq--5c1467de70de9dab7aaedeb6.md) | 166 | `result-track:5c1467de70de9dab7aaedeb65a7e2a4f00b981c2e6f4a71d44ac0f0dfdd70ac8` |
| 10 | `lemma` | [closedBall_mem](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/closedball-mem--179be5a15dafa49ae7ad09f1.md) | 171 | `result-track:179be5a15dafa49ae7ad09f128fcc185f44a3caa944278c00f802a3f46414794` |
| 11 | `lemma` | [pure_one](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/pure-one--3135a61c7cc054483fdf1b2b.md) | 175 | `result-track:3135a61c7cc054483fdf1b2b463513eb05d8f18eecc9fa4c6f50ab9c843e7986` |
| 12 | `lemma` | [tendsto_mul_right_of_forall_nonneg_tendsto](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/tendsto-mul-right-of-forall-nonneg-tendsto--8958c1cd0ad857431dc8de54.md) | 188 | `result-track:8958c1cd0ad857431dc8de54440f7bdfe3b0ded571ef022657413b02ae51a141` |
| 13 | `lemma` | [tendsto_mul_left_iff_tendsto_mul_right](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/tendsto-mul-left-iff-tendsto-mul-right--0aa910b6dd652a835aae76e0.md) | 201 | `result-track:0aa910b6dd652a835aae76e0858c4106cea8c2e20f8965de3c56294517b74622` |
| 14 | `lemma` | [isBasis_nonneg_sections](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/isbasis-nonneg-sections--e5c0980029557ffc6d3e512c.md) | 212 | `result-track:e5c0980029557ffc6d3e512c7475c27d5fb482096a13911264ef5e879660805a` |
| 15 | `def` | [approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/approximateunit--83c729e91e0c29363556e310.md) | 223 | `declaration-track:83c729e91e0c29363556e310c5d56da6cb34e6c8db1d8959334b1cd60e04865a` |
| 16 | `lemma` | [hasBasis_approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/hasbasis-approximateunit--23be1cdf27a6cb6773996824.md) | 228 | `result-track:23be1cdf27a6cb6773996824ac491031747c33f94e1f19caa375ed9d68d6c06c` |
| 17 | `lemma` | [nnnorm_sub_mul_self_le](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/nnnorm-sub-mul-self-le--7f36dcd013c6aa88b226b6a5.md) | 236 | `result-track:7f36dcd013c6aa88b226b6a5cc12790770cf1a4114dc889709689fe54eeec195` |
| 18 | `lemma` | [norm_sub_mul_self_le](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/norm-sub-mul-self-le--77477ffd55ff96bf5219ab34.md) | 255 | `result-track:77477ffd55ff96bf5219ab34b2f6f0b964c0848f08dc502cae7b54e7c5a4d3b1` |
| 19 | `lemma` | [norm_sub_mul_self_le_of_inr](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/norm-sub-mul-self-le-of-inr--c992fcbd340a0b607efb231c.md) | 263 | `result-track:c992fcbd340a0b607efb231c6f2e4c1b774fb86ac9d36eb06ee1c34dcea9c646` |
| 20 | `lemma` | [tendsto_mul_right_approximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/tendsto-mul-right-approximateunit--8f1c3445339f312afb31e105.md) | 276 | `result-track:8f1c3445339f312afb31e105e239291075e0b1807c2b03527d735abc30f1dcd1` |
| 21 | `lemma` | [increasingApproximateUnit](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/increasingapproximateunit--87f720d0f6acf63ec626185a.md) | 328 | `result-track:87f720d0f6acf63ec626185ae60740d5d698ea8c3c026d3670e6dafe58cf2c27` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ApproximateUnit/Variant3d7a22c6a8123b5c3835b0839c71908c49901f45c77fb9f8818b0857afda35d7.lean/declarations/instance--076cb6a6f94fa85d04b33bd7.md) | 343 | `declaration-track:076cb6a6f94fa85d04b33bd777b9daf9bfffc4ccdf92eb7e26d3182777a38dfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
