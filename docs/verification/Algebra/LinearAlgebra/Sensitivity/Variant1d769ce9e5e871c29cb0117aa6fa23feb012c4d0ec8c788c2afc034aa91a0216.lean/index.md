# Verification target: GRWTSK.Algebra.LinearAlgebra.Sensitivity.Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d672ca99eb3264b3c33e46ab82db687700e04f2f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d672ca99eb3264b3c33e46ab82db687700e04f2f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Q](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/q--e030970bde06d36d84a173fc.md) | 64 | `declaration-track:e030970bde06d36d84a173fc1aaed9e9b0feb803a94daaf74e6ccd3c5f1d27e2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--9b30411b9f9f3dce107095b0.md) | 68 | `declaration-track:9b30411b9f9f3dce107095b0f30ee8e29cefd46d12385c1b15c4d453f1f7252a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--dc3909f13acb12eff591c76d.md) | 70 | `declaration-track:dc3909f13acb12eff591c76da00e78f063c148b0a76bf807634f51f266a3ef8f` |
| 4 | `def` | [π](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/anonymous--7172c3b92880e8f82389cb45.md) | 74 | `declaration-track:7172c3b92880e8f82389cb45a5236eb2146cf287d3db8cbbb12d3a9a0e564e62` |
| 5 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/ext--bdb49c24e66fff2438a299d5.md) | 80 | `result-track:bdb49c24e66fff2438a299d5216086b15e219372a250023393b562f83155ffd4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--c3306d06a893fc9bba10cbe7.md) | 87 | `declaration-track:c3306d06a893fc9bba10cbe7f3b174f4ba4a23b471f17714d9119a572fe63d87` |
| 7 | `theorem` | [card](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/card--d1c91ab16da8e9c288420593.md) | 91 | `result-track:d1c91ab16da8e9c288420593d9cded0a232a593bdb8c244fd4644ed57f0fe716` |
| 8 | `theorem` | [succ_n_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/succ-n-eq--11f172181c941434c82893fc.md) | 99 | `result-track:11f172181c941434c82893fc20c912a65f194b7c3de46d6a61c9fee1634cbc67` |
| 9 | `def` | [adjacent](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/adjacent--26b92d90b6ae0e0d33b7acb5.md) | 112 | `declaration-track:26b92d90b6ae0e0d33b7acb595a08f2c47d8fc516bc7737134c01651c7cc7998` |
| 10 | `theorem` | [not_adjacent_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/not-adjacent-zero--8d887b287fa0966de8981629.md) | 116 | `result-track:8d887b287fa0966de8981629b545f1c680003acdbb4834e70a5750516a698b3d` |
| 11 | `theorem` | [adj_iff_proj_eq](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/adj-iff-proj-eq--3a38911e96ed48e2513561bb.md) | 121 | `result-track:3a38911e96ed48e2513561bba40d35408db94513c20230f003c4a9576e9c3165` |
| 12 | `theorem` | [adj_iff_proj_adj](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/adj-iff-proj-adj--e852f8a271db036976a22baa.md) | 137 | `result-track:e852f8a271db036976a22baa36e999fa37234ceb43274d11ee9fe6fdf5f5dd2b` |
| 13 | `theorem` | [adjacent.symm](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/adjacent-symm--904cc1217050f1a0e2f3293a.md) | 161 | `result-track:904cc1217050f1a0e2f3293a3755833ac34670a01d7041499af2a47d3b158e5a` |
| 14 | `def` | [V](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/v--7a4cb71f7ad1ae7149815083.md) | 171 | `declaration-track:7a4cb71f7ad1ae7149815083141467a57a328e4c74b607d78cb205cb3ad55358` |
| 15 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/ext--93b7421efee289de2c877775.md) | 179 | `result-track:93b7421efee289de2c877775e69c885c5f110996a9d01d4990b893f4edd0daeb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--381d15d0644d16eba31442f8.md) | 186 | `declaration-track:381d15d0644d16eba31442f852081f69bf1e6a59c7896e3f3eb49d31bde485df` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--3621d02738971e7e83c308dd.md) | 188 | `declaration-track:3621d02738971e7e83c308dd1f5933a46927d8d24061f71035c7b12e3a87501c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--38887f8e1473619d0b47c0af.md) | 190 | `declaration-track:38887f8e1473619d0b47c0afd929c0f244b3d04ed896f3d0d1c6ac75bcc27125` |
| 19 | `def` | [e](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/e--e8baf3247a0dbdbee3f58d28.md) | 195 | `declaration-track:e8baf3247a0dbdbee3f58d282e6729c317fd4f71edfe1c7b3a7170ee9be5b770` |
| 20 | `theorem` | [e_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/e-zero-apply--d72236dcced016aaca7b935d.md) | 201 | `result-track:d72236dcced016aaca7b935db7d45d451120d7cfd38a05b2d5641d3fb09645cc` |
| 21 | `def` | [ε](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/anonymous--0af0dd97683525751bde589a.md) | 206 | `declaration-track:0af0dd97683525751bde589af839998214679dfcf87370deb3eb4db96bf537d2` |
| 22 | `theorem` | [duality](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/duality--0e0312c3cec6579402cf3ae1.md) | 214 | `result-track:0e0312c3cec6579402cf3ae1331fa677d15e3dd9f1e0beeae12c60e76ab2ca86` |
| 23 | `theorem` | [epsilon_total](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/epsilon-total--9c7b4bd50e0bbf3aff7ce418.md) | 229 | `result-track:9c7b4bd50e0bbf3aff7ce41891771a0f8991e88cc86987e3dbc8bd5fdfd166b3` |
| 24 | `theorem` | [dualBases_e_ε](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/dualbases-e--b53486b719a72b9a7c81c576.md) | 248 | `result-track:b53486b719a72b9a7c81c5760dd5f064041592a8b9b0ce9204ef34db7a5b1695` |
| 25 | `theorem` | [dim_V](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/dim-v--589339ee79302755a6dd44cf.md) | 257 | `result-track:589339ee79302755a6dd44cf89c1e89a3cfb0229dcec956165e13adf2cf9077c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/instance--1f073146bfe0852643178b19.md) | 263 | `declaration-track:1f073146bfe0852643178b197b40f5f8a0cad13e6774d44afde3ecd0a4073153` |
| 27 | `theorem` | [finrank_V](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/finrank-v--92a10a911a4ae6f2eff0796e.md) | 266 | `result-track:92a10a911a4ae6f2eff0796e07e8a031aa757fc9cd7cc86156d264c80710e585` |
| 28 | `def` | [f](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/f--39e46487a7d0cb603e7a4cf0.md) | 276 | `declaration-track:39e46487a7d0cb603e7a4cf0a9813e2589091c73f3f1f69d18cb0a2b0c929628` |
| 29 | `theorem` | [f_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/f-zero--9761dc383c4ed801f76fe7cc.md) | 288 | `result-track:9761dc383c4ed801f76fe7ccd06f90e3124e2b6e0071b8fbd11fd9c8d9316c28` |
| 30 | `theorem` | [f_succ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/f-succ-apply--535b390446e34111f8e5fe7b.md) | 292 | `result-track:535b390446e34111f8e5fe7b9283a28db3bf9fc575372f0a657086979dc1d122` |
| 31 | `theorem` | [f_squared](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/f-squared--e712eadd2663ccbe2ac28804.md) | 304 | `result-track:e712eadd2663ccbe2ac288043150719e2d5532e8f7d53ebf9cc84d811f3f2688` |
| 32 | `theorem` | [f_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/f-matrix--54a42200619a7d08132c6624.md) | 314 | `result-track:54a42200619a7d08132c6624f23bd20adcd84c822834f84a422794bc4ffb2ca2` |
| 33 | `def` | [g](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/g--13f1a38003dfdd755dd7c817.md) | 330 | `declaration-track:13f1a38003dfdd755dd7c81771000b0b1e1a6c3ce45a9f98edbf020adf408f9b` |
| 34 | `theorem` | [g_apply](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/g-apply--8d626ed5f5098113ae5b27aa.md) | 342 | `result-track:8d626ed5f5098113ae5b27aaf4b33af13df4438cd6e3b4eca771676d1bc212c3` |
| 35 | `theorem` | [g_injective](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/g-injective--cc831c1210f316b123a7417d.md) | 346 | `result-track:cc831c1210f316b123a7417d5d116ff92caf54553879c704535be9920feae9d9` |
| 36 | `theorem` | [f_image_g](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/f-image-g--c5a371f67406ebb06d237b69.md) | 353 | `result-track:c5a371f67406ebb06d237b699a52cad5b4d6f784dd0187b3b4a72235d2cca158` |
| 37 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/exists-eigenvalue--8b4aef9f708e42cba6cd3301.md) | 397 | `result-track:8b4aef9f708e42cba6cd3301b6fed525faf1551549240111f9b413cf1f8433aa` |
| 38 | `theorem` | [huang_degree_theorem](../../../../../mathematics/Algebra/LinearAlgebra/Sensitivity/Variant1d769ce9e5e871c29cb0117aa6fa23feb012c4d0ec8c788c2afc034aa91a0216.lean/declarations/huang-degree-theorem--642d11c3f99c4d93b3916f5f.md) | 430 | `result-track:642d11c3f99c4d93b3916f5f74ba4c89da2b5009267dcf329f35b9bebef92b0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
