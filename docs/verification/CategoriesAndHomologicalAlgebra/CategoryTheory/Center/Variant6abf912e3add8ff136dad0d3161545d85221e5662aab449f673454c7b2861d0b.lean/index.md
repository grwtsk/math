# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Center.Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ca896fd12af329cf985197e8c6e5271a01d3fd8",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ca896fd12af329cf985197e8c6e5271a01d3fd8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfBraiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/halfbraiding--9f0e57e3d741f471ea4b41d2.md) | 50 | `declaration-track:9f0e57e3d741f471ea4b41d2eae21773368d3d165f250bf97e6b167121507be7` |
| 2 | `def` | [Center](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/center--f2c0b4ab0d8930575cc797ca.md) | 69 | `declaration-track:f2c0b4ab0d8930575cc797cacfc044e255541ba3bc7063aa420989e6ce95481c` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/hom--4df7006fa2badefad8703412.md) | 78 | `declaration-track:4df7006fa2badefad870341241a0fa946d566620d3cf4146922f6a4e448a0a8a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/instance--8c1f12f6bf22f43c632e9b25.md) | 85 | `declaration-track:8c1f12f6bf22f43c632e9b25fb5fab3d257d7e89f398ebffc1c168a028059bdc` |
| 5 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ext--120e6030ecd3072a15afe978.md) | 89 | `result-track:120e6030ecd3072a15afe9782fd2221d48d8dacf6b7f36e749beae11c5df9980` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/instance--fb6ccfafe0f96de14c2ea546.md) | 92 | `declaration-track:fb6ccfafe0f96de14c2ea5461c9f8ebbe3cf4647f0af5d5fd284f0eb3ac478e5` |
| 7 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/id-f--d81d943f55885e849b87549f.md) | 97 | `result-track:d81d943f55885e849b87549f296eaed2a37c01c528081b9f62805008222310fe` |
| 8 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/comp-f--b0e9c3a12248c9ecf49eaf08.md) | 101 | `result-track:b0e9c3a12248c9ecf49eaf08bfba9b531fffa9d7e0852e57eddf5578d02ffc90` |
| 9 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/isomk--319dd9a9977715d31f0f6b60.md) | 108 | `declaration-track:319dd9a9977715d31f0f6b60363cdcd7e321c436dd2dc044b35d632f0a46fba1` |
| 10 | `instance` | [isIso_of_f_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/isiso-of-f-isiso--b7cb10f1b94601dc85c9bfb9.md) | 114 | `declaration-track:b7cb10f1b94601dc85c9bfb93732e2582e271cca2bf243d4ed8dbac23020cdf7` |
| 11 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensorobj--4cf3ca9f60bd2d6ee0a582ea.md) | 120 | `declaration-track:4cf3ca9f60bd2d6ee0a582ea9b51f46f6941bca13361b27af951b9b50170be09` |
| 12 | `theorem` | [whiskerLeft_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/whiskerleft-comm--10377d0d51d2ae7c2b36a51b.md) | 152 | `result-track:10377d0d51d2ae7c2b36a51b36fa517abc8d6b1aeae32adfa9d18371c3e68d1c` |
| 13 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/whiskerleft--b5849d937b7f18ca2281d469.md) | 168 | `declaration-track:b5849d937b7f18ca2281d469f34f3077ed03a622d6ffa1e9b71d8e2c610d0992` |
| 14 | `theorem` | [whiskerRight_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/whiskerright-comm--840455693c4a815d87aacd3f.md) | 174 | `result-track:840455693c4a815d87aacd3fc82f92a03e507037146d6c4591b7d565082e5e33` |
| 15 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/whiskerright--9e404f166186e6dbd585eb5e.md) | 190 | `declaration-track:9e404f166186e6dbd585eb5eba68482de39389c03608fa741f6ee23ddd2eddb8` |
| 16 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensorhom--003f620a0df6f84d804d5c17.md) | 197 | `declaration-track:003f620a0df6f84d804d5c17708aa58b1626051e734b5f87aecbe079bc1d02e7` |
| 17 | `def` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensorunit--b8ca1894639d5c339ed9e34a.md) | 208 | `declaration-track:b8ca1894639d5c339ed9e34ac36f93177a8ebaa208ef9142a22b70df231ccba4` |
| 18 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/associator--34ee77f6bd8396e3ec8a66b1.md) | 212 | `declaration-track:34ee77f6bd8396e3ec8a66b1dc5220e3922564ddd50ca95fe5ec946ed757427e` |
| 19 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/leftunitor--49326f42b807684c483859ee.md) | 216 | `declaration-track:49326f42b807684c483859ee10dd190521edd0e5f5ae7d1d9274c6cadcaa9ab0` |
| 20 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/rightunitor--3ab2874adee268321114622d.md) | 220 | `declaration-track:3ab2874adee268321114622d5c49b1e29915aa6265ab6c9e4c694a53ffaa0fd8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/instance--38221356748ad7e4b9ae8c26.md) | 233 | `declaration-track:38221356748ad7e4b9ae8c26e88e44001d11bcba78b3d548280882ae12f58581` |
| 22 | `theorem` | [tensor_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensor-fst--22765fa11e7002874eed1923.md) | 245 | `result-track:22765fa11e7002874eed19237808584da320d9baf85b88f5a43c86f60b489ea2` |
| 23 | `theorem` | [tensor_β](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensor--21520434577b1d3717bc4f8e.md) | 249 | `result-track:21520434577b1d3717bc4f8e3256b5a7e59268f550501229cb280224099e7f2a` |
| 24 | `theorem` | [whiskerLeft_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/whiskerleft-f--5dd938b48ed3dc854b7aaee1.md) | 257 | `result-track:5dd938b48ed3dc854b7aaee13fa414b2749cb38891ebe9b6b8bc9a7083e6a535` |
| 25 | `theorem` | [whiskerRight_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/whiskerright-f--a0f08fe5b4f64da040a2e039.md) | 261 | `result-track:a0f08fe5b4f64da040a2e039b59dda74715dc54a7d17839872e4152609b709e2` |
| 26 | `theorem` | [tensor_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensor-f--7251b511055f11c0b63e33b0.md) | 265 | `result-track:7251b511055f11c0b63e33b08845e994f3b27a9b18879319f05873530eb050cd` |
| 27 | `theorem` | [tensorUnit_β](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/tensorunit--2e193564a5291086aa6d2223.md) | 269 | `result-track:2e193564a5291086aa6d2223cbf5bf9f5a1dc1b8764f4031e94cbcc786333e12` |
| 28 | `theorem` | [associator_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/associator-hom-f--15dfba85f0e763676dc7b806.md) | 273 | `result-track:15dfba85f0e763676dc7b80675700837d5796961141e80fb8d9ece542395cbd1` |
| 29 | `theorem` | [associator_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/associator-inv-f--7011060b25810cdb05935c4e.md) | 277 | `result-track:7011060b25810cdb05935c4e64b037f74d68d9d68654c61a5bbdc831d6fa4335` |
| 30 | `theorem` | [leftUnitor_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/leftunitor-hom-f--bed8eadc8e9c3ecabe962026.md) | 282 | `result-track:bed8eadc8e9c3ecabe96202645ae937f64d9f5d2bf91157793a98e5e3a3a902e` |
| 31 | `theorem` | [leftUnitor_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/leftunitor-inv-f--574cfb5e7db6327a85767701.md) | 286 | `result-track:574cfb5e7db6327a857677016293c23024b2c5cdaa300780cec470629c497bf3` |
| 32 | `theorem` | [rightUnitor_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/rightunitor-hom-f--9f0d0c66a4b33957812a8d7b.md) | 291 | `result-track:9f0d0c66a4b33957812a8d7bcf3b033abeb5c19482ed91126c6f82f0bc9fd554` |
| 33 | `theorem` | [rightUnitor_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/rightunitor-inv-f--8d684061a6303bd7e88eccb0.md) | 295 | `result-track:8d684061a6303bd7e88eccb01570a5491e1b503a94fa155ea9672b49aaadcf06` |
| 34 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/forget--2344220772ca40eca7f9abef.md) | 307 | `declaration-track:2344220772ca40eca7f9abef383e05e680766c8f363d4488e21e90781bcff784` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/instance--34a3c6090139fbce449f15e2.md) | 311 | `declaration-track:34a3c6090139fbce449f15e2d27e259af0dbcf92f39c411bf287c75dcb9d0517` |
| 36 | `lemma` | [forget_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/forget--b6337adacd7a7130bfa2d826.md) | 316 | `result-track:b6337adacd7a7130bfa2d8260cd71c97ee94de95bd3578dc7d0c6cede1beba9b` |
| 37 | `lemma` | [forget_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/forget--05a901be3f23847c86c3e760.md) | 317 | `result-track:05a901be3f23847c86c3e76074093dac2ea0541b41549df35048cf124004a21e` |
| 38 | `lemma` | [forget_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/forget--88e54c2c00726988b925a222.md) | 321 | `result-track:88e54c2c00726988b925a222d65efd26fa0eb104c358b6ff56e4b04b9cd8e611` |
| 39 | `lemma` | [forget_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/forget--bd2b57e15923373bb7387b2e.md) | 322 | `result-track:bd2b57e15923373bb7387b2e3631e9dd4601c1fc6697d43da9b6939f1c6244cb` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/instance--8b62de8dd34010a3371986f3.md) | 324 | `declaration-track:8b62de8dd34010a3371986f3a0ffeb7fb14b24a0e62cd4b70742ea7ed9d85c20` |
| 41 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/braiding--372ceae76f785ca1a46e974e.md) | 331 | `declaration-track:372ceae76f785ca1a46e974e2f2d274cda555cc5bf9dc2b493c31f0ec01c3769` |
| 42 | `instance` | [braidedCategoryCenter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/braidedcategorycenter--09a1c6118d7304eadbecbeb0.md) | 340 | `declaration-track:09a1c6118d7304eadbecbeb0dbe8d5b0e483d62240ef012148b922390b0cb5a5` |
| 43 | `def` | [ofBraidedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ofbraidedobj--83eba67607df4fd0d041727c.md) | 352 | `declaration-track:83eba67607df4fd0d041727c4900207c8acaebce99e8fa0575787b751ce84ea3` |
| 44 | `def` | [ofBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ofbraided--38810c9578902c4c116f8e7b.md) | 360 | `declaration-track:38810c9578902c4c116f8e7bc10ab179cc4c42b2df2413fa85b907c90066ae95` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/instance--236828c54923e11badabe214.md) | 366 | `declaration-track:236828c54923e11badabe21499020cac05f5a3d4088192496f2a1d9ed0d89b15` |
| 46 | `lemma` | [ofBraided_ε_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ofbraided-f--cd2e15bb5e57238af85403a8.md) | 375 | `result-track:cd2e15bb5e57238af85403a826dce5e9e6b12c236e9bc2ec7e3c13c5a9972145` |
| 47 | `lemma` | [ofBraided_η_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ofbraided-f--9b354a6f6b580fc3f565afbb.md) | 376 | `result-track:9b354a6f6b580fc3f565afbb53fdb5b6f0c138b37622ea60f27c92a4061cdc2f` |
| 48 | `lemma` | [ofBraided_μ_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ofbraided-f--e7c9cd60f83052f0f314b427.md) | 380 | `result-track:e7c9cd60f83052f0f314b427800e6e111055b2a3c49e453071785a4b66864cc5` |
| 49 | `lemma` | [ofBraided_δ_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant6abf912e3add8ff136dad0d3161545d85221e5662aab449f673454c7b2861d0b.lean/declarations/ofbraided-f--948dec2b1808e05f8f035e9a.md) | 381 | `result-track:948dec2b1808e05f8f035e9a97d481effb94d95a16f8d5a0114eec903626a516` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
