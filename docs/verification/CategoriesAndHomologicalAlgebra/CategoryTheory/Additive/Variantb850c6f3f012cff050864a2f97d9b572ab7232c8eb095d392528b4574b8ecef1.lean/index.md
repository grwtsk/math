# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Additive.Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1be67baae8d6de14793968eb63cb74711ba05917",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1be67baae8d6de14793968eb63cb74711ba05917`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Single` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/instance--ed8005085e7e1189a89ad601.md) | 48 | `declaration-track:ed8005085e7e1189a89ad6016f303f821bd7979146dc34cf94208827c57e1294` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/instance--73af14da2e5caa5b65fe3239.md) | 51 | `declaration-track:73af14da2e5caa5b65fe3239d0ee3c5c317ec35bb1ed1e067e40a3f95e956758` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/instance--dd2ceced837b7a76f7a6552b.md) | 54 | `declaration-track:dd2ceced837b7a76f7a6552b2b9d1845fb35019d65f5698706a73f2be6e33533` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/instance--dd3e89e1a11861b394bf89cb.md) | 57 | `declaration-track:dd3e89e1a11861b394bf89cbb9c4c0eae0a001265badf2005fce7079eb8e49aa` |
| 5 | `instance` | [hasNatScalar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/hasnatscalar--0edce5f4eb14092d9502a34c.md) | 60 | `declaration-track:0edce5f4eb14092d9502a34ca4e5dd55e74edb54dc566d4c3e8d88ad54d986b6` |
| 6 | `instance` | [hasIntScalar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/hasintscalar--64637bcb0a67644483bd7538.md) | 66 | `declaration-track:64637bcb0a67644483bd753849f3257d0384870f14ccf7c8cbefd580da805dce` |
| 7 | `theorem` | [zero_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/zero-f-apply--bf09d98ae6c5dbcaf4acbae9.md) | 73 | `result-track:bf09d98ae6c5dbcaf4acbae9bfae42812fc4d929602183df166788af01bdbc97` |
| 8 | `theorem` | [add_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/add-f-apply--a811c10ad6477a9450731634.md) | 78 | `result-track:a811c10ad6477a9450731634e169e19044b1049330b551f77cad3f1469b882c7` |
| 9 | `theorem` | [neg_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/neg-f-apply--0c851b7bf8a3f453142e02b5.md) | 83 | `result-track:0c851b7bf8a3f453142e02b5a3962575497ff7b671f5fd477de8f19302b45af0` |
| 10 | `theorem` | [sub_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/sub-f-apply--7c6ca6995a37ee18c170ab75.md) | 88 | `result-track:7c6ca6995a37ee18c170ab7545f2b8b5a8177ecc4b14ea9cccc4ecccdb2bd8e8` |
| 11 | `theorem` | [nsmul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/nsmul-f-apply--f737cb99496774f1561f6c4c.md) | 93 | `result-track:f737cb99496774f1561f6c4cd7da0406ba17f24312691a08bef2f71f13f63543` |
| 12 | `theorem` | [zsmul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/zsmul-f-apply--eef9b1e1f5d6c69de0397fa4.md) | 98 | `result-track:eef9b1e1f5d6c69de0397fa4336e252173474cdaf9494bb141251519c433dcb0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/instance--0db4b157aac1f3439a0eac7f.md) | 102 | `declaration-track:0db4b157aac1f3439a0eac7fa94d4d1803daca49db68d982eb00c332b08e0f4c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/instance--2232cd83952e99da0c2349a0.md) | 108 | `declaration-track:2232cd83952e99da0c2349a04f0f506de7d737aec4bf9c896e480575c2eb87d4` |
| 15 | `def` | [Hom.fAddMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/hom-faddmonoidhom--3c5d374130204b580f82a247.md) | 120 | `declaration-track:3c5d374130204b580f82a247a078d2a372a3b3a22d338ef3434e5cf2136105d0` |
| 16 | `instance` | [eval_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/eval-additive--1efc0337fb425ee9685f324f.md) | 128 | `declaration-track:1efc0337fb425ee9685f324fa5a9876f2c63d3958ad078ed4868aa10928840b3` |
| 17 | `instance` | [cycles_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/cycles-additive--508ce137d7e24db47685d4d9.md) | 131 | `declaration-track:508ce137d7e24db47685d4d9f02f5a302b7d9c155f0b253c02e3f35c3c60a194` |
| 18 | `instance` | [boundaries_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/boundaries-additive--fa3e108f2648186409550284.md) | 136 | `declaration-track:fa3e108f264818640955028461e9d783b6dc85f9d28eebd7c1a4992e071d3826` |
| 19 | `instance` | [homology_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/homology-additive--c62bc7fd6c2ef1cf4f52bcbb.md) | 141 | `declaration-track:c62bc7fd6c2ef1cf4f52bcbbb4c70215b9529c37794daae823285bea1960e582` |
| 20 | `def` | [Functor.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/functor-maphomologicalcomplex--d6d007135b679a2f30c67a15.md) | 161 | `declaration-track:d6d007135b679a2f30c67a15d3671ff47db89e82bf5165f2992fe04e7ebfe76f` |
| 21 | `def` | [Functor.mapHomologicalComplexIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/functor-maphomologicalcomplexidiso--840920853ad1e129a8a05a16.md) | 182 | `declaration-track:840920853ad1e129a8a05a16022edcc48e3cd0a514b70068e85ead8f025d542a` |
| 22 | `instance` | [Functor.map_homogical_complex_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/functor-map-homogical-complex-additive--10f4d8719d6a9597435332a2.md) | 189 | `declaration-track:10f4d8719d6a9597435332a207b11c7af933f65e91cda245c27d96960ecbf10f` |
| 23 | `instance` | [Functor.mapHomologicalComplex_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/functor-maphomologicalcomplex-reflects-iso--e3d1e14971b539680d0240c4.md) | 193 | `declaration-track:e3d1e14971b539680d0240c41dd33f2cdcaf844ee56396c0f21a465c3716957f` |
| 24 | `def` | [NatTrans.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/nattrans-maphomologicalcomplex--6afc19527b6ea02efde9af04.md) | 209 | `declaration-track:6afc19527b6ea02efde9af04aec0b3254070af68550a7574aeaa9c998e3a502d` |
| 25 | `theorem` | [NatTrans.mapHomologicalComplex_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/nattrans-maphomologicalcomplex-id--f59e295eb42e91b578adeacb.md) | 215 | `result-track:f59e295eb42e91b578adeacb717cd9ea569b2c977ab24cb4461794689944f314` |
| 26 | `theorem` | [NatTrans.mapHomologicalComplex_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/nattrans-maphomologicalcomplex-comp--e8b55c53572e887037d9d27f.md) | 220 | `result-track:e8b55c53572e887037d9d27f8fb1a1d4acdaf20275d782867cfe889eb2721d29` |
| 27 | `theorem` | [NatTrans.mapHomologicalComplex_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/nattrans-maphomologicalcomplex-naturality--d21b3c65798b3ae39ee99f30.md) | 228 | `result-track:d21b3c65798b3ae39ee99f30c1b777991fad85959a514bdbf88c1b5bb6093689` |
| 28 | `def` | [NatIso.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/natiso-maphomologicalcomplex--ec5b9a730bf52710829a4894.md) | 239 | `declaration-track:ec5b9a730bf52710829a48940ad44b44fef1330922b075dc7599af20537327df` |
| 29 | `def` | [Equivalence.mapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/equivalence-maphomologicalcomplex--269e657179b7c2d1df325bd0.md) | 253 | `declaration-track:269e657179b7c2d1df325bd06829e969060a04cc86fe2f9e2da53e7379e3c36c` |
| 30 | `theorem` | [map_chain_complex_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/map-chain-complex-of--ae53c7380308e7fe53aa4f53.md) | 270 | `result-track:ae53c7380308e7fe53aa4f53a9172d6c11d9a6feed4e68d434293ad839bbe840` |
| 31 | `def` | [singleMapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/singlemaphomologicalcomplex--df0a2335377cb586c1adb524.md) | 292 | `declaration-track:df0a2335377cb586c1adb5246d767f79a58c4df92752b362e81fa4e6d10e88c5` |
| 32 | `theorem` | [singleMapHomologicalComplex_hom_app_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/singlemaphomologicalcomplex-hom-app-self--ff61894ad10f9ba4b6e229ba.md) | 321 | `result-track:ff61894ad10f9ba4b6e229ba4b3024f2ef015cc382ad8d8a861fdc3d4b545d7f` |
| 33 | `theorem` | [singleMapHomologicalComplex_hom_app_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/singlemaphomologicalcomplex-hom-app-ne--83a81c18290b6d6366ae4868.md) | 327 | `result-track:83a81c18290b6d6366ae4868a0a3b67e6a3c68079d371616a3b2585b3f38cdf8` |
| 34 | `theorem` | [singleMapHomologicalComplex_inv_app_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/singlemaphomologicalcomplex-inv-app-self--2fc82b418bcfe2726d41020b.md) | 333 | `result-track:2fc82b418bcfe2726d41020b4cbc5545ae7dc8aaebc3ca3a7d6a489eea26e897` |
| 35 | `theorem` | [singleMapHomologicalComplex_inv_app_ne](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/singlemaphomologicalcomplex-inv-app-ne--dc03bc9d3fe077bb3973ac0a.md) | 339 | `result-track:dc03bc9d3fe077bb3973ac0a6449386494e2233fd1081aa1f0858f8395ffe042` |
| 36 | `def` | [single₀MapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex--78afdcdba372f2c4205bec3d.md) | 351 | `declaration-track:78afdcdba372f2c4205bec3dfb0af02369b07406e3c790e7db6368e6dac2f516` |
| 37 | `theorem` | [single₀MapHomologicalComplex_hom_app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-hom-app-zero--88c3eb0523c386cfd50baff3.md) | 377 | `result-track:88c3eb0523c386cfd50baff31e509d4272d678be83a5d06f323164be86455a6e` |
| 38 | `theorem` | [single₀MapHomologicalComplex_hom_app_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-hom-app-succ--031570ed389475df23428a61.md) | 383 | `result-track:031570ed389475df23428a613b2eb538111f565b18fc1e0555c0e3614ac3e71f` |
| 39 | `theorem` | [single₀MapHomologicalComplex_inv_app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-inv-app-zero--10d4dd19dbb62091788eecf7.md) | 389 | `result-track:10d4dd19dbb62091788eecf77e181e50c4f846a5697983bb7399589e1e7fffae` |
| 40 | `theorem` | [single₀MapHomologicalComplex_inv_app_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-inv-app-succ--5324ec3777167d1955767221.md) | 395 | `result-track:5324ec3777167d19557672216e870ae30fdc06faabec6a65f9f6984a93e3d425` |
| 41 | `def` | [single₀MapHomologicalComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex--9982ad3b1ebd8070e93886ed.md) | 407 | `declaration-track:9982ad3b1ebd8070e93886eda603e1385637764abc388f0a797e9eb6f959735f` |
| 42 | `theorem` | [single₀MapHomologicalComplex_hom_app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-hom-app-zero--36b23713046cd62d7da35fe2.md) | 433 | `result-track:36b23713046cd62d7da35fe21185aac344170b65138b5b5d66c1f67691469f0d` |
| 43 | `theorem` | [single₀MapHomologicalComplex_hom_app_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-hom-app-succ--ace8dfb2e8e5992f4639d504.md) | 439 | `result-track:ace8dfb2e8e5992f4639d50407a6f99dcbe8cf3487e2be1079a6811f8fbd7fcf` |
| 44 | `theorem` | [single₀MapHomologicalComplex_inv_app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-inv-app-zero--324180b5ae608db2c553f74c.md) | 445 | `result-track:324180b5ae608db2c553f74c4c61dd751702bd7b2c13c156311b1c44b2d52a96` |
| 45 | `theorem` | [single₀MapHomologicalComplex_inv_app_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/declarations/single-maphomologicalcomplex-inv-app-succ--6faa8ec1b415598cebe860d5.md) | 451 | `result-track:6faa8ec1b415598cebe860d50ee13a979544d5e39c10c4b216344bad1c7e64bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
