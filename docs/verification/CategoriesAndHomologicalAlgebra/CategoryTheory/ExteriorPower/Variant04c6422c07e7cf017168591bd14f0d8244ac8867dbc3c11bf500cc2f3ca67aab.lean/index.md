# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExteriorPower.Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "825aec1e2bfef0b3ecaf83c630ac3c6779d7b0e5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `825aec1e2bfef0b3ecaf83c630ac3c6779d7b0e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorPower.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exteriorPower](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/exteriorpower--25233215ee1dae57ff36c368.md) | 34 | `declaration-track:25233215ee1dae57ff36c3681df41571bfad34aef93800bfc5ef08266925da9f` |
| 2 | `def` | [AlternatingMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/alternatingmap--9892348035547b6795b0043a.md) | 39 | `declaration-track:9892348035547b6795b0043a9daf9ef975af54ba6fb35424a41d94b2ee59ffd8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/instance--8d25057a4282e87efad796d6.md) | 42 | `declaration-track:8d25057a4282e87efad796d6eab1b06c5af62623958093fe7b13887455cf8fd8` |
| 4 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/ext--4afffd58d35237937d7b7110.md) | 51 | `result-track:4afffd58d35237937d7b7110c4b400843bde20048577d834a9d858a9e3bbe4bf` |
| 5 | `def` | [postcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/postcomp--4a82f4eb8321c59109304a99.md) | 58 | `declaration-track:4a82f4eb8321c59109304a99d15378284e23cfc25d393f8cc7ba7164968765d9` |
| 6 | `lemma` | [postcomp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/postcomp-apply--bc68b18cafac1e3606da118e.md) | 62 | `result-track:bc68b18cafac1e3606da118e064f2f88bf7c9201ae944e392c9499d047807375` |
| 7 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/mk--cebae6a08ad70494eb4f3482.md) | 71 | `declaration-track:cebae6a08ad70494eb4f34820b9bf74f753172066095d84be20820b92ea29a6b` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/hom-ext--2d1ee20bcdc7f325b6c17779.md) | 76 | `result-track:2d1ee20bcdc7f325b6c17779b25f28b87328b673491e2ed58ae2a6b6bbff3aca` |
| 9 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/desc--3c3558bcd34bd63d8ae76c71.md) | 83 | `declaration-track:3c3558bcd34bd63d8ae76c71019b9d12e8264e298dab3d2cd58229048ec88b72` |
| 10 | `lemma` | [desc_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/desc-mk--dbb5bc1f2ae2c04d557fa0d9.md) | 88 | `result-track:dbb5bc1f2ae2c04d557fa0d95920396815e84becdf56378826e2df358245105b` |
| 11 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/map--896d5cf4a0a78ac1a73de054.md) | 95 | `declaration-track:896d5cf4a0a78ac1a73de054c1ed7a1f1b6a1c0687c7c5b9707e4f5ea1edc6e1` |
| 12 | `lemma` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/map-mk--1a9dcf7ac999d8a575fb400e.md) | 100 | `result-track:1a9dcf7ac999d8a575fb400e609278b70bdb964a96f01762e5df114eb9fb3f5d` |
| 13 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/functor--467bc37f6d90e297db10252c.md) | 108 | `declaration-track:467bc37f6d90e297db10252c09adc3234c7207697fb422251499bf2a5989fe46` |
| 14 | `def` | [iso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/iso--903e414ad8d951addfc3a693.md) | 113 | `declaration-track:903e414ad8d951addfc3a69354a97ba156a0427c84d2b7ab4f27b0608a5e5e3d` |
| 15 | `lemma` | [iso₀_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/iso-hom-apply--bbc607c5efa38ef89c6acfc9.md) | 117 | `result-track:bbc607c5efa38ef89c6acfc93544beaad0cf3a9830d8ae30d974347fc9222dfc` |
| 16 | `lemma` | [iso₀_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/iso-hom-naturality--626b2afbef11ca51bebc7d7a.md) | 122 | `result-track:626b2afbef11ca51bebc7d7af1d17e6dbbfaa06df4650f3bb52481ac85228cbe` |
| 17 | `def` | [iso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/iso--ceabea0bde3088e62c47e938.md) | 127 | `declaration-track:ceabea0bde3088e62c47e93862de187a8679351b7566b5eb1baa40ee6d7b12ba` |
| 18 | `lemma` | [iso₁_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/iso-hom-apply--ab017d0b9a49491726693d3a.md) | 131 | `result-track:ab017d0b9a49491726693d3a3ccecc16bbadd0647de3eedf767afd263d6e971f` |
| 19 | `lemma` | [iso₁_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/iso-hom-naturality--92bb0d7c4a9a433c7aef8307.md) | 136 | `result-track:92bb0d7c4a9a433c7aef83075a52ed1584d3f45a6953a83ad17ae9cf5e986251` |
| 20 | `def` | [natIso₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/natiso--747363b37a36be443342343d.md) | 143 | `declaration-track:747363b37a36be443342343d6d2e076471c474f99319724c6a9f4bbb87c10588` |
| 21 | `def` | [natIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExteriorPower/Variant04c6422c07e7cf017168591bd14f0d8244ac8867dbc3c11bf500cc2f3ca67aab.lean/declarations/natiso--311bde611de293bc859e283b.md) | 147 | `declaration-track:311bde611de293bc859e283b4349b1fd7210ad4938dd00a3a193583454fe5384` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
