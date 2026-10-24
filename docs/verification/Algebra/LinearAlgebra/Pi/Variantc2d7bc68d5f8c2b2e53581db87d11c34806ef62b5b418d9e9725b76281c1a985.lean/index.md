# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52128bab340b154d9f91dfaaef47e6c5d5dc67ab",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52128bab340b154d9f91dfaaef47e6c5d5dc67ab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi--3f2c51c972487438f079ee6a.md) | 49 | `declaration-track:3f2c51c972487438f079ee6a0a7612b9463397bace5ac5bea45c14a903033fbe` |
| 2 | `theorem` | [pi_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-apply--874f6146cb409e2e80e14293.md) | 56 | `result-track:874f6146cb409e2e80e14293be1b1acc55503e274cfbb5565ea9ab87513f7d6e` |
| 3 | `theorem` | [ker_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/ker-pi--0a8f2668728e6f15a1e0b2e8.md) | 60 | `result-track:0a8f2668728e6f15a1e0b2e8e3fcc162e1465e063671d427b4e2059bb162ee7e` |
| 4 | `theorem` | [pi_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-eq-zero--d6ae7d167144f63de8fe3746.md) | 64 | `result-track:d6ae7d167144f63de8fe37464d708f0f8ef69d1eba3a706c0d4f8d992c17d2fb` |
| 5 | `theorem` | [pi_zero](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-zero--8b274df0180cb4335fb2911c.md) | 69 | `result-track:8b274df0180cb4335fb2911cf802b39d685832eeba5ab3c0b6a8f189d3f5bd11` |
| 6 | `theorem` | [pi_comp](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-comp--5e0b2c769b16e48892b07ac6.md) | 72 | `result-track:5e0b2c769b16e48892b07ac6f72eaabbc1e47ef404071a910a5efa99c2ac7c40` |
| 7 | `def` | [proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/proj--8ff27ac4e90a7099e1079af9.md) | 81 | `declaration-track:8ff27ac4e90a7099e1079af94398fde38e390f26c16d8d1050ccbba18ef7e29e` |
| 8 | `theorem` | [coe_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/coe-proj--c73476dc3095ff5031651d27.md) | 88 | `result-track:c73476dc3095ff5031651d271458c27c1544bb4f0b970e2ad505c66d6ec7d28f` |
| 9 | `theorem` | [proj_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/proj-apply--f671f94c5fe1eaf82b2e97c4.md) | 92 | `result-track:f671f94c5fe1eaf82b2e97c43bb614fa444cf701b4bbc810a5e0aedcbc8048c8` |
| 10 | `theorem` | [proj_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/proj-pi--373459445c9c647888034625.md) | 96 | `result-track:373459445c9c64788803462511654d993b6ea9c9f1806f513b2768394db39f66` |
| 11 | `theorem` | [iInf_ker_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/iinf-ker-proj--47c62819566077634cd7b358.md) | 100 | `result-track:47c62819566077634cd7b35858574702a84d3a6926d81f5151e1acadd94130be` |
| 12 | `def` | [compLeft](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/compleft--a01c0e71484c02cd5c170314.md) | 111 | `declaration-track:a01c0e71484c02cd5c1703141f0462a0ad6474c06a0cc571e30c2bf79d295f99` |
| 13 | `theorem` | [apply_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/apply-single--c5cb94148628d553459095fb.md) | 119 | `result-track:c5cb94148628d553459095fbb1e9ff4d1715cb3356989aa4ed15c9fcbff51782` |
| 14 | `def` | [single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/single--792dbf7fe08d6eae83038d47.md) | 125 | `declaration-track:792dbf7fe08d6eae83038d4795e3b93cf8429aea98ace80c245118f33c2a48e2` |
| 15 | `theorem` | [coe_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/coe-single--bedac485fbd66e644612aa8a.md) | 132 | `result-track:bedac485fbd66e644612aa8acb41024fe9c6a00c754b75837175fd97c37dbf1e` |
| 16 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/lsum--dba197c68481aaf482817b6b.md) | 141 | `declaration-track:dba197c68481aaf482817b6bb75c8e97c5456943c66e9fc3f028edb19609ef5a` |
| 17 | `theorem` | [lsum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/lsum-apply--94818270097ea8ec65711bb4.md) | 158 | `result-track:94818270097ea8ec65711bb48cb7f8fd4e0f443fc4480328e8ba8f81867de865` |
| 18 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/lsum-single--a8ebefe66d95c33c5e5c0675.md) | 164 | `result-track:a8ebefe66d95c33c5e5c06754a0453ca2e8d2e58a5c78912d19d95628b2e3b8c` |
| 19 | `theorem` | [pi_ext](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-ext--531952d9ce04fb0be685c080.md) | 176 | `result-track:531952d9ce04fb0be685c080ec693678f8ca0998b200e79409c5da3dac6c9656` |
| 20 | `theorem` | [pi_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-ext-iff--60e03b4dd40da26e087a859c.md) | 180 | `result-track:60e03b4dd40da26e087a859c09b912440f1f7e8e505e610e674c4daa2c57c49b` |
| 21 | `theorem` | [pi_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-ext--d94477c7627d45f6c45da835.md) | 187 | `result-track:d94477c7627d45f6c45da835ce31714c00897312f351fd60142da7104e14f614` |
| 22 | `theorem` | [pi_ext'_iff](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-ext-iff--4f328edf44e0435134e027bb.md) | 192 | `result-track:4f328edf44e0435134e027bb7ec0c669d81bd7c5069deb7c4e5f95e3753de4dd` |
| 23 | `def` | [iInfKerProjEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/iinfkerprojequiv--694c7826af902ceb3ae8a2f9.md) | 204 | `declaration-track:694c7826af902ceb3ae8a2f9bade794c76a46b238cd45c94cd4e3bb266ce7b8a` |
| 24 | `def` | [diag](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/diag--6552b6578ed94c7ee64349b6.md) | 240 | `declaration-track:6552b6578ed94c7ee64349b607ca6e16814fbc122956681223e674cdceda6723` |
| 25 | `theorem` | [update_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/update-apply--278faaebd473668da2fcf690.md) | 244 | `result-track:278faaebd473668da2fcf6903dda5faa3fb76852960eb91ccf6e2b43dbe0cb5e` |
| 26 | `def` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi--d893900fd6676706f8df246a.md) | 264 | `declaration-track:d893900fd6676706f8df246a09d3ddfab476f19fba091ab696f21f7c49cc9637` |
| 27 | `theorem` | [mem_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/mem-pi--7f9e97f7c844e708b5d3caf2.md) | 274 | `result-track:7f9e97f7c844e708b5d3caf250df6e3540db2b113ad2084888e8c81c7002d4e9` |
| 28 | `theorem` | [coe_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/coe-pi--3859519a7cb8d3dd8636a51b.md) | 279 | `result-track:3859519a7cb8d3dd8636a51b6b8fbcaf2f096ae092c2027178f9e55c525dcc2d` |
| 29 | `theorem` | [pi_empty](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-empty--cd72d13481705525ef296a8a.md) | 284 | `result-track:cd72d13481705525ef296a8acc0f4704565ec7e8f8611374769e67ed82822308` |
| 30 | `theorem` | [pi_top](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-top--fd19d67deb9d2ad63623602d.md) | 289 | `result-track:fd19d67deb9d2ad63623602d180a0fa80351d9341db65c65e3e6681dae6d3e10` |
| 31 | `theorem` | [pi_mono](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pi-mono--49f953ee29050da8416b8d79.md) | 293 | `result-track:49f953ee29050da8416b8d791eca30b29dc81aae38709726687b81d0dbf2761d` |
| 32 | `theorem` | [biInf_comap_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/biinf-comap-proj--a20f1046bbab3e478f295f91.md) | 297 | `result-track:a20f1046bbab3e478f295f91374f8360ebf872d6e948e0154966e94b6ad069a6` |
| 33 | `theorem` | [iInf_comap_proj](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/iinf-comap-proj--32573951165f02f1a2cbbf3f.md) | 303 | `result-track:32573951165f02f1a2cbbf3fe44bd36a89ab2752533b4e8903247b6a088048c2` |
| 34 | `theorem` | [iSup_map_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/isup-map-single--7ca2ba28d15f4e1dd8eba55f.md) | 309 | `result-track:7ca2ba28d15f4e1dd8eba55f8935f256a161cc6192a5bcc6b13766b59e4c74dc` |
| 35 | `theorem` | [le_comap_single_pi](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/le-comap-single-pi--0a12c882fd13c10db4c9aaae.md) | 320 | `result-track:0a12c882fd13c10db4c9aaaeb26da4de581eec2698ee9e557eb85af5da4e035d` |
| 36 | `def` | [piCongrRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrright--7242381cdb2dffe664f28058.md) | 346 | `declaration-track:7242381cdb2dffe664f28058f8fbe2eec41e07fbf868698a7da8733c48ad5a65` |
| 37 | `theorem` | [piCongrRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrright-apply--edb12f5f3acbb03bf6c4a321.md) | 354 | `result-track:edb12f5f3acbb03bf6c4a321537c8c0c2ae64c896a066f7a75a249cd91e68c3d` |
| 38 | `theorem` | [piCongrRight_refl](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrright-refl--eb9e316bd5277194cb56a453.md) | 359 | `result-track:eb9e316bd5277194cb56a453ca58b8df4f89659b15e09098da64e99bc1c83ff1` |
| 39 | `theorem` | [piCongrRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrright-symm--5a64f5d49e8d5580948a93e9.md) | 364 | `result-track:5a64f5d49e8d5580948a93e9573484f71521fc74febefb9f7b81aaa97161db50` |
| 40 | `theorem` | [piCongrRight_trans](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrright-trans--6a290de73ed6d7548c734eb0.md) | 370 | `result-track:6a290de73ed6d7548c734eb09f7997896e13e3d2c23f4bca407e0110d1ccde7e` |
| 41 | `def` | [piCongrLeft'](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrleft--07054c435221ea5cdb203606.md) | 381 | `declaration-track:07054c435221ea5cdb2036064494a42133eff0cba3d72881470e404fd578b632` |
| 42 | `def` | [piCongrLeft](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/picongrleft--6e110c35acb52da5039a2e73.md) | 391 | `declaration-track:6e110c35acb52da5039a2e73906b37fe9208088daa8577bcf21c87a8d60f979e` |
| 43 | `def` | [piOptionEquivProd](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pioptionequivprod--c0d9a84804467d282fafe6d5.md) | 396 | `declaration-track:c0d9a84804467d282fafe6d56472d3d0dedc1f9d246d57d3af26b02768cb2baa` |
| 44 | `def` | [piRing](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/piring--da1bf836a59311b4079f9ee8.md) | 414 | `declaration-track:da1bf836a59311b4079f9ee87e89e2fb714f8c5c62615ebf59ebe59c749941cc` |
| 45 | `theorem` | [piRing_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/piring-apply--0907534c56d1bf791c07db2d.md) | 422 | `result-track:0907534c56d1bf791c07db2d73e51883014bfcc85cdea49e1a5a80c990a143e7` |
| 46 | `theorem` | [piRing_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/piring-symm-apply--721b340040c1128aa294c1a0.md) | 427 | `result-track:721b340040c1128aa294c1a04635c6404928d18d751b70e898d1c4d723bd25f7` |
| 47 | `def` | [sumArrowLequivProdArrow](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/sumarrowlequivprodarrow--bb75e5efaa73335d111b3012.md) | 434 | `declaration-track:bb75e5efaa73335d111b30129c408de818ad0d38616c3ce60b505e51301cacea` |
| 48 | `theorem` | [sumArrowLequivProdArrow_apply_fst](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/sumarrowlequivprodarrow-apply-fst--8cfa69bbce0cf5c45e06a383.md) | 447 | `result-track:8cfa69bbce0cf5c45e06a383e6e21b66f28a1bfbde1259333fc234bbbe6afa81` |
| 49 | `theorem` | [sumArrowLequivProdArrow_apply_snd](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/sumarrowlequivprodarrow-apply-snd--fe1a4e1008c2b182faf7aad5.md) | 453 | `result-track:fe1a4e1008c2b182faf7aad5b51a2bd029c6c812ca803d783045ccba79b5a1ec` |
| 50 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inl](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/sumarrowlequivprodarrow-symm-apply-inl--4510ee74a9f19850c1dba579.md) | 459 | `result-track:4510ee74a9f19850c1dba57925e16905dec8bf77ebdb41fe81ca4378f4e83636` |
| 51 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inr](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/sumarrowlequivprodarrow-symm-apply-inr--24563d8732a6e5f48ec46ae0.md) | 465 | `result-track:24563d8732a6e5f48ec46ae0d7834b2bf448754bfc2f3e2df1a52eeea35c0d15` |
| 52 | `def` | [funUnique](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/fununique--2d084259f836b52732043489.md) | 474 | `declaration-track:2d084259f836b52732043489c159d887e1cf5d7e8c852e94d1491fd74e9390ba` |
| 53 | `theorem` | [funUnique_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/fununique-apply--6e57d42d278ceefe6711edce.md) | 483 | `result-track:6e57d42d278ceefe6711edce50435ad53bb85426730da358aa4a1df38cbff91c` |
| 54 | `def` | [piFinTwo](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pifintwo--95dca283760ca8dfc8349efb.md) | 493 | `declaration-track:95dca283760ca8dfc8349efbee26aeebf60451eee744bc2971d0230fb4994871` |
| 55 | `theorem` | [piFinTwo_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/pifintwo-apply--6eeda5058dc03eacc0fd83d9.md) | 503 | `result-track:6eeda5058dc03eacc0fd83d91caf972d31388d1b73f87421a9761e32bf298e0d` |
| 56 | `def` | [finTwoArrow](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/fintwoarrow--7bc3a806bd1a4beda9197204.md) | 510 | `declaration-track:7bc3a806bd1a4beda9197204080fa6df8590c5f0a524c9b6502c4b3f4655b8c7` |
| 57 | `def` | [Function.ExtendByZero.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/function-extendbyzero-linearmap--1ce87824ea84626985df2227.md) | 522 | `declaration-track:1ce87824ea84626985df22275115a61f8cfa0b06b97a1e978e5841d95c313438` |
| 58 | `def` | [LinearMap.vecEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/linearmap-vecempty--7e4fdcc0225b316bd7406c46.md) | 553 | `declaration-track:7e4fdcc0225b316bd7406c468d4bf26ba9d95f9b2bfbd783977c68e8e23f678b` |
| 59 | `theorem` | [LinearMap.vecEmpty_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/linearmap-vecempty-apply--1c049a5a04d53a69a0b64590.md) | 560 | `result-track:1c049a5a04d53a69a0b64590578dc4a123f43d8f2b5483743053a84e91d9754a` |
| 60 | `def` | [LinearMap.vecCons](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/linearmap-veccons--3b9d8377eadf1826d6c3579c.md) | 566 | `declaration-track:3b9d8377eadf1826d6c3579ca9fd9385cdd8210b772aafe9552403bcbfe0c86c` |
| 61 | `theorem` | [LinearMap.vecCons_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/linearmap-veccons-apply--30b8955a83be9402db0db9b5.md) | 577 | `result-track:30b8955a83be9402db0db9b51551aab7dec3d37c52d257bdc01b718a7a3e7bea` |
| 62 | `def` | [LinearMap.vecEmpty₂](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/linearmap-vecempty--d58877a695ad5d463d18d783.md) | 592 | `declaration-track:d58877a695ad5d463d18d7838a859a7cfa7159ad5e3893d4f4fd10bf6b0a85e9` |
| 63 | `def` | [LinearMap.vecCons₂](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variantc2d7bc68d5f8c2b2e53581db87d11c34806ef62b5b418d9e9725b76281c1a985.lean/declarations/linearmap-veccons--2dd046691300bf923a4686ab.md) | 601 | `declaration-track:2dd046691300bf923a4686ab459ecb06386cf7ed5cd9a6b0123ce20a2fc3205c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
