# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SplitCoequalizer.Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45797185025442dd1ae34ad50dd07694dbbb1659",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45797185025442dd1ae34ad50dd07694dbbb1659`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/issplitcoequalizer--d5dfeaf87d0b0cb8eb37f8f0.md) | 62 | `declaration-track:d5dfeaf87d0b0cb8eb37f8f0d34f2e4bb47f8b530f464cf6d9077314bee5c07d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/instance--31767488b036618dd2911880.md) | 82 | `declaration-track:31767488b036618dd2911880e512f90ce177f211269fec585ea11eb994bacf25` |
| 3 | `def` | [IsSplitCoequalizer.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/issplitcoequalizer-map--86357df6ad23e87f2cdd787e.md) | 95 | `declaration-track:86357df6ad23e87f2cdd787e2f11ee1da733bdd77eb1e50943e1f808ea6ee68c` |
| 4 | `def` | [IsSplitCoequalizer.asCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/issplitcoequalizer-ascofork--d1164e4db31325928ef45a4d.md) | 112 | `declaration-track:d1164e4db31325928ef45a4dc9ec11b10dce11891cb6249b65094261fd01cd23` |
| 5 | `theorem` | [IsSplitCoequalizer.asCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/issplitcoequalizer-ascofork--d95c6cc3545eff3a4ef14101.md) | 117 | `result-track:d95c6cc3545eff3a4ef1410101bc65aed380435b28ee9ef5fe78e4da269a8685` |
| 6 | `def` | [IsSplitCoequalizer.isCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/issplitcoequalizer-iscoequalizer--742b89fe43c85ee8e794a1d7.md) | 125 | `declaration-track:742b89fe43c85ee8e794a1d7a59610648ff066dbc1d27d013dc3f30f92e24c5f` |
| 7 | `class` | [HasSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/hassplitcoequalizer--888dc9807beabee2e76295f3.md) | 142 | `declaration-track:888dc9807beabee2e76295f3fa0ccd74d999748272dcb35101da85de61cbe6af` |
| 8 | `abbrev` | [Functor.IsSplitPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/functor-issplitpair--52ce740aad2334aee35880d6.md) | 151 | `declaration-track:52ce740aad2334aee35880d699f85a891405ab6970020683782f46e2649ee7d0` |
| 9 | `def` | [HasSplitCoequalizer.coequalizerOfSplit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/hassplitcoequalizer-coequalizerofsplit--514bac249758f4dd19f2089f.md) | 156 | `declaration-track:514bac249758f4dd19f2089fbf25ba662236644f5a4bf0b01d6e96898f576b21` |
| 10 | `def` | [HasSplitCoequalizer.coequalizerπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/hassplitcoequalizer-coequalizer--da50f3a9b16c1848c52a10bb.md) | 161 | `declaration-track:da50f3a9b16c1848c52a10bbc62d29247461091bf2fb153efd422375d652f8ab` |
| 11 | `def` | [HasSplitCoequalizer.isSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/hassplitcoequalizer-issplitcoequalizer--d2bba1a5126ef769be7c8d0b.md) | 167 | `declaration-track:d2bba1a5126ef769be7c8d0b2a9fba24521a18838d65af253a94871f2ed143e0` |
| 12 | `instance` | [map_is_split_pair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/map-is-split-pair--cf6529ca463e6499d732eef7.md) | 173 | `declaration-track:cf6529ca463e6499d732eef78db7a4fa3766ab3e09141d65653feb69372a03d0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variant7d7e7dd75a2a44924f3f20d9e8d3c182cdfad2204d61c07400adc02d20ac2786.lean/declarations/instance--b5a4aa2c30060ff3ad128745.md) | 181 | `declaration-track:b5a4aa2c30060ff3ad12874594a64c3513305e0b1f4bbbe64ec3f4bab3c01b98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
