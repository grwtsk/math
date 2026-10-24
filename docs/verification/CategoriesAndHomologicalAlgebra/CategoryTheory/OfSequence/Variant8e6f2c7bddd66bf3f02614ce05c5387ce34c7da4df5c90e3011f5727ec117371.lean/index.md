# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfSequence.Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a655a1316e71e93967dde1361ede471ff4ae4f3b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a655a1316e71e93967dde1361ede471ff4ae4f3b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Preorder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [congr_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/congr-f--eb0d5b5cd197ed40619a5d7b.md) | 45 | `result-track:eb0d5b5cd197ed40619a5d7bbe97931b2f2dafd61e47866bd40a6f30f13132fd` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/map--b23598fe4d6a3112d806ac60.md) | 52 | `declaration-track:b23598fe4d6a3112d806ac60b198e9746632434dcb57e9f0fadf73d63313b84f` |
| 3 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/map-id--318939e329b14c0144218ecc.md) | 59 | `result-track:318939e329b14c0144218ecc3ecc8f51d0a517e54834aa70a23687444f15e923` |
| 4 | `lemma` | [map_le_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/map-le-succ--e39faf3597ca1ba2969630ef.md) | 67 | `result-track:e39faf3597ca1ba2969630ef06727c5f0bddfa67afe8e137e77a523745900641` |
| 5 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/map-comp--a2ea9568f4cd6466e7627f3b.md) | 76 | `result-track:a2ea9568f4cd6466e7627f3b30bd885753f779d5e699e340a025edf6ba0679d9` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/example--13ca8a412cccfb2354d6b02e.md) | 105 | `declaration-track:13ca8a412cccfb2354d6b02e365598eb24a8f458152e0e5609ce1224ffed5dc0` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/example--2b3ea26a3829779ed5609eab.md) | 106 | `declaration-track:2b3ea26a3829779ed5609eab72e630cd2dd9706f96127f0847dad8f6667d8476` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/example--287705d593fa2ff4d132b0b8.md) | 107 | `declaration-track:287705d593fa2ff4d132b0b87d9326e00ff2d78623ec4ce769c750572fb36bfb` |
| 9 | `def` | [ofSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/ofsequence--72adfb98bdb406a628864902.md) | 114 | `declaration-track:72adfb98bdb406a62886490244aaed7c6e374e9d9c2950712ea4ef8aab14398b` |
| 10 | `lemma` | [ofSequence_map_homOfLE_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/ofsequence-map-homofle-succ--bb8932833e0db4d49ec5ad85.md) | 121 | `result-track:bb8932833e0db4d49ec5ad85b781497e29d6cbb352d030fdafca212a591aa2d2` |
| 11 | `def` | [ofSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/ofsequence--72a15d8a356b862e852ed101.md) | 137 | `declaration-track:72a15d8a356b862e852ed1012c084248645326f7604d0dce574cb1a3313b93a6` |
| 12 | `def` | [ofOpSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/ofopsequence--a2d14e61851d4e367ce88164.md) | 164 | `declaration-track:a2d14e61851d4e367ce88164cf68bb46efa06a8cf56ef61ac993c6db9fbf4239` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/example--ace1b133c70f5e55cfc0b1bc.md) | 167 | `declaration-track:ace1b133c70f5e55cfc0b1bc4e329bc78635cbd282867d23d65c13514e526a9c` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/example--c876cee7421a5125b09e73dc.md) | 168 | `declaration-track:c876cee7421a5125b09e73dce8e28e07bbb3e56471836ad727089fbddc31e56b` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/example--56479a21c911dd7c1f715f9c.md) | 169 | `declaration-track:56479a21c911dd7c1f715f9ca73add72e467a18196977e35c373b629f7eb70ab` |
| 16 | `lemma` | [ofOpSequence_map_homOfLE_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/ofopsequence-map-homofle-succ--2f35049f158275a5c2ab2edb.md) | 173 | `result-track:2f35049f158275a5c2ab2edb477f30377091da747d0a4d4e9b8249cef26ea088` |
| 17 | `def` | [ofOpSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSequence/Variant8e6f2c7bddd66bf3f02614ce05c5387ce34c7da4df5c90e3011f5727ec117371.lean/declarations/ofopsequence--b817a80f34a8bf2b6fced876.md) | 189 | `declaration-track:b817a80f34a8bf2b6fced876e81120d05dbffdfdab1f9353fc8beb25035c2c20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
