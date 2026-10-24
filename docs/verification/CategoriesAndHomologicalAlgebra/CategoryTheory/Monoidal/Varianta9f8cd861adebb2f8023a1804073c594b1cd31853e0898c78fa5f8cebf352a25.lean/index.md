# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b930976063ed83a973fee7cc3bcca32201e0ba3e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b930976063ed83a973fee7cc3bcca32201e0ba3e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean.json)

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
| 1 | `instance` | [instMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instmonoidalcategory--5f980f3571c27d0e4471ad2f.md) | 53 | `declaration-track:5f980f3571c27d0e4471ad2fbed6a93c1fbd85384d9b6ddc34e77922b04fa416` |
| 2 | `theorem` | [tensorUnit_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/tensorunit--d32795ee9343278d6a7db8e3.md) | 59 | `result-track:d32795ee9343278d6a7db8e373c9c93a467cfb199a7d0be4caebc1cea942533a` |
| 3 | `theorem` | [tensor_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/tensor--8a92939ea19305a501a43cdd.md) | 64 | `result-track:8a92939ea19305a501a43cdd7b074efd7a298c88044032deb8547c0c4a5d446d` |
| 4 | `def` | [tensorUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/tensorunitiso--a37a05031e5b9d90dd1b7c11.md) | 70 | `declaration-track:a37a05031e5b9d90dd1b7c116f2db6dea46a04af90cce8bc1f2f98e428a6692d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--958e662a4bb589d0f14b9a86.md) | 76 | `declaration-track:958e662a4bb589d0f14b9a869b308bccffb7b26f0e5ba2a2aee7708c652b4fee` |
| 6 | `lemma` | [forget_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/forget--a55abbc19886bd02bf15e814.md) | 83 | `result-track:a55abbc19886bd02bf15e814058c0492cd55d91a7f1840d66424c7ce0a6ea755` |
| 7 | `lemma` | [forget_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/forget--91ab8d8b74c0075efa5174d9.md) | 84 | `result-track:91ab8d8b74c0075efa5174d9346df3106c6a072b370de759f8c3438068b75bbd` |
| 8 | `lemma` | [forget_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/forget--a46fb66ab00d56ba776f11ac.md) | 88 | `result-track:a46fb66ab00d56ba776f11ac0de45b6ec2f2d08241334e7aad59b948935fa2fe` |
| 9 | `lemma` | [forget_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/forget--cfaae021c37633bf23a1c3e6.md) | 89 | `result-track:cfaae021c37633bf23a1c3e6c7180cd67376d32696a406a6a78ded407d51fb79` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--2fd741b29feadb9624c17642.md) | 98 | `declaration-track:2fd741b29feadb9624c1764237c61fd35a2a8a467b69eb6b0ea1c4bff3a9497c` |
| 11 | `theorem` | [β_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/hom-hom--9635a398a37a6ec816f36f69.md) | 102 | `result-track:9635a398a37a6ec816f36f69dc4d01b57911281506e9c9b9ab779495c7f09ad8` |
| 12 | `theorem` | [β_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/inv-hom--bbbcbad12e341c9fcb23fb7b.md) | 105 | `result-track:bbbcbad12e341c9fcb23fb7b87df3c6d714b0e377f772bdba4960c280bb3949e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--e42d83b8cbdcde9aa5ed020d.md) | 109 | `declaration-track:e42d83b8cbdcde9aa5ed020d44c79274745a2acfd6fa565fd6eac419e521e946` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--5c15c75a06a27c19441e2300.md) | 113 | `declaration-track:5c15c75a06a27c19441e230071a83fcf577cd65c9a279683a02cfe08ce72b6b8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--a3129303b2801d29e0e78d9c.md) | 122 | `declaration-track:a3129303b2801d29e0e78d9cfe9a382473bfd9e7826b4c1bd7f9bbce558f4c1b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--572f79bdf43accc619267517.md) | 126 | `declaration-track:572f79bdf43accc6192675178558acf2db7178c98555928605bb7b088760ad9e` |
| 17 | `instance` | [FunctorCategoryEquivalence.functorMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalence-functormonoidal--66b59485a70c95fd4f2aa21d.md) | 133 | `declaration-track:66b59485a70c95fd4f2aa21d06d5b6309ef31f84c73c9d22fd6b404e3930547a` |
| 18 | `instance` | [functorCategoryEquivalenceFunctorMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalencefunctormonoidal--88eea87d36a95b867ecb64c5.md) | 138 | `declaration-track:88eea87d36a95b867ecb64c570bbb187c6176e895fb263e3812fb7a525f5b921` |
| 19 | `instance` | [FunctorCategoryEquivalence.inverseMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalence-inversemonoidal--6ee9dc0cc1c65266744994bd.md) | 143 | `declaration-track:6ee9dc0cc1c65266744994bdd1718b24982b8c10fa207f52eb8cdcf1c692e923` |
| 20 | `instance` | [functorCategoryEquivalenceInverseMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalenceinversemonoidal--f35b7d46172d7b0461b95be1.md) | 148 | `declaration-track:f35b7d46172d7b0461b95be1d64e075e299dab0fc56372aaa7dd88b525ffaece` |
| 21 | `lemma` | [FunctorCategoryEquivalence.functor_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalence-functor--e09645932e443d6661b650d2.md) | 153 | `result-track:e09645932e443d6661b650d29e72eb443cf3e7da74df0d9534dc9a2d83ca0a6e` |
| 22 | `lemma` | [FunctorCategoryEquivalence.functor_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalence-functor--c599f9b8b86671fdb8bc3692.md) | 157 | `result-track:c599f9b8b86671fdb8bc3692a5d3e4ef782b907d6be0e4ecd6603587c0502b00` |
| 23 | `lemma` | [FunctorCategoryEquivalence.functor_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalence-functor--d39e58d8c7ad02e55140f5f7.md) | 161 | `result-track:d39e58d8c7ad02e55140f5f7c963b27596967b61a56199b4b2a01c340086e2ac` |
| 24 | `lemma` | [FunctorCategoryEquivalence.functor_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/functorcategoryequivalence-functor--1971b9716199e1d83674a4cf.md) | 165 | `result-track:1971b9716199e1d83674a4cf48613f87375da7f52d8fbf5bffafe5a7e12eee06` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--70885d92b99e88f8eacf12ae.md) | 171 | `declaration-track:70885d92b99e88f8eacf12aedae1e5328df92062f2aad5a8cfdc017a9ae9ccec` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--eb9b0c0ccbbefa79b7ba2d33.md) | 175 | `declaration-track:eb9b0c0ccbbefa79b7ba2d3323fc59ec8ce577008e526bf9702dc7e3b29d2d8b` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--1c409bada9715123aaba5d6f.md) | 179 | `declaration-track:1c409bada9715123aaba5d6f2a9735dcf4fb93841c21836500fd5ee522f0cd1a` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--79c667d20a4f31287fe2bb38.md) | 183 | `declaration-track:79c667d20a4f31287fe2bb38d5479c0333117b4c4b3404b40afc22a2e11c1840` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--f512cac6d54e79b139c3c6cb.md) | 186 | `declaration-track:f512cac6d54e79b139c3c6cb146fef8d4b80143709a92577340a7a2106ff4608` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--74ce2c24fca917de4a22d63b.md) | 190 | `declaration-track:74ce2c24fca917de4a22d63bc5cd29799b84b2c069314be3dd550ba84e486dd4` |
| 31 | `theorem` | [rightDual_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/rightdual-v--6f550ea7085b2e567e72ace3.md) | 197 | `result-track:6f550ea7085b2e567e72ace36bf6df9d84986d67d351e66475f098eec435501c` |
| 32 | `theorem` | [leftDual_v](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/leftdual-v--f5cc0c109bb9d7784415e9d4.md) | 201 | `result-track:f5cc0c109bb9d7784415e9d4f0faec1510f9647de864d98f0bf2a764b9cfebd9` |
| 33 | `theorem` | [rightDual_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/rightdual--13668dcd0fbb091aa19e3f9e.md) | 204 | `result-track:13668dcd0fbb091aa19e3f9e99d80eda004f35c5b10f062755aadfbf7ec9be3d` |
| 34 | `theorem` | [leftDual_ρ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/leftdual--4425ef968ca771ab7d3eb504.md) | 207 | `result-track:4425ef968ca771ab7d3eb504e6cfe383876369963a95be42aa5f47a3422ee298` |
| 35 | `def` | [diagonalSuccIsoTensorDiagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/diagonalsuccisotensordiagonal--37688c50200e0024c6cd48fa.md) | 223 | `declaration-track:37688c50200e0024c6cd48fa0c856b701a0f9dae33680540685eae1e53a7cd2d` |
| 36 | `def` | [leftRegularTensorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/leftregulartensoriso--dc4332704fe9399922ebeba9.md) | 235 | `declaration-track:dc4332704fe9399922ebeba969c55c8ecf9c0e9004beb8a4f1cbf08fc4a30831` |
| 37 | `def` | [diagonalSuccIsoTensorTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/diagonalsuccisotensortrivial--0a8517aaea53f8ea0b10be36.md) | 251 | `declaration-track:0a8517aaea53f8ea0b10be36444fbdccb08813c4c50f9af2fa524512b419a43e` |
| 38 | `theorem` | [diagonalSuccIsoTensorTrivial_hom_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/diagonalsuccisotensortrivial-hom-hom-apply--ed25245e470c5d0149da8923.md) | 267 | `result-track:ed25245e470c5d0149da8923bf1a9e99ce31c4ab1482744aac6d895d5f9d4b12` |
| 39 | `theorem` | [diagonalSuccIsoTensorTrivial_inv_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/diagonalsuccisotensortrivial-inv-hom-apply--44941df3fc472e8785fac913.md) | 281 | `result-track:44941df3fc472e8785fac913c454891ee25f5d974a1ec963cfb11cf4e95a19c4` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--ad8683bee07dd26d16e8088b.md) | 314 | `declaration-track:ad8683bee07dd26d16e8088bf5240ed9798e1e2e323b567b521eb0d4d9a6a9bf` |
| 41 | `lemma` | [mapAction_ε_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/mapaction-hom--1e13e715ec4582fd2acea71f.md) | 330 | `result-track:1e13e715ec4582fd2acea71f59d9c4f1b715f3da98ec1976ed2f1434282a84c3` |
| 42 | `lemma` | [mapAction_μ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/mapaction-hom--eb9bd722d5e0286b89af3ead.md) | 333 | `result-track:eb9bd722d5e0286b89af3ead125ec7beafbd1f03f0ee59eba2e7f5967549c5c0` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--c17d429bdb8c82fa3014caa9.md) | 340 | `declaration-track:c17d429bdb8c82fa3014caa9b0c6f1c25eeb0e7ad122e7c9104b45d424d13ba9` |
| 44 | `lemma` | [mapAction_η_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/mapaction-hom--a9eba8c7542c4d5d54147f48.md) | 356 | `result-track:a9eba8c7542c4d5d54147f4874bcce1d69d9ce14bad15aa22da1ef5efcc3e540` |
| 45 | `lemma` | [mapAction_δ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/mapaction-hom--4a8b16e1afb704b6c726492c.md) | 359 | `result-track:4a8b16e1afb704b6c726492c5b317203a091b7693983c7cac67ef9ffa641fd4f` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/declarations/instance--f55ba757742b02f850a71efd.md) | 365 | `declaration-track:f55ba757742b02f850a71efd356f3c982276d9cf574afe98d138dd7d094ef4a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
