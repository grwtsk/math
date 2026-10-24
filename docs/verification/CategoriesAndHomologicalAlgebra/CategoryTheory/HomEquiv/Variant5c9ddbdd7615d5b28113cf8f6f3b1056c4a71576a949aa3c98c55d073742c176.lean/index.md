# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomEquiv.Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "433789357b429bf65ebf2b528ae1fc8fb2ce74b3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `433789357b429bf65ebf2b528ae1fc8fb2ce74b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.LocalizerMorphism` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/hommap--ba2df74993dbe30f96f87026.md) | 46 | `declaration-track:ba2df74993dbe30f96f87026de66c1df408062fbb11e8b0f1031b25d6244bacf` |
| 2 | `lemma` | [homMap_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/hommap-map--f60d985d9796a8439b72bd78.md) | 52 | `result-track:f60d985d9796a8439b72bd78342d32dd2526553cf4476d177bf8ec031217b897` |
| 3 | `lemma` | [homMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/hommap-id--91de3bdcd1013ffd6bbe9b6a.md) | 60 | `result-track:91de3bdcd1013ffd6bbe9b6aa3a7474313db9fb5f53c029c6fa0fef8bb0ef653` |
| 4 | `lemma` | [homMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/hommap-comp--57794a9a5649c8c37ca04d1e.md) | 65 | `result-track:57794a9a5649c8c37ca04d1e0349e142641cb1dbbb63cf0da7c0416774a521b6` |
| 5 | `lemma` | [homMap_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/hommap-apply--5406b4c2e55dfb483f307025.md) | 70 | `result-track:5406b4c2e55dfb483f307025677d1ee54400036d27f12a437cfbadf59c29c41c` |
| 6 | `lemma` | [id_homMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/id-hommap--f6d79f6076e3bf7908676a80.md) | 87 | `result-track:f6d79f6076e3bf7908676a80775cc64b84397e1d599925ef4a49b6c180acd6d3` |
| 7 | `lemma` | [homMap_homMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/hommap-hommap--6f32b9fd0b65b87d183b07a4.md) | 92 | `result-track:6f32b9fd0b65b87d183b07a4a81bba3116f6fc445d9c24044170d9465f235d53` |
| 8 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv--8493c7fc8c31a4029ea62d36.md) | 117 | `declaration-track:8493c7fc8c31a4029ea62d368171d57d00f97355345c8e28887c795586e7824c` |
| 9 | `lemma` | [homEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-symm-apply--d501fdfc12065b08186f48ba.md) | 129 | `result-track:d501fdfc12065b08186f48ba593fdcd90f32952cd91c8879323314332920e154` |
| 10 | `lemma` | [homEquiv_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-eq--61e4e4ff96936cf76e68eb3a.md) | 132 | `result-track:61e4e4ff96936cf76e68eb3a89b236f290a9d0b4cef9961ecc0d3c065223ccd9` |
| 11 | `lemma` | [homEquiv_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-refl--ea3f2dab97fa01a6c8992996.md) | 138 | `result-track:ea3f2dab97fa01a6c8992996652651f0da10b96db2f206982479b1fa0659f339` |
| 12 | `lemma` | [homEquiv_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-trans--5c777434c49d558228e01e67.md) | 142 | `result-track:5c777434c49d558228e01e670d7107be9f36c69db0ff6af1554e546ff532e8a2` |
| 13 | `lemma` | [homEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-comp--3d202c6ae7163e484ebe0dfd.md) | 147 | `result-track:3d202c6ae7163e484ebe0dfd153c68b1bf80677c29cb0990bbb24f63b1ffa1b8` |
| 14 | `lemma` | [homEquiv_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-map--41efee8e4418150236cc528b.md) | 152 | `result-track:41efee8e4418150236cc528bf12c3979ff1ebc68ded9a13f6c78a32081d62e47` |
| 15 | `lemma` | [homEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-id--c073d9bfaf2699d06fdab45f.md) | 157 | `result-track:c073d9bfaf2699d06fdab45fb1ff40c8aa75ec9bbc6e0f9cfddb9d8a3072c8c1` |
| 16 | `lemma` | [homEquiv_isoOfHom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomEquiv/Variant5c9ddbdd7615d5b28113cf8f6f3b1056c4a71576a949aa3c98c55d073742c176.lean/declarations/homequiv-isoofhom-inv--51041b9a3bb61a5c43889e14.md) | 160 | `result-track:51041b9a3bb61a5c43889e149b755595b27b14b2b7a35e2346a80b4483276d35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
