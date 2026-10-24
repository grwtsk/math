# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySurjective.Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02ce1e84681c6bccb81b62b701a9852f3eb67e4c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02ce1e84681c6bccb81b62b701a9852f3eb67e4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [regularTopology.isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/regulartopology-islocallysurjective-iff--14d04fde9cf9cdcfb8966119.md) | 47 | `result-track:14d04fde9cf9cdcfb89661199a61d9f0c0b9fad9209ad18600290b89c12e0675` |
| 2 | `lemma` | [extensiveTopology.surjective_of_isLocallySurjective_sheaf_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/extensivetopology-surjective-of-islocallysurjective-sheaf-of-types--5e409dc4f6def16d81cd832b.md) | 65 | `result-track:5e409dc4f6def16d81cd832bb9004c061ef12b6464a209e4c09b60f483ba08b9` |
| 3 | `lemma` | [extensiveTopology.presheafIsLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/extensivetopology-presheafislocallysurjective-iff--b3dc9be9b020469d50c29678.md) | 98 | `result-track:b3dc9be9b020469d50c29678269ce8bbb73e3e9345bf3e101f878070ef6ab71f` |
| 4 | `lemma` | [extensiveTopology.isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/extensivetopology-islocallysurjective-iff--5a7f3bbd43a9812727c7b9d2.md) | 112 | `result-track:5a7f3bbd43a9812727c7b9d28bbbaef7cb4fa78193d4b5838f5d72ece854c8ec` |
| 5 | `lemma` | [regularTopology.isLocallySurjective_sheaf_of_types](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/regulartopology-islocallysurjective-sheaf-of-types--b64892ea3e7c67e9d42d87e2.md) | 119 | `result-track:b64892ea3e7c67e9d42d87e2b15351bdd05ccc02184a1cf69fd265e14ea85848` |
| 6 | `lemma` | [coherentTopology.presheafIsLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/coherenttopology-presheafislocallysurjective-iff--899f7c3312effa494107bbfb.md) | 154 | `result-track:899f7c3312effa494107bbfba4e0553baf5bb600d6c968a9617a2b14ff0cfe2b` |
| 7 | `lemma` | [coherentTopology.isLocallySurjective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variant2ef9c21f35b988fc97c9b475b51155453ad0274bbb426903d3ecaa62ede79efc.lean/declarations/coherenttopology-islocallysurjective-iff--fe7cb0d1b2385c2ac7423225.md) | 167 | `result-track:fe7cb0d1b2385c2ac7423225825372f532e1f831dd1edf1b6a8ac8ab4cf4b54d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
