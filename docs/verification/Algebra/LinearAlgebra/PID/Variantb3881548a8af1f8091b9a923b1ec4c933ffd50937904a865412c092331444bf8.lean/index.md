# Verification target: GRWTSK.Algebra.LinearAlgebra.PID.Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ec6de0d580be11865a9728c9e1c9a1f816900e7",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ec6de0d580be11865a9728c9e1c9a1f816900e7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_bot_of_generator_maximal_map_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/eq-bot-of-generator-maximal-map-eq-zero--bc86d7d8f396e239d3502ebc.md) | 66 | `result-track:bc86d7d8f396e239d3502ebc7b696d03cb6f1cddd2ea483f0b2c8a077bc46b4a` |
| 2 | `theorem` | [eq_bot_of_generator_maximal_submoduleImage_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/eq-bot-of-generator-maximal-submoduleimage-eq-zero--6f4cd72d07e54806ff689fa9.md) | 78 | `result-track:6f4cd72d07e54806ff689fa98f80fb720b859f38c379c639c829337a30e5be75` |
| 3 | `theorem` | [dvd_generator_iff](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/dvd-generator-iff--6acb59929d20b16351fd1637.md) | 98 | `result-track:6acb59929d20b16351fd1637817ea252389f05d480fb2ed5e2418dd5491abf0d` |
| 4 | `theorem` | [generator_maximal_submoduleImage_dvd](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/generator-maximal-submoduleimage-dvd--187ee41683ba0101069c730f.md) | 120 | `result-track:187ee41683ba0101069c730f8db919d225d3d4412dfff2072bc23e953fd9179b` |
| 5 | `theorem` | [Submodule.basis_of_pid_aux](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-basis-of-pid-aux--ac1762a378ea6851521201ec.md) | 163 | `result-track:ac1762a378ea6851521201ec1a5a292b7c0b756182130d410c756c5485b2b8b8` |
| 6 | `theorem` | [Submodule.nonempty_basis_of_pid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-nonempty-basis-of-pid--218822c42383e4c1414429ea.md) | 292 | `result-track:218822c42383e4c1414429ea1a2f31dc639946668c9c94004bcfc9235daca4d1` |
| 7 | `def` | [Submodule.basisOfPid](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-basisofpid--c9407a2109243143c59cd8a3.md) | 312 | `declaration-track:c9407a2109243143c59cd8a36c2d3a4d71db916a75b759e7b11ebdfb4b580a88` |
| 8 | `theorem` | [Submodule.basisOfPid_bot](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-basisofpid-bot--02ac08a9363852bae8284e5c.md) | 316 | `result-track:02ac08a9363852bae8284e5cbb21d29745d78c16caa20673e9abda6520e7f8b8` |
| 9 | `def` | [Submodule.basisOfPidOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-basisofpidofle--4960b6513168736ecbe7a514.md) | 328 | `declaration-track:4960b6513168736ecbe7a514c17b7df7992681f6c86196a15ff7cb826863cc46` |
| 10 | `def` | [Submodule.basisOfPidOfLESpan](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-basisofpidoflespan--ff21ab16f3c6673dccace6ed.md) | 335 | `declaration-track:ff21ab16f3c6673dccace6eda4d82881e9e3f901750026f17a04f950e4c90b4c` |
| 11 | `def` | [Module.basisOfFiniteTypeTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/module-basisoffinitetypetorsionfree--9497d4cf76f876ed222dd510.md) | 341 | `declaration-track:9497d4cf76f876ed222dd5106ee4305b3302c86a10685e10921abb6bab3cd52b` |
| 12 | `theorem` | [Module.free_of_finite_type_torsion_free](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/module-free-of-finite-type-torsion-free--ffbbfdcea875654370449f8c.md) | 389 | `result-track:ffbbfdcea875654370449f8c02b9b5af1ba4d4e9d3098b465ed7ab60c764816d` |
| 13 | `def` | [Module.basisOfFiniteTypeTorsionFree'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/module-basisoffinitetypetorsionfree--38c1b46846029327745ea58f.md) | 396 | `declaration-track:38c1b46846029327745ea58f699e5fe5996c31f3e1a38332e6d4a00912d7a3e4` |
| 14 | `instance` | [Module.free_of_finite_type_torsion_free'](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/module-free-of-finite-type-torsion-free--40ec3045dbf65ae407f079df.md) | 400 | `declaration-track:40ec3045dbf65ae407f079df76d0a5d7eb2afebf98246051866ea7fcc6247961` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/instance--e8703bf956f9a87672cc63ca.md) | 405 | `declaration-track:e8703bf956f9a87672cc63ca78eebf0c4e34211adfbe43088ed9ab61b8e5a3df` |
| 16 | `theorem` | [Module.free_iff_noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/module-free-iff-nozerosmuldivisors--ef206c8494fd8c869773a79e.md) | 412 | `result-track:ef206c8494fd8c869773a79e7a6dea855e9a76a76e183366a93692beb5ac02bc` |
| 17 | `structure` | [Basis.SmithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/basis-smithnormalform--1f39e416287da6a2c76d23d8.md) | 423 | `declaration-track:1f39e416287da6a2c76d23d8821df51b0be607e86968bcc864e535caa6bd8e60` |
| 18 | `lemma` | [repr_eq_zero_of_notMem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/repr-eq-zero-of-notmem-range--fbf3b83fbe7b20761d11bf15.md) | 439 | `result-track:fbf3b83fbe7b20761d11bf153356a244f433c388f095b335c0c1131080dd2d8e` |
| 19 | `lemma` | [le_ker_coord_of_notMem_range](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/le-ker-coord-of-notmem-range--c049b9aef729bbec1329877e.md) | 449 | `result-track:c049b9aef729bbec1329877eb2c33c88171b1177bdabe32e03398a2f79d5ef51` |
| 20 | `lemma` | [repr_apply_embedding_eq_repr_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/repr-apply-embedding-eq-repr-smul--90765bd6e8852b48b1a1ef2c.md) | 456 | `result-track:90765bd6e8852b48b1a1ef2c5663251fa0c7dd34dc62e5edb5a8fd7a548f7eaf` |
| 21 | `lemma` | [repr_comp_embedding_eq_smul](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/repr-comp-embedding-eq-smul--60640ac0ff335631552ca8a9.md) | 471 | `result-track:60640ac0ff335631552ca8a9b0243847fc1d48a26baa1274f97a403dd1466916` |
| 22 | `lemma` | [coord_apply_embedding_eq_smul_coord](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/coord-apply-embedding-eq-smul-coord--d5c0be9a216b56cd38211586.md) | 476 | `result-track:d5c0be9a216b56cd382115868c5ee3abb5d7025943d882c3ac81cf2f42f3d06d` |
| 23 | `lemma` | [toMatrix_restrict_eq_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/tomatrix-restrict-eq-tomatrix--36952743086bc59997c812d3.md) | 485 | `result-track:36952743086bc59997c812d34873c0813c3cd70a9d5b7a518236b2eace4765c5` |
| 24 | `theorem` | [Submodule.exists_smith_normal_form_of_le](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-exists-smith-normal-form-of-le--816db12f7e657ec0a9e3357f.md) | 508 | `result-track:816db12f7e657ec0a9e3357fa4a46c4132b63e99c896f25e81a842bc1bc9d103` |
| 25 | `def` | [Submodule.smithNormalFormOfLE](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformofle--18a9d1221d9e708046851569.md) | 536 | `declaration-track:18a9d1221d9e708046851569f9bf3145006f8a92e99b4c13832e01d047fc8239` |
| 26 | `def` | [Submodule.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalform--b9596cb5779c9fd44d85258f.md) | 555 | `declaration-track:b9596cb5779c9fd44d85258fe8c460b63e3a0ac4c6856317baf891e123b1c6db` |
| 27 | `def` | [Submodule.smithNormalFormOfRankEq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformofrankeq--c6533ab45f5f46bbe457ddb9.md) | 577 | `declaration-track:c6533ab45f5f46bbe457ddb948102b1432d774c5b6c98513141bf515a076f09d` |
| 28 | `theorem` | [Submodule.exists_smith_normal_form_of_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-exists-smith-normal-form-of-rank-eq--91259659a7661b2b5041307f.md) | 598 | `result-track:91259659a7661b2b5041307ffe0a43975d27e31073c7438b2b46b4847d403382` |
| 29 | `def` | [Submodule.smithNormalFormTopBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformtopbasis--cd92d6c727c25454e21fc201.md) | 621 | `declaration-track:cd92d6c727c25454e21fc201a2e797e67561da1e7765a29d126788cba9cd3778` |
| 30 | `def` | [Submodule.smithNormalFormBotBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformbotbasis--87138aa2cacd9088d4900b98.md) | 634 | `declaration-track:87138aa2cacd9088d4900b980a4a649585511792e499a57037678048a1050fce` |
| 31 | `def` | [Submodule.smithNormalFormCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformcoeffs--fa1adbc1d4a30879005c921a.md) | 647 | `declaration-track:fa1adbc1d4a30879005c921a565665ce31ab0e4bf0f8bfa81a9ce380fe4ea3e0` |
| 32 | `theorem` | [Submodule.smithNormalFormBotBasis_def](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformbotbasis-def--cc0d3ab8722f827421ac600b.md) | 652 | `result-track:cc0d3ab8722f827421ac600b50be9ae8f2696a8e050baeab7abd314dba47c607` |
| 33 | `theorem` | [Submodule.smithNormalFormCoeffs_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/submodule-smithnormalformcoeffs-ne-zero--f25b7ec1428a076656774759.md) | 659 | `result-track:f25b7ec1428a0766567747597cc16349d2482335fb419baf093fecae7f39e086` |
| 34 | `theorem` | [Ideal.finrank_eq_finrank](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-finrank-eq-finrank--3f5342a668048d91ce83dceb.md) | 673 | `result-track:3f5342a668048d91ce83dceb8f710d3579907549e2554dbb80d6541c9ef1ac7b` |
| 35 | `def` | [Ideal.smithNormalForm](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-smithnormalform--33475ba61bfb53b4c61b6929.md) | 690 | `declaration-track:33475ba61bfb53b4c61b69292046778e50e61c5eb24661afaf6f2db1e0ab73ee` |
| 36 | `theorem` | [Ideal.exists_smith_normal_form](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-exists-smith-normal-form--9c81a2bc46df975573fa1f40.md) | 707 | `result-track:9c81a2bc46df975573fa1f40ff01d3b7a42bae061291f25ba8c5672aac0f7d0b` |
| 37 | `def` | [Ideal.ringBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-ringbasis--5abe2f81f13eb083a38c43ce.md) | 719 | `declaration-track:5abe2f81f13eb083a38c43ceba719a97ebf020b44b56da864cfb9939f7b8ec31` |
| 38 | `def` | [Ideal.selfBasis](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-selfbasis--72303922dc5336dae2fb8513.md) | 730 | `declaration-track:72303922dc5336dae2fb851303013dddcedb39ef533a8a0ad2b8ecd30907f6eb` |
| 39 | `def` | [Ideal.smithCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-smithcoeffs--01e78e85df30d5ed635788ae.md) | 741 | `declaration-track:01e78e85df30d5ed635788aeb5ce2773e2dab04ab7122f867053347762a76950` |
| 40 | `theorem` | [Ideal.selfBasis_def](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-selfbasis-def--bf600c52deeb1cc85aa8e6a1.md) | 750 | `result-track:bf600c52deeb1cc85aa8e6a1816529d66e1c7d113399c0443a27c8bd128eff77` |
| 41 | `theorem` | [Ideal.smithCoeffs_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/PID/Variantb3881548a8af1f8091b9a923b1ec4c933ffd50937904a865412c092331444bf8.lean/declarations/ideal-smithcoeffs-ne-zero--6068f589620bbfee443a8c53.md) | 755 | `result-track:6068f589620bbfee443a8c534e5ff51e00c971fa36d6e8d3f5dffe5af1b2698e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
