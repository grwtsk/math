# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a368efac86f01ee4d42fd39d0afdbb1a4202099",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a368efac86f01ee4d42fd39d0afdbb1a4202099`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.MidpointZero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.RealVectorSpace` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AffineSubspace.isClosed_direction_iff](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/affinesubspace-isclosed-direction-iff--1aa8c0ca7fbd56c9f045c5d7.md) | 44 | `result-track:1aa8c0ca7fbd56c9f045c5d74e006588862843658efb8db51a50fdd65a937239` |
| 2 | `theorem` | [dist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-center-homothety--3a3f27af5d2fe256577268ba.md) | 53 | `result-track:3a3f27af5d2fe256577268bacb4a0bf6d1ebf4f242b39a5a6705f9664a425bf1` |
| 3 | `theorem` | [nndist_center_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-center-homothety--e7c0228c1d57c64f10a0bfc9.md) | 61 | `result-track:e7c0228c1d57c64f10a0bfc999e123613402caca8058b4fd6b429a1f160cfac4` |
| 4 | `theorem` | [dist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-homothety-center--9fc358530d8dfb515e8b31d9.md) | 67 | `result-track:9fc358530d8dfb515e8b31d96c0b5f66b9f72ab1f782432765b36acba304cf79` |
| 5 | `theorem` | [nndist_homothety_center](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-homothety-center--ee114ddb2a0e0a20359ffa7b.md) | 72 | `result-track:ee114ddb2a0e0a20359ffa7b478129786748b9f375de86e233392ebd41e89c66` |
| 6 | `theorem` | [dist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-linemap-linemap--db6392c5e9236778de0cd443.md) | 78 | `result-track:db6392c5e9236778de0cd443adef50734bc74fe86d5f58e90f2ad9bd52968cab` |
| 7 | `theorem` | [nndist_lineMap_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-linemap-linemap--3d3b88835d07c52d75a2be87.md) | 88 | `result-track:3d3b88835d07c52d75a2be878fcbed6e4d140f535741f369760fb39a48d1bf1e` |
| 8 | `theorem` | [lipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/lipschitzwith-linemap--3a8487d1cf5493cc52143619.md) | 93 | `result-track:3a8487d1cf5493cc52143619526fd4b11b2716c7a1da6f05808c616e33ff4463` |
| 9 | `theorem` | [dist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-linemap-left--d8579c81a9817d860dbf2662.md) | 99 | `result-track:d8579c81a9817d860dbf266261b6597b08009ce77bff464a94f505ee3e352314` |
| 10 | `theorem` | [nndist_lineMap_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-linemap-left--ce3a4266a97b7af492da38a3.md) | 106 | `result-track:ce3a4266a97b7af492da38a33c2ed99eb92ee151603e4587ad60977eb8d98ef5` |
| 11 | `theorem` | [dist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-left-linemap--bf73dadde2b73c86d1a90b4f.md) | 112 | `result-track:bf73dadde2b73c86d1a90b4fffd538c7880b427f5725d6758320cdbad1dbf31c` |
| 12 | `theorem` | [nndist_left_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-left-linemap--8dc4dc51a7a6d942dd8af3bf.md) | 117 | `result-track:8dc4dc51a7a6d942dd8af3bf6323e155aee8ccef1f42a599e9add74bf628daf5` |
| 13 | `theorem` | [dist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-linemap-right--c05816027ead0146b92bb14b.md) | 123 | `result-track:c05816027ead0146b92bb14b91ebe117102484e68acd5192eab19e0a25217681` |
| 14 | `theorem` | [nndist_lineMap_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-linemap-right--658b91d5d2cb41b2e79032ac.md) | 131 | `result-track:658b91d5d2cb41b2e79032ac2e5be1830b7366010769bc86a4cf9bd7ba5c6471` |
| 15 | `theorem` | [dist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-right-linemap--7330ef2b6454366400326964.md) | 137 | `result-track:7330ef2b64543664003269648b0f4a0395d121d0892695e0032346ed764fc286` |
| 16 | `theorem` | [nndist_right_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-right-linemap--2602e758c445fc0c5f95abd6.md) | 142 | `result-track:2602e758c445fc0c5f95abd6c32cfae8fb65491042b6b76d737b20c9f1c6c4c5` |
| 17 | `theorem` | [dist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-homothety-self--10effcd55480d912220fa589.md) | 148 | `result-track:10effcd55480d912220fa58964ef8fdd0fa17ee5c6ae2351698d44fae31110c8` |
| 18 | `theorem` | [nndist_homothety_self](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-homothety-self--acd8c7f5d39c791dbc4637c7.md) | 154 | `result-track:acd8c7f5d39c791dbc4637c70058f994171d59866063af888466cdd94537dbe6` |
| 19 | `theorem` | [dist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-self-homothety--44cfc67e92f19c80a3f57e4b.md) | 160 | `result-track:44cfc67e92f19c80a3f57e4bccbd7292a5cb530b5713521075a9f6b584b2668e` |
| 20 | `theorem` | [nndist_self_homothety](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-self-homothety--0ec07fb804a1ef1bf05ffafc.md) | 165 | `result-track:0ec07fb804a1ef1bf05ffafc2d46b515fe239958a79e2a2731bd346b895cf963` |
| 21 | `theorem` | [dist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-left-midpoint--dbaac796f4de4b4d1950c2b6.md) | 175 | `result-track:dbaac796f4de4b4d1950c2b64e22895b40ed9c89f7e451ca2985e33ad12ca594` |
| 22 | `theorem` | [nndist_left_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-left-midpoint--23b3971b8618e06c552bd21f.md) | 180 | `result-track:23b3971b8618e06c552bd21f6ad4f4284dd290c0c5aa1759d14b05eba4626575` |
| 23 | `theorem` | [dist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-midpoint-left--821bc063f7e6301ee450e2ce.md) | 186 | `result-track:821bc063f7e6301ee450e2ce3cd6a5424d29b6c65c9a7cbf0c4a4c8192fa0241` |
| 24 | `theorem` | [nndist_midpoint_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-midpoint-left--13c788e7b12254e2e3bf0fbc.md) | 191 | `result-track:13c788e7b12254e2e3bf0fbc95ca308c815ca7eb0faab0f617ae90954abbaab6` |
| 25 | `theorem` | [dist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-midpoint-right--1032fab599b960bb2cd87124.md) | 197 | `result-track:1032fab599b960bb2cd87124548e9c5739e4c78bc270052f50e277d366fb1ffb` |
| 26 | `theorem` | [nndist_midpoint_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-midpoint-right--51afb7fab0e455ff440ce273.md) | 203 | `result-track:51afb7fab0e455ff440ce273b1e68b7b80d30c409050aa87a8cd4d24669358f8` |
| 27 | `theorem` | [dist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-right-midpoint--25d32d2ce74da5c36041f44e.md) | 209 | `result-track:25d32d2ce74da5c36041f44eb1fb2925d5a3014c565b5ff603e0df5ee2582f53` |
| 28 | `theorem` | [nndist_right_midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-right-midpoint--99fcceb173fa03e0d036ae2b.md) | 215 | `result-track:99fcceb173fa03e0d036ae2ba71d25269bab8ceebd520f18f4d319a2aeaf1efd` |
| 29 | `theorem` | [dist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-midpoint-midpoint-le--1f939917e95f2d649051f75c.md) | 220 | `result-track:1f939917e95f2d649051f75c08890b520e6dc76e4cb4296a6c8b5b346ebb33cd` |
| 30 | `theorem` | [nndist_midpoint_midpoint_le'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-midpoint-midpoint-le--97ed883b85ff73b7806590c0.md) | 228 | `result-track:97ed883b85ff73b7806590c09f9b06870f3ef8f20cb20888530eaf670cbbe661` |
| 31 | `theorem` | [dist_pointReflection_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-pointreflection-left--9b2bba2bd8663bb44dc5acef.md) | 235 | `result-track:9b2bba2bd8663bb44dc5acefb3a53cf9750732642816265f0007adc076fffd90` |
| 32 | `theorem` | [dist_left_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-left-pointreflection--975406ac6609659cc4a0b0c7.md) | 239 | `result-track:975406ac6609659cc4a0b0c7827da065c77050293159587f655f3f2ddbcb49b2` |
| 33 | `theorem` | [dist_pointReflection_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-pointreflection-right--26aaf1072ddfbcab5885960e.md) | 243 | `result-track:26aaf1072ddfbcab5885960e4840ad04b44298a4f321db1be19abab901041599` |
| 34 | `theorem` | [dist_right_pointReflection](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-right-pointreflection--e8fc1e6f58f0e75aa3e90cac.md) | 248 | `result-track:e8fc1e6f58f0e75aa3e90cac9bbc0a05ae06defea1b0b3056e85e95aa4c104b2` |
| 35 | `theorem` | [antilipschitzWith_lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/antilipschitzwith-linemap--b80212c4b207ff10b85df71a.md) | 252 | `result-track:b80212c4b207ff10b85df71a0a61946cecbb2897dfbf918f4380e50d2d044c12` |
| 36 | `theorem` | [eventually_homothety_mem_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/eventually-homothety-mem-of-mem-interior--0d1e3b7d31fb88657de9e907.md) | 261 | `result-track:0d1e3b7d31fb88657de9e9074686981da36db6b2d03b6df77b9eac95ca500654` |
| 37 | `theorem` | [eventually_homothety_image_subset_of_finite_subset_interior](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/eventually-homothety-image-subset-of-finite-subset-interior--42fdf45f189d54574b812c86.md) | 275 | `result-track:42fdf45f189d54574b812c866ce62def78dc1f75f8db147f9a1254f5c04d9400` |
| 38 | `theorem` | [dist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/dist-midpoint-midpoint-le--7472b2513284fe4b133b1625.md) | 288 | `result-track:7472b2513284fe4b133b16253f502a5adce450d749f44961348ff24cfad470a6` |
| 39 | `theorem` | [nndist_midpoint_midpoint_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/nndist-midpoint-midpoint-le--1c311b6a0512dc1807161486.md) | 296 | `result-track:1c311b6a0512dc1807161486c14d4eae023dbdcbcf5bfbe2735a2e78d078a8a2` |
| 40 | `def` | [AffineMap.ofMapMidpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantdcde352d8c8aa134bd7d634fad7cb419c4085a62faa7872f1bef2188f580311a.lean/declarations/affinemap-ofmapmidpoint--713efc955605bbe1713c9e11.md) | 303 | `declaration-track:713efc955605bbe1713c9e1122059e13583517b22d434bbaef65f6106f36fc6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
