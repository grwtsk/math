# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99e4d2c4a46b8533c81f6840db8f99dfc18eda23",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99e4d2c4a46b8533c81f6840db8f99dfc18eda23`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Functor.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/functor-category--c8d4591dcc650ad1a436d176.md) | 53 | `declaration-track:c8d4591dcc650ad1a436d1763145799592908090e9a6a60c4724dc21555fe4dc` |
| 2 | `theorem` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/ext--246bb7c9ebaf811c97fae207.md) | 61 | `result-track:246bb7c9ebaf811c97fae207d46cd6c9bb51fda97d609c040299c3bf54958be0` |
| 3 | `theorem` | [vcomp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/vcomp-eq-comp--4e9243bd76eafce06f945c3c.md) | 64 | `result-track:4e9243bd76eafce06f945c3cc4ff9d44905d7fca2f21d2e73d8471aa4a618911` |
| 4 | `theorem` | [vcomp_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/vcomp-app--76865e3d59da436471e217c5.md) | 67 | `result-track:76865e3d59da436471e217c5ef978879c894a8f902833ec589293ce89c7df350` |
| 5 | `theorem` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/congr-app--0c5ca9ae22a76c9b0a412866.md) | 70 | `result-track:0c5ca9ae22a76c9b0a412866ac122a2faaee171fa8410b6a494291d0474e4009` |
| 6 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/id-app--26df08eb45f6eaa71bcaf1be.md) | 73 | `result-track:26df08eb45f6eaa71bcaf1be8674c794426d4c1a0c7ba60ae1cc31b1d00a69c4` |
| 7 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/comp-app--a3330c39b40e1a90489abd86.md) | 76 | `result-track:a3330c39b40e1a90489abd863ca06e9010cedb4cf4feaf6fd0531a286d58c15e` |
| 8 | `theorem` | [app_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/app-naturality--619f3f350ed5063d42a1dbf4.md) | 80 | `result-track:619f3f350ed5063d42a1dbf4eedcb8f4b724b22c2800cffa30d9593508ad5019` |
| 9 | `theorem` | [naturality_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/naturality-app--a63782fe37dbaa891be6292e.md) | 85 | `result-track:a63782fe37dbaa891be6292ea4b19871714b05a684dbecd46ceb41968103e3aa` |
| 10 | `theorem` | [naturality_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/naturality-app-app--b466dde8c6cd2f8be827d359.md) | 90 | `result-track:b466dde8c6cd2f8be827d359bcc801e45697b6c40f39e63de8c3218a2ff7fa75` |
| 11 | `lemma` | [naturality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/naturality-inv--e87457de296fa61d49da91ce.md) | 97 | `result-track:e87457de296fa61d49da91ce4b6b9bf0c25432f1e053c30ce3bfb49ef7fe4761` |
| 12 | `theorem` | [epi_of_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/epi-of-epi-app--d7e968e2c4218a454b432713.md) | 105 | `result-track:d7e968e2c4218a454b432713cf39978efb11c8fc2dc5d30bea4d31431cc9d2d9` |
| 13 | `lemma` | [id_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/id-comm--2a5110a6f46b81536431cbbd.md) | 112 | `result-track:2a5110a6f46b81536431cbbd03b8c6f6ac7caeba6a456a671cb7adc89ab33423` |
| 14 | `def` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/hcomp--8f8d9f005ae570f52ca60f7f.md) | 122 | `declaration-track:8f8d9f005ae570f52ca60f7f43ccae430d58a51caf4dfe30536fb92c577f8552` |
| 15 | `theorem` | [hcomp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/hcomp-app--21b56e547461facd2b0ee229.md) | 129 | `result-track:21b56e547461facd2b0ee229a710cb64a5ef21a35e000b8bdbe7cf480f535cbb` |
| 16 | `theorem` | [hcomp_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/hcomp-app--480a9cb371f6c3e34470885d.md) | 134 | `result-track:480a9cb371f6c3e34470885d96dae31f28251fdaebbf2567d1fb5f2800f39476` |
| 17 | `theorem` | [hcomp_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/hcomp-id-app--4463feae7930b6808e815771.md) | 139 | `result-track:4463feae7930b6808e8157717a7dc8b48f8ef8ec3a4f283a6307ef855e34ce0a` |
| 18 | `theorem` | [id_hcomp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/id-hcomp-app--3eef3be1d5c932514fd55aa6.md) | 143 | `result-track:3eef3be1d5c932514fd55aa698a728f625d7a39e8a6fc340807812d9afc69b64` |
| 19 | `theorem` | [exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/exchange--9d03a8e6c5f5a3f7b89b12bc.md) | 150 | `result-track:9d03a8e6c5f5a3f7b89b12bcee23cffe4e9e0686c2e8bdeb1d86866e6212a835` |
| 20 | `def` | [flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/flip--52396c00835b05b9fabd1a17.md) | 160 | `declaration-track:52396c00835b05b9fabd1a174a2d26451052632f920cd761239e6592d880feec` |
| 21 | `theorem` | [flip_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/flip-map-app--8f89c48dfdac9e4dd37b306f.md) | 168 | `result-track:8f89c48dfdac9e4dd37b306f635d22431a9819c2d9557214369a122ec1e8d252` |
| 22 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/leftunitor--d17962f18ed373272fb49697.md) | 174 | `declaration-track:d17962f18ed373272fb496975b6ddfb61e3ed3edeb4a1b78b741bc3f43e5079b` |
| 23 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/rightunitor--633037bf147ecf39df6dca96.md) | 182 | `declaration-track:633037bf147ecf39df6dca965ba1d2f20a2acd52cf159427439b7ad18cfa36e3` |
| 24 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/associator--7194c26607979bf83051e72b.md) | 193 | `declaration-track:7194c26607979bf83051e72bbdb9395ed7cff5e8e09beea43fc720d9b3209283` |
| 25 | `theorem` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/assoc--f5bafc18b04ca53bcf8a5ef3.md) | 198 | `result-track:f5bafc18b04ca53bcf8a5ef3d9aa1df9a90166317468a31e72b6d2a0a3ea811d` |
| 26 | `def` | [flipFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/flipfunctor--873d3202ca4f41dd74e12bd8.md) | 206 | `declaration-track:873d3202ca4f41dd74e12bd81c53129adba5841f77ac1e02431b752ff683d15d` |
| 27 | `theorem` | [map_hom_inv_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/map-hom-inv-id-app--51289a8a1f2db05fcf0fba0a.md) | 215 | `result-track:51289a8a1f2db05fcf0fba0a32c56742b335a25e3b97c151817bd195b4510582` |
| 28 | `theorem` | [map_inv_hom_id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/map-inv-hom-id-app--a8dd5bb7fc587b216797e7d5.md) | 220 | `result-track:a8dd5bb7fc587b216797e7d550fbd5c982627907ad0ec42b11273a6851ee6684` |
| 29 | `abbrev` | [NatTrans.flipApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant57b58238a105bac2f8beaa429212a3b463e815d40a37e086fdd0073a44e4bbcd.lean/declarations/nattrans-flipapp--cb9d07e95fe01f4188e9dc3c.md) | 228 | `declaration-track:cb9d07e95fe01f4188e9dc3c59b717aaffd219bb979488d2b7a7f481eaa5fe46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
