# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCategory.Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c527567470514f02f025ad96a3856b84e7ed4c8d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c527567470514f02f025ad96a3856b84e7ed4c8d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Homotopy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.IsInvertedBy` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient.Linear` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient.Preadditive` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homotopic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homotopic--7febee26cdac7fbe91a43084.md) | 30 | `declaration-track:7febee26cdac7fbe91a43084dd95fe20c2621728af0fc306d00fc06a825d38b4` |
| 2 | `instance` | [homotopy_congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homotopy-congruence--1170f6124f580f19bdcfe4d0.md) | 32 | `declaration-track:1170f6124f580f19bdcfe4d00bf13b1bb945cf40ac20e4ebfb8a516f8bc1153a` |
| 3 | `def` | [HomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homotopycategory--9400516e8714c6f1df0a634b.md) | 42 | `declaration-track:9400516e8714c6f1df0a634bb35d605a9dc4933ee75f417aa9f09341b3595491` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--9f0aba52736f9837760c05a3.md) | 45 | `declaration-track:9f0aba52736f9837760c05a37d6255a2cddf62e08d13ab3fc92ef46a9c3045a0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--458d1f269b0e775a2d775055.md) | 52 | `declaration-track:458d1f269b0e775a2d775055c7b12ed1c7e776499d7b081c25d8487852679b37` |
| 6 | `def` | [quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quotient--5d25111c2f24d1b2310c63b4.md) | 57 | `declaration-track:5d25111c2f24d1b2310c63b459a0582e7ad00856cee83c40808c877579f24335` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--b90af34cbb789657302e6dcb.md) | 60 | `declaration-track:b90af34cbb789657302e6dcbb095f3ae0e4912ecca2d16a387e512ee5e46d49b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--fc14b84b9bed7be5b9724910.md) | 62 | `declaration-track:fc14b84b9bed7be5b9724910110378580ff2e6034f4a3a572a4100ae00de5f4c` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--db1e262c75a45c98beba5b4c.md) | 64 | `declaration-track:db1e262c75a45c98beba5b4cd0acabad0780af1ada61f2718a073432f5e114c6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--4c1145028c6caca62820820d.md) | 66 | `declaration-track:4c1145028c6caca62820820d9117820e54f7a5092887a15b57f52f57c5bcb045` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--0600ea3c013f76e9bc65d952.md) | 69 | `declaration-track:0600ea3c013f76e9bc65d952799dfca57899dc2f052727d2787aba41215201fb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--d7cf548cb4cf00cd049a8ab5.md) | 71 | `declaration-track:d7cf548cb4cf00cd049a8ab5e001ec6f756950c62bf46e1549547f3a1eddd113` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--c9c3fc45e3befe169b9042d1.md) | 74 | `declaration-track:c9c3fc45e3befe169b9042d15ef15e04eef577a11bf36529027e337f05424834` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--9ec05bd90bd90b59b8473eb0.md) | 79 | `declaration-track:9ec05bd90bd90b59b8473eb0fef6850ca4d537d0866e2c476d9920ecea551802` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--b9602498a7df8ca73992d7b5.md) | 82 | `declaration-track:b9602498a7df8ca73992d7b5d696b01cf691a665a9756535bff2ddd94829f6a9` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--638669e704d855ac2b16f6b1.md) | 86 | `declaration-track:638669e704d855ac2b16f6b17118d4a3abf762e15893c2d039ae99c9b764db63` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--aa8e9024ea9bfca860b15a8a.md) | 89 | `declaration-track:aa8e9024ea9bfca860b15a8a6244c0e9774d44de8b7c1a9f48d89d13e6e5b6a7` |
| 18 | `lemma` | [quotient_obj_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quotient-obj-surjective--60cdda65e1ce0c47aed06711.md) | 94 | `result-track:60cdda65e1ce0c47aed06711d4657618aa98729ad3db2f9b82ac6a1829cb172e` |
| 19 | `theorem` | [quotient_obj_as](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quotient-obj-as--7bfb0aa980bb3bdd9492b7ac.md) | 100 | `result-track:7bfb0aa980bb3bdd9492b7ac8233f44d6534e60fbdb88237e46825ef115ff347` |
| 20 | `theorem` | [quotient_map_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quotient-map-out--376fa38a9dee013068b78be2.md) | 104 | `result-track:376fa38a9dee013068b78be23130f9c29d50f763c6e11b8a1305df9c085a7484` |
| 21 | `theorem` | [quot_mk_eq_quotient_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quot-mk-eq-quotient-map--85f99e2cdd533db809eb3b56.md) | 108 | `result-track:85f99e2cdd533db809eb3b56e8e310e5b9c92af30fe617624cd28830d709282e` |
| 22 | `theorem` | [eq_of_homotopy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/eq-of-homotopy--f75af91d00ce1993166984f1.md) | 111 | `result-track:f75af91d00ce1993166984f15c84156711da6fbc046935fb584329036a8e0915` |
| 23 | `def` | [homotopyOfEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homotopyofeq--c6060b3d29a46b5412beacbd.md) | 116 | `declaration-track:c6060b3d29a46b5412beacbde2fdfe5684f3e750411e45ce597028181c9a63eb` |
| 24 | `def` | [homotopyOutMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homotopyoutmap--f6a6e8cdd4d13e0add33cdd1.md) | 123 | `declaration-track:f6a6e8cdd4d13e0add33cdd1f29ae6fa083f3fc3f717fcd8e45d31d2f7c0b34a` |
| 25 | `theorem` | [quotient_map_out_comp_out](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quotient-map-out-comp-out--875e462b7d1913d03fef968f.md) | 128 | `result-track:875e462b7d1913d03fef968f36584ff6f51311620e358f64be8f624b4fdcbba1` |
| 26 | `def` | [isoOfHomotopyEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/isoofhomotopyequiv--0699df1446cfd72019ece715.md) | 133 | `declaration-track:0699df1446cfd72019ece715814495272d31f153716f335d6cffd4441f94b72b` |
| 27 | `def` | [homotopyEquivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homotopyequivofiso--f2fb3417056555e696848ba5.md) | 146 | `declaration-track:f2fb3417056555e696848ba570b68eb054ee47ef61048faecffec383e1b18ba3` |
| 28 | `lemma` | [quotient_inverts_homotopyEquivalences](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/quotient-inverts-homotopyequivalences--1e88364adf75a7396651f5dc.md) | 158 | `result-track:1e88364adf75a7396651f5dceff6ffb9fb9ea517029f995a4af57494712d6093` |
| 29 | `lemma` | [isZero_quotient_obj_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/iszero-quotient-obj-iff--0cade64b63eaf5ee37b5356f.md) | 164 | `result-track:0cade64b63eaf5ee37b5356fb399a0cbb36f90dee87d178a0edc01cb551ce7b5` |
| 30 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homologyfunctor--f1a364763e17aa27f4f8197d.md) | 181 | `declaration-track:f1a364763e17aa27f4f8197d5fbc38f2554004a2bc9966af7b97b9eb3c695b68` |
| 31 | `def` | [homologyFunctorFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/homologyfunctorfactors--5e1abc55e014c25c01ca9dac.md) | 188 | `declaration-track:5e1abc55e014c25c01ca9dac01c2dc618890b7e2025bdf3ac6af4ee4a8d8b6f1` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/instance--31e04d495b67cc2f80d8fb34.md) | 196 | `declaration-track:31e04d495b67cc2f80d8fb3466065374bff8d7f51d7c765ce45a2c4a58033ab6` |
| 33 | `def` | [Functor.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/functor-maphomotopycategory--e08cda7cd576519a021c272b.md) | 211 | `declaration-track:e08cda7cd576519a021c272bd72a1268615a4ba9cc138f6de9a5eb2e249c4716` |
| 34 | `lemma` | [Functor.mapHomotopyCategory_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/functor-maphomotopycategory-map--c3321e8e05b90ea8331aee0a.md) | 217 | `result-track:c3321e8e05b90ea8331aee0a588202bdcdf6bf4ea7468181dc13abed3318b071` |
| 35 | `def` | [Functor.mapHomotopyCategoryFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/functor-maphomotopycategoryfactors--25b4a8440286f37905593435.md) | 227 | `declaration-track:25b4a8440286f379055934354d651d0114bdacc58a3432a1a130facce4deb294` |
| 36 | `def` | [NatTrans.mapHomotopyCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/nattrans-maphomotopycategory--9c5fe6c1e844186781574e7d.md) | 238 | `declaration-track:9c5fe6c1e844186781574e7dea8a9db7d608f119e96878cd877ecad1714e5ee8` |
| 37 | `theorem` | [NatTrans.mapHomotopyCategory_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/nattrans-maphomotopycategory-id--769afe24e1774f5526866fe9.md) | 247 | `result-track:769afe24e1774f5526866fe97969404727bd6372cc5f86f1b5f42ed02050ea1f` |
| 38 | `theorem` | [NatTrans.mapHomotopyCategory_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCategory/Variant9de46822ede004576dcba50ea594e90c04ddece51c80fd5e20ddadb08050c0c8.lean/declarations/nattrans-maphomotopycategory-comp--4e66475ee7f36c948a21f301.md) | 251 | `result-track:4e66475ee7f36c948a21f301d0ae7d7c37dff79f58386b486788c93219fc5fc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
