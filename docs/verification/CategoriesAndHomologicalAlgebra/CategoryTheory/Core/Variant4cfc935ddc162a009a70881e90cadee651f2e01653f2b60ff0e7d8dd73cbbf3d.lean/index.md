# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a758271b8e72b85aa7b4365ab00c6962c64a06cd",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a758271b8e72b85aa7b4365ab00c6962c64a06cd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean.json)

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
| 1 | `structure` | [Core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/core--5987e04717847beb4de25dfa.md) | 47 | `declaration-track:5987e04717847beb4de25dfa49a7bed0421f24e5e5c93a9c09f4674e841201d5` |
| 2 | `structure` | [CoreHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corehom--82a91ba3939d67307965d125.md) | 56 | `declaration-track:82a91ba3939d67307965d1259187154fea4ba50ebc09a98fa73c35aaf6bfb6ee` |
| 3 | `instance` | [coreCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corecategory--c309a73687d468aed1d35084.md) | 61 | `declaration-track:c309a73687d468aed1d35084ef54b057721fc668e564a68bc52d8bf3acc37b88` |
| 4 | `lemma` | [coreCategory_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corecategory-comp-iso--6cbf482d8817f78bd3066e2d.md) | 68 | `result-track:6cbf482d8817f78bd3066e2d79a95299e9999ed0a1a0a7f2b6c0d3f7abe5006b` |
| 5 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/inclusion--135c71dfb4656ea91260ff71.md) | 76 | `declaration-track:135c71dfb4656ea91260ff71902eb00cba7bc24195f59c7e29874035e64daaa8` |
| 6 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/hom-ext--a21873546cc44fe9a79550b5.md) | 81 | `result-track:a21873546cc44fe9a79550b5f775e157871cfddbb21e72eab67752e107f9ebd0` |
| 7 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/isomk--2b1c6ce57161015010adb218.md) | 88 | `declaration-track:2b1c6ce57161015010adb218ae68f026346f9a2d3cad12bba903878d4f6337ba` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/instance--e1b8ceb926ab8734479ee318.md) | 93 | `declaration-track:e1b8ceb926ab8734479ee318c1f7d1bdc1d71b494cea19ffa3c09fb4eafed1f7` |
| 9 | `def` | [functorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocore--7fcfa77dc4653c96c1698d17.md) | 101 | `declaration-track:7fcfa77dc4653c96c1698d17e7660c08c142d102e28efd9b9b763e6161c2d9ec` |
| 10 | `def` | [forgetFunctorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/forgetfunctortocore--16f279da46e7bfaad451f5bb.md) | 109 | `declaration-track:16f279da46e7bfaad451f5bbd013afae57b048170f4bff5847eb0a29d9752f09` |
| 11 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/core--eb23c682b7e8d436468b8af0.md) | 122 | `declaration-track:eb23c682b7e8d436468b8af0d31941390396434538fb5e6731aef826e0e0f31f` |
| 12 | `def` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/coreid--2782604eb9555e69accf7489.md) | 127 | `declaration-track:2782604eb9555e69accf748929e903e2db6eed0ea0f62ee3b07e67fecc00546e` |
| 13 | `def` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corecomp--4ae9fbf73da149e7b906718b.md) | 131 | `declaration-track:4ae9fbf73da149e7b906718b5acf6ea29e1303970dd1cc35eb31ffe44135343e` |
| 14 | `def` | [coreCompInclusionIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corecompinclusioniso--0936474371e7935479b8909f.md) | 147 | `declaration-track:0936474371e7935479b8909f819dada68b8ee55466b7dfcd3db46b406dde0c43` |
| 15 | `lemma` | [core_comp_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/core-comp-inclusion--6b7e1dfe19d52f287370500c.md) | 151 | `result-track:6b7e1dfe19d52f287370500c9cd6ea870be3cdacd22277c4d4ec9144534ed6c7` |
| 16 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/core--c9e777aa215ab169a927f70d.md) | 164 | `declaration-track:c9e777aa215ab169a927f70d37ea42fac6efe9b516afc07a45b8b94492613e3e` |
| 17 | `lemma` | [coreComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corecomp--dabb94b708eea2d8c885b022.md) | 169 | `result-track:dabb94b708eea2d8c885b02255b09bd8415b529c3da551a77f7fd9782b20dc7c` |
| 18 | `lemma` | [coreId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/coreid--a9d4662ef7c9f0f97cb1f4ff.md) | 172 | `result-track:a9d4662ef7c9f0f97cb1f4ffc020e9fcd10dac9fab117c51bdc4bc6888616a41` |
| 19 | `lemma` | [coreWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corewhiskerleft--ad46d2f92c1f392c4c80fcd4.md) | 175 | `result-track:ad46d2f92c1f392c4c80fcd4092b12f65c7036a347d21b248bf2e4dd043c4841` |
| 20 | `lemma` | [coreWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corewhiskerright--428d9913c979189bc3ed1880.md) | 181 | `result-track:428d9913c979189bc3ed188086e72ca1a6d9938f61e7f30225bd4ccc0b3ac966` |
| 21 | `lemma` | [coreLeftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/coreleftunitor--e811bb7011bcfa8e8158417b.md) | 187 | `result-track:e811bb7011bcfa8e8158417b2414ccfcc6336583535e024ffb58aba91af24c50` |
| 22 | `lemma` | [coreRightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corerightunitor--cda5548416ba8bfa27ca10d7.md) | 193 | `result-track:cda5548416ba8bfa27ca10d78846e819de7ba8af572a646decbcc85630588d06` |
| 23 | `lemma` | [coreAssociator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/coreassociator--69ffb9793dab0b7f644b0899.md) | 199 | `result-track:69ffb9793dab0b7f644b08996914b9eed3e3a640404a1cb63bbd61a97c8d1c8d` |
| 24 | `def` | [functorToCoreCompLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocorecompleftiso--5b389205cd4e3871944dff3f.md) | 215 | `declaration-track:5b389205cd4e3871944dff3f28ff4e5f14bf94a4838d76f5e26925a72f8274e3` |
| 25 | `lemma` | [functorToCore_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocore-comp-left--b5d771f55a4a714a9fce1ce5.md) | 219 | `result-track:b5d771f55a4a714a9fce1ce593d25620cb976cdc1086a0d9975f1496ef2a494b` |
| 26 | `def` | [functorToCoreCompRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocorecomprightiso--6a0933b8d0765c9149aa1f44.md) | 224 | `declaration-track:6a0933b8d0765c9149aa1f440ec433da4f7537c8cf76b746d12ac3364a2c406f` |
| 27 | `lemma` | [functorToCore_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocore-comp-right--993e80b4a6ac7a53b6d5575e.md) | 228 | `result-track:993e80b4a6ac7a53b6d5575e357ba190011c2399d1f4261e61f0f6ad2c82a2c9` |
| 28 | `def` | [inclusionCompFunctorToCoreIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/inclusioncompfunctortocoreiso--cc8e0b4b3e38705515ab7d54.md) | 234 | `declaration-track:cc8e0b4b3e38705515ab7d54bfe779af75253e02924b41dbbc8e9e6ba5ac3eb4` |
| 29 | `theorem` | [inclusion_comp_functorToCore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/inclusion-comp-functortocore--b7611f7183c971d7ddaebef1.md) | 237 | `result-track:b7611f7183c971d7ddaebef147eec541476a3b72245690d3e991ca37e4b6955b` |
| 30 | `def` | [functorToCoreInclusionIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocoreinclusioniso--3ad2d123d993b569ae9a8bd2.md) | 241 | `declaration-track:3ad2d123d993b569ae9a8bd2b9b694c3b79e530ff3904acbb8f7aceb98dcc94f` |
| 31 | `theorem` | [functorToCore_inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/functortocore-inclusion--978b3f0122292f1d9f33af99.md) | 244 | `result-track:978b3f0122292f1d9f33af994017e0994436a7eab58d9a80ca2f83c457417ee1` |
| 32 | `def` | [core](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/core--02e51bb0f5bb8cadd71fbf04.md) | 257 | `declaration-track:02e51bb0f5bb8cadd71fbf04ff6b6e4abf56a42e1ca9122de174ecdfb61eb3f1` |
| 33 | `def` | [coreFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/corefunctor--660365c396726a74f169ee38.md) | 269 | `declaration-track:660365c396726a74f169ee382bd2dbc71cee3eb00e631ee7b0468d26b49fd4e2` |
| 34 | `def` | [ofEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Core/Variant4cfc935ddc162a009a70881e90cadee651f2e01653f2b60ff0e7d8dd73cbbf3d.lean/declarations/ofequivfunctor--cd5cdfc035d22df038a00893.md) | 278 | `declaration-track:cd5cdfc035d22df038a00893b01f0d5167500703e016f9ee242fbe5e7d27bdde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
