# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomComplex.Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b94a4ea9f44321a7f827bd32d7686ae9a1cd99f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b94a4ea9f44321a7f827bd32d7686ae9a1cd99f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triplet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/triplet--9b73ea0d8c7223dfcc1053b5.md) | 48 | `declaration-track:9b73ea0d8c7223dfcc1053b5616619750513be041826703d6e865e7cfc4e7f27` |
| 2 | `def` | [Cochain](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/cochain--ad629efaa2430053fa8370aa.md) | 61 | `declaration-track:ad629efaa2430053fa8370aaedbf5ff849895989e07051ad6e144b00c49dbfca` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/instance--0399748e0dec409061787754.md) | 63 | `declaration-track:0399748e0dec4090617877541efca4099e96f6aab073643ed10f5f77f56ffa5e` |
| 4 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/mk--a463c28c9feab6035d9cd478.md) | 72 | `declaration-track:a463c28c9feab6035d9cd4780d4dbc3783ad3ad1a02fe2bd19f29a0fd46859b9` |
| 5 | `def` | [v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/v--631e4796c39940630c8b13cb.md) | 77 | `declaration-track:631e4796c39940630c8b13cbb64c00ea9b62c89fe34f4537765bc5f11ecc3bbc` |
| 6 | `lemma` | [mk_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/mk-v--47657440571c0bf3952d3dac.md) | 81 | `result-track:47657440571c0bf3952d3dacf31d952babc06048e61f61ca012054ce6ac55325` |
| 7 | `lemma` | [congr_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/congr-v--11b71988f1cfdc2f62bcb9d1.md) | 84 | `result-track:11b71988f1cfdc2f62bcb9d142dd00b7156390224e456d22396ba052ac2a02a1` |
| 8 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ext--a2a0dbea67b6945543eccf78.md) | 88 | `result-track:a2a0dbea67b6945543eccf789666cad42ba4d4de80cd31cca13a3e9029f88826` |
| 9 | `lemma` | [ext₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ext--34fe0aec4ba0c72041b11f0d.md) | 93 | `result-track:34fe0aec4ba0c72041b11f0d1107507f499389eb7c1d72325fa545c54dadca26` |
| 10 | `lemma` | [zero_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/zero-v--bf024718c39e274fc05901d2.md) | 100 | `result-track:bf024718c39e274fc05901d28b680f5379b3fba729fb61253fda00c7129a26eb` |
| 11 | `lemma` | [add_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/add-v--2f71b358ef991f43ed1291bb.md) | 104 | `result-track:2f71b358ef991f43ed1291bbd7efd09c0b1779cd5a0f1cbed37547574b68d28c` |
| 12 | `lemma` | [sub_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/sub-v--e78efff64736b6d4521845ef.md) | 108 | `result-track:e78efff64736b6d4521845efbf5a05fd2218301abbf22fb9ec4f33dfa737c6a5` |
| 13 | `lemma` | [neg_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/neg-v--395d8af8f1e471dd96338055.md) | 112 | `result-track:395d8af8f1e471dd96338055a660a102da2bfa77da32cdf0ae4fc8db9847ccdd` |
| 14 | `lemma` | [zsmul_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/zsmul-v--4f002d00e0342e28e86fc5e9.md) | 116 | `result-track:4f002d00e0342e28e86fc5e934c85e61455cdbfcde25f97dc4328a79f17c5437` |
| 15 | `def` | [ofHoms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhoms--f2bf97b6147ccc060fbd63ec.md) | 121 | `declaration-track:f2bf97b6147ccc060fbd63ec5b1f3cb30dc3571e1fcb6087f43d372c3fa50d75` |
| 16 | `lemma` | [ofHoms_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhoms-v--20d3722c50bc54000b8d98e6.md) | 125 | `result-track:20d3722c50bc54000b8d98e69cda31caa65bd2cfdbec739237968e258d00baea` |
| 17 | `lemma` | [ofHoms_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhoms-zero--44fee1ff8f92bfa1a62fc34f.md) | 130 | `result-track:44fee1ff8f92bfa1a62fc34fa7328d8e5c2f59340b406f95da1b90f3a00da5b2` |
| 18 | `lemma` | [ofHoms_v_comp_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhoms-v-comp-d--5395bbcb7b1cc4700067cf74.md) | 133 | `result-track:5395bbcb7b1cc4700067cf743617e0d6ca07271502498364d783f2a35d598153` |
| 19 | `lemma` | [d_comp_ofHoms_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/d-comp-ofhoms-v--358627fc9bd813a56d9e790b.md) | 140 | `result-track:358627fc9bd813a56d9e790b5a235eb1319e1b3b975d5fc6415b6f15bb48c087` |
| 20 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom--33c1169214aab5e5190eb916.md) | 147 | `declaration-track:33c1169214aab5e5190eb916ef0fc1392b91cc707c24cb1aa8b83a45396da07f` |
| 21 | `lemma` | [ofHom_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom-zero--dc2e6fd9f3d51e94a4a9f003.md) | 152 | `result-track:dc2e6fd9f3d51e94a4a9f003c1b144268d23a33f4eabe5c62d19bad876fcef8b` |
| 22 | `lemma` | [ofHom_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom-v--0a4cf0af18c89a24159489d9.md) | 158 | `result-track:0a4cf0af18c89a24159489d95b8363ff464c268088088b02889966f35a04f2af` |
| 23 | `lemma` | [ofHom_v_comp_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom-v-comp-d--a337e8b5d8864177b57c6a20.md) | 162 | `result-track:a337e8b5d8864177b57c6a20c2536587a3c0e6efe59ad40c8b7a75a9c9dd0308` |
| 24 | `lemma` | [d_comp_ofHom_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/d-comp-ofhom-v--6995ca57d47dee23851acc7f.md) | 167 | `result-track:6995ca57d47dee23851acc7fe0b01c746c9fce87430c34a7ff347e97c14f82a3` |
| 25 | `lemma` | [ofHom_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom-add--5fa1ff5bd41a35763f086ed3.md) | 172 | `result-track:5fa1ff5bd41a35763f086ed3e51fa9e0086d05e41362107d9a44f5bba9bdb58a` |
| 26 | `lemma` | [ofHom_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom-sub--21fcf16e47c5ffeac5e16419.md) | 176 | `result-track:21fcf16e47c5ffeac5e164190df1fd92e0d9d2109ca765f3ed8df36a1ea74ebb` |
| 27 | `lemma` | [ofHom_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhom-neg--8f15bdc0340aec1d507119df.md) | 180 | `result-track:8f15bdc0340aec1d507119dfbd93d6b023dcfcb766fdd3e91af4344687e8dc26` |
| 28 | `def` | [ofHomotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhomotopy--33ffb3c137784f012ded0057.md) | 184 | `declaration-track:33ffb3c137784f012ded005713364e9a26e9d73da4000cf73980b73db5f03c3c` |
| 29 | `lemma` | [ofHomotopy_ofEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhomotopy-ofeq--c500fc13e602df66f3587013.md) | 188 | `result-track:c500fc13e602df66f358701355a64741ca4dae3ba983cbe273969f19510ff276` |
| 30 | `lemma` | [ofHomotopy_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/ofhomotopy-refl--26c0ae7afddca1d14f6a6fba.md) | 192 | `result-track:26c0ae7afddca1d14f6a6fba324799fb4c5c36a9469d74c6067f402cd0c04bd1` |
| 31 | `lemma` | [v_comp_XIsoOfEq_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/v-comp-xisoofeq-hom--0b36b865d6b4d24973c97775.md) | 196 | `result-track:0b36b865d6b4d24973c9777547b2b208b7b92a9e8f0b6d813afe7b21431f8077` |
| 32 | `lemma` | [v_comp_XIsoOfEq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/v-comp-xisoofeq-inv--cb5cfdd4ec36de948e9aabd8.md) | 203 | `result-track:cb5cfdd4ec36de948e9aabd832842d65836ef8dd02535014336a87dba67a6889` |
| 33 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/comp--039952eb96ed521fd5ed29ca.md) | 211 | `declaration-track:039952eb96ed521fd5ed29cae7453cb9d7d6a96cdf35fbb5258c90499ae90173` |
| 34 | `lemma` | [comp_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/comp-v--799a8eb6efd3f9ff57372f0d.md) | 228 | `result-track:799a8eb6efd3f9ff57372f0d246204844b2bb6a9ea02dc1f8ebc0fc5687a3b12` |
| 35 | `lemma` | [comp_zero_cochain_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/comp-zero-cochain-v--4608dbfda42419693c1bdda7.md) | 236 | `result-track:4608dbfda42419693c1bdda7a6c5af8b5a4a2390786988ab63794931df237166` |
| 36 | `lemma` | [zero_cochain_comp_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/zero-cochain-comp-v--9de951708e10405e3eb9cb72.md) | 241 | `result-track:9de951708e10405e3eb9cb7249c7e49e804478e5ae0a81122c1aee47931482fa` |
| 37 | `lemma` | [comp_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant14367118c14f188f4ea4a303fab8cac8a53f070215826d32304fdd561c0e6f7f.lean/declarations/comp-assoc--f5e5eb4cffa019e6e0ba87fc.md) | 246 | `result-track:f5e5eb4cffa019e6e0ba87fc0b392ad7176cc66aa73d08316f18caab4f78ccbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
