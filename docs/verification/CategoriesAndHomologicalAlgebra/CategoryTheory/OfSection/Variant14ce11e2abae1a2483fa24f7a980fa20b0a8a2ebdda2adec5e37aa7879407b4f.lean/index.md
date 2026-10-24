# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfSection.Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "690649cc3d7d993acf50d7b82380a0f4f2a51671",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `690649cc3d7d993acf50d7b82380a0f4f2a51671`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/ofsection--4a3d71cc80becea2a0efa114.md) | 41 | `declaration-track:4a3d71cc80becea2a0efa1142085f1fb25eff242c23d6952f8acc017f843aece` |
| 2 | `lemma` | [mem_ofSection_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/mem-ofsection-obj--f2812f144767443b280b065c.md) | 47 | `result-track:f2812f144767443b280b065c5f01658137ef58749df9670c67c1e469b6f3ad09` |
| 3 | `lemma` | [ofSection_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/ofsection-le-iff--27cc6c913d68bdc4e1de07a9.md) | 50 | `result-track:27cc6c913d68bdc4e1de07a951b9dedda8db85c0e311a55db42a75ff69d5c135` |
| 4 | `lemma` | [ofSection_image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/ofsection-image--cde0dcc60c59d6ee9ad82ea0.md) | 59 | `result-track:cde0dcc60c59d6ee9ad82ea036c6345ac9330fa6d4201fe2225854edef2c4339` |
| 5 | `lemma` | [ofSection_eq_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/ofsection-eq-range--2551a9f74fa2756aef40c6de.md) | 73 | `result-track:2551a9f74fa2756aef40c6de407a5455893ba404ad4285eb7d4ae6dc4f0b0938` |
| 6 | `lemma` | [range_eq_ofSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/range-eq-ofsection--7b1745cfc040762e85ef2354.md) | 84 | `result-track:7b1745cfc040762e85ef2354fe6a96179df19a597818dadb119b58f4230ccbe6` |
| 7 | `lemma` | [ofSection_eq_range'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/ofsection-eq-range--b540bdebf37326c2abe2aae5.md) | 94 | `result-track:b540bdebf37326c2abe2aae5b96b687822ab5cb90ad1e304eabc7205053e01f9` |
| 8 | `lemma` | [range_eq_ofSection'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfSection/Variant14ce11e2abae1a2483fa24f7a980fa20b0a8a2ebdda2adec5e37aa7879407b4f.lean/declarations/range-eq-ofsection--87cb2f6038619b3cc885fc6e.md) | 105 | `result-track:87cb2f6038619b3cc885fc6e0deca756e70139ff3fea31fffc8545bd051d436b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
