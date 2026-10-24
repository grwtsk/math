# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiProd.Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03b61c5cb2cd014442fb4e044469bd39d14c61a3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03b61c5cb2cd014442fb4e044469bd39d14c61a3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pi.binaryFanOfProp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean/declarations/pi-binaryfanofprop--ad1b014dab30cfb344abc0e3.md) | 32 | `declaration-track:ad1b014dab30cfb344abc0e307c222a493c1fe25f1f78adef7491d0919f4a013` |
| 2 | `def` | [Pi.binaryFanOfPropIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean/declarations/pi-binaryfanofpropislimit--b20c382ab97fa6b1deb9f8cf.md) | 42 | `declaration-track:b20c382ab97fa6b1deb9f8cf3933b7395ef3891ad5921da60c733de8008946e0` |
| 3 | `lemma` | [hasBinaryProduct_of_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean/declarations/hasbinaryproduct-of-products--295e26d2b5c2a47501e5006a.md) | 54 | `result-track:295e26d2b5c2a47501e5006afe24522ff79650aadc59e73af754b1d0a0575713` |
| 4 | `lemma` | [Pi.map_eq_prod_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2.lean/declarations/pi-map-eq-prod-map--71a138e575453199f68fce4a.md) | 60 | `result-track:71a138e575453199f68fce4a7caf016751ba0aa2c9630ae05a0fc94e38a36671` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
