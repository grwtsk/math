# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e8e8a02d4bc11709bdcd32c683c86bfdc31582a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e8e8a02d4bc11709bdcd32c683c86bfdc31582a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean.json)

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
| 1 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/hom--a86d4219f60b07141476ec40.md) | 38 | `declaration-track:a86d4219f60b07141476ec404d2220d7d2a40d148e846bdd5d8eec2001024452` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/instance--357b5d44c262527d6479ae93.md) | 42 | `declaration-track:357b5d44c262527d6479ae93a4cd460f82c6481436aeb096a42022073a44b8b5` |
| 3 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/hom-ext--b08c5df16b139623829bbf7a.md) | 48 | `result-track:b08c5df16b139623829bbf7ab8adac8828df8d3f850a2e4b67a500c672d847e7` |
| 4 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/id-hom--560aad30eb733b1f966d123d.md) | 52 | `result-track:560aad30eb733b1f966d123d06082688c8010e1c823387789ed2b275272fb9c8` |
| 5 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/comp-hom--251082b6bfd0a64cab6550bc.md) | 55 | `result-track:251082b6bfd0a64cab6550bc6dd6cb0273c2ca98a44b4efd5379eb1f39ffffe2` |
| 6 | `def` | [presheafFiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/presheaffiber--6af83ff6dfb840f0a57a2807.md) | 68 | `declaration-track:6af83ff6dfb840f0a57a28076f6fa111e1edd743dd6b863d88c1aba2d4f9b890` |
| 7 | `lemma` | [presheafFiber_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/presheaffiber-id--ed99ee3aa586ecb06672581d.md) | 73 | `result-track:ed99ee3aa586ecb06672581dd925da7b9472851ef8b31127fe70591496bc2110` |
| 8 | `lemma` | [presheafFiber_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/presheaffiber-comp--39355213194bbde9f621f61a.md) | 78 | `result-track:39355213194bbde9f621f61a9dd6b208cd667b63100264566608cd2dc091ea28` |
| 9 | `abbrev` | [sheafFiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/sheaffiber--14a81c55f676ca3953e592b3.md) | 84 | `declaration-track:14a81c55f676ca3953e592b3866c90f9d31dacd8c56efdf6e0a06a1e0d1b716d` |
| 10 | `lemma` | [sheafFiber_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/sheaffiber-id--28b185750e60ed6a017f58fd.md) | 89 | `result-track:28b185750e60ed6a017f58fd475fc3f56409a43d100344abc7a98bd9339a6679` |
| 11 | `lemma` | [sheafFiber_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant2775f64e940198e3cab24afb10ddc9f79d53cd3afa04eee56a718247d3033302.lean/declarations/sheaffiber-comp--fc9e7bcdc11a63f3de2b644a.md) | 94 | `result-track:fc9e7bcdc11a63f3de2b644a5507b070c1b6e8a069b2cb00e1e03992881d30c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
