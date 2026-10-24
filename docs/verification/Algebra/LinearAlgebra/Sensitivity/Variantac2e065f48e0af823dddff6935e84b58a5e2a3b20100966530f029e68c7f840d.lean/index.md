# Verification target: GRWTSK.Algebra.LinearAlgebra.Sensitivity.Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f06a3f64ec88bc1634e82ddd2be2d4599cf1ac1",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f06a3f64ec88bc1634e82ddd2be2d4599cf1ac1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/q--e941f985f6aa420e833ed443.md) | 65 | `declaration-track:e941f985f6aa420e833ed4430f2a0ae07016ead99d0e173b8de6c898ebcaab70` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--4acb8b90ce14eff4d94ca43b.md) | 68 | `declaration-track:4acb8b90ce14eff4d94ca43b3675fe28f5c8161102024f377669d0263c0f9436` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--3a86a78c8665c08c510c0e7c.md) | 70 | `declaration-track:3a86a78c8665c08c510c0e7c29561d3a51c51a72e472ac789980709b3123e9db` |
| 4 | `def` | [π](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/anonymous--087da3066863a3ad4e169ebe.md) | 74 | `declaration-track:087da3066863a3ad4e169ebebe5feecc5d0d03c0e389824f2efccc6ac241f725` |
| 5 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/ext--b46e0463fd72ead20b6a7fbe.md) | 79 | `result-track:b46e0463fd72ead20b6a7fbe96866edb12ee8b9afe82a9551c65e2bfbfa3d2cc` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--70b209ed9c7245568af53346.md) | 86 | `declaration-track:70b209ed9c7245568af53346fbffdb845611c8373e3691e56d68ceec6d10c22e` |
| 7 | `theorem` | [card](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/card--0b65fc9bd5195f797a63d7cc.md) | 90 | `result-track:0b65fc9bd5195f797a63d7cc84b74273edf45b088077a5d4de52da3caa411b73` |
| 8 | `theorem` | [succ_n_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/succ-n-eq--7976278276b06d68579319db.md) | 97 | `result-track:7976278276b06d68579319db19f30c61fd58dea1a94513f3d93ceb45896b6a58` |
| 9 | `def` | [adjacent](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/adjacent--bd61306e3cd658842b7325ed.md) | 109 | `declaration-track:bd61306e3cd658842b7325edd73adbb0fce049af48a79c76e4557a9dc0e7e7c0` |
| 10 | `theorem` | [not_adjacent_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/not-adjacent-zero--5a994b49309895dd437f9c3c.md) | 112 | `result-track:5a994b49309895dd437f9c3cc06047689af5e32d4c8a59c1fef622236c6c0dd0` |
| 11 | `theorem` | [adj_iff_proj_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/adj-iff-proj-eq--ed4c5409106556cfacb778cd.md) | 116 | `result-track:ed4c5409106556cfacb778cdc64f2272123ebcd6fb716a615fdc3143d33c5cb5` |
| 12 | `theorem` | [adj_iff_proj_adj](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/adj-iff-proj-adj--158c0fbd45f089357ed291b7.md) | 131 | `result-track:158c0fbd45f089357ed291b71e8821a876fac6bde6e10f543eddace5e3783d01` |
| 13 | `theorem` | [adjacent.symm](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/adjacent-symm--bfce139a1427e0dd154ed09c.md) | 154 | `result-track:bfce139a1427e0dd154ed09c777ff36cb2ab80eea3b8baea4e9f6a593631afa2` |
| 14 | `def` | [V](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/v--f03eb5f583fa7f3e86ce2697.md) | 163 | `declaration-track:f03eb5f583fa7f3e86ce26979f0f911a7bd7e54e1c15520569335c419d1510a7` |
| 15 | `theorem` | [V_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/v-zero--cb5f2d09ada32fcbe365df61.md) | 168 | `result-track:cb5f2d09ada32fcbe365df619e7315be51eb3f802e840ba2711f215fdbe5de73` |
| 16 | `theorem` | [V_succ](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/v-succ--64ef153f5c3f692c1115c525.md) | 171 | `result-track:64ef153f5c3f692c1115c525a4adbe34411c8408b45fc8aac53be2541017d7db` |
| 17 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/ext--849d93f7a5affda75db71761.md) | 176 | `result-track:849d93f7a5affda75db71761bd7dc7b22dd4f4677949e7d25b3815238f618bf6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--9b1b54f09a9296ff0ea2ebd2.md) | 183 | `declaration-track:9b1b54f09a9296ff0ea2ebd2b046610f66fc0d8ab5f7141a7980647b86fb3521` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--b93cb234d6d51d256693e3c6.md) | 185 | `declaration-track:b93cb234d6d51d256693e3c69cd37d8dfa896cd2a3928ea8dc2817c935e200df` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--b5be53518babb33cdca93dbb.md) | 187 | `declaration-track:b5be53518babb33cdca93dbbeafa3d9e05182d7419972b0873960c0e6c5d9496` |
| 21 | `def` | [e](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/e--c72a1b9bb2aa72e5b8fc5b12.md) | 192 | `declaration-track:c72a1b9bb2aa72e5b8fc5b12433fd683801a773b90e6ad47f2e5c89d7b0dc1dd` |
| 22 | `theorem` | [e_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/e-zero-apply--c23eccc268face3f3de4d9e4.md) | 197 | `result-track:c23eccc268face3f3de4d9e4d1e61ba14169ab115020957fcf1cfc84bcd8403e` |
| 23 | `def` | [ε](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/anonymous--17537af87e0329aa4157de32.md) | 201 | `declaration-track:17537af87e0329aa4157de328d0c355e935cd55100635b5176ef47963d70ce80` |
| 24 | `theorem` | [duality](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/duality--3843259ffa13c4979f3a96bc.md) | 209 | `result-track:3843259ffa13c4979f3a96bcc0a1668397b2d53637a760a3efbe278611a7bef6` |
| 25 | `theorem` | [epsilon_total](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/epsilon-total--dd765b5b781e7544343ed57f.md) | 220 | `result-track:dd765b5b781e7544343ed57f5ddca3945e68c67d35b53f7c609a3582f8d00ca2` |
| 26 | `theorem` | [dualBases_e_ε](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/dualbases-e--1133d168fb356de6d1258997.md) | 239 | `result-track:1133d168fb356de6d12589974c6e8fec6b60889e1a16c50d5bb4d64e3df31d04` |
| 27 | `theorem` | [dim_V](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/dim-v--a406e7d0704147057d770df7.md) | 249 | `result-track:a406e7d0704147057d770df790bbb45476174ae413c4da9d9d7a9fe5826e18b8` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/instance--a17ecf2b1a96b0ca8e625287.md) | 256 | `declaration-track:a17ecf2b1a96b0ca8e625287c29254504d24430ab3fff6762469a46ea48b2796` |
| 29 | `theorem` | [finrank_V](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/finrank-v--2ff57ca683c910aef184672e.md) | 259 | `result-track:2ff57ca683c910aef184672e16e8eb8b91e9c56547d71a38e5e22236ad86d5c8` |
| 30 | `def` | [f](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/f--6faa092da504168a3995640b.md) | 268 | `declaration-track:6faa092da504168a3995640bfd423ace60e93d7fd921daad9590987cd52c1b53` |
| 31 | `theorem` | [f_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/f-zero--ff4af833e9e3fcf22eebffdb.md) | 279 | `result-track:ff4af833e9e3fcf22eebffdb2896f5160b741d5394baf6bf6024c7fc8e87168e` |
| 32 | `theorem` | [f_succ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/f-succ-apply--ac0e49ad2ab29f2569a731ed.md) | 282 | `result-track:ac0e49ad2ab29f2569a731ed0059e705984edb0e5b790963a622cec634d6e3b5` |
| 33 | `theorem` | [f_squared](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/f-squared--2d7134a8f2704fd5ea1028b0.md) | 293 | `result-track:2d7134a8f2704fd5ea1028b0e0bf816e625449dc558d76460c018204ccadd785` |
| 34 | `theorem` | [f_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/f-matrix--364ff27eb4ccb1ff514be932.md) | 303 | `result-track:364ff27eb4ccb1ff514be9322982582dbbc641c74dc60c61d00d2030b7705a2b` |
| 35 | `def` | [g](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/g--d9c72a594b07a495666c622a.md) | 319 | `declaration-track:d9c72a594b07a495666c622a78f0d63a6625a9f01e8702ea9ac41d61d56f9191` |
| 36 | `theorem` | [g_apply](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/g-apply--18507f9164e470812cfd04be.md) | 330 | `result-track:18507f9164e470812cfd04be7cec076e3ad3e1119b5f4d012d43bbf71c7af357` |
| 37 | `theorem` | [g_injective](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/g-injective--b6316e00de122f5267f44256.md) | 333 | `result-track:b6316e00de122f5267f4425692b4ebe0cf0c7f709f1722300d3a61f913158c3a` |
| 38 | `theorem` | [f_image_g](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/f-image-g--f00020640ab6a988b6c484e9.md) | 339 | `result-track:f00020640ab6a988b6c484e985d1b02daa7cd1dd4b620c357756e65e1efadadb` |
| 39 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/exists-eigenvalue--9c7847025ee7238540d5d3cc.md) | 382 | `result-track:9c7847025ee7238540d5d3ccc01e2f6db8e2dc7a172fd9aa8cf61413821244d1` |
| 40 | `theorem` | [huang_degree_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variantac2e065f48e0af823dddff6935e84b58a5e2a3b20100966530f029e68c7f840d.lean/declarations/huang-degree-theorem--c68da6c635dbaae3ffa38490.md) | 415 | `result-track:c68da6c635dbaae3ffa384907eb1fc66a2890d71a7868e6573f9ec8ff615fa03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
