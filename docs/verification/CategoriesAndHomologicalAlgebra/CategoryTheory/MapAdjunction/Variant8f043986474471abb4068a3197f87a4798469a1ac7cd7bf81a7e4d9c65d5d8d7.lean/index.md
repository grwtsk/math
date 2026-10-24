# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MapAdjunction.Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "570b41c44a1931dc8d9425c6635274c44bbda5bb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `570b41c44a1931dc8d9425c6635274c44bbda5bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean.json)

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
| 1 | `def` | [extEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv--c73c4abad134449909ab3e82.md) | 41 | `declaration-track:c73c4abad134449909ab3e82274764905c4b07074c5223da426330971e3f4adc` |
| 2 | `lemma` | [extEquiv_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-mk--f1face20315d9e33116b3ec0.md) | 62 | `result-track:f1face20315d9e33116b3ec035bdc11cd1aad6119e794deab8c86674e36be564` |
| 3 | `lemma` | [extEquiv_symm_mk₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-symm-mk--74d4340bb4f2b1512bb48ead.md) | 66 | `result-track:74d4340bb4f2b1512bb48ead2a686bec28fe6aa3a25ae4783530b5b63986b896` |
| 4 | `lemma` | [extEquiv_symm_mk₀_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-symm-mk-unit-app--69e875335d9448f747256b25.md) | 71 | `result-track:69e875335d9448f747256b25b9b392c216fb180dadc7d0f554cdbaa36807057a` |
| 5 | `lemma` | [extEquiv_mk₀_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-mk-counit-app--f88a34560eb8f80bc639feaa.md) | 76 | `result-track:f88a34560eb8f80bc639feaa2d8f1108cc9ee8b392b43e1b0d7dd988ea16823c` |
| 6 | `lemma` | [extEquiv_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-naturality-left--76f92306b085ef5db123e113.md) | 80 | `result-track:76f92306b085ef5db123e113a2152ab6c1bb9867868189f3afe53c0bce64dfd7` |
| 7 | `lemma` | [extEquiv_naturality_left₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-naturality-left--6e983afc480c4767588d218c.md) | 90 | `result-track:6e983afc480c4767588d218c84e629978f41c018651ed5be6c6ff8894778df55` |
| 8 | `lemma` | [extEquiv_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-naturality-right--7dba9c416c32465b2de46a93.md) | 97 | `result-track:7dba9c416c32465b2de46a935c7c31935a0f18bf30e9cb45b887f23189e0b0e8` |
| 9 | `lemma` | [extEquiv_naturality_right₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-naturality-right--41cfe14d8c3b6ecf385aeaeb.md) | 103 | `result-track:41cfe14d8c3b6ecf385aeaebeefc5c0d8da6894f195fba8cb401fe7cd6cee324` |
| 10 | `lemma` | [extEquiv_symm_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-symm-naturality-left--b0459629be3db77327ee5472.md) | 110 | `result-track:b0459629be3db77327ee5472f43832be3d365e4a35f322a2136cb3825d935e4e` |
| 11 | `lemma` | [extEquiv_symm_naturality_left₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-symm-naturality-left--9ec686c07b58e89e7defb135.md) | 116 | `result-track:9ec686c07b58e89e7defb1355bae91f37cd01c49fee46ff0b5ba6c66d8b83c60` |
| 12 | `lemma` | [extEquiv_symm_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-symm-naturality-right--4390bd9886c8548e2bd7b049.md) | 123 | `result-track:4390bd9886c8548e2bd7b049bd61905f902edbd4dc827ec43658d54a80eee13a` |
| 13 | `lemma` | [extEquiv_symm_naturality_right₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extequiv-symm-naturality-right--9506f27fbdb4109d66c4dd74.md) | 129 | `result-track:9506f27fbdb4109d66c4dd74c7fae9718ace9b7f16b52dcf80d3f374a7123366` |
| 14 | `abbrev` | [extLinearEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MapAdjunction/Variant8f043986474471abb4068a3197f87a4798469a1ac7cd7bf81a7e4d9c65d5d8d7.lean/declarations/extlinearequiv--ddaf9b101d1083fe3b1a7090.md) | 138 | `declaration-track:ddaf9b101d1083fe3b1a7090a55fa1b238416b9ae0afd9b093e5ba786d3822b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
