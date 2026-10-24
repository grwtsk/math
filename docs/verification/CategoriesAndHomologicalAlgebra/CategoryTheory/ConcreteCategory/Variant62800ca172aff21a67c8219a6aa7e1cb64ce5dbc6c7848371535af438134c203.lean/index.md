# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ConcreteCategory.Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62af924aff9a558ab30b002cbc4ce325a0cde375",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62af924aff9a558ab30b002cbc4ce325a0cde375`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/productequiv--322c5f57065bec3c9f4bcb83.md) | 50 | `declaration-track:322c5f57065bec3c9f4bcb83e62c5fa8805f11f49147d6ec599a487071205375` |
| 2 | `lemma` | [productEquiv_apply_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/productequiv-apply-apply--9e6426a0d8138f9b3774e411.md) | 54 | `result-track:9e6426a0d8138f9b3774e411d53579f0ea29a881d5b6dcedfecf96a33681c265` |
| 3 | `lemma` | [productEquiv_symm_apply_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/productequiv-symm-apply--c0c359979dca9b41be5530c5.md) | 59 | `result-track:c0c359979dca9b41be5530c5111f5ec32920685f87ac419ed6fb2fe84c33d34f` |
| 4 | `lemma` | [Pi.map_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/pi-map-ext--54ad235ecbe87fad08ba39f4.md) | 75 | `result-track:54ad235ecbe87fad08ba39f4e3d990263c5ffb623e7039bb15e37c8abaacd74f` |
| 5 | `def` | [uniqueOfTerminalOfPreserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/uniqueofterminalofpreserves--e517eb1469072c1a5d8b218b.md) | 94 | `declaration-track:e517eb1469072c1a5d8b218bad5add5768db630fa4d207ed9332454478be618e` |
| 6 | `def` | [terminalOfUniqueOfReflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/terminalofuniqueofreflects--93cc8794ec902987ea021156.md) | 99 | `declaration-track:93cc8794ec902987ea0211560f5cc4260cf888d26808f4842947b752d6adb89a` |
| 7 | `def` | [terminalIffUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/terminaliffunique--88b40ae17eedde55fc5210fd.md) | 105 | `declaration-track:88b40ae17eedde55fc5210fda327ce284eb8a939f3937a041db2a81c09c36062` |
| 8 | `def` | [terminalEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/terminalequiv--20a42e14a3448e86d8ce3110.md) | 114 | `declaration-track:20a42e14a3448e86d8ce3110c599e23a71c008c242f12e6184af3a86d2809771` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/instance--4aed3dbf1fd7217377e958eb.md) | 117 | `declaration-track:4aed3dbf1fd7217377e958eb590875ca53a13e016649dbf67d5d32aab2b741cf` |
| 10 | `lemma` | [empty_of_initial_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/empty-of-initial-of-preserves--aaf2fca132064152561383b3.md) | 129 | `result-track:aaf2fca132064152561383b3f76099d6258ce132d7f1b6ba7c33c32d2123cb47` |
| 11 | `lemma` | [initial_of_empty_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/initial-of-empty-of-reflects--840ec8435668b398099ada09.md) | 135 | `result-track:840ec8435668b398099ada094e339e4b6bbc89e68d65061b4f1f7d934e91a4e3` |
| 12 | `lemma` | [initial_iff_empty_of_preserves_of_reflects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/initial-iff-empty-of-preserves-of-reflects--33c1d63a00710e0d7134641d.md) | 142 | `result-track:33c1d63a00710e0d7134641dd93dc19d7ae23e65b87ad8927cd15d525aa60ded` |
| 13 | `def` | [prodEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/prodequiv--d1e34c23f3d30d40cf2f1fd2.md) | 158 | `declaration-track:d1e34c23f3d30d40cf2f1fd2a7d4012d10c582c104eb5be57f509ee1cf700c2f` |
| 14 | `lemma` | [prodEquiv_apply_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/prodequiv-apply-fst--491d58e4b3d598574a4cf920.md) | 162 | `result-track:491d58e4b3d598574a4cf920114abca68d5f751aff6bcfb056c3273f03380f68` |
| 15 | `lemma` | [prodEquiv_apply_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/prodequiv-apply-snd--e593f03edeaf4396a8e66509.md) | 167 | `result-track:e593f03edeaf4396a8e665099a64f871e2c70e1c6ab0889a4c2b90a42f2a481e` |
| 16 | `lemma` | [prodEquiv_symm_apply_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/prodequiv-symm-apply-fst--014c5a53bf23c0af618bc8d2.md) | 172 | `result-track:014c5a53bf23c0af618bc8d2a06faf838f52d4d2f0c4de4d0ea3e87b425468df` |
| 17 | `lemma` | [prodEquiv_symm_apply_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/prodequiv-symm-apply-snd--0ee016223e7b8fd9f532d65c.md) | 178 | `result-track:0ee016223e7b8fd9f532d65c97487c3a0e9671f7b2925c611ff996819b73357d` |
| 18 | `def` | [pullbackEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/pullbackequiv--3b5530eadc4263f7d851687e.md) | 195 | `declaration-track:3b5530eadc4263f7d851687e989395ffe7ba8fa1d14273582c7fd2a4db53b9e4` |
| 19 | `def` | [pullbackMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/pullbackmk--aa782371e4b6e1c60c543c74.md) | 201 | `declaration-track:aa782371e4b6e1c60c543c74548ac37247b3841071f1cc1c079c8bffe9ef9b50` |
| 20 | `lemma` | [pullbackMk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/pullbackmk-surjective--b93606965a7c5a7b296b1f7d.md) | 205 | `result-track:b93606965a7c5a7b296b1f7df0659f5c32ebd2f33fdcc61574df6fe6da673dcb` |
| 21 | `lemma` | [pullbackMk_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/pullbackmk-fst--8a4a4b2a2940ffb6785cfd4f.md) | 211 | `result-track:8a4a4b2a2940ffb6785cfd4f4c864ec921f4db03ed9592ccccedb87fbb601723` |
| 22 | `lemma` | [pullbackMk_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/pullbackmk-snd--2a35942b41ea58dbf909f3a5.md) | 218 | `result-track:2a35942b41ea58dbf909f3a52d0917871234dd436f8628e5a07f516ee6d71ddd` |
| 23 | `theorem` | [widePullback_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/widepullback-ext--9791c7644b94d9e35e47ba02.md) | 235 | `result-track:9791c7644b94d9e35e47ba0204226b7a0092bdd81bbf1178e9f998aad5ab3bcd` |
| 24 | `theorem` | [widePullback_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/widepullback-ext--b0a1606fbf35b0b4f2d4df28.md) | 244 | `result-track:b0a1606fbf35b0b4f2d4df2801d0d53ad9de81853088b8074f5743ced5cbd5af` |
| 25 | `theorem` | [multiequalizer_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/multiequalizer-ext--4e08e16041c110f1229638a6.md) | 259 | `result-track:4e08e16041c110f1229638a62dd17d7ac305864d6dfb892c2fb9d301e08ff63e` |
| 26 | `def` | [multiequalizerEquivAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/multiequalizerequivaux--a7ebd80adff2e29ff2715c96.md) | 271 | `declaration-track:a7ebd80adff2e29ff2715c96ff4404bdb6c0d14d0e6694dc2c210fcb239d01e3` |
| 27 | `def` | [multiequalizerEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/multiequalizerequiv--97b4373948cd3802831970b8.md) | 304 | `declaration-track:97b4373948cd3802831970b8213d08784985610acbb3cc118418e926ac7722ea` |
| 28 | `theorem` | [multiequalizerEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/multiequalizerequiv-apply--02efa3b88c15a2c4242a6c5e.md) | 315 | `result-track:02efa3b88c15a2c4242a6c5e49c09178f91a7748ed78364bc677b0bbba2ae7bb` |
| 29 | `theorem` | [widePushout_exists_rep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/widepushout-exists-rep--553debf4d99ddf15cd51d117.md) | 333 | `result-track:553debf4d99ddf15cd51d1171b8c2a8a60741b98dd887e63478669064bb90f50` |
| 30 | `theorem` | [widePushout_exists_rep'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/widepushout-exists-rep--39f47804cff6a24d6683aed4.md) | 345 | `result-track:39f47804cff6a24d6683aed46d9e85b854598569cea6621a5e598a6a82942e6f` |
| 31 | `theorem` | [cokernel_funext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant62800ca172aff21a67c8219a6aa7e1cb64ce5dbc6c7848371535af438134c203.lean/declarations/cokernel-funext--39ab43654f7f146b6546041e.md) | 358 | `result-track:39ab43654f7f146b6546041e8e30c10b595491b52e92ffc0df84891902c8c317` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
