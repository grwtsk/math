# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftSequence.Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f73a00f977da4c7c1615123df99cbe808b26c3b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f73a00f977da4c7c1615123df99cbe808b26c3b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ShiftSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftsequence--fd3001271becd78a8b299aad.md) | 41 | `declaration-track:fd3001271becd78a8b299aadc89e911062fd69a784267f23e68044b35690b17c` |
| 2 | `def` | [ShiftSequence.tautological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftsequence-tautological--a41ba0ac99abe3ceef466c00.md) | 56 | `declaration-track:a41ba0ac99abe3ceef466c0076db6310e293ccb23632813bd40ac8fae9966b80` |
| 3 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shift--cda2a3c1384abd54be4a63de.md) | 80 | `declaration-track:cda2a3c1384abd54be4a63dee6ab2a50b31141976357cd31bcda9ffe8f854cc2` |
| 4 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso--1658f57b4a29f2fb5c3a4747.md) | 83 | `declaration-track:1658f57b4a29f2fb5c3a4747a6d80e9f372a6c5b5830a17d19217a554d66df4f` |
| 5 | `lemma` | [shiftIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-hom-naturality--8c678b5cc1dc9b633bfca4d7.md) | 88 | `result-track:8c678b5cc1dc9b633bfca4d7cd595dc0eadd2d166765ab8ff58962e899f004e5` |
| 6 | `lemma` | [shiftIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-inv-naturality--09e1b2df48f431a9ccb83304.md) | 94 | `result-track:09e1b2df48f431a9ccb83304839991459b122637b491fd98c0a99c931a4edfd7` |
| 7 | `def` | [isoShiftZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/isoshiftzero--019815b75d0e6cf14465d4d8.md) | 101 | `declaration-track:019815b75d0e6cf14465d4d8ba26901b2329f252171d4630ae4c7e4d7aa02d30` |
| 8 | `def` | [isoShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/isoshift--da4fbcea488b35b045035503.md) | 104 | `declaration-track:da4fbcea488b35b045035503f01f8c5cb9efa5eb8c905104e6e79c96652f6bee` |
| 9 | `lemma` | [isoShift_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/isoshift-hom-naturality--06c1918e483d6b723ee1f621.md) | 108 | `result-track:06c1918e483d6b723ee1f621261b87a0643b929b8737d2015a3644df03de1db0` |
| 10 | `lemma` | [isoShift_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/isoshift-inv-naturality--9f07f1fecda69435cab8b333.md) | 116 | `result-track:9f07f1fecda69435cab8b333fc62e2d154bb92f0eebd152463b2455ef7901bde` |
| 11 | `lemma` | [shiftIso_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-zero--5a8920ecb603a6a38fd153a5.md) | 121 | `result-track:5a8920ecb603a6a38fd153a563b4b01b446dba30e13a1a794c406b43a620fb33` |
| 12 | `lemma` | [shiftIso_zero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-zero-hom-app--90d4b56d43bd8fd76bb56229.md) | 127 | `result-track:90d4b56d43bd8fd76bb562290d73a5098e15717a8ac09925e23f5f900efdcec4` |
| 13 | `lemma` | [shiftIso_zero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-zero-inv-app--7d6c4cd20b631effb475fc89.md) | 133 | `result-track:7d6c4cd20b631effb475fc895ec7a0da63951a7f981e623b1f97efdb8b6b2ff0` |
| 14 | `lemma` | [shiftIso_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-add--2c01f3ff7ef4ea53d9e7753f.md) | 138 | `result-track:2c01f3ff7ef4ea53d9e7753f9836ddf0896719e518afb6d098a87e1093f90d0f` |
| 15 | `lemma` | [shiftIso_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-add-hom-app--68f76a2c0d6628c41d35cb2f.md) | 144 | `result-track:68f76a2c0d6628c41d35cb2f4cdad54008ab36aca7d3fc0db68dd0ce256e5dc5` |
| 16 | `lemma` | [shiftIso_add_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-add-inv-app--4b81e1a5c1229efaf6a21366.md) | 151 | `result-track:4b81e1a5c1229efaf6a213665758e4b1a2496cfb95916136a56f3e4a157842e5` |
| 17 | `lemma` | [shiftIso_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-add--ede260121a68545dc4f254c1.md) | 158 | `result-track:ede260121a68545dc4f254c14075ac32f83e04b4258993168a6ede2843d155bb` |
| 18 | `lemma` | [shiftIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-add-hom-app--ef2a73e0d1e0ce9fd8c129b6.md) | 166 | `result-track:ef2a73e0d1e0ce9fd8c129b66b3a159c114c28589f61a564c75d84c2fbdbbbe0` |
| 19 | `lemma` | [shiftIso_add'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-add-inv-app--e9ea1434f3d6be46ed1dd133.md) | 174 | `result-track:e9ea1434f3d6be46ed1dd13393d9fc8602c9dfa1a22150c1d8554a068fed60a7` |
| 20 | `lemma` | [shiftIso_hom_app_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-hom-app-comp--0ff8697f65fa2e8dd9f160e4.md) | 183 | `result-track:0ff8697f65fa2e8dd9f160e451a74c14d2de5eeb8391a8e0bf1b7f3d9e0a3cd2` |
| 21 | `def` | [shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftmap--c8dbebd9b1cc35dafca4a819.md) | 194 | `declaration-track:c8dbebd9b1cc35dafca4a8193b6c56692dc4deafdb13a224d918e34928577575` |
| 22 | `lemma` | [shiftMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftmap-comp--4aa40e02404343df0e03c616.md) | 199 | `result-track:4aa40e02404343df0e03c6169a8b90eb62584349a98b15d2a0954ef95704b700` |
| 23 | `lemma` | [shiftMap_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftmap-comp--bf15ea4d0546f9b5967ae2c9.md) | 204 | `result-track:bf15ea4d0546f9b5967ae2c9b6c6f8a70dea6cbf760dd7ee68285ae2b63c113c` |
| 24 | `lemma` | [shiftIso_hom_app_comp_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-hom-app-comp-shiftmap--590db3a496c92d6950e7997c.md) | 214 | `result-track:590db3a496c92d6950e7997c881884449e98b7aac9378d99c5bf692526440e15` |
| 25 | `lemma` | [shiftIso_hom_app_comp_shiftMap_of_add_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftiso-hom-app-comp-shiftmap-of-add-eq-zero--306e34b1b07538f662f1e71a.md) | 229 | `result-track:306e34b1b07538f662f1e71a889cead0a9ccf6cc08c96fb1f9df20485e255675` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/instance--c98ed39b64b14531346b61a7.md) | 247 | `declaration-track:c98ed39b64b14531346b61a79f4635a31eed61fa89fed1fcce551dd0c29fdbc8` |
| 27 | `lemma` | [shiftMap_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/shiftmap-zero--d4ae52b947551965597dddbc.md) | 251 | `result-track:d4ae52b947551965597dddbc36f628292bc0138c55d9e16037430c26b5bd469a` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant62b7b96677abd841ac2721a4243a06a022c0e7e6110aa33ea89abef478a8a731.lean/declarations/instance--598b95aa378dd204f8dbbab8.md) | 262 | `declaration-track:598b95aa378dd204f8dbbab81921c6885829e0093fa49d95a2e457347f6b5733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
