# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NonPreadditive.Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "641cc7b400e3849dcd1e5f1f841f34d65e1f2609",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `641cc7b400e3849dcd1e5f1f841f34d65e1f2609`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.NormalMono.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Images` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonPreadditiveAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/nonpreadditiveabelian--a135c93a263046b03788a411.md) | 70 | `declaration-track:a135c93a263046b03788a41123a33a42fd01eceabd3e200d8bc83906995224d9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/instance--28fc79c274ed44be56115133.md) | 106 | `declaration-track:28fc79c274ed44be5611513388fa17d99a5acfd3b36afa42a0e065d09c6d4ff2` |
| 3 | `instance` | [isIso_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/isiso-factorthruimage--497d5d9247e4836aca5fb223.md) | 141 | `declaration-track:497d5d9247e4836aca5fb223c9402b679a50123a6768f29912dae86301dd4496` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/instance--5ad28d1413a7e36452912781.md) | 146 | `declaration-track:5ad28d1413a7e36452912781caf7f73f61b8eedae62bb37ae6bd192c1f71139a` |
| 5 | `instance` | [isIso_factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/isiso-factorthrucoimage--565bf45e871ac03db1bf5e07.md) | 179 | `declaration-track:565bf45e871ac03db1bf5e07ca00148353c8b8e87c1e2538d87eb66077cf7c22` |
| 6 | `def` | [epiIsCokernelOfKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/epiiscokernelofkernel--6d4b4d9b289a9b066e38c8ce.md) | 192 | `declaration-track:6d4b4d9b289a9b066e38c8ce0f19eda87b4e4a85d2f89c0f2f7ddfe8e46d641e` |
| 7 | `def` | [monoIsKernelOfCokernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/monoiskernelofcokernel--ba23886ab371211dbd97279a.md) | 203 | `declaration-track:ba23886ab371211dbd97279a49e71b565f99afeb46d222e2e37a9f224e65ea2c` |
| 8 | `abbrev` | [r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/r--390fe13f179b712f120fe2aa.md) | 217 | `declaration-track:390fe13f179b712f120fe2aaf0eb784d469804de982088e252aca2e446ec88de` |
| 9 | `instance` | [mono_Δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/mono--4a8bf40f6ee209de9477b9e3.md) | 221 | `declaration-track:4a8bf40f6ee209de9477b9e301351bb992e62f0e0eaacd4debf68fd3298171b9` |
| 10 | `instance` | [mono_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/mono-r--167b6d2e7a483afb7e71290c.md) | 225 | `declaration-track:167b6d2e7a483afb7e71290c2bda1e79c774023ac9e666242a43cc53c408cde9` |
| 11 | `instance` | [epi_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/epi-r--c64063d83f77a1ffc071d8ae.md) | 242 | `declaration-track:c64063d83f77a1ffc071d8ae33e3a0f6d022dd3eadb14ffd1b42a466f09af95b` |
| 12 | `instance` | [isIso_r](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/isiso-r--54063c4a25e09cc0372ae9bb.md) | 269 | `declaration-track:54063c4a25e09cc0372ae9bb7c1b6355b92f29617f6143f938500b01cba57c51` |
| 13 | `abbrev` | [σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/anonymous--bad394fb1776e43ec5df6875.md) | 277 | `declaration-track:bad394fb1776e43ec5df6875a6793ee2b1bc595d5f020552d31018b3613d899e` |
| 14 | `theorem` | [diag_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/diag--881905bd83cb0180bc3ffed7.md) | 285 | `result-track:881905bd83cb0180bc3ffed7c454dae4bd5338956cc1cc04b2bdfa873db57e26` |
| 15 | `theorem` | [lift_σ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/lift--918808782de11b3864d3b62e.md) | 289 | `result-track:918808782de11b3864d3b62e455eaf81d242f5aafb5ee5825ef50e23fbdcad5f` |
| 16 | `theorem` | [lift_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/lift-map--b1f295bf887611ffd42f1bfe.md) | 293 | `result-track:b1f295bf887611ffd42f1bfe182c104ad8565f010d4c0e6f384a308932e83228` |
| 17 | `def` | [isColimitσ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/iscolimit--93bf2f2aae7d20b7f1ea81bb.md) | 298 | `declaration-track:93bf2f2aae7d20b7f1ea81bba176c7b188c1c5312c095c051ca281d31bbfb24a` |
| 18 | `theorem` | [σ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/comp--9734cfe0bb0d94a88d40a4fa.md) | 303 | `result-track:9734cfe0bb0d94a88d40a4fa341a28e36035847d900819a151eb2f7c07b1e3e9` |
| 19 | `def` | [hasSub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/hassub--edeefe2e626e8f44842ad493.md) | 320 | `declaration-track:edeefe2e626e8f44842ad49357dd6f521549213fdd0a3b89275828b7c259e78e` |
| 20 | `def` | [hasNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/hasneg--9a4f4e5945d3635aac8d4a24.md) | 328 | `declaration-track:9a4f4e5945d3635aac8d4a24db0fc1ce062c0b4e17b110b366702710eb9a1cf3` |
| 21 | `def` | [hasAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/hasadd--d43f5ba2dadb2a42778bee65.md) | 336 | `declaration-track:d43f5ba2dadb2a42778bee65f17cd058a098c0aa17927685c62d67dfa557b090` |
| 22 | `theorem` | [sub_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/sub-def--68bcfa9ee262f9f23b5abaaa.md) | 342 | `result-track:68bcfa9ee262f9f23b5abaaaa6e14af13b243344424fec9dcde568ef315f3c5e` |
| 23 | `theorem` | [add_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-def--387cc1e1aaee516d9da90c01.md) | 345 | `result-track:387cc1e1aaee516d9da90c0103e0fa929a3960a231fe86e8a1c18ce9a70c3b6a` |
| 24 | `theorem` | [neg_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/neg-def--8a0567ef32a25416915fd5c6.md) | 348 | `result-track:8a0567ef32a25416915fd5c60f985b0195635ac4c825d5ff8e56cbcb895b5a7c` |
| 25 | `theorem` | [sub_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/sub-zero--5dbcbedcc76c9ef722f6e711.md) | 351 | `result-track:5dbcbedcc76c9ef722f6e711779c3ffd3eb81324588778aead29ea40b0490860` |
| 26 | `theorem` | [sub_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/sub-self--c9f014c37d5c13b3db9bed42.md) | 359 | `result-track:c9f014c37d5c13b3db9bed42289905f15d955f4806eafee4d5e1d9d2b2ec6af1` |
| 27 | `theorem` | [lift_sub_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/lift-sub-lift--12e3aa2fceb99e364bfec0a6.md) | 363 | `result-track:12e3aa2fceb99e364bfec0a60c46330e668ffc95a2580a8838e16cbe93c487cd` |
| 28 | `theorem` | [sub_sub_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/sub-sub-sub--667ab016e7d19194e1f93658.md) | 371 | `result-track:667ab016e7d19194e1f936585f06241eea4b9a4fe05c8711d99e21566529f73d` |
| 29 | `theorem` | [neg_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/neg-sub--1729cb2a7313530c89f5fad7.md) | 375 | `result-track:1729cb2a7313530c89f5fad7fe1bf6c622d5549d6b7532fc643b2401dfa4a839` |
| 30 | `theorem` | [neg_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/neg-neg--3f68a9290ef01c531e693230.md) | 379 | `result-track:3f68a9290ef01c531e693230a27ec2d75ec88b9d4939f663fe1c2ad2819ffab0` |
| 31 | `theorem` | [add_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-comm--016a4db2cb651a6bb0c82a14.md) | 386 | `result-track:016a4db2cb651a6bb0c82a14502c39e789f096e2e1e5a56fb238a4987b541fd7` |
| 32 | `theorem` | [add_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-neg--53dab6fdc31f3b490b24cdcd.md) | 397 | `result-track:53dab6fdc31f3b490b24cdcde58142e684995eb23f5073629ed1c748d3d57066` |
| 33 | `theorem` | [add_neg_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-neg-self--b99c8c2454c98cd1a81b948b.md) | 400 | `result-track:b99c8c2454c98cd1a81b948b8af3deedd24fcedc362886a4964f11da9fd3ed1e` |
| 34 | `theorem` | [neg_add_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/neg-add-self--16e3bc2f2bb4f1eed4470d66.md) | 403 | `result-track:16e3bc2f2bb4f1eed4470d66119a6aa466c89da9682265e10c1e6f48f0e0bda0` |
| 35 | `theorem` | [neg_sub'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/neg-sub--248732d35e73c1d6808d465a.md) | 406 | `result-track:248732d35e73c1d6808d465a648c20399a5ad27051be8b5be1223d3717e47795` |
| 36 | `theorem` | [neg_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/neg-add--72e9ca744d1574ddab4063f0.md) | 412 | `result-track:72e9ca744d1574ddab4063f0a43bef1d20f2c0b178f142c5e3610029a5610886` |
| 37 | `theorem` | [sub_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/sub-add--81f4a828300bdd8f79f04eaa.md) | 415 | `result-track:81f4a828300bdd8f79f04eaa3a9621fe363408fe8c2e9f224c92d1dacb3d029b` |
| 38 | `theorem` | [add_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-assoc--58d9670bd42e2e8862b472ec.md) | 419 | `result-track:58d9670bd42e2e8862b472ecae025a875570f0449e16c8cb23be766d55b456e6` |
| 39 | `theorem` | [add_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-zero--8af021559c85c5d144e7a14b.md) | 425 | `result-track:8af021559c85c5d144e7a14b800a7100a42c4a322646c209074d064bf354fa8c` |
| 40 | `theorem` | [comp_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/comp-sub--defecb4308d29c512df22f40.md) | 428 | `result-track:defecb4308d29c512df22f40a305a4b0398e7c08bb486777bc635352982f3c21` |
| 41 | `theorem` | [sub_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/sub-comp--b351b39b88ead2fbfedaea3f.md) | 432 | `result-track:b351b39b88ead2fbfedaea3fa8adf066c3eafeafc3bcb909ee66e1aa68b4888b` |
| 42 | `theorem` | [comp_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/comp-add--50b6a2e5630e7f868d91f5c2.md) | 436 | `result-track:50b6a2e5630e7f868d91f5c23086f1d8231f029621e9e18cc25f7501f0325306` |
| 43 | `theorem` | [add_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/add-comp--ef286de5a00645f8e394219a.md) | 440 | `result-track:ef286de5a00645f8e394219ab770649da0343273e1a29671880fb0d5b6a82f6d` |
| 44 | `def` | [preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NonPreadditive/Variantc77f4ab181f90fef1a5b5f89f18737be828e1cae69929069583ebb4a468a3bb3.lean/declarations/preadditive--639bdbed6217bca280e9cc08.md) | 445 | `declaration-track:639bdbed6217bca280e9cc08b5a50551fa4dcbbfc9f0cf6bf432686a52ca3624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
