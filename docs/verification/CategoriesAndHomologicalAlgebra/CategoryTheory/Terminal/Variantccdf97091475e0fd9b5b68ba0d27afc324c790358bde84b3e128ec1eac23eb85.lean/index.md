# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Terminal.Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c97f22bee77e73f33d29a87479991e0b8b2e20db",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c97f22bee77e73f33d29a87479991e0b8b2e20db`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLimitMapConeEmptyConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/islimitmapconeemptyconeequiv--db4cd2e4ca5c8cca8b8e40a2.md) | 50 | `declaration-track:db4cd2e4ca5c8cca8b8e40a282664d3edc723cb74e0bef6ca9094a8e71846985` |
| 2 | `def` | [IsTerminal.isTerminalObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/isterminal-isterminalobj--67825d5a87a5515b2f3ba14b.md) | 56 | `declaration-track:67825d5a87a5515b2f3ba14b65fe784da8071904c1f294c4a4f8e2dcffa9f6ed` |
| 3 | `def` | [IsTerminal.isTerminalOfObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/isterminal-isterminalofobj--3384cb2d07922a2d2810dd46.md) | 62 | `declaration-track:3384cb2d07922a2d2810dd465e4a349e038cdb94b7bfad6262fb97c481f51f18` |
| 4 | `def` | [preservesLimitsOfShapePemptyOfPreservesTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preserveslimitsofshapepemptyofpreservesterminal--6d0df6db7a7f71e0bc4abdcf.md) | 68 | `declaration-track:6d0df6db7a7f71e0bc4abdcf189f70034d2f29c6e3d87e14c13322e7f2bd0e0e` |
| 5 | `def` | [isLimitOfHasTerminalOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/islimitofhasterminalofpreserveslimit--41ff4566c83a2c0713a46560.md) | 80 | `declaration-track:41ff4566c83a2c0713a46560f8523adbd6d4301ecff58c47da03739e81af16e4` |
| 6 | `theorem` | [hasTerminal_of_hasTerminal_of_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/hasterminal-of-hasterminal-of-preserveslimit--aef2772bb1793904c4842ac2.md) | 91 | `result-track:aef2772bb1793904c4842ac288548beb7bdf6f06a994d4173083a87d7a60c826` |
| 7 | `def` | [PreservesTerminal.ofIsoComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesterminal-ofisocomparison--3c99eebd85d02e51210d2f07.md) | 101 | `declaration-track:3c99eebd85d02e51210d2f071a5d1395b125478eb45117a1ceb5a50d12f9854c` |
| 8 | `def` | [preservesTerminalOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesterminalofisiso--36c44660d35129dfc51a6dc1.md) | 109 | `declaration-track:36c44660d35129dfc51a6dc1e5c4f553ebd455eb1bab1908bd6b1b48b2767d29` |
| 9 | `def` | [preservesTerminalOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesterminalofiso--606978bb9f8f07813d5dd3ee.md) | 116 | `declaration-track:606978bb9f8f07813d5dd3ee41262f7dddc773e3a74bf6808b2f671c5047e7d6` |
| 10 | `def` | [PreservesTerminal.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesterminal-iso--4665b15d5efc4f14d05e518e.md) | 124 | `declaration-track:4665b15d5efc4f14d05e518eb425865a8731d2cea544e7226a38b79722fed646` |
| 11 | `theorem` | [PreservesTerminal.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesterminal-iso-hom--b2729d3f7277df7b094e5c26.md) | 129 | `result-track:b2729d3f7277df7b094e5c26df3dd003148fd22fa3fe82720f47626d24ae052f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/instance--69bce4a189f375dea61d66d9.md) | 133 | `declaration-track:69bce4a189f375dea61d66d90950652ae4c5a89dad7be393b303825ce6a1bf58` |
| 13 | `def` | [isColimitMapCoconeEmptyCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/iscolimitmapcoconeemptycoconeequiv--73c164303d6820c3971c553f.md) | 143 | `declaration-track:73c164303d6820c3971c553f4ddde794b3016f86112af0967be2dedc4339de7a` |
| 14 | `def` | [IsInitial.isInitialObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/isinitial-isinitialobj--47f79f471d749626da5f0ea3.md) | 149 | `declaration-track:47f79f471d749626da5f0ea316b235d5f1c7abb197dee0ad8ced59975ffc13ae` |
| 15 | `def` | [IsInitial.isInitialOfObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/isinitial-isinitialofobj--8114877ffedb653519f793a2.md) | 155 | `declaration-track:8114877ffedb653519f793a22109d38b4f3a50c23947331386689b32975b2b4d` |
| 16 | `def` | [preservesColimitsOfShapePemptyOfPreservesInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservescolimitsofshapepemptyofpreservesinitial--6a2511d48e3deda92e9082a7.md) | 161 | `declaration-track:6a2511d48e3deda92e9082a7243811ef956de184cf125769dc5c528dca06424d` |
| 17 | `def` | [isColimitOfHasInitialOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/iscolimitofhasinitialofpreservescolimit--000e06347cdf69071d381e80.md) | 172 | `declaration-track:000e06347cdf69071d381e803d62c7307bcf1a00dab64551398969a462521bb0` |
| 18 | `theorem` | [hasInitial_of_hasInitial_of_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/hasinitial-of-hasinitial-of-preservescolimit--49dd39efee6c8f2b6ea748bc.md) | 183 | `result-track:49dd39efee6c8f2b6ea748bc2542f922c25f304001c8ae28fb3e35f34d62bbc9` |
| 19 | `def` | [PreservesInitial.ofIsoComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesinitial-ofisocomparison--ce56542e50b042b05fac1848.md) | 194 | `declaration-track:ce56542e50b042b05fac184874abfcae8352493cc9bd5c0510cd88058cc17265` |
| 20 | `def` | [preservesInitialOfIsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesinitialofisiso--3d22a2432b065884b8a15cb6.md) | 202 | `declaration-track:3d22a2432b065884b8a15cb646e63b4b8d30d840c2597fa58cc21c877ac207aa` |
| 21 | `def` | [preservesInitialOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesinitialofiso--ce94eb41e52db7c6f182ff40.md) | 209 | `declaration-track:ce94eb41e52db7c6f182ff4049047f94110f8d868c0bc253c70e54bf54802985` |
| 22 | `def` | [PreservesInitial.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesinitial-iso--bccc7a1a91defb049e5a2899.md) | 216 | `declaration-track:bccc7a1a91defb049e5a28990f13df2118eb6f2ce83757b9f6a014e6db79f193` |
| 23 | `theorem` | [PreservesInitial.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/preservesinitial-iso-hom--5665522c59dc5e81fff9e21c.md) | 221 | `result-track:5665522c59dc5e81fff9e21cbd5d9d357dda20f60bed978274757837e39b7fbe` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Terminal/Variantccdf97091475e0fd9b5b68ba0d27afc324c790358bde84b3e128ec1eac23eb85.lean/declarations/instance--9511f4715a5b2ffba4eb3712.md) | 225 | `declaration-track:9511f4715a5b2ffba4eb3712797d5652b1003f530f68a6594747d149e5030232` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
