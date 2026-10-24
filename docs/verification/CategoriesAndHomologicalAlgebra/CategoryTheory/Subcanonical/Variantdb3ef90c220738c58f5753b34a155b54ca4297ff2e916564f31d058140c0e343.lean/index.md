# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subcanonical.Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fba403dc224483aaa152fc625c2a652933025fd7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fba403dc224483aaa152fc625c2a652933025fd7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [yonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv--564aaf04ec87ec3abd704d75.md) | 29 | `declaration-track:564aaf04ec87ec3abd704d755bbc5f36c1800700d42bae9d85ecb3949da372e0` |
| 2 | `theorem` | [yonedaEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-apply--99ab690c7a43c0039fd990c2.md) | 32 | `result-track:99ab690c7a43c0039fd990c24763f5ff9dbb777f971afef3d6fcaba6a7e9a746` |
| 3 | `theorem` | [yonedaEquiv_symm_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-symm-app-apply--fd1aea68097f2b5f46beee51.md) | 37 | `result-track:fd1aea68097f2b5f46beee5113613be56d57f1ee57b93f1847b7b7a27dc1c9f7` |
| 4 | `lemma` | [yonedaEquiv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-naturality--67c43ba89bc2f288350e8c0e.md) | 42 | `result-track:67c43ba89bc2f288350e8c0e7e8333fe394071b3cd3c32bbf392f1ae14e58c5a` |
| 5 | `lemma` | [yonedaEquiv_naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-naturality--bd3fa2e46fa2ece253feb3ec.md) | 52 | `result-track:bd3fa2e46fa2ece253feb3ec27a100ddcba3b7c6b6c48ff88b221684b7b8612e` |
| 6 | `lemma` | [yonedaEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-comp--38fdd14bb0ff3dd46c7046c4.md) | 56 | `result-track:38fdd14bb0ff3dd46c7046c4e019528ce367d527b66729730bc7d96955ebe191` |
| 7 | `lemma` | [yonedaEquiv_yoneda_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-yoneda-map--5bece1ce2ab87c5fdd551105.md) | 60 | `result-track:5bece1ce2ab87c5fdd551105eff74331d9b909dd3f965c6af8c550f3ed2539db` |
| 8 | `lemma` | [yonedaEquiv_symm_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-symm-naturality-left--a29e600f90427cfd05aed80b.md) | 64 | `result-track:a29e600f90427cfd05aed80b88ebc0e970741205bbad35d291eab8a9cfcd9539` |
| 9 | `lemma` | [yonedaEquiv_symm_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-symm-naturality-right--751018de4a9c2f2c5f7e19c0.md) | 71 | `result-track:751018de4a9c2f2c5f7e19c024f0975f902a1f48ff8b5ba13be699c3fee0feae` |
| 10 | `lemma` | [map_yonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/map-yonedaequiv--b2e40e7e035b909bd2f1e706.md) | 77 | `result-track:b2e40e7e035b909bd2f1e7064b4586afbec6799a6fc4dfe85007066f834e86dc` |
| 11 | `lemma` | [map_yonedaEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/map-yonedaequiv--54b94e401bf7cfec76af4e77.md) | 86 | `result-track:54b94e401bf7cfec76af4e77c756c22b6597f824d227c5d21908188a69b4f684` |
| 12 | `lemma` | [yonedaEquiv_symm_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaequiv-symm-map--b49d5e7a977f7a8276d30b17.md) | 90 | `result-track:b49d5e7a977f7a8276d30b1758d9472cbbb3e9daf311e230cc390b55ea9b1f3f` |
| 13 | `lemma` | [hom_ext_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/hom-ext-yoneda--b4fab28f5cfbe5e4059af298.md) | 99 | `result-track:b4fab28f5cfbe5e4059af298b4fc4f02dd35e2e40fa999b4664d5b95f0848da5` |
| 14 | `def` | [yonedaULift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedaulift--655796ed301242b187f1b13d.md) | 111 | `declaration-track:655796ed301242b187f1b13de50529e96b1b31b831c99c789b990d9897367d0c` |
| 15 | `def` | [yonedaULiftEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv--6b95651e5a3197748a92cb51.md) | 114 | `declaration-track:6b95651e5a3197748a92cb5178b7441f52b0ed4750cc94b5c50b05474af5fe7b` |
| 16 | `theorem` | [yonedaULiftEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-apply--2e6f7bb1bf5365c0d7250c78.md) | 118 | `result-track:2e6f7bb1bf5365c0d7250c7894913ae0fd8d2c9bbe1617a560f95aa0e17faa35` |
| 17 | `theorem` | [yonedaULiftEquiv_symm_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-symm-app-apply--1c1b6e4bd2404332c9f21878.md) | 123 | `result-track:1c1b6e4bd2404332c9f2187874911d7b5f1dc83873a795c71e03d6734d89597e` |
| 18 | `lemma` | [yonedaULiftEquiv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-naturality--1566823e0411a0d67617b847.md) | 129 | `result-track:1566823e0411a0d67617b8478abc79af1ba9ffa50ab7326397f45b821173e493` |
| 19 | `lemma` | [yonedaULiftEquiv_naturality'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-naturality--05988075b57efc33718485d0.md) | 139 | `result-track:05988075b57efc33718485d0904ea073f71fc1790730e6c04efb094a4aa31f6a` |
| 20 | `lemma` | [yonedaULiftEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-comp--a55b73d4ea909ff8356d49ae.md) | 144 | `result-track:a55b73d4ea909ff8356d49aecea3515d3d91759e66be5313e6b5d6ff34c2c84f` |
| 21 | `lemma` | [yonedaULiftEquiv_yonedaULift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-yonedaulift-map--a258b607c0145bce99b043a6.md) | 148 | `result-track:a258b607c0145bce99b043a62c7fb53a47041809f1c498e4588692c0c01be9b2` |
| 22 | `lemma` | [yonedaULiftEquiv_symm_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-symm-naturality-left--efa3203b1ce0ca90e1d581ff.md) | 153 | `result-track:efa3203b1ce0ca90e1d581ff0911fad62d9bdab401c539a9c66c6f66bd37e0ba` |
| 23 | `lemma` | [yonedaULiftEquiv_symm_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauliftequiv-symm-naturality-right--4715511a96954e2617264dd5.md) | 161 | `result-track:4715511a96954e2617264dd5fa1570ef6d6cdd5572bb35719c27f611e486e208` |
| 24 | `lemma` | [map_yonedaULiftEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/map-yonedauliftequiv--c54e1469271fe3d0f3a8b803.md) | 168 | `result-track:c54e1469271fe3d0f3a8b803249db145603b8c889decab82a6a0166743dbfa97` |
| 25 | `lemma` | [map_yonedaULiftEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/map-yonedauliftequiv--a0e9dfd97af2f0d8b8b7d5eb.md) | 176 | `result-track:a0e9dfd97af2f0d8b8b7d5eb435184c866408437cc384a36109a749b0c4835ea` |
| 26 | `lemma` | [yonedaULeftEquiv_symm_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/yonedauleftequiv-symm-map--af8caa540ef3af6d02d7d090.md) | 181 | `result-track:af8caa540ef3af6d02d7d090e8d4c618eebdee64f0d1e4156b25c8ab3f65093b` |
| 27 | `lemma` | [hom_ext_yonedaULift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantdb3ef90c220738c58f5753b34a155b54ca4297ff2e916564f31d058140c0e343.lean/declarations/hom-ext-yonedaulift--be2ab5d45d9cba818986a30e.md) | 189 | `result-track:be2ab5d45d9cba818986a30ebd610c21a59cfd698859032ac8e70b7c2fb2f715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
