# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbb8047abef06652790e22d9f6c413564ee70621",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbb8047abef06652790e22d9f6c413564ee70621`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.RealVectorSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSubspace.isClosed_direction_iff](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/affinesubspace-isclosed-direction-iff--8af81d46f17403a47baaede3.md) | 43 | `result-track:8af81d46f17403a47baaede3c0a3820e1072a33a774e26afd75d5d32c88d9cde` |
| 2 | `theorem` | [dist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-center-homothety--0efe95d27007125d5cf1fb2c.md) | 51 | `result-track:0efe95d27007125d5cf1fb2c772274da227f627e600c5c7cc52e45a44d655e87` |
| 3 | `theorem` | [nndist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-center-homothety--ba8ec598c9f349df903bf372.md) | 56 | `result-track:ba8ec598c9f349df903bf37289a10151b56a9179de7e47b3f966a453d36ea268` |
| 4 | `theorem` | [dist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-homothety-center--54a95edccd59054e3ddbd196.md) | 61 | `result-track:54a95edccd59054e3ddbd196ced1ebf8d6c4fa809fd9e1cc29b03613ec4e9e8b` |
| 5 | `theorem` | [nndist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-homothety-center--7ce26e1f172cf77bd2234de6.md) | 65 | `result-track:7ce26e1f172cf77bd2234de6b770f254eca3f2e0a77aecde1351edf7bb0088fd` |
| 6 | `theorem` | [dist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-linemap-linemap--81cfeadfc4d33204088b634b.md) | 70 | `result-track:81cfeadfc4d33204088b634b302fa6c51664338a7c555ddc83946d6ffe0681b7` |
| 7 | `theorem` | [nndist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-linemap-linemap--efbf9a47decca7699c302626.md) | 77 | `result-track:efbf9a47decca7699c3026267a68978d7252da956e97c5662985aed677778c67` |
| 8 | `theorem` | [lipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/lipschitzwith-linemap--3d7690a40e83134a2ad28094.md) | 81 | `result-track:3d7690a40e83134a2ad280947424ccddd3f5b5d577019925f27e93c14cfb11de` |
| 9 | `theorem` | [dist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-linemap-left--9e1208576f2ceca6096cdca9.md) | 86 | `result-track:9e1208576f2ceca6096cdca997bb311c0460bb9f96ed090c74b2cfe4af0316b0` |
| 10 | `theorem` | [nndist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-linemap-left--2a5aa61fce48b48b8c5f39b2.md) | 90 | `result-track:2a5aa61fce48b48b8c5f39b2559029fdff069a365498dfdf5044a76eab7298b1` |
| 11 | `theorem` | [dist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-left-linemap--02b39f39e7b4c196e8bbb4cb.md) | 95 | `result-track:02b39f39e7b4c196e8bbb4cba0bc5e597bafe0be0026b5a6ceff5917b5fc029d` |
| 12 | `theorem` | [nndist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-left-linemap--abcebb1b00d182caef459c98.md) | 99 | `result-track:abcebb1b00d182caef459c98a46de56e11dd3ae297a9df92a9345754e20d6b72` |
| 13 | `theorem` | [dist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-linemap-right--ef059988887aa0556066a468.md) | 104 | `result-track:ef059988887aa0556066a4689421f37d43a4b34e8b9e0dc10a8506361c7c39eb` |
| 14 | `theorem` | [nndist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-linemap-right--08206c63011ee66118356e99.md) | 109 | `result-track:08206c63011ee66118356e99d130d1d7036a8cf33cd98ee7e45a19d1d6b7d97f` |
| 15 | `theorem` | [dist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-right-linemap--1237a7f77d7fa45fdfc696b4.md) | 114 | `result-track:1237a7f77d7fa45fdfc696b4a8db797cc6b58534239f38c340f96ae2b320a594` |
| 16 | `theorem` | [nndist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-right-linemap--8e624f506985399930141009.md) | 118 | `result-track:8e624f506985399930141009ea1fc5434ec161cd73153edfe5a9715950037165` |
| 17 | `theorem` | [dist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-homothety-self--b7b5c1f22ae4068be4326058.md) | 123 | `result-track:b7b5c1f22ae4068be432605809f32f7d5ed7deb2522a70a554ed7eb4ba823064` |
| 18 | `theorem` | [nndist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-homothety-self--360254d03f54dbad71bb8ff8.md) | 128 | `result-track:360254d03f54dbad71bb8ff8bbba8426ab0debcb3baa6dcc20262acbb8b7e242` |
| 19 | `theorem` | [dist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-self-homothety--47230e77cda5889f1e646c9e.md) | 133 | `result-track:47230e77cda5889f1e646c9e44187ff0e3a993f1f45cb71256db1c163c542d81` |
| 20 | `theorem` | [nndist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-self-homothety--2bf8e671fdd74001c1526bc9.md) | 137 | `result-track:2bf8e671fdd74001c1526bc99a7338230458fe8b07e5c223a556f441ece9cc67` |
| 21 | `theorem` | [dist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-left-midpoint--61818b56d64aa3452454859c.md) | 146 | `result-track:61818b56d64aa3452454859c5377aab229699a0c569b6b4e25e2de1f025af60c` |
| 22 | `theorem` | [nndist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-left-midpoint--a759392de1813a71d4d035e3.md) | 150 | `result-track:a759392de1813a71d4d035e365ba246d00420e6c76be9c6b961687df40f98579` |
| 23 | `theorem` | [dist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-midpoint-left--dbab5683b1028a33091fbd0d.md) | 155 | `result-track:dbab5683b1028a33091fbd0d8123e496d50152a503afdb991faf2540c2d3b7a8` |
| 24 | `theorem` | [nndist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-midpoint-left--c2b69ef3c749a5f61b37df3a.md) | 159 | `result-track:c2b69ef3c749a5f61b37df3a7e216e43c8069cee39a3f08be17931832b843307` |
| 25 | `theorem` | [dist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-midpoint-right--fc8da163c1be1e2b09578d53.md) | 164 | `result-track:fc8da163c1be1e2b09578d532642ffa33c2a18ff28214e7ec3386f25f11f726d` |
| 26 | `theorem` | [nndist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-midpoint-right--d0076224fcc245bdee625e6d.md) | 169 | `result-track:d0076224fcc245bdee625e6d35447378b2af74521ad626edbaa876a06020915b` |
| 27 | `theorem` | [dist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-right-midpoint--cc2b75ebbfe4c07a5c29463d.md) | 174 | `result-track:cc2b75ebbfe4c07a5c29463d4fb55bdf9a1e707b29b7022f59fddf73e65f91ae` |
| 28 | `theorem` | [nndist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-right-midpoint--e407ccfa7bc6c66b4d985071.md) | 179 | `result-track:e407ccfa7bc6c66b4d98507182e1b4f9f0a5bc9c9679ec5a4b7b093b8bbb7b3c` |
| 29 | `theorem` | [dist_left_midpoint_eq_dist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-left-midpoint-eq-dist-right-midpoint--c1a89ab0ad8ccf59036f072c.md) | 184 | `result-track:c1a89ab0ad8ccf59036f072ccb34ca800815c8c94fa1378906ef7c3fbedb7883` |
| 30 | `theorem` | [dist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-midpoint-midpoint-le--12fc9b08694bac09d4820aa5.md) | 188 | `result-track:12fc9b08694bac09d4820aa53e696a19f1ad30205bf9cc93531747bdf966dbc4` |
| 31 | `theorem` | [nndist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-midpoint-midpoint-le--0752792ec0658a830a8e9c94.md) | 194 | `result-track:0752792ec0658a830a8e9c9492aa9df3df5bf648b9ae7b1f7fff01319486ecfa` |
| 32 | `theorem` | [dist_pointReflection_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-pointreflection-left--b8fda17771edbcd0466a255a.md) | 200 | `result-track:b8fda17771edbcd0466a255a8dd83fae9a7713e7050a2f99375ef6c3e4deb83a` |
| 33 | `theorem` | [dist_left_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-left-pointreflection--20ef40919fa0bc71160ca512.md) | 204 | `result-track:20ef40919fa0bc71160ca5128c12a882bef7c38611231d0063646e50b9071f52` |
| 34 | `theorem` | [dist_pointReflection_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-pointreflection-right--ef3fd9f899a0522beffdc8a2.md) | 209 | `result-track:ef3fd9f899a0522beffdc8a2c8ddc7041d46fb960275d020382dfc2b203a6074` |
| 35 | `theorem` | [dist_right_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-right-pointreflection--8a781b7dfa4497e8d8014df1.md) | 215 | `result-track:8a781b7dfa4497e8d8014df1b1c5f9f92162747470308ff70be68d75d135a480` |
| 36 | `theorem` | [antilipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/antilipschitzwith-linemap--d2707d22bc848ab27cb30f45.md) | 219 | `result-track:d2707d22bc848ab27cb30f45260a4d82e9106e682659b314c2dfc010ddedb457` |
| 37 | `theorem` | [eventually_homothety_mem_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/eventually-homothety-mem-of-mem-interior--e1a3f36184fc3f912077711f.md) | 227 | `result-track:e1a3f36184fc3f912077711f0c8aa74f903537d79fdcdbdb5dd12cdbd95e8275` |
| 38 | `theorem` | [eventually_homothety_image_subset_of_finite_subset_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/eventually-homothety-image-subset-of-finite-subset-interior--4c8f80354539bfb180cda4f3.md) | 240 | `result-track:4c8f80354539bfb180cda4f35e1710ee7165c889a924a81f81dd6a3da5f76e9b` |
| 39 | `theorem` | [dist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dist-midpoint-midpoint-le--847e3d3b1142862524a373b8.md) | 252 | `result-track:847e3d3b1142862524a373b8e30aef5deaec0e9a7c5a7404df42a3f4a10391d0` |
| 40 | `theorem` | [nndist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/nndist-midpoint-midpoint-le--b7506cb50a70662eab07c3cd.md) | 256 | `result-track:b7506cb50a70662eab07c3cdee1232d3697d1048498862dcfd77fb40af5f13c1` |
| 41 | `def` | [AffineMap.ofMapMidpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/affinemap-ofmapmidpoint--c03802d0bef4871eebbede3e.md) | 262 | `declaration-track:c03802d0bef4871eebbede3eecd1c766c8cb2de3363707826081a27232cd752d` |
| 42 | `def` | [DilationEquiv.smulTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dilationequiv-smultorsor--607201abe3a610512611f6a9.md) | 284 | `declaration-track:607201abe3a610512611f6a995480ef37658d2bf917feb9bbc6246344f12e8ad` |
| 43 | `lemma` | [DilationEquiv.smulTorsor_ratio](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dilationequiv-smultorsor-ratio--d5f7039a04e45879acd24c78.md) | 294 | `result-track:d5f7039a04e45879acd24c78e666f2349460f3263c18d8d3d60ab63584594e75` |
| 44 | `lemma` | [DilationEquiv.smulTorsor_preimage_ball](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant8de104bc695073287ee64336d10740b0e38afc9d390ca81823ef137e7bd20be3.lean/declarations/dilationequiv-smultorsor-preimage-ball--c07d1a7d96fc267a9e7c3c5c.md) | 299 | `result-track:c07d1a7d96fc267a9e7c3c5c3723981ac80870ee8aed00fedd4dc2ad7248cc2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
