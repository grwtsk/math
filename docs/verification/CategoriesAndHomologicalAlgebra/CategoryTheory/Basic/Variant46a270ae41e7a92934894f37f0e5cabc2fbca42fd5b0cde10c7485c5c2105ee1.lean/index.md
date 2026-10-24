# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc492df90c82879d734541013506254e5d2e1940",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc492df90c82879d734541013506254e5d2e1940`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/sset--af6b40a149cf826e235bb91b.md) | 32 | `declaration-track:af6b40a149cf826e235bb91beba03551cb76c8cb60685e5f5f6ba97fd1fcb7a9` |
| 2 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/largecategory--1efb78181968f0eedd54f96e.md) | 37 | `declaration-track:1efb78181968f0eedd54f96e0954a0967a6795cb3f99ef7064b77558983e8469` |
| 3 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/haslimits--9c45eff04d348ac2a29ed72a.md) | 41 | `declaration-track:9c45eff04d348ac2a29ed72a61e0b3668d4ce2942480ab10417c7a04ab9ec6e3` |
| 4 | `instance` | [hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/hascolimits--383d6cfe1aac3ca5ca79c9e7.md) | 45 | `declaration-track:383d6cfe1aac3ca5ca79c9e7d0e1c7f260736ce950a667bd30bfb141202b86ab` |
| 5 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/hom-ext--bc33117eb001e631bf60d406.md) | 50 | `result-track:bc33117eb001e631bf60d406db7fbf02253caf2f1a6dc23b505409c644f01285` |
| 6 | `lemma` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-app--3e36ee1972625c6880fbc18e.md) | 54 | `result-track:3e36ee1972625c6880fbc18ec6e98033f4ac4a7d0a72220f804d5c4c6ceac807` |
| 7 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/const--5d02b6a49da4490366bfcc44.md) | 59 | `declaration-track:5d02b6a49da4490366bfcc4412ef182a237dc1929d7d294ebe9c87f9706db8a2` |
| 8 | `lemma` | [comp_const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-const--8e681ca25d5ef867ee28a293.md) | 68 | `result-track:8e681ca25d5ef867ee28a29344ff7f9761cf8743150091561e936a83e6ce5d82` |
| 9 | `lemma` | [const_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/const-comp--6d02723ac940269139e2ddff.md) | 72 | `result-track:6d02723ac940269139e2ddff4f4804acd9c82169e601b53b0f525fbecb34f547` |
| 10 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/uliftfunctor--4177682b07153cb6d456b704.md) | 78 | `declaration-track:4177682b07153cb6d456b70472b078490072730c5f12ea262aa03be9eb60851c` |
| 11 | `def` | [Truncated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/truncated--e2b4199e792e4f752f1c70b1.md) | 82 | `declaration-track:e2b4199e792e4f752f1c70b1c16afee91dcd9e49edfae689b8737652b298e3b7` |
| 12 | `instance` | [largeCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/largecategory--962028482c4112731bf43745.md) | 87 | `declaration-track:962028482c4112731bf43745fb86f31d51e6407870cf3be8be6df12b1f9b8ba7` |
| 13 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/haslimits--31acfc33b22bc8c76d7f585c.md) | 91 | `declaration-track:31acfc33b22bc8c76d7f585cfc45978d9fdf2c60a43fa226ebac9c477a6383d9` |
| 14 | `instance` | [hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/hascolimits--6a1424fa39176eeeb61c0a01.md) | 95 | `declaration-track:6a1424fa39176eeeb61c0a01ff748213f59b0b8fa7114f1b6e718fcc2f4ca6d0` |
| 15 | `def` | [uliftFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/uliftfunctor--45531bccabf90eaf3908ce44.md) | 101 | `declaration-track:45531bccabf90eaf3908ce441c19a0a2017f5e6949a4aeb89d15bdb2582c3678` |
| 16 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/hom-ext--13bb9f07fc49e8eb0a5c4cd6.md) | 105 | `result-track:13bb9f07fc49e8eb0a5c4cd670a8b9fdab6a06247b613f980d54f499f4692374` |
| 17 | `abbrev` | [trunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/trunc--792dcdc77999946de7ee352c.md) | 110 | `declaration-track:792dcdc77999946de7ee352c1a6faf6de6163875248c46f085297efc83551847` |
| 18 | `abbrev` | [truncation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/truncation--fe2fc1af33c65692842ef933.md) | 117 | `declaration-track:fe2fc1af33c65692842ef9336ec9bd87f9da83c8a1e0c6e9109faad7eb7a8f7a` |
| 19 | `def` | [truncationCompTrunc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/truncationcomptrunc--3a3023f2c2edec725c72e545.md) | 120 | `declaration-track:3a3023f2c2edec725c72e5454c4b4dec338d87bba66c865371f27041edd5e308` |
| 20 | `abbrev` | [Truncated.sk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/truncated-sk--decbcfc990b4bd45dd88e9cf.md) | 129 | `declaration-track:decbcfc990b4bd45dd88e9cf4393227f6051258c7b22e81361a43135ff8afd79` |
| 21 | `abbrev` | [Truncated.cosk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/truncated-cosk--c57bdde3ede70772ddf00f9f.md) | 133 | `declaration-track:c57bdde3ede70772ddf00f9f9e806fc8990230b2ac50e2e3fc1e58a84f45c448` |
| 22 | `abbrev` | [sk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/sk--41cf1820ad6ae0cd5592b239.md) | 137 | `declaration-track:41cf1820ad6ae0cd5592b239bf0313150b10d9f1cff68326977651d699f7605a` |
| 23 | `abbrev` | [cosk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/cosk--f02089993fa40368e7f364a2.md) | 140 | `declaration-track:f02089993fa40368e7f364a206f7568309ab169d7197e1f017ca744d6f48db46` |
| 24 | `def` | [skAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/skadj--fb10513884d3ae2ce8f74f0a.md) | 147 | `declaration-track:fb10513884d3ae2ce8f74f0ad9e26e5cb297f1911f09c13378d0aeb4807df202` |
| 25 | `def` | [coskAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/coskadj--79b6aac015110922ab0f2de1.md) | 151 | `declaration-track:79b6aac015110922ab0f2de1c6482da954081482969b25f16cd8d44d5cbd1a2f` |
| 26 | `instance` | [cosk_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/cosk-reflective--d694edcf930491310ed53710.md) | 156 | `declaration-track:d694edcf930491310ed53710e2a68905848369c2affbb9c8713de81e23bc3d45` |
| 27 | `instance` | [sk_coreflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/sk-coreflective--63a6051e035e467fdde182fe.md) | 159 | `declaration-track:63a6051e035e467fdde182fe694f221e99725e6c9ab9a3b6265ba8368ec6d78d` |
| 28 | `def` | [cosk.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/cosk-fullyfaithful--fb0f51a246c63ea3b81fb6ef.md) | 163 | `declaration-track:fb0f51a246c63ea3b81fb6efd85269858b84b4a20d964b12cc0dc92af896e214` |
| 29 | `instance` | [cosk.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/cosk-full--18033924b9ec9d949b87785a.md) | 167 | `declaration-track:18033924b9ec9d949b87785ab841e459e108b382dd49ed8e997356b97bf44835` |
| 30 | `instance` | [cosk.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/cosk-faithful--367c4ae01025c977fd058026.md) | 170 | `declaration-track:367c4ae01025c977fd0580262dda72af52093f0cf2e46a2eccc89a2c7f5f179a` |
| 31 | `instance` | [coskAdj.reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/coskadj-reflective--54a4379b02fefcdd452fb594.md) | 173 | `declaration-track:54a4379b02fefcdd452fb594c72824b1dafbea220435975ba55ee61c9bd3a9e1` |
| 32 | `def` | [sk.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/sk-fullyfaithful--b59c7cba9e19a57a105e861f.md) | 177 | `declaration-track:b59c7cba9e19a57a105e861fb8e4f6a5e8992964df61a36ebc97ac2875414bf2` |
| 33 | `instance` | [sk.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/sk-full--83f01dd98201e282da44d6a2.md) | 180 | `declaration-track:83f01dd98201e282da44d6a28b2346dd63cdd847069f3f2fc2c8363e896c77ce` |
| 34 | `instance` | [sk.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/sk-faithful--35cf6368e6d75fd3ab0f64d9.md) | 182 | `declaration-track:35cf6368e6d75fd3ab0f64d98342472568f94687bb7be54af16b63cecbd275af` |
| 35 | `instance` | [skAdj.coreflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/skadj-coreflective--f8ea67def9ec27bd9080f52e.md) | 185 | `declaration-track:f8ea67def9ec27bd9080f52e2c8185766c47407097f0b64089345a3a4d7f2d40` |
| 36 | `abbrev` | [Augmented](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/augmented--efe61a1583013456657914a5.md) | 194 | `declaration-track:efe61a1583013456657914a5d753bddf4655f7e497f03c05e99317fee3e9ec76` |
| 37 | `lemma` | [δ_comp_δ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-apply--3ad6baf2c5c8218b640d5a0d.md) | 200 | `result-track:3ad6baf2c5c8218b640d5a0d64067e39d6f42e9f6783807324f0c8db6933a9b9` |
| 38 | `lemma` | [δ_comp_δ'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-apply--4f6b397c918f096daedd7b95.md) | 203 | `result-track:4f6b397c918f096daedd7b9568443f79470a826f0e7d3dae9c2701bf4ba96e24` |
| 39 | `lemma` | [δ_comp_δ''_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-apply--3253a8c8bd53b4481d1e4218.md) | 208 | `result-track:3253a8c8bd53b4481d1e4218cecd2473bf719f398557a0cd3b4905b8f5fd82c5` |
| 40 | `lemma` | [δ_comp_δ_self_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-self-apply--c28781266e04f629a361b83e.md) | 213 | `result-track:c28781266e04f629a361b83e0fc2e44786711d1a58fe45bff14399ab5e0f905d` |
| 41 | `lemma` | [δ_comp_δ_self'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-self-apply--9eb423a01b6817ab76febbd3.md) | 216 | `result-track:9eb423a01b6817ab76febbd35b09e0a47a4835ad5cf316062909c603b1f78fb1` |
| 42 | `lemma` | [δ_comp_σ_of_le_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-of-le-apply--2e1ded1d7dc3ae6d07e4c6b8.md) | 219 | `result-track:2e1ded1d7dc3ae6d07e4c6b870ece6e25d01ce3181695713c5c65ec3274efd8d` |
| 43 | `lemma` | [δ_comp_σ_self_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-self-apply--34fe56fbd1daa34b61a5b4db.md) | 224 | `result-track:34fe56fbd1daa34b61a5b4db70a9ee2262f42e601bff0c0315bf1e9d384d6545` |
| 44 | `lemma` | [δ_comp_σ_self'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-self-apply--f555fc100b6eea02edb4694d.md) | 227 | `result-track:f555fc100b6eea02edb4694d23a68d349acd18e195b6802783d3d2bbb3ad875a` |
| 45 | `lemma` | [δ_comp_σ_succ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-succ-apply--f1cfc3a4d286410069d6a27e.md) | 231 | `result-track:f1cfc3a4d286410069d6a27e27f2343344b27e82394cb6d43749a8f47987c9c2` |
| 46 | `lemma` | [δ_comp_σ_succ'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-succ-apply--099dac01e8209608c083f0b7.md) | 234 | `result-track:099dac01e8209608c083f0b720e4c08cd07263416a3b20be1db2f1302d3ad813` |
| 47 | `lemma` | [δ_comp_σ_of_gt_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-of-gt-apply--12cb1d37a9a921dd45bb80b5.md) | 237 | `result-track:12cb1d37a9a921dd45bb80b542e0f5512f210b17d33e13bc72e42417271010c0` |
| 48 | `lemma` | [δ_comp_σ_of_gt'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-of-gt-apply--3689cf1536aababf15ff3502.md) | 241 | `result-track:3689cf1536aababf15ff350275d255ae0813c6e2e1e3657ca902253a6acb02b9` |
| 49 | `lemma` | [σ_comp_σ_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/comp-apply--e8ddf2c4bb4638fa3393e5cd.md) | 247 | `result-track:e8ddf2c4bb4638fa3393e5cdd2bbc2f3a6baf3d13403db569d3f2a075248aa44` |
| 50 | `lemma` | [δ_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/naturality-apply--38490b3017277e8b7666075b.md) | 254 | `result-track:38490b3017277e8b7666075bcbab120634c355688e5677f19e319d37749b1a11` |
| 51 | `lemma` | [σ_naturality_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant46a270ae41e7a92934894f37f0e5cabc2fbca42fd5b0cde10c7485c5c2105ee1.lean/declarations/naturality-apply--12c4ceda275aedbd8f31aca5.md) | 259 | `result-track:12c4ceda275aedbd8f31aca531060163bbea71623f38a738041a83d8a0d3d944` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
