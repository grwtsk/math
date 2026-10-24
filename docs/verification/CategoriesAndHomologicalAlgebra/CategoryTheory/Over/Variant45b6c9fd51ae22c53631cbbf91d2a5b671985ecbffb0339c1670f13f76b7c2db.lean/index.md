# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0714d53204dde8cf607c1e876676e065e2ce55e8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0714d53204dde8cf607c1e876676e065e2ce55e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [overEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv--a0b24dbb5b3541426b4cabae.md) | 32 | `declaration-track:a0b24dbb5b3541426b4cabae8591d94140818ce05562c14e5cac8bfdbb210b6a` |
| 2 | `lemma` | [overEquiv_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-top--e400ac42aace28ce467e8453.md) | 57 | `result-track:e400ac42aace28ce467e8453b74d6acc54b1f9b711e9ae8e20bde89040e6e42f` |
| 3 | `lemma` | [overEquiv_symm_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-symm-top--2d5a872021d8d8e7df22ab10.md) | 65 | `result-track:2d5a872021d8d8e7df22ab1059fcb97e0f48be6500f827ba66681487ea76d1b2` |
| 4 | `lemma` | [overEquiv_le_overEquiv_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-le-overequiv-iff--7cb076fad03ab9495c36b947.md) | 69 | `result-track:7cb076fad03ab9495c36b947ffa6e977260928d1a060f3f042304e6b34798347` |
| 5 | `lemma` | [overEquiv_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-pullback--44b99cf7b6cd6ec1350d42f2.md) | 76 | `result-track:44b99cf7b6cd6ec1350d42f2f2c05148765ad62768d651b5a76e3a11a7395d22` |
| 6 | `lemma` | [overEquiv_symm_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-symm-iff--7e2d490f2d0f33c1499557b9.md) | 92 | `result-track:7e2d490f2d0f33c1499557b956712202cef06e74338b4fdd8ccd83e396050fd4` |
| 7 | `lemma` | [overEquiv_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-iff--82f287cdbc973837a808502e.md) | 96 | `result-track:82f287cdbc973837a808502e3be61e7c28146cc6d207c1733cc84277746f1458` |
| 8 | `lemma` | [functorPushforward_over_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/functorpushforward-over-map--e6fc615c3cf4d44ed01c3053.md) | 102 | `result-track:e6fc615c3cf4d44ed01c3053897c3aa95ad5abd3b76ae8cedcab642b58b1a2b4` |
| 9 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/over--f64e009195e2886b8db6eb5e.md) | 121 | `declaration-track:f64e009195e2886b8db6eb5ebcaa85a77863e2971413edbea0e8227d5064fe43` |
| 10 | `lemma` | [mem_over_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/mem-over-iff--12d6d41b6a22c4b4c30c3322.md) | 135 | `result-track:12d6d41b6a22c4b4c30c332291222c0c8df5eb5da6aa339a705af3a2ef278b97` |
| 11 | `lemma` | [overEquiv_symm_mem_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overequiv-symm-mem-over--0f934cc6b8e45787443a2062.md) | 139 | `result-track:0f934cc6b8e45787443a2062cf7b9dbb1dd02a0a05672ce026dad195ce225dd2` |
| 12 | `lemma` | [over_forget_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/over-forget-coverpreserving--0e19a5374179967e1d4c0ffd.md) | 143 | `result-track:0e19a5374179967e1d4c0ffd0345c56baa6be7ce09b3ce2aa0e49846592ea206` |
| 13 | `lemma` | [over_forget_compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/over-forget-compatiblepreserving--17896ac665eda950489b7320.md) | 147 | `result-track:17896ac665eda950489b7320ce45b3466d63c689adde0582090356f66a467955` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/instance--54731d0016378c6c6176f0f5.md) | 155 | `declaration-track:54731d0016378c6c6176f0f536462da8df148ab929e2e61243704e40b27cdc81` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/instance--50bf52cd6fd7e2ef5931754c.md) | 158 | `declaration-track:50bf52cd6fd7e2ef5931754cd429818de3cbf940d7d5b1c78a34b6483253e433` |
| 16 | `abbrev` | [overPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overpullback--177cb8e6322727ca84ca2a7f.md) | 164 | `declaration-track:177cb8e6322727ca84ca2a7f81bfe3d449d7781343b77bbc0bbb0b4bbb4c5039` |
| 17 | `lemma` | [over_map_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/over-map-coverpreserving--58448acdb3a28b29b898ca03.md) | 168 | `result-track:58448acdb3a28b29b898ca030ba44ef5a9c981207c5cc518c8286db72ee32ee3` |
| 18 | `lemma` | [over_map_compatiblePreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/over-map-compatiblepreserving--50bfbcaed30c3fb47195adb6.md) | 176 | `result-track:50bfbcaed30c3fb47195adb6fa415c0830af67a1f5715ef3355396c5b757deee` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/instance--9cb88af9f4570869057d6c6d.md) | 197 | `declaration-track:9cb88af9f4570869057d6c6d3b7ae365d5e124b61f93de353cd37beef0d9a1a9` |
| 20 | `abbrev` | [overMapPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/overmappullback--8f970f6938e66d196b8e207a.md) | 204 | `declaration-track:8f970f6938e66d196b8e207ada89b5998b130911062c32aa4b51dbea3a312e94` |
| 21 | `abbrev` | [Sheaf.over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant45b6c9fd51ae22c53631cbbf91d2a5b671985ecbffb0339c1670f13f76b7c2db.lean/declarations/sheaf-over--915c71c45af76de313ba8b74.md) | 213 | `declaration-track:915c71c45af76de313ba8b744e1a995865c504531655b1ddf734820e62c7639c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
