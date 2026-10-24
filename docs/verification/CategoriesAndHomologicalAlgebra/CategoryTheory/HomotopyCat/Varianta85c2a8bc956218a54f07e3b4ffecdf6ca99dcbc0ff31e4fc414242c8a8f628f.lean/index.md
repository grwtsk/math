# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCat.Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69b86d6bb6331f2184e7ee447ebe2688df28aaac",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69b86d6bb6331f2184e7ee447ebe2688df28aaac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Coskeletal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ReflQuiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.ReflQuiver` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OneTruncation₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation--d8dc5b616a298477f8f70754.md) | 47 | `declaration-track:d8dc5b616a298477f8f7075474feb6480c70776796505c68ef27c45eefba96cc` |
| 2 | `abbrev` | [δ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/anonymous--e72964d940314ea3e1ffc35f.md) | 50 | `declaration-track:e72964d940314ea3e1ffc35f056f057e18479d88df3f5c4abe232e82fd4aa4f6` |
| 3 | `abbrev` | [σ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/anonymous--69447465dcfc8545363dd289.md) | 54 | `declaration-track:69447465dcfc8545363dd28948eaa6fd29783258398148a57be1aea77c73407b` |
| 4 | `lemma` | [δ₂_zero_comp_σ₂_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/zero-comp-zero--aa36130363ea2d7cd624d321.md) | 58 | `result-track:aa36130363ea2d7cd624d32134fa8da76a4ac45eea0ed16b3a72a343c9dd41ca` |
| 5 | `lemma` | [δ₂_zero_comp_σ₂_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/zero-comp-one--5a2995788d70fbed663cb9a9.md) | 62 | `result-track:5a2995788d70fbed663cb9a93883d4a2e4bb8f7fbcae50b2edd29e4af69b501f` |
| 6 | `lemma` | [δ₂_one_comp_σ₂_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/one-comp-zero--068d42e80c29c4148d65b4f0.md) | 66 | `result-track:068d42e80c29c4148d65b4f0d894309094289a8ad358a20ff2468634866ba799` |
| 7 | `lemma` | [δ₂_two_comp_σ₂_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/two-comp-one--91b3a6ea489a534726b3b371.md) | 70 | `result-track:91b3a6ea489a534726b3b3711e02c0e8b3e6b57d039070f57c07e4196feb57b0` |
| 8 | `lemma` | [δ₂_two_comp_σ₂_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/two-comp-zero--7591180783f1cf67e9ad0a14.md) | 73 | `result-track:7591180783f1cf67e9ad0a148cd7b97e3f88b5cc56bb37471708f839e00d2d30` |
| 9 | `structure` | [OneTruncation₂.Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-hom--911c5bb63a00fc46642d6d2b.md) | 79 | `declaration-track:911c5bb63a00fc46642d6d2b1b193d9427b7f7189a39567ff054bbacb1afef42` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/instance--3ecfd86c4acc61ff08c0a657.md) | 88 | `declaration-track:3ecfd86c4acc61ff08c0a657d07c4956afd0563e2d6a748757d1121721552a6e` |
| 11 | `lemma` | [OneTruncation₂.id_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-id-edge--4445e2dde98378a9926d0535.md) | 100 | `result-track:4445e2dde98378a9926d0535e09c808e4114079787d8578be68192e397791126` |
| 12 | `def` | [oneTruncation₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation--7d6251a6f13eff7e7ffc24cb.md) | 105 | `declaration-track:7d6251a6f13eff7e7ffc24cbd96cb4c43b359e0eab9321223a08ea62fbf7c778` |
| 13 | `lemma` | [OneTruncation₂.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-hom-ext--26973d3bf289318cea4a523e.md) | 118 | `result-track:26973d3bf289318cea4a523e44d52ed54783dcb4221205f579a9f3b7fc29fe21` |
| 14 | `lemma` | [OneTruncation₂.homOfEq_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-homofeq-edge--7d027f3e61dee2db39704813.md) | 122 | `result-track:7d027f3e61dee2db39704813e25bc52cafdc901eb749701ab5b2a6e501adc591` |
| 15 | `def` | [OneTruncation₂.nerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-nerveequiv--467f63a278cd9a679aec8fc4.md) | 135 | `declaration-track:467f63a278cd9a679aec8fc4461add7e7ed1c31a296f97025e78a37e4e5a5723` |
| 16 | `def` | [OneTruncation₂.nerveHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-nervehomequiv--9f5aaa8c19575ab82b0cede1.md) | 143 | `declaration-track:9f5aaa8c19575ab82b0cede13b38cf3531ae81c5b04c1f9d1d62aa952e7bd04f` |
| 17 | `def` | [OneTruncation₂.ofNerve₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-ofnerve--9148b6e285add480e89a9f1a.md) | 158 | `declaration-track:9148b6e285add480e89a9f1ac601bf716f664a0dd4f74ee33aa5e6c753b02d58` |
| 18 | `def` | [OneTruncation₂.ofNerve₂.natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/onetruncation-ofnerve-natiso--230d9f2f750838e74e0cd0c7.md) | 179 | `declaration-track:230d9f2f750838e74e0cd0c740613857d61d85ffbae07fb68ba50d8036d73343` |
| 19 | `lemma` | [map_map_of_eq.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/map-map-of-eq--58799495c4740d1788a431af.md) | 201 | `result-track:58799495c4740d1788a431af7cb29a753270237d51a57fc6ba5b756226aa778e` |
| 20 | `def` | [ι0₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/0--65931ef0eba7ea8c091fd409.md) | 213 | `declaration-track:65931ef0eba7ea8c091fd409f6bc06e7832a07f5c84434dce1ba5fcba4c7e426` |
| 21 | `def` | [ι1₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/1--28733aca3643523b3a23ded9.md) | 217 | `declaration-track:28733aca3643523b3a23ded9792154ddd54952294bfc853901534b0f0f9cef11` |
| 22 | `def` | [ι2₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/2--56f213c7dd4b5e93accd8a70.md) | 221 | `declaration-track:56f213c7dd4b5e93accd8a706273e2c9258262ce420b5e61b945940f6a28bb2c` |
| 23 | `def` | [ev0₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/ev0--c4474ecc0e1548ad3030e2fc.md) | 224 | `declaration-track:c4474ecc0e1548ad3030e2fc3d688608d7be20862a88a1ece7b7b4a13f3bcf3e` |
| 24 | `def` | [ev1₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/ev1--f6479c94f83db9843fa06a74.md) | 227 | `declaration-track:f6479c94f83db9843fa06a74c261c166589febe94867edace3e7a15541afce5d` |
| 25 | `def` | [ev2₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/ev2--78a386fb5c266354a21f97ac.md) | 230 | `declaration-track:78a386fb5c266354a21f97ac89cb4f9d06561c4f1d86a4b154cf2a10bc353447` |
| 26 | `def` | [δ0₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/0--ddb18935fcc02ff6e8d6aec3.md) | 233 | `declaration-track:ddb18935fcc02ff6e8d6aec3ce700118869bc9c9ddd6793cb791cbc2b3406220` |
| 27 | `def` | [δ1₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/1--42fb853403d3446a25c67c21.md) | 236 | `declaration-track:42fb853403d3446a25c67c21fa9f4c940a29b1da8bf5019ea4aa4188a1bd4e22` |
| 28 | `def` | [δ2₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/2--1e326f85b39924a8dc1917e8.md) | 239 | `declaration-track:1e326f85b39924a8dc1917e86e7032c8554e476aaf139394d8f9f889408265f2` |
| 29 | `def` | [ev12₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/ev12--21f7c7cd578f19fc1fc651cb.md) | 243 | `declaration-track:21f7c7cd578f19fc1fc651cb06e0a0627a9544e1e74ee7f8717afa9bc46640d0` |
| 30 | `def` | [ev02₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/ev02--2e802688a981fa4161ac21c6.md) | 250 | `declaration-track:2e802688a981fa4161ac21c62cb4ab3a91ec9f94fdbaa50e8aaef32b244ba9de` |
| 31 | `def` | [ev01₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/ev01--0f20ddbdacc5714b743f6364.md) | 255 | `declaration-track:0f20ddbdacc5714b743f63644e1ef4249c78c91e1b6e0d30d3c14d7c36dec218` |
| 32 | `inductive` | [HoRel₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/horel--f9ba520ce955a1c04e4405cc.md) | 261 | `declaration-track:f9ba520ce955a1c04e4405cccf4dbf0d9b9072977af37c7a47ff566fe76cb913` |
| 33 | `theorem` | [HoRel₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/horel-mk--5e51f8b6c270539b1439e376.md) | 271 | `result-track:5e51f8b6c270539b1439e376b654062a895fe48b93381b18c15e23fc463b1090` |
| 34 | `def` | [_root_.SSet.Truncated.HomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/root-sset-truncated-homotopycategory--b1f20f2bb5b37fa55b2207fa.md) | 292 | `declaration-track:b1f20f2bb5b37fa55b2207faac28eba364539dc8a48dfd99ed86ddaab90f7c83` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/instance--3aa624aa7c1c0bcb0179abd2.md) | 295 | `declaration-track:3aa624aa7c1c0bcb0179abd22915145b235863909ca37e82452f68e2c34763a6` |
| 36 | `def` | [_root_.SSet.Truncated.HomotopyCategory.quotientFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/root-sset-truncated-homotopycategory-quotientfunctor--ca19af92fcbecae36d8026b2.md) | 300 | `declaration-track:ca19af92fcbecae36d8026b227f6c40d68c5c77788060b9a84b4ff20289a3b72` |
| 37 | `theorem` | [HomotopyCategory.lift_unique'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/homotopycategory-lift-unique--62a6ea55bef270468aa967c7.md) | 306 | `result-track:62a6ea55bef270468aa967c7a75857229ab613f7a848e58e151366611ee70813` |
| 38 | `def` | [mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/maphomotopycategory--fe9bcd1710a3ffccefa42470.md) | 314 | `declaration-track:fe9bcd1710a3ffccefa424708c2d9e0bf96afdc6ac598e399ed18e278a1028ac` |
| 39 | `def` | [hoFunctor₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/hofunctor--fc1a8a1d46d36a31c36ae5c4.md) | 329 | `declaration-track:fc1a8a1d46d36a31c36ae5c493ec830277603141d019a7ab8d44cbfd0195bf03` |
| 40 | `theorem` | [hoFunctor₂_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/hofunctor-naturality--f6b182037d8e3cfa6eb92943.md) | 342 | `result-track:f6b182037d8e3cfa6eb9294317f0b1af52f3618755dd6d597ecc852b34f844df` |
| 41 | `def` | [hoFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Varianta85c2a8bc956218a54f07e3b4ffecdf6ca99dcbc0ff31e4fc414242c8a8f628f.lean/declarations/hofunctor--f9cff02cada7b5f9ba01b80b.md) | 350 | `declaration-track:f9cff02cada7b5f9ba01b80bd0d20ff0c5983f63f1839eca5c20a1788a3d2bdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
