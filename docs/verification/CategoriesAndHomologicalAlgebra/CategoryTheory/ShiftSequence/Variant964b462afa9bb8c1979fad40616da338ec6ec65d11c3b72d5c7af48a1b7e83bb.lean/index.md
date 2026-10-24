# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftSequence.Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca61a7308491af9d5c3a412fcb56296005c070f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca61a7308491af9d5c3a412fcb56296005c070f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ShiftSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftsequence--895d7126e16c09b593cc26ba.md) | 49 | `declaration-track:895d7126e16c09b593cc26ba0c9b31ab4317540996631618de6645631c37fb15` |
| 2 | `def` | [ShiftSequence.tautological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftsequence-tautological--4779fa250d0ecdb2ea714617.md) | 64 | `declaration-track:4779fa250d0ecdb2ea71461706f71b12ae75ad24bcb35caa00fd21bdafc1f700` |
| 3 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shift--888225fefc574ea22b9926ee.md) | 88 | `declaration-track:888225fefc574ea22b9926eee7b41e80dc9c6c44f3a4186459273e07c96a4e7e` |
| 4 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso--f5cc7b849df3e64629e15f6f.md) | 91 | `declaration-track:f5cc7b849df3e64629e15f6f49849dfacf4b08be5f30d30e8b1e908d6dbc18af` |
| 5 | `lemma` | [shiftIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-hom-naturality--cbd0efe241dd5929674025e8.md) | 96 | `result-track:cbd0efe241dd5929674025e816226b31b87a313b8e6af68065aac8ed2dcbad44` |
| 6 | `lemma` | [shiftIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-inv-naturality--c4bab0b1c3e311a0c9e9939f.md) | 102 | `result-track:c4bab0b1c3e311a0c9e9939f6d1c92a46095d90bfe0e914f64e2cf83e361453f` |
| 7 | `def` | [isoShiftZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/isoshiftzero--f6bc6a0b0bdbd7fd1bc4b3e8.md) | 109 | `declaration-track:f6bc6a0b0bdbd7fd1bc4b3e8fb16a7cd796e3c41eb11e8f71b9383cfab7449b5` |
| 8 | `def` | [isoShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/isoshift--a114c29119cb62a24da6576e.md) | 112 | `declaration-track:a114c29119cb62a24da6576ed5461f0a08a0a5a9e46890d07ef175813f6ab2dc` |
| 9 | `lemma` | [isoShift_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/isoshift-hom-naturality--ab6492147aa92afa9f29467f.md) | 116 | `result-track:ab6492147aa92afa9f29467feaad170758910cdd5617d7b0e2cf18788ac22906` |
| 10 | `lemma` | [isoShift_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/isoshift-inv-naturality--9d6e4969e59b1c3a8b43abe7.md) | 124 | `result-track:9d6e4969e59b1c3a8b43abe707246749d9fb09f8d48aa9225c6a2e4c8599d27a` |
| 11 | `lemma` | [shiftIso_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-zero--f0309896f6d856a4e2855ad4.md) | 129 | `result-track:f0309896f6d856a4e2855ad4bcd58d2f17e266287219146acfb250b9680434d3` |
| 12 | `lemma` | [shiftIso_zero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-zero-hom-app--c5224895720d10e6c09830a0.md) | 135 | `result-track:c5224895720d10e6c09830a05f897c0c2c46230f5ca1365cd37b54d134b92574` |
| 13 | `lemma` | [shiftIso_zero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-zero-inv-app--02f3f8883ad0b884ea12d228.md) | 141 | `result-track:02f3f8883ad0b884ea12d228aed16b05cf216347afd80a89d70c82d0182d2d5c` |
| 14 | `lemma` | [shiftIso_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-add--8ba7f254e6d0ce8bcb1d91c2.md) | 146 | `result-track:8ba7f254e6d0ce8bcb1d91c21245d0c29cb45d60d164210d014705fc1c833c95` |
| 15 | `lemma` | [shiftIso_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-add-hom-app--437e4f26c84b50e6de3d09ae.md) | 152 | `result-track:437e4f26c84b50e6de3d09aec0a1a4e84610b33ed7c77ce82acd1d7c26addf73` |
| 16 | `lemma` | [shiftIso_add_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-add-inv-app--c7eddf901dd0740cbaa98107.md) | 159 | `result-track:c7eddf901dd0740cbaa98107165463285a07464580eafc9c49217f3571537541` |
| 17 | `lemma` | [shiftIso_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-add--792fa9e52da0f7ffba61f4b9.md) | 166 | `result-track:792fa9e52da0f7ffba61f4b9dd419ca24df9bad73bf81cf757f1c6867e8b487f` |
| 18 | `lemma` | [shiftIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-add-hom-app--6ed45aef7336d055bb67d559.md) | 174 | `result-track:6ed45aef7336d055bb67d559dd66ba19d872bbb4472947d3fe3439cd6b11e19f` |
| 19 | `lemma` | [shiftIso_add'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-add-inv-app--51526afa67e9045ba7ce280f.md) | 182 | `result-track:51526afa67e9045ba7ce280fc12dd403b2e1fa610e8a7e44be556a1cca6d8fc3` |
| 20 | `lemma` | [shiftIso_hom_app_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-hom-app-comp--7cff00d7177aaf7a764e93da.md) | 191 | `result-track:7cff00d7177aaf7a764e93da71a6bd965e0f32bcd8e22cd503442ee39c14e34f` |
| 21 | `def` | [shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftmap--bdb8b350ea66fd5400ed3ccf.md) | 202 | `declaration-track:bdb8b350ea66fd5400ed3ccfe7486def1c87be3db06c7e5749a92ec5e12456e4` |
| 22 | `lemma` | [shiftMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftmap-comp--26e6557680825287f8bd7527.md) | 207 | `result-track:26e6557680825287f8bd7527d30049cedf7bdc37b5755fe90ab09e842a261988` |
| 23 | `lemma` | [shiftMap_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftmap-comp--9e966904a2f09d1884a3aa23.md) | 212 | `result-track:9e966904a2f09d1884a3aa23839a64889b07a4fb48ab28238f53fe3692f749d8` |
| 24 | `lemma` | [shiftIso_hom_app_comp_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-hom-app-comp-shiftmap--1392597dd0def4fd238d843f.md) | 222 | `result-track:1392597dd0def4fd238d843fc6edf7c0ee1b8ac566004ebe03d5b1d3175fa1b4` |
| 25 | `lemma` | [shiftIso_hom_app_comp_shiftMap_of_add_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftiso-hom-app-comp-shiftmap-of-add-eq-zero--afaac84b7354182136fda3bc.md) | 237 | `result-track:afaac84b7354182136fda3bcf233a8324cd58b1701e87a4ccb42bf6641f6060c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/instance--ff1127a8f3f0a95d01196604.md) | 255 | `declaration-track:ff1127a8f3f0a95d011966048d03d9db36f6c8b3a5ddf4a0edf8fa1ee05c4724` |
| 27 | `lemma` | [shiftMap_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/shiftmap-zero--dc568f26bb5bf623cb330150.md) | 259 | `result-track:dc568f26bb5bf623cb33015037effea8f4f018533ffdd0e1acccb9d3f7bc8a83` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant964b462afa9bb8c1979fad40616da338ec6ec65d11c3b72d5c7af48a1b7e83bb.lean/declarations/instance--0b865d1656db62f2690c4bf6.md) | 270 | `declaration-track:0b865d1656db62f2690c4bf6483bdc1b91f4dca7cdbd9ca4c5232d89ef18d0bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
