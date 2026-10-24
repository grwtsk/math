# Verification target: GRWTSK.Algebra.LinearAlgebra.Equiv.Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27359e19ebb69e25962e15cdc831a81851643b5e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27359e19ebb69e25962e15cdc831a81851643b5e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Range` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofEq](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofeq--151301a9cd4fc69681610954.md) | 35 | `declaration-track:151301a9cd4fc696816109540a13ed499866f72ce7c524d7e6cebc3605c20757` |
| 2 | `theorem` | [coe_ofEq_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/coe-ofeq-apply--c88da3cdffbd2df654a00d24.md) | 43 | `result-track:c88da3cdffbd2df654a00d24b71ce4bfda6f3325869d02161f0a369d71413bc0` |
| 3 | `theorem` | [ofEq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofeq-symm--1267d3faba40f4a6b45068b1.md) | 47 | `result-track:1267d3faba40f4a6b45068b1ada7e02712df406d5c1a6cdb27a6e87ced23835c` |
| 4 | `theorem` | [ofEq_rfl](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofeq-rfl--d2d028fd35991a7e88e4781b.md) | 51 | `result-track:d2d028fd35991a7e88e4781b91098c5290251e7d9ba4a6244cf9fe9e09489589` |
| 5 | `def` | [ofSubmodules](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodules--6d16e595222b50516e1153a5.md) | 55 | `declaration-track:6d16e595222b50516e1153a51e5cf0c558b3e30cb59d205894f8e8c7b79514a4` |
| 6 | `theorem` | [ofSubmodules_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodules-apply--4cc6d1fea0368e81d1fdccdd.md) | 60 | `result-track:4cc6d1fea0368e81d1fdccddf3c1f295fcc7247488ba4fa9cb41d53551f31d33` |
| 7 | `theorem` | [ofSubmodules_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodules-symm-apply--e8c0789377c95eb1fa09bb31.md) | 65 | `result-track:e8c0789377c95eb1fa09bb31f994e52254ba7defb1c68140e1ee2f21df468fb8` |
| 8 | `def` | [ofSubmodule'](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodule--4148a61417b51fed40d8ec9d.md) | 73 | `declaration-track:4148a61417b51fed40d8ec9dcf808db0772ea4dc97cf9927cf2fce2271fe4ddf` |
| 9 | `theorem` | [ofSubmodule'_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodule-tolinearmap--120f5e31edd4737a955c185f.md) | 77 | `result-track:120f5e31edd4737a955c185f55d672fb68de77411fae12e87510279ec743b5e6` |
| 10 | `theorem` | [ofSubmodule'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodule-apply--62c056f4fdc36cc6b818a149.md) | 84 | `result-track:62c056f4fdc36cc6b818a14928350e77e7f38450eb31f48e1be13ed9eb0f4c85` |
| 11 | `theorem` | [ofSubmodule'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofsubmodule-symm-apply--14b6518e0e2dde64edf1ab62.md) | 89 | `result-track:14b6518e0e2dde64edf1ab6273a8c319d91908e280219983f04494692f1af35d` |
| 12 | `def` | [ofTop](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/oftop--a47b82424ef91d3d4c0ebfbb.md) | 96 | `declaration-track:a47b82424ef91d3d4c0ebfbbbefab1ab94096a76fdde9aea02cedec49f4c950c` |
| 13 | `theorem` | [ofTop_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/oftop-apply--8f0d80d21631aed82909c068.md) | 103 | `result-track:8f0d80d21631aed82909c06867c302e902c3ddf96af074d235bca7c8f1328f92` |
| 14 | `theorem` | [coe_ofTop_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/coe-oftop-symm-apply--837767aed4f7aab09636262e.md) | 107 | `result-track:837767aed4f7aab09636262e79fbf3e385256819aef3c6046125e10b436b7de4` |
| 15 | `theorem` | [ofTop_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/oftop-symm-apply--82a0be5efad0eec71379fba0.md) | 110 | `result-track:82a0be5efad0eec71379fba0b2ad5f1183f7266e9d595a50ccdeb36d5968c297` |
| 16 | `theorem` | [range](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/range--002eb71a5524f94fa69dcac1.md) | 114 | `result-track:002eb71a5524f94fa69dcac1195cc72abb14072e039beacb51a81e730653c4cb` |
| 17 | `theorem` | [_root_.LinearEquivClass.range](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/root-linearequivclass-range--34a6dbc2aa2fec363ffa35c4.md) | 118 | `result-track:34a6dbc2aa2fec363ffa35c421c5603e594f59cfe44d026af44e1f07115986dc` |
| 18 | `theorem` | [eq_bot_of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/eq-bot-of-equiv--ac5d538d0395867778e6fe3e.md) | 122 | `result-track:ac5d538d0395867778e6fe3efdad065b434dc161a94ec4b4c199571ca2d0b399` |
| 19 | `theorem` | [range_comp](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/range-comp--016ebe34d5c90b5fb7386b8d.md) | 128 | `result-track:016ebe34d5c90b5fb7386b8d1319444047c049f10911fd3053374ab882bc9113` |
| 20 | `def` | [ofLeftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofleftinverse--d41dc3273ab2c3d4fc4a8f8e.md) | 139 | `declaration-track:d41dc3273ab2c3d4fc4a8f8e2917e9e351b6e461a1277b5618e52fc7c0fda098` |
| 21 | `theorem` | [ofLeftInverse_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofleftinverse-apply--f41d38fbe186e5a93b767f24.md) | 151 | `result-track:f41d38fbe186e5a93b767f2482c2a0cd3fe48007495caae460d07beda5d753db` |
| 22 | `theorem` | [ofLeftInverse_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofleftinverse-symm-apply--6a245c8849a6d5a923703186.md) | 156 | `result-track:6a245c8849a6d5a92370318670e728e58901e2cb6c55672e60a5b723765c4844` |
| 23 | `def` | [ofInjective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofinjective--927087018557e3bb5b230d47.md) | 164 | `declaration-track:927087018557e3bb5b230d47e2fe45095702b52d06ef1ecf8fcc034f91a00520` |
| 24 | `theorem` | [ofInjective_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofinjective-apply--511a4e5d5ab40243b3b31eb5.md) | 169 | `result-track:511a4e5d5ab40243b3b31eb5b3a87a7c50ea52e148a28f1affef2bc1c3f7f698` |
| 25 | `lemma` | [ofInjective_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofinjective-symm-apply--24d6e74064159da38579fff9.md) | 174 | `result-track:24d6e74064159da38579fff94e6ccda64bf0a0dae8a0e7c3aa950e50781b4062` |
| 26 | `def` | [ofBijective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofbijective--e457ee1fbdb31d3763c3b891.md) | 182 | `declaration-track:e457ee1fbdb31d3763c3b8913ea8997fba8263ec49f4c3bc54752cdba2c5a83b` |
| 27 | `theorem` | [ofBijective_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofbijective-apply--5abb1408354a2d7ec9b3df2d.md) | 188 | `result-track:5abb1408354a2d7ec9b3df2d56b12fa2ad765160902b695c22e38bb658fef167` |
| 28 | `theorem` | [ofBijective_symm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/ofbijective-symm-apply-apply--1dc68f56afc7c1e163875596.md) | 193 | `result-track:1dc68f56afc7c1e1638755961dd55410fa9f3f2ffa6d5aedb4a300a0e98d87b6` |
| 29 | `theorem` | [apply_ofBijective_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/apply-ofbijective-symm-apply--bb2b6805d2726692f9607c21.md) | 198 | `result-track:bb2b6805d2726692f9607c214743ec5dee75b48556879b141c2c118c1a5cc4b8` |
| 30 | `def` | [equivSubtypeMap](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/equivsubtypemap--59ce52d9d9d3d1069ce75b9e.md) | 216 | `declaration-track:59ce52d9d9d3d1069ce75b9e0d328aabf6af26e0cc1b62e86e80e59994585aaf` |
| 31 | `theorem` | [equivSubtypeMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/equivsubtypemap-apply--342827d1d9b333c5688f5d87.md) | 225 | `result-track:342827d1d9b333c5688f5d877ca342c15bd5f89a09e72a7202022abeb1435f22` |
| 32 | `theorem` | [equivSubtypeMap_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/equivsubtypemap-symm-apply--35235dc920a8d79e7abdfe58.md) | 230 | `result-track:35235dc920a8d79e7abdfe58de559be33b5dbea207a65aaf38f0126e784f9154` |
| 33 | `def` | [comap_equiv_self_of_inj_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/comap-equiv-self-of-inj-of-le--69112c1af21d0c4255336dd0.md) | 238 | `declaration-track:69112c1af21d0c4255336dd0b01c7d64c0ae7e312a028f96dee9b237ac0132da` |
| 34 | `def` | [codRestrictOfInjective](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/codrestrictofinjective--5b63f611051b9dfb2427b153.md) | 262 | `declaration-track:5b63f611051b9dfb2427b153c59bb241c2ea4b3d3994f2680a8264f87674fcda` |
| 35 | `lemma` | [codRestrictOfInjective_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/codrestrictofinjective-comp-apply--d7874ad51f923e7034a46767.md) | 266 | `result-track:d7874ad51f923e7034a4676732cb7f5fff4c33074472fc18ba865c8e18d0da43` |
| 36 | `lemma` | [codRestrictOfInjective_comp](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/codrestrictofinjective-comp--fc5f50e3df3922c3c3eca351.md) | 271 | `result-track:fc5f50e3df3922c3c3eca3513319c09954270ac8ca3023c07686641e4cd72b1a` |
| 37 | `def` | [codRestrict₂](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/codrestrict--2530f40209a4da2df655653f.md) | 282 | `declaration-track:2530f40209a4da2df655653f85fab292ff1f9fbaccb15040f63686ed57ce90b8` |
| 38 | `lemma` | [codRestrict₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equiv/Variante34105e0064162fbf69451a81033def86c44f2e69324648e75e7f93c5f0c7c1b.lean/declarations/codrestrict-apply--048a82b7b1eebfd2df4ea36b.md) | 290 | `result-track:048a82b7b1eebfd2df4ea36bb1ab077dc4ec60a5a414b988931103c1f8a6092e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
