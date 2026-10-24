# Verification target: GRWTSK.Algebra.LinearAlgebra.EGauge.Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "499c8533459a0863b0c0ce81fc70bf185ce56c52",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `499c8533459a0863b0c0ce81fc70bf185ce56c52`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Seminorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [egauge](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge--b6fcb5eb5f55c1efc1830820.md) | 43 | `declaration-track:b6fcb5eb5f55c1efc1830820b5a35deae1fc8c3462e9d7fe4e34353897eb3f2e` |
| 2 | `lemma` | [Set.MapsTo.egauge_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/set-mapsto-egauge-le--8731eaffa58ecf2b8beff192.md) | 48 | `result-track:8731eaffa58ecf2b8beff192c862d1804e4325f4d16c2a8e4dad8e244eaf74a6` |
| 3 | `lemma` | [egauge_anti](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-anti--138ac8468564f6b711be7605.md) | 53 | `result-track:138ac8468564f6b711be760531f55ef22880b4d1de896823826d8f016097b7f4` |
| 4 | `lemma` | [egauge_empty](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-empty--9a159f2f8c8cb8167704d743.md) | 56 | `result-track:9a159f2f8c8cb8167704d74382e31213150165c2359944a7b4864a8a49545ad3` |
| 5 | `lemma` | [egauge_le_of_mem_smul](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-le-of-mem-smul--3d7c637f5c505b5ae121cd60.md) | 60 | `result-track:3d7c637f5c505b5ae121cd6061ca49acada47694afa3e4969c7e0f7c06628ecf` |
| 6 | `lemma` | [le_egauge_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-iff--8e0f828f92bc379a2a037149.md) | 62 | `result-track:8e0f828f92bc379a2a0371495c520ef91688c737300510395628ed1a2d4827a1` |
| 7 | `lemma` | [egauge_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-eq-top--310f2c19ed3b8d968095c25b.md) | 64 | `result-track:310f2c19ed3b8d968095c25b28a0ee489964b7b3f9ac03e4cfd10a8b5c92ace6` |
| 8 | `lemma` | [egauge_lt_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-lt-iff--37e759afb6c5280326caa4b0.md) | 66 | `result-track:37e759afb6c5280326caa4b0c99b49e629a478dbdb146b70f38b988e3981ef2f` |
| 9 | `lemma` | [egauge_union](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-union--056b9bb03e580625156aa4f6.md) | 69 | `result-track:056b9bb03e580625156aa4f6c7e842e0322245ffa69af33fe2e7255fd5768d6d` |
| 10 | `lemma` | [le_egauge_inter](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-inter--19b7133ea9a81d5767f259b1.md) | 73 | `result-track:19b7133ea9a81d5767f259b165037535aaf4ab5cfbad8b7d2fa89a865752552f` |
| 11 | `lemma` | [le_egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-pi--82d7fadb204db39baa658ba8.md) | 77 | `result-track:82d7fadb204db39baa658ba89fb4d63b0f6bfb1bd39f8b8eaec052a22ab53a56` |
| 12 | `lemma` | [le_egauge_prod](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-prod--1f58b4da470d9ad7a1aed9b5.md) | 84 | `result-track:1f58b4da470d9ad7a1aed9b509bced6cced8b2cbbfd562799c0b4f405942635d` |
| 13 | `lemma` | [egauge_zero_left_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-zero-left-eq-top--42dd34836827a183b9cee704.md) | 95 | `result-track:42dd34836827a183b9cee7049493a6670f2498f6b68b0ca2a38c59cc9c75f353` |
| 14 | `lemma` | [egauge_le_of_smul_mem_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-le-of-smul-mem-of-ne--44ba116287127b83192d7d41.md) | 110 | `result-track:44ba116287127b83192d7d4181b2fa01d589c7a04bea3306600e8f7411ef80f5` |
| 15 | `lemma` | [egauge_le_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-le-of-smul-mem--13c845deeb8cea235f61a34f.md) | 117 | `result-track:13c845deeb8cea235f61a34f7bf6a2e4ac0367e3c1f1a12ae417b7cf3cc20f7b` |
| 16 | `lemma` | [mem_smul_of_egauge_lt](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/mem-smul-of-egauge-lt--222c6db4deb561f38c91f65a.md) | 122 | `result-track:222c6db4deb561f38c91f65ae4bd2e1d55d59409f7f9452e11f6d64cbd6e865c` |
| 17 | `lemma` | [mem_of_egauge_lt_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/mem-of-egauge-lt-one--51fcdf1d0c10f451e42ac007.md) | 126 | `result-track:51fcdf1d0c10f451e42ac0070fed064db5a65a806147b415c442bf96b9368d5f` |
| 18 | `lemma` | [egauge_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-eq-zero-iff--5eeb4f9b9cbf19a0031c6058.md) | 129 | `result-track:5eeb4f9b9cbf19a0031c6058a629d71be3428fd7539cb80da27fbd3fde19cb8e` |
| 19 | `lemma` | [egauge_univ](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-univ--ff285faebbe50f17f5c66368.md) | 135 | `result-track:ff285faebbe50f17f5c66368897f581ffa862f41ea2fff840f461c492bd548f2` |
| 20 | `lemma` | [egauge_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-zero-right--9fc9f3f0967e84989d4856fa.md) | 143 | `result-track:9fc9f3f0967e84989d4856fafcb04df58b5b17b7509378a3fdfaaf0d3af74f8a` |
| 21 | `lemma` | [egauge_zero_zero](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-zero-zero--d198f09e5d0a9665c0e3a6c8.md) | 147 | `result-track:d198f09e5d0a9665c0e3a6c8cb98311c3c6c20553cc7ea722337beae3d147c1e` |
| 22 | `lemma` | [egauge_le_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-le-one--bbb8393fb1ef3a7fcaa04535.md) | 149 | `result-track:bbb8393fb1ef3a7fcaa045357d65fc767f23c95e2feae0adb93c22dfeb75a399` |
| 23 | `lemma` | [le_egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-smul-left--7031c80866a82f2b0de14aaf.md) | 155 | `result-track:7031c80866a82f2b0de14aaf22a9bd3697ba4e75d8a03e025adf82aed04e5db9` |
| 24 | `lemma` | [egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-smul-left--a4be06242a895255940a385b.md) | 163 | `result-track:a4be06242a895255940a385b88dab80f14a1f66bd4fb257b5b70868c0cbed05f` |
| 25 | `lemma` | [le_egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-smul-right--6a0f773ae9f67f5b45c6cea0.md) | 173 | `result-track:6a0f773ae9f67f5b45c6cea06321c1a7b564d3605929b030204ebc1bc4e5a272` |
| 26 | `lemma` | [egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-smul-right--d5a6e9b6cfb7a3bedfabc754.md) | 184 | `result-track:d5a6e9b6cfb7a3bedfabc754b8e920fd4098ae69f8aeba0cfd71b201aba021e5` |
| 27 | `theorem` | [egauge_prod_mk](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-prod-mk--aa0823863b9c3230e5b77cdd.md) | 198 | `result-track:aa0823863b9c3230e5b77cdded2a4eb8cf4516d8a435b7df10822de87baa96b8` |
| 28 | `theorem` | [egauge_add_add_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-add-add-le--f207aabfc76e9a84d5eb69dc.md) | 208 | `result-track:f207aabfc76e9a84d5eb69dc216b3b35e3adb68aeca9f7cfa485d37bde35bb2e` |
| 29 | `theorem` | [egauge_pi'](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-pi--9bbaa15942941802db82878c.md) | 231 | `result-track:9bbaa15942941802db82878cdcb7593cb7b2231e3fe6665d5f7fa08ef24f13dd` |
| 30 | `theorem` | [egauge_univ_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-univ-pi--b231688d610ee2c734958624.md) | 271 | `result-track:b231688d610ee2c734958624f2400c137151e4ba40d09e39506d94b12c3f88bd` |
| 31 | `theorem` | [egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-pi--b91c134d3fb441fdb9f5f0ed.md) | 285 | `result-track:b91c134d3fb441fdb9f5f0ed6e258b7c50ec5608d7757c035d2b67fa741cc3f7` |
| 32 | `lemma` | [div_le_egauge_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/div-le-egauge-closedball--a7262390e81999dd4755ea79.md) | 296 | `result-track:a7262390e81999dd4755ea79333733edb0e084d0f2725f24097266b990d2961d` |
| 33 | `lemma` | [le_egauge_closedBall_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-closedball-one--9f0bf4428ce3a1973fc163ca.md) | 305 | `result-track:9f0bf4428ce3a1973fc163caa97c7ef67ec56fb558dfd1b5210c7f2bf98bd0ae` |
| 34 | `lemma` | [div_le_egauge_ball](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/div-le-egauge-ball--81d349eb104a4fab28f94b08.md) | 308 | `result-track:81d349eb104a4fab28f94b085adf3b1321549d7ead8bc373c62886985792c6c7` |
| 35 | `lemma` | [le_egauge_ball_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/le-egauge-ball-one--4b59e90b268a4e89b0048397.md) | 311 | `result-track:4b59e90b268a4e89b0048397efe7ad3bfe48edda1d3e172545e47a953c25bd8d` |
| 36 | `lemma` | [egauge_ball_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-ball-le-of-one-lt-norm--3e175fab6e9f1f7bfb4fddfd.md) | 317 | `result-track:3e175fab6e9f1f7bfb4fddfd8ffc33277952257ddb517d831b41559932297c23` |
| 37 | `lemma` | [egauge_ball_one_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdcb21e20206d1d56fa00579aae1b1d14dae732b34e3847ff2c7a53a66850b08d.lean/declarations/egauge-ball-one-le-of-one-lt-norm--0dc263d82db936467da28680.md) | 337 | `result-track:0dc263d82db936467da28680a29dcc47039647d8d76b5e3a94ab7c9931a49bb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
