# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FDRep.Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "006de4dd0fd34be57dea8dd4a685658ed1c1c01c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `006de4dd0fd34be57dea8dd4a685658ed1c1c01c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.FGModuleCat.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Rigid.Braided` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Schur` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Rep` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FDRep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/fdrep--3269ad47b7cf2a5445b72fea.md) | 67 | `declaration-track:3269ad47b7cf2a5445b72feae846f13a82235bd8b93158eaaafb0b41ad7e302a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--677c44864d870e48bea594c1.md) | 77 | `declaration-track:677c44864d870e48bea594c1e64f58e7437687088ecb893f83db20e4a302aec7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--24d93a10648b151700d21a0b.md) | 78 | `declaration-track:24d93a10648b151700d21a0b7fff3dffd6fa02b40a37f89c7e85636e79101283` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--5e51c3928c8b38c157f8c3e9.md) | 79 | `declaration-track:5e51c3928c8b38c157f8c3e9b163b93c163d744a2e1cf70e7d44dd11074db2c1` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--a6e2e05a80bd6a2b0430901b.md) | 80 | `declaration-track:a6e2e05a80bd6a2b0430901bf7535e24a3c81a9db78151578d3424bc102c5c8a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--5dac7f8e021dc03331b179c1.md) | 82 | `declaration-track:5dac7f8e021dc03331b179c1899b0a151d47a65dbf1e98d473845074f027ee81` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--c620ff6aff8fe65786123192.md) | 84 | `declaration-track:c620ff6aff8fe65786123192c27fcd95cb4b12b27ef7ea719ef05996c6b964db` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--5811d4d8cfefd3c01d399f0b.md) | 87 | `declaration-track:5811d4d8cfefd3c01d399f0bea9686c050d35d308bdc2e27dc48a5f3fa8b95fe` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--4f116e17c641ad7006f2ac11.md) | 90 | `declaration-track:4f116e17c641ad7006f2ac118cccba9e12a6190e9231158229a5b8dfc220494d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--9384f8f2f58a48bb2081ba61.md) | 93 | `declaration-track:9384f8f2f58a48bb2081ba611693ea5a2b9f8e1e5bd344e76c3c7ddf73cc0278` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--e6f91a43c295edfd54f13292.md) | 96 | `declaration-track:e6f91a43c295edfd54f13292ddd831f07a55f434e54d37570260b4f82be15574` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--857a9bcbc742464aadf0c4d3.md) | 100 | `declaration-track:857a9bcbc742464aadf0c4d3592ac44e1e834a002fb7faec671b652fed4ae225` |
| 13 | `def` | [ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/anonymous--78e1162e25df966cc2dae845.md) | 105 | `declaration-track:78e1162e25df966cc2dae8451f6836e7df0fa96355318714d2f5c8fa2da15bbe` |
| 14 | `lemma` | [endRingEquiv_symm_comp_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/endringequiv-symm-comp--54bdb83bf912c762b5c0fde8.md) | 109 | `result-track:54bdb83bf912c762b5c0fde84e9ee66b04caf8b061a2411659d144ac8f92da77` |
| 15 | `lemma` | [endRingEquiv_comp_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/endringequiv-comp--d71e2f026b453d3a4fff3899.md) | 115 | `result-track:d71e2f026b453d3a4fff38995b60f70826bef58ae5bb278e835b3423a5f17247` |
| 16 | `lemma` | [hom_action_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/hom-action--e0cc357b022aed2acc3ef29b.md) | 119 | `result-track:e0cc357b022aed2acc3ef29b4b9444680636332f2630446f1ca5d81a946fe25c` |
| 17 | `def` | [isoToLinearEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/isotolinearequiv--bca8c9ff150a0e9a7d7c2457.md) | 122 | `declaration-track:bca8c9ff150a0e9a7d7c2457b7e03e0cadf52b4a8dc6684b981d1495467ec650` |
| 18 | `theorem` | [Iso.conj_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/iso-conj--267487561ca67ca8050da765.md) | 125 | `result-track:267487561ca67ca8050da765880f89474705cb173bb52bf3feb96e2ed5b6a0e5` |
| 19 | `abbrev` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/of--856bb1e7e2e25b4f4c4719e3.md) | 134 | `declaration-track:856bb1e7e2e25b4f4c4719e37838c11a30902fac55fb8b8a78b27cb4a108efcb` |
| 20 | `theorem` | [of_ρ'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/of--752f448cf074491ab85e87d6.md) | 140 | `result-track:752f448cf074491ab85e87d6c19b557f48cf6958c47bc3382d386a4ab72f9479` |
| 21 | `theorem` | [ρ_inv_self_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/inv-self-apply--8945243caf39e3df5f205837.md) | 144 | `result-track:8945243caf39e3df5f205837d2c270d3cf4b7ab4c8cd68996d18bf4691f59fca` |
| 22 | `theorem` | [ρ_self_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/self-inv-apply--21b5af1f44f8f857dd95deda.md) | 149 | `result-track:21b5af1f44f8f857dd95dedae988fdfd166641d4a5efcad6a55ae552c89e6385` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--4fb544fef2090073474c785d.md) | 153 | `declaration-track:4fb544fef2090073474c785dbda34309aaf87d3d8dc7b172a06cb6362da312bb` |
| 24 | `theorem` | [forget₂_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/forget--b3f731865e96805fe80accae.md) | 156 | `result-track:b3f731865e96805fe80accae0be049bd378e4d6a5d9d440ba3ad3fb9cd814b2e` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/example--d0dfa2a868eb7f2fd0aac26f.md) | 160 | `declaration-track:d0dfa2a868eb7f2fd0aac26fb80bbe311251c884933988d1e19d7deebc5ea8cb` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/example--ae2fc8b59bb5d78467ef0b22.md) | 162 | `declaration-track:ae2fc8b59bb5d78467ef0b22d7782cacbcc636c31da59ce1158a02b1c8731831` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/example--9fbc7e5e8670709a40355955.md) | 164 | `declaration-track:9fbc7e5e8670709a40355955d3403e588b5f082b8a14f69bf95db697968a8208` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--8789b44ca552c536a1c3a73b.md) | 170 | `declaration-track:8789b44ca552c536a1c3a73bcd563e7ec35dbf1abb10d24f6efd17fd92eab616` |
| 29 | `theorem` | [finrank_hom_simple_simple](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/finrank-hom-simple-simple--9edcf100861409f314297c3b.md) | 175 | `result-track:9edcf100861409f314297c3b16bae14e10775c9dd222496a651a16b889664724` |
| 30 | `def` | [forget₂HomLinearEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/forget-homlinearequiv--c390e3752f484162135fa226.md) | 180 | `declaration-track:c390e3752f484162135fa226b383baf0bde578d1066e38503d87be2d79716a37` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/instance--324958ecef3b8bf8b8371898.md) | 197 | `declaration-track:324958ecef3b8bf8b83718980d811e8fc791aebe9feec6d4f849155434923bdd` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/example--0b03a684ac461fffa297a9e8.md) | 200 | `declaration-track:0b03a684ac461fffa297a9e892ecfa32893d6c62dce9affd205506ced13121c6` |
| 33 | `def` | [dualTensorIsoLinHomAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/dualtensorisolinhomaux--26d004a99d6624150e805a72.md) | 221 | `declaration-track:26d004a99d6624150e805a7273cb67417347d9f7a4f68f1f696dcbedfb05de48` |
| 34 | `def` | [dualTensorIsoLinHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/dualtensorisolinhom--5794926edcfadb61d327b39b.md) | 228 | `declaration-track:5794926edcfadb61d327b39bba1a93101b8e652dbe4f1203662e8f1306232291` |
| 35 | `theorem` | [dualTensorIsoLinHom_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Varianta9f6f8385253ce88f38cee7f32c00a3345f9d62807a6737051b0ec656b27e887.lean/declarations/dualtensorisolinhom-hom-hom--9bb623297ebbdbe12eee2473.md) | 234 | `result-track:9bb623297ebbdbe12eee24736de501b5eb93d22b5a024de769688cf260d272fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
