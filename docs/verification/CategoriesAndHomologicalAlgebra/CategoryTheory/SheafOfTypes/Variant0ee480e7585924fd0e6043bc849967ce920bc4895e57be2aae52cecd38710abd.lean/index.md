# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfTypes.Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a5c95f50a9fe5cc4a6b7e702a6a22d4100f10c4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a5c95f50a9fe5cc4a6b7e702a6a22d4100f10c4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Pretopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.IsSheafFor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/isseparated--d276e140ed6b260483f5a6b3.md) | 72 | `declaration-track:d276e140ed6b260483f5a6b36178eaf095259acb9f0ba845bec4169ce754e62e` |
| 2 | `def` | [IsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf--5cf04bbddcc78de50ec3643f.md) | 80 | `declaration-track:5cf04bbddcc78de50ec3643f5fd247b4692795b8acd32b097789931132ac9ee5` |
| 3 | `theorem` | [IsSheaf.isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-issheaffor--bf3a8a737462b206253f77da.md) | 83 | `result-track:bf3a8a737462b206253f77da4a2403be0b0640a4f69981506cd9535e75d680b6` |
| 4 | `theorem` | [isSheaf_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-of-le--83ab4f48646fd7c22ac1b6c0.md) | 87 | `result-track:83ab4f48646fd7c22ac1b6c032c3e7a2521205b0879df126e05dc69e641e2445` |
| 5 | `theorem` | [isSeparated_of_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/isseparated-of-issheaf--6ea88c0af8634acd5ca533c0.md) | 90 | `result-track:6ea88c0af8634acd5ca533c0d983609dd5e6d4dcca590469a75db7917b5a69a5` |
| 6 | `lemma` | [isSheaf_of_nat_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-of-nat-equiv--73b0b89ad22993a757255102.md) | 101 | `result-track:73b0b89ad22993a757255102422bd48255b069587152514e2dabb22a474a2590` |
| 7 | `lemma` | [isSheaf_iff_of_nat_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-iff-of-nat-equiv--98c25ff5ba0becad28a2b0f3.md) | 106 | `result-track:98c25ff5ba0becad28a2b0f386fe0c302efc96ab482b9e10e6eeda8ea4f0696f` |
| 8 | `theorem` | [isSheaf_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-iso--825be218b9dec46c50cec42a.md) | 118 | `result-track:825be218b9dec46c50cec42ac3d3287e2c68e30e7e24e7716c5f86092930d42f` |
| 9 | `theorem` | [isSheaf_of_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-of-yoneda--316c297acb66119b6f1f2972.md) | 121 | `result-track:316c297acb66119b6f1f2972fc86e774c04b67a1165bc91a0bcccc4e3dbb9483` |
| 10 | `theorem` | [isSheaf_pretopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-pretopology--72faf66e723be85c9618d74b.md) | 128 | `result-track:72faf66e723be85c9618d74bba84dce2460d746bf966ff23f316484d07d0eed1` |
| 11 | `theorem` | [isSheaf_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/issheaf-bot--bc3ffc3651d1235c7f229028.md) | 144 | `result-track:bc3ffc3651d1235c7f22902821ef91830a76c6bdb4dfc15611796969bcf4e03c` |
| 12 | `def` | [compatibleYonedaFamily_toCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/compatibleyonedafamily-tococone--d041af4346e6ca06845b450a.md) | 155 | `declaration-track:d041af4346e6ca06845b450ab7c0bbbea24a08352cc9187c9cd4720fbe70318b` |
| 13 | `def` | [yonedaFamilyOfElements_fromCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/yonedafamilyofelements-fromcocone--c86bfee78d0c7d3c2fa215ee.md) | 171 | `declaration-track:c86bfee78d0c7d3c2fa215ee542ada834cc58b90e55767dec726059a07265888` |
| 14 | `theorem` | [yonedaFamily_fromCocone_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/yonedafamily-fromcocone-compatible--b414edb844f60dc1411a3721.md) | 183 | `result-track:b414edb844f60dc1411a3721b1f036912166175d137473944e9d0b4815822c5a` |
| 15 | `theorem` | [forallYonedaIsSheaf_iff_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ee480e7585924fd0e6043bc849967ce920bc4895e57be2aae52cecd38710abd.lean/declarations/forallyonedaissheaf-iff-colimit--809796bae9d207e66076351a.md) | 203 | `result-track:809796bae9d207e66076351a58bc17baf92204a73360e5b1b90ffea4295da14b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
