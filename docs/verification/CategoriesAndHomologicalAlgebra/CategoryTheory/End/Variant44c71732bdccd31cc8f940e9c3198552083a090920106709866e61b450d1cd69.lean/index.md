# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b862bbc21cdf96eae1411b7d9702a9b1c38a7de",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b862bbc21cdf96eae1411b7d9702a9b1c38a7de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean.json)

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
| 1 | `inductive` | [coendRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/coendrel--e6fb0b36b8ac066850f6d3ef.md) | 41 | `declaration-track:e6fb0b36b8ac066850f6d3efea8a1b3ca7bcc6862562ce932acec94411d55c3b` |
| 2 | `lemma` | [coendRel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/coendrel-iff--2f019a42f67a3cefc3dfd8a4.md) | 46 | `result-track:2f019a42f67a3cefc3dfd8a461cf5918f1d2802ede1c3678e17db9201b9263c9` |
| 3 | `abbrev` | [coend](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/coend--d0bdffeba422bbc47fdbd5a6.md) | 57 | `declaration-track:d0bdffeba422bbc47fdbd5a6a2f04fb7eb093d8985f107d54cce4a7029db75e3` |
| 4 | `def` | [coend.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/coend--d6b42702336e5d2aca57fb38.md) | 61 | `declaration-track:d6b42702336e5d2aca57fb38e9ea484537ce37bb4712438774020517a5446136` |
| 5 | `lemma` | [coend.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/coend-condition--e036284e9fc77dcd5f51d842.md) | 66 | `result-track:e036284e9fc77dcd5f51d84284f834c1f15153222d8e0ac3f22c8975688ca78b` |
| 6 | `def` | [cowedge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/cowedge--b1fae5874044abc946bcb005.md) | 75 | `declaration-track:b1fae5874044abc946bcb00528738ec96167f8533c82e9b650c906d0b6638eb7` |
| 7 | `def` | [cowedgeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/cowedgeiscolimit--a6db245349f636bc3fed8ddd.md) | 78 | `declaration-track:a6db245349f636bc3fed8dddc59179a254d8467f1a9b663f68e7874798bda850` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/instance--b02eedefd554c9ad564214b6.md) | 87 | `declaration-track:b02eedefd554c9ad564214b683d37bc934b54eafe85aa8d8a523f734d89710f2` |
| 9 | `lemma` | [Types.chosenCoend_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/types-chosencoend-def--3ff19a57a4ec543753e19b99.md) | 93 | `result-track:3ff19a57a4ec543753e19b99c252e7e4e271a6f1fdb8621f8a921ea629d5827d` |
| 10 | `lemma` | [chosenCoend.ι_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/chosencoend-apply--e7956f2a6ee2b4f9eaa6d52c.md) | 97 | `result-track:e7956f2a6ee2b4f9eaa6d52c513443f1457e0fb47acea21c34a934075cb9d6fe` |
| 11 | `lemma` | [chosenCoend.desc_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/chosencoend-desc-apply--5b2843ce66d997775366a92c.md) | 101 | `result-track:5b2843ce66d997775366a92ce4da8665ce4163bbb3c3484ddc7b4180745a74b4` |
| 12 | `lemma` | [chosenCoend.map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/chosencoend-map-apply--36a472efe04a7f26a06fa8ad.md) | 108 | `result-track:36a472efe04a7f26a06fa8ade3532b4ac670fdfecfdb16a565bcc49f86348148` |
| 13 | `abbrev` | [end_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/end--3af3dfdfdd7bce81ced3897e.md) | 124 | `declaration-track:3af3dfdfdd7bce81ced3897eff7122c51fe2f00ac72febfce894d04af904c377` |
| 14 | `def` | [end_.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/end--2dd2bd6f071cbcc04bccdb58.md) | 131 | `declaration-track:2dd2bd6f071cbcc04bccdb581b4a46727f85486d6a455f8a69b6904e8d61d50f` |
| 15 | `lemma` | [end_.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/end-condition--963048ddb2805393eb742412.md) | 136 | `result-track:963048ddb2805393eb7424122ef32aea7ffed6a1aca34ff879e19e59ce471c93` |
| 16 | `def` | [wedge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/wedge--298c56a452d120dd90990947.md) | 144 | `declaration-track:298c56a452d120dd90990947b85fa66de49aa5b5cb09ccb042ef4cd23ea7ce04` |
| 17 | `def` | [wedgeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/wedgeislimit--2e9df99fea7a261e0d078990.md) | 147 | `declaration-track:2e9df99fea7a261e0d078990f96ab5b4d2ec8515ca542683f82a7777bffe6de1` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/instance--f855a35b3cffb8eb9a375ab0.md) | 161 | `declaration-track:f855a35b3cffb8eb9a375ab04be9919396605c69be6b4e16aa245a2cb2e80a95` |
| 19 | `lemma` | [Types.chosenEnd_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/types-chosenend-def--272200c0d07956461603110d.md) | 167 | `result-track:272200c0d07956461603110d25c91e5fa8e1c88fa60943a3e1a0bd7836dae7f3` |
| 20 | `lemma` | [chosenEnd.π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/chosenend-apply--14dedbf38567ba731fa9d139.md) | 171 | `result-track:14dedbf38567ba731fa9d1392f39ab8691cf52b3b843c3e9c3837c13aa383d55` |
| 21 | `lemma` | [chosenEnd.lift_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/chosenend-lift-apply--d77f606ef9e3b16deb954c9d.md) | 175 | `result-track:d77f606ef9e3b16deb954c9d58c7280c710b9a33802c0df7735d64cce717bb3a` |
| 22 | `lemma` | [chosenEnd.map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant44c71732bdccd31cc8f940e9c3198552083a090920106709866e61b450d1cd69.lean/declarations/chosenend-map-apply--1c09e18f9519c47c630a5c3c.md) | 181 | `result-track:1c09e18f9519c47c630a5c3c28ce0a480db0c808c06ab4867769f0fed357c742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
