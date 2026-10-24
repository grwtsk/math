# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d4347cb63825b7c527b95dbebc175edbec9c988",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d4347cb63825b7c527b95dbebc175edbec9c988`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/instance--21cb613c7da9e59db3eeb33a.md) | 36 | `declaration-track:21cb613c7da9e59db3eeb33a31109ed6a3e17d5050f1d7e188d16ff4d2d52e88` |
| 2 | `lemma` | [leftUnitor_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/leftunitor-hom-app-apply--e0c93e1d889879fbc6e3dbc7.md) | 40 | `result-track:e0c93e1d889879fbc6e3dbc71f4917d547c896937ea64ed2d2ed5efca6fbc9ec` |
| 3 | `lemma` | [leftUnitor_inv_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/leftunitor-inv-app-apply--7db6f0acc54ea6020ef76c7c.md) | 44 | `result-track:7db6f0acc54ea6020ef76c7c0dd598f5f9284264a44b505b716d04f3e5fb78c3` |
| 4 | `lemma` | [rightUnitor_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/rightunitor-hom-app-apply--4b6caa4c7cf13a84e9958623.md) | 48 | `result-track:4b6caa4c7cf13a84e99586234eb9c97b18692f5e5976db05cf4894d21ae8596a` |
| 5 | `lemma` | [rightUnitor_inv_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/rightunitor-inv-app-apply--81c317643a92f2ab440ac998.md) | 52 | `result-track:81c317643a92f2ab440ac9987e56d72de2f4bf54a45c132facee97ae2f4f02dd` |
| 6 | `lemma` | [tensorHom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/tensorhom-app-apply--919918a75ae665f0375fad4e.md) | 56 | `result-track:919918a75ae665f0375fad4efca3815eb7e4fc8ebb66545f4b3965d6dcfab35e` |
| 7 | `lemma` | [whiskerLeft_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/whiskerleft-app-apply--7302aaaf4bb29e31ef137c7e.md) | 61 | `result-track:7302aaaf4bb29e31ef137c7e13dbbc49e47ce8b768c8bee075772b2b468a1b90` |
| 8 | `lemma` | [whiskerRight_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/whiskerright-app-apply--dc69d599193f94c91570d9cf.md) | 66 | `result-track:dc69d599193f94c91570d9cf9b1430c749ff30aefaf0e631b4879954a8889123` |
| 9 | `lemma` | [associator_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/associator-hom-app-apply--c95e113467f7eed8878445fc.md) | 71 | `result-track:c95e113467f7eed8878445fc8ecb924fefb5643008400887afc565e30c7e195b` |
| 10 | `lemma` | [associator_inv_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/associator-inv-app-apply--5e45a0f665611631dd2a121d.md) | 76 | `result-track:5e45a0f665611631dd2a121db078f19850d0e7ecaf60ddfc4b028ad1edb2dcd3` |
| 11 | `def` | [unitHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant7728856aa86aef259d7c8de6bb86025ff2d3eee2b768cdf327155e6194878ae2.lean/declarations/unithomequiv--1bb6aa618e1ce16f9e71b068.md) | 81 | `declaration-track:1bb6aa618e1ce16f9e71b0684ee86559f4304691e8c78069f5f88a1a7c77eda1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
