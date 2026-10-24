# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftSequence.Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "954522bcd90ba27e877f86d11f00a70940d56fd6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `954522bcd90ba27e877f86d11f00a70940d56fd6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean.json)

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
| 1 | `class` | [ShiftSequence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftsequence--4f8d638a1eaf25651680a03e.md) | 48 | `declaration-track:4f8d638a1eaf25651680a03e6a97fc4075e149395be54cfe72fd49fe25db2827` |
| 2 | `def` | [ShiftSequence.tautological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftsequence-tautological--5941fc134085b580f2b6cb21.md) | 65 | `declaration-track:5941fc134085b580f2b6cb21f8cbcd631cb25aae7d17458841baf7253e4f4bf2` |
| 3 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shift--434db61572317531412ae32e.md) | 89 | `declaration-track:434db61572317531412ae32ec96b2942ddd580ce9ead41b79173da6bacba7134` |
| 4 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso--9630fcc4e93ac5035509b5c2.md) | 92 | `declaration-track:9630fcc4e93ac5035509b5c2175aa23111da6e4c22f6e658750b34888255cca1` |
| 5 | `lemma` | [shiftIso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-hom-naturality--a2878f16a9a6047e47ebca6a.md) | 97 | `result-track:a2878f16a9a6047e47ebca6a71ed9d4a3008c8d37e697b8739a89b7c03f4489a` |
| 6 | `lemma` | [shiftIso_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-inv-naturality--7ef51ff4f088c5f2b04e387c.md) | 103 | `result-track:7ef51ff4f088c5f2b04e387c369bfa44820a04fc6abd8594ecb5e474a1e523c8` |
| 7 | `def` | [isoShiftZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/isoshiftzero--9d04ab6f347277372bf0f310.md) | 110 | `declaration-track:9d04ab6f347277372bf0f3101b3dc51a61dddfeb898b3c033e74489fe501740f` |
| 8 | `def` | [isoShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/isoshift--98cd7010b2548c8ee08c4174.md) | 113 | `declaration-track:98cd7010b2548c8ee08c41747fbb49bfc1f303f991dc5a2adbf81086bd969f45` |
| 9 | `lemma` | [isoShift_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/isoshift-hom-naturality--ea02bb5297fbc11dcfc36598.md) | 117 | `result-track:ea02bb5297fbc11dcfc3659843ba4e0914a6702a8f09bb5b2563a8b896caa0b1` |
| 10 | `lemma` | [isoShift_inv_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/isoshift-inv-naturality--503a4ae7e631e092dd9474cc.md) | 125 | `result-track:503a4ae7e631e092dd9474cccf50e248005345361a9a91fe6a7aad55a1045a0f` |
| 11 | `lemma` | [shiftIso_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-zero--fb7d06c62b7f440f2b36add8.md) | 130 | `result-track:fb7d06c62b7f440f2b36add88960be41c3c2f314fad1c51ec5cb23b394366a67` |
| 12 | `lemma` | [shiftIso_zero_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-zero-hom-app--fd959704b2306e1d58613c52.md) | 137 | `result-track:fd959704b2306e1d58613c52159a6845f14c59b4d80e45400d0c4b58003c9c55` |
| 13 | `lemma` | [shiftIso_zero_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-zero-inv-app--80c4682e211de0e3d7b38480.md) | 144 | `result-track:80c4682e211de0e3d7b3848085ff5d98a53b7523a29b445af90852249711c6f5` |
| 14 | `lemma` | [shiftIso_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-add--2686fe3862c8928324fb0aba.md) | 149 | `result-track:2686fe3862c8928324fb0aba9dbb739ad08d4bfd1d0eb77b395246e87b5371ae` |
| 15 | `lemma` | [shiftIso_add_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-add-hom-app--1d21c98f48c3c77dcdea7b03.md) | 156 | `result-track:1d21c98f48c3c77dcdea7b033be343b1797049e89d3d1bfdd3a139e22530d6bd` |
| 16 | `lemma` | [shiftIso_add_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-add-inv-app--6456189d965d17aa26593386.md) | 164 | `result-track:6456189d965d17aa2659338634238d0d6f41cf48a3bbc9bb552681aa58064b4c` |
| 17 | `lemma` | [shiftIso_add'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-add--3f51bfd4d989a1586751c6b0.md) | 171 | `result-track:3f51bfd4d989a1586751c6b0f568188d916d9b0bb2e4e2a0c454eb3dc36ef6af` |
| 18 | `lemma` | [shiftIso_add'_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-add-hom-app--b442811f9ebf351477d8cf3b.md) | 180 | `result-track:b442811f9ebf351477d8cf3bceeb55692f87c09e789ac12c67db629ef29238df` |
| 19 | `lemma` | [shiftIso_add'_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-add-inv-app--0d97744a2fa02015a081d925.md) | 189 | `result-track:0d97744a2fa02015a081d9250bcb3d08b7d058aabc0a6f5f23873e5d993ab225` |
| 20 | `lemma` | [shiftIso_hom_app_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-hom-app-comp--8142e06dde3297805482c333.md) | 198 | `result-track:8142e06dde3297805482c333d5322bc618edf36529029818047332c90d1f077a` |
| 21 | `def` | [shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftmap--d972d7f0aaf7ee67339a4bbd.md) | 209 | `declaration-track:d972d7f0aaf7ee67339a4bbd0f7ebf0b6b9bce49375d50e14b30dd3256fc9af0` |
| 22 | `lemma` | [shiftMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftmap-comp--88556358297fe6d1218058e1.md) | 215 | `result-track:88556358297fe6d1218058e14982fb268240df08c0b7b8eb34ced42f8ffcaa69` |
| 23 | `lemma` | [shiftMap_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftmap-comp--a77bdc9e5d762f4ff2eb8595.md) | 220 | `result-track:a77bdc9e5d762f4ff2eb85951244141f61a7a2a213e10409c7109207d74d7425` |
| 24 | `lemma` | [shiftIso_hom_app_comp_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-hom-app-comp-shiftmap--c75075c29913d230a02dad8c.md) | 230 | `result-track:c75075c29913d230a02dad8ca6968047357c8a36f67aacfce94fa34fc4a1516e` |
| 25 | `lemma` | [shiftIso_hom_app_comp_shiftMap_of_add_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftiso-hom-app-comp-shiftmap-of-add-eq-zero--ea49c4fbafb4069b12a15eeb.md) | 245 | `result-track:ea49c4fbafb4069b12a15eeb2e85f0be89130923c7d129a53523ee867bc94580` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/instance--5247d040cbfc799da5d70bbe.md) | 262 | `declaration-track:5247d040cbfc799da5d70bbefccece852d4ee7fdadd88791e4fab99d60681770` |
| 27 | `lemma` | [shiftMap_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/shiftmap-zero--b3660b5a13f9db4d1b8a9617.md) | 266 | `result-track:b3660b5a13f9db4d1b8a9617bcbf47cb0fd665ae8e961c4d79a5dbe85c084229` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/instance--ca0ca1199440fbd92c344738.md) | 277 | `declaration-track:ca0ca1199440fbd92c344738f9211caf4d429abad1ffc2a6e5d7274c4680992b` |
| 29 | `def` | [leftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/leftcomp--66a79a22585abdcbff88872e.md) | 290 | `declaration-track:66a79a22585abdcbff88872e335fffdf3192d66b18f50e45ecc054728235efa4` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variantebb82ffe07b074bf412637d05d67690327191fa71e2e5cf4941f1fbddb8b8cfa.lean/declarations/instance--80e775778c695b7f7e0d64d8.md) | 308 | `declaration-track:80e775778c695b7f7e0d64d84223989b9cedce3067233108676c4712ef2f200e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
