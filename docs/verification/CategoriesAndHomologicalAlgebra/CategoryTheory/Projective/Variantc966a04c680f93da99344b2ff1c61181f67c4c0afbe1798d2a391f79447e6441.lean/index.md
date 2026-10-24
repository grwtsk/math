# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Projective.Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d473f03a1a66fd4e639d7c3e5a075fddcb79ff20",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d473f03a1a66fd4e639d7c3e5a075fddcb79ff20`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/projective--6c35d7bea129a12b48410e44.md) | 45 | `declaration-track:6c35d7bea129a12b48410e44150ecae6f94cdd1f7fe4036f92766c961d8138cb` |
| 2 | `structure` | [ProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/projectivepresentation--25e442ba78c7ae42418ee88e.md) | 55 | `declaration-track:25e442ba78c7ae42418ee88e79ccabff5db61a389580b24b9bf0373ab8abf9d5` |
| 3 | `class` | [EnoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/enoughprojectives--202e341b885539e169a5c608.md) | 68 | `declaration-track:202e341b885539e169a5c6086ba2929249053c35f51ac2a1ae4555fe8ac9f9e7` |
| 4 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/factorthru--9a6e6898217b9ffbbfee6ef2.md) | 79 | `declaration-track:9a6e6898217b9ffbbfee6ef26b8000152f15f4ec004cb5f9d12d3e1de459d6a2` |
| 5 | `theorem` | [factorThru_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/factorthru-comp--428bba27ac55cd362b6a4b29.md) | 84 | `result-track:428bba27ac55cd362b6a4b29dfaa9ce4e942a00bfc060402d5d95b94de600939` |
| 6 | `instance` | [zero_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/zero-projective--650e47427b2f7a554772fa6f.md) | 93 | `declaration-track:650e47427b2f7a554772fa6fc463be752f0fe77b5d0c1d8e0f238a7cc2dab68b` |
| 7 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/of-iso--5e80e921cb4fcc54e172ee59.md) | 99 | `result-track:5e80e921cb4fcc54e172ee593a46c636fb543415709b82b6c3e8bd190d4b58d5` |
| 8 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/iso-iff--b1df3469c0e9995304e52b7d.md) | 105 | `result-track:b1df3469c0e9995304e52b7db1e4bff57485437d63bac31e2a549ff8ded325f0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/instance--4a21bb15a6b2b0d714fe1562.md) | 110 | `declaration-track:4a21bb15a6b2b0d714fe156207deafbdab1ed793416378fe37e21178488809c8` |
| 10 | `instance` | [Type.enoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/type-enoughprojectives--e0a3497b5e243e9a33d1d5b1.md) | 115 | `declaration-track:e0a3497b5e243e9a33d1d5b106ae5f2333881aae2e1c521635db9357f5aecb75` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/instance--cdf9f86c3a19f16546a11af8.md) | 119 | `declaration-track:cdf9f86c3a19f16546a11af84c801e45d245f954ce49b9d2b98eb5decf53c007` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/instance--16decc0f0561e81fd493f890.md) | 123 | `declaration-track:16decc0f0561e81fd493f890f1afa7599d931021ae12fb10a3181e34fe690110` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/instance--858fc0195e62c360d57618c2.md) | 126 | `declaration-track:858fc0195e62c360d57618c2343e0071d1f31afbeec706f35c202d24e7e6d947` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/instance--adb43e0605294e779420cc80.md) | 131 | `declaration-track:adb43e0605294e779420cc80fb17203a9dfc2485396e3d38079da9e8d90a4492` |
| 15 | `theorem` | [projective_iff_preservesEpimorphisms_coyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/projective-iff-preservesepimorphisms-coyoneda-obj--2ef7f7ed0d51aa2731316ae8.md) | 135 | `result-track:2ef7f7ed0d51aa2731316ae85bd23fe3cdec9367d4b3d5f7ec606794635e3772` |
| 16 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/over--ecfd278a7c56c21151ef3cec.md) | 154 | `declaration-track:ecfd278a7c56c21151ef3cec0dd69654de7811eec047358e021d39e7449bb4e9` |
| 17 | `instance` | [projective_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/projective-over--00e25a798c456b62d5109b19.md) | 158 | `declaration-track:00e25a798c456b62d5109b19f66fb72ba9654b6fcee0687f1b82a8cb447befda` |
| 18 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/anonymous--0db7d8914d9fb84f2f94d8f7.md) | 165 | `declaration-track:0db7d8914d9fb84f2f94d8f7c6a12806fab1fa10660cf2a78353c4bf9549f4c7` |
| 19 | `instance` | [π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/epi--50d28aec061d8b5c9e11feac.md) | 169 | `declaration-track:50d28aec061d8b5c9e11feaccc80f81116c4d67ff4a7d7a67fb7899e9c45eb52` |
| 20 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/syzygies--d3170b09b5afac793228c8eb.md) | 180 | `declaration-track:d3170b09b5afac793228c8eb997e5dc56025a50f5b8fd4d1ee4eb0464793c351` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/instance--ab226d277f0a2828efed9f48.md) | 183 | `declaration-track:ab226d277f0a2828efed9f48de9534019c3fcefb9a1ee5a9d6c53a2a29c4f9d1` |
| 22 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/d--c733c1541eeeba0472969ac8.md) | 191 | `declaration-track:c733c1541eeeba0472969ac8dd892d396c0a55017b25f74d571b3e55424b70f7` |
| 23 | `theorem` | [map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/map-projective--99e1b498c794a3722a79d0a4.md) | 205 | `result-track:99e1b498c794a3722a79d0a4e935744487edaf12fdb009c0c0dae21d2ad36aea` |
| 24 | `theorem` | [projective_of_map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/projective-of-map-projective--a4ae6783c1d93a41540081c9.md) | 214 | `result-track:a4ae6783c1d93a41540081c9db13fbaccd2be286128894b36c5ade674e94377a` |
| 25 | `def` | [mapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/mapprojectivepresentation--324a23412082a5549cf2fc1c.md) | 226 | `declaration-track:324a23412082a5549cf2fc1c4d48829319a82dab54c7a65dd294a0ad6c611554` |
| 26 | `def` | [projectivePresentationOfMapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/projectivepresentationofmapprojectivepresentation--f39cb064e0dc4fc4d3b6848b.md) | 242 | `declaration-track:f39cb064e0dc4fc4d3b6848b18d555fe4d31f549383f54ac39bd60e6c2bcc9ea` |
| 27 | `theorem` | [enoughProjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/enoughprojectives-iff--e6cc7010f64c49e4485ca8d2.md) | 250 | `result-track:e6cc7010f64c49e4485ca8d2c220e0c0905d0f74db8ff16deccfd70159ab09cf` |
| 28 | `def` | [Exact.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/exact-lift--ef29e4123304b67f2377aec4.md) | 271 | `declaration-track:ef29e4123304b67f2377aec4bbbf708f4c731b2b256946549963eeddc712f467` |
| 29 | `theorem` | [Exact.lift_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variantc966a04c680f93da99344b2ff1c61181f67c4c0afbe1798d2a391f79447e6441.lean/declarations/exact-lift-comp--0ec61fff2e03f51bfa57c0d4.md) | 280 | `result-track:0ec61fff2e03f51bfa57c0d4fc3556e88b2b00b05608ba359840b0ffc2be7388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
