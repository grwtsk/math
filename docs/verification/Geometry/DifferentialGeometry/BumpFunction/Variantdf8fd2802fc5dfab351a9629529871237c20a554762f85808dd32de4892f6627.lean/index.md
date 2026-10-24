# Verification target: GRWTSK.Geometry.DifferentialGeometry.BumpFunction.Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efb4fa00c1ccb73d022c3420b6b1ca5b18765820",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efb4fa00c1ccb73d022c3420b6b1ca5b18765820`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff.Atlas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothBumpFunction](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/smoothbumpfunction--570da0ce2bec38f2fee5d9e8.md) | 70 | `declaration-track:570da0ce2bec38f2fee5d9e8375b6d3295d96bcfb021b46200fe28b3e05f3a25` |
| 2 | `def` | [toFun](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/tofun--c9d588dd51ec6bde3a2f0fdf.md) | 83 | `declaration-track:c9d588dd51ec6bde3a2f0fdfb7d6dd974eec0ce4e0303399cc1608acd0dcd40e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/instance--890511cc25c30429a75cb1ff.md) | 86 | `declaration-track:890511cc25c30429a75cb1ff849f1100852ae067153a4c9f736437ec0a2027cd` |
| 4 | `theorem` | [coe_def](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/coe-def--2e65d255ce95765cbed0a6d7.md) | 89 | `result-track:2e65d255ce95765cbed0a6d78fe126729f89810906a6deb28dc1cbd7bafd7a1b` |
| 5 | `theorem` | [rOut_pos](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/rout-pos--e0dc25356e6bd27eb21ca0e8.md) | 96 | `result-track:e0dc25356e6bd27eb21ca0e8fcc5e7a3405c2ef3f72456e0cea9355629800261` |
| 6 | `theorem` | [ball_subset](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/ball-subset--3f4d8e1fa268fe718aaeeb47.md) | 99 | `result-track:3f4d8e1fa268fe718aaeeb472de19c21a4e8cf4af4a0fa2b63f451e53896d034` |
| 7 | `theorem` | [ball_inter_range_eq_ball_inter_target](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/ball-inter-range-eq-ball-inter-target--e2e1e5068b2ab3702da131d2.md) | 102 | `result-track:e2e1e5068b2ab3702da131d2e908f514e2ee19578bb91c3f149b830bd912371e` |
| 8 | `theorem` | [eqOn_source](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/eqon-source--4a17f34224a6b2f857f997ea.md) | 112 | `result-track:4a17f34224a6b2f857f997eac934cd7676049ba9f3c5562c471948faa2bcb3ec` |
| 9 | `theorem` | [eventuallyEq_of_mem_source](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/eventuallyeq-of-mem-source--bfffbeb24799932bf0063c63.md) | 115 | `result-track:bfffbeb24799932bf0063c633fe576625d99d791e30745ec59b4df6ba4de5d09` |
| 10 | `theorem` | [one_of_dist_le](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/one-of-dist-le--7fe18bdb58d90d0c796e9e3c.md) | 119 | `result-track:7fe18bdb58d90d0c796e9e3cc2f2ea1078d89c8e41ebce4b92697b5cdeaff3e3` |
| 11 | `theorem` | [support_eq_inter_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/support-eq-inter-preimage--f73c74a225716c40d59b7152.md) | 123 | `result-track:f73c74a225716c40d59b7152a40cd16d5348ccdfb5930ee54998b8bdbd07cbbd` |
| 12 | `theorem` | [isOpen_support](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/isopen-support--9a8c47bf7912b9b0005f7fc7.md) | 129 | `result-track:9a8c47bf7912b9b0005f7fc76e7e2d1c42fd0a6324c0f316916d5d24b46dfd83` |
| 13 | `theorem` | [support_eq_symm_image](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/support-eq-symm-image--f6ad8f6762f882478fee674a.md) | 133 | `result-track:f6ad8f6762f882478fee674a266c05753d4cf9c995aa6cb7e3ea726e2d77c7bf` |
| 14 | `theorem` | [support_subset_source](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/support-subset-source--500406aca62bcbac73c33d49.md) | 139 | `result-track:500406aca62bcbac73c33d49809f19c904860802a77df968baaffdd9267afd84` |
| 15 | `theorem` | [image_eq_inter_preimage_of_subset_support](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/image-eq-inter-preimage-of-subset-support--4af8233843ae976c75f16cc0.md) | 142 | `result-track:4af8233843ae976c75f16cc07df5839b64374c68b5fcd3c70b420da190db32c9` |
| 16 | `theorem` | [mem_Icc](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/mem-icc--76e25b9ff4b70ee8dcf8d994.md) | 155 | `result-track:76e25b9ff4b70ee8dcf8d994fe5f7816216c8b31bfabad44a8c6a5fbf8e74426` |
| 17 | `theorem` | [nonneg](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/nonneg--b87ac3f0b7a0c02347199ffb.md) | 160 | `result-track:b87ac3f0b7a0c02347199ffbbd5fc3248fb9a5496849c3f1f8e3ecfd6c49d17a` |
| 18 | `theorem` | [le_one](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/le-one--ed52f6f7f6ad736ce5a64c8c.md) | 163 | `result-track:ed52f6f7f6ad736ce5a64c8c229e07beb9745d288175c0bf88fe94008ca57b6b` |
| 19 | `theorem` | [eventuallyEq_one_of_dist_lt](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/eventuallyeq-one-of-dist-lt--71ca17e4376a1ba6c4c559b1.md) | 166 | `result-track:71ca17e4376a1ba6c4c559b1903a2277260d58c9a732a157a3ea56e3683a8227` |
| 20 | `theorem` | [eventuallyEq_one](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/eventuallyeq-one--6bae927a4ff1c4ecbc0fdbff.md) | 172 | `result-track:6bae927a4ff1c4ecbc0fdbffb0508a58571652b67e28949dcb3e8350a5e02bf3` |
| 21 | `theorem` | [eq_one](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/eq-one--6519b1035218bf5c3b19cc02.md) | 176 | `result-track:6519b1035218bf5c3b19cc025631bd3c6f39bfbd187cf4a96b24b4b96b4dabdc` |
| 22 | `theorem` | [support_mem_nhds](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/support-mem-nhds--0faaa6138e459a388a7dae5f.md) | 179 | `result-track:0faaa6138e459a388a7dae5f53578f467e59f090d87d6ed94c221d445cc125e2` |
| 23 | `theorem` | [tsupport_mem_nhds](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/tsupport-mem-nhds--a8f91bbac3f8eb5936d233f7.md) | 182 | `result-track:a8f91bbac3f8eb5936d233f76ff3950e7281607e25455736d9420f57445c87da` |
| 24 | `theorem` | [c_mem_support](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/c-mem-support--6da45213a8b7703345ebeee7.md) | 185 | `result-track:6da45213a8b7703345ebeee7f908fbaa9bd2b0e9316d06a8f104854a24486818` |
| 25 | `theorem` | [nonempty_support](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/nonempty-support--4fb4879db2daf2c044ea93e4.md) | 188 | `result-track:4fb4879db2daf2c044ea93e46fe53ffb6ae05a98d5049d7132f4f12e6966af29` |
| 26 | `theorem` | [isCompact_symm_image_closedBall](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/iscompact-symm-image-closedball--b044a030286ee69de76f641b.md) | 191 | `result-track:b044a030286ee69de76f641b0e5f824c3d2ccfaaadd082db8a7ae78844ec1d33` |
| 27 | `theorem` | [nhdsWithin_range_basis](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/nhdswithin-range-basis--781d5bf1d2a26780a20fac28.md) | 201 | `result-track:781d5bf1d2a26780a20fac280583b4a5243d0a78887d84ae05a6608e68f23b7c` |
| 28 | `theorem` | [isClosed_image_of_isClosed](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/isclosed-image-of-isclosed--f02123cb928ed9f04e4b8ef6.md) | 213 | `result-track:f02123cb928ed9f04e4b8ef67f7a60ce499a2fb867a2571f8e9621266986180a` |
| 29 | `theorem` | [exists_r_pos_lt_subset_ball](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/exists-r-pos-lt-subset-ball--f7b9de3a1e6f115bbad23f9c.md) | 223 | `result-track:f7b9de3a1e6f115bbad23f9cdec52b41ed60fdb7be383746f65780b1c78785ea` |
| 30 | `def` | [updateRIn](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/updaterin--970e56b1aba5b71cbc998b59.md) | 234 | `declaration-track:970e56b1aba5b71cbc998b59bf370d0bb9e994d34bf342cd5fdfeec90bb013b7` |
| 31 | `theorem` | [support_updateRIn](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/support-updaterin--b2e572b844b04d55f29710dd.md) | 238 | `result-track:b2e572b844b04d55f29710dd0c5220f77e01f8df1b8517f75bd032597eb84833` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/instance--308e5a1fea4172eb5080f4a3.md) | 243 | `declaration-track:308e5a1fea4172eb5080f4a3959eef56c1a09d454e2e0154247338b0ccf771ee` |
| 33 | `theorem` | [isClosed_symm_image_closedBall](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/isclosed-symm-image-closedball--8959b4f3979cfd7692540f5d.md) | 247 | `result-track:8959b4f3979cfd7692540f5deb9c48057fd0f4abea9a3a46108a35629223959c` |
| 34 | `theorem` | [tsupport_subset_symm_image_closedBall](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/tsupport-subset-symm-image-closedball--d4dbd78a8fb8e87ea3dafd16.md) | 251 | `result-track:d4dbd78a8fb8e87ea3dafd165a009533b83a60783bc1cc11e4f20b6658a20f2c` |
| 35 | `theorem` | [tsupport_subset_extChartAt_source](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/tsupport-subset-extchartat-source--cf600b5a81aaafc298ed9968.md) | 257 | `result-track:cf600b5a81aaafc298ed996832ad871167281cbdfdf0889c15bbc90b17d0816d` |
| 36 | `theorem` | [tsupport_subset_chartAt_source](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/tsupport-subset-chartat-source--1963de6533eec3a736b14c7d.md) | 264 | `result-track:1963de6533eec3a736b14c7dfe58b928b0b0ff9b15d05db2824c444aa10d8252` |
| 37 | `theorem` | [hasCompactSupport](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/hascompactsupport--d9d128df9d38673d29a8312a.md) | 267 | `result-track:d9d128df9d38673d29a8312ace584160c62944e9bdf49770d4206cb4b6afdf13` |
| 38 | `theorem` | [nhds_basis_tsupport](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/nhds-basis-tsupport--152e0232032ba0c744683810.md) | 275 | `result-track:152e0232032ba0c744683810e0397100e9a5948743fe150ef24bffe813d75c10` |
| 39 | `theorem` | [nhds_basis_support](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/nhds-basis-support--8b32f75dc7bb8e28e6676f45.md) | 289 | `result-track:8b32f75dc7bb8e28e6676f45c4759c4ac8d090bc7c5899471c54c1c5bd57bcdc` |
| 40 | `theorem` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/contmdiff--4b59a5c1317fcadb7974b2c6.md) | 297 | `result-track:4b59a5c1317fcadb7974b2c66db53de77ed89d79b56dfa1ae669ddca8391afc2` |
| 41 | `theorem` | [contMDiffAt](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/contmdiffat--50c0d43a677f912445da047e.md) | 306 | `result-track:50c0d43a677f912445da047ec175bf7df7295622012e164f4203d0c2aa845771` |
| 42 | `theorem` | [continuous](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/continuous--5f54ff6a0b2d77bf3180ec6c.md) | 311 | `result-track:5f54ff6a0b2d77bf3180ec6c8a5fc253edfe8518b80d806bc7c0ac1161a37483` |
| 43 | `theorem` | [contMDiff_smul](../../../../../mathematics/Geometry/DifferentialGeometry/BumpFunction/Variantdf8fd2802fc5dfab351a9629529871237c20a554762f85808dd32de4892f6627.lean/declarations/contmdiff-smul--5eb09d0eb8f0fab26bcd28bf.md) | 316 | `result-track:5eb09d0eb8f0fab26bcd28bfc08660599f94dfda082a5763455f640c53f714ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
