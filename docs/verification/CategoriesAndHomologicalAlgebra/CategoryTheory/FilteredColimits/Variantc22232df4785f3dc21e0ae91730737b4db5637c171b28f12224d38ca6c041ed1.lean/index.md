# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52ec129db5fa29f1b98b497d4746de07d898d6fb",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52ec129db5fa29f1b98b497d4746de07d898d6fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean.json)

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
| 1 | `instance` | [semiringObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/semiringobj--8ae7c16cf077af5319dfb701.md) | 60 | `declaration-track:8ae7c16cf077af5319dfb701c01a828a1e857c6b9dcc52f1a92848bf085423a2` |
| 2 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/r--876260345c965388791f83a5.md) | 69 | `declaration-track:876260345c965388791f83a5a8f5b16beceb9a977117d4671081ebc538af553d` |
| 3 | `instance` | [colimitSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitsemiring--76b6070a7bd121d9f45cdf1e.md) | 72 | `declaration-track:76b6070a7bd121d9f45cdf1e428d5ff4b64800168deb8941c25484f4f144babe` |
| 4 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimit--51474494badc241534449cb3.md) | 120 | `declaration-track:51474494badc241534449cb3f45483add13a3f8351673758e689baa444bf8cc8` |
| 5 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcocone--1e019283b34b2c30a7323388.md) | 124 | `declaration-track:1e019283b34b2c30a7323388266b426335afc5b60f47b79d80c5101e54da482d` |
| 6 | `def` | [descAddMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/descaddmonoidhom--4bcc100b40b44ebbb13897e4.md) | 141 | `declaration-track:4bcc100b40b44ebbb13897e4fa5b3bba316959f566080ddf33d1a8b8c8d4e436` |
| 7 | `lemma` | [descAddMonoidHom_quotMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/descaddmonoidhom-quotmk--95afef272d36a82bdd3a5864.md) | 146 | `result-track:95afef272d36a82bdd3a5864648979204aafdc8a773b7365d9ff051b615363da` |
| 8 | `def` | [descMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/descmonoidhom--135883c125200e965a520b77.md) | 154 | `declaration-track:135883c125200e965a520b770b364a19811b335dbcaa23384ea301d9f577aba7` |
| 9 | `lemma` | [descMonoidHom_quotMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/descmonoidhom-quotmk--95b44d7076a4619a157d63c8.md) | 158 | `result-track:95b44d7076a4619a157d63c89aa0acc19085729ee8f542cd021ee3a100d4b816` |
| 10 | `lemma` | [descMonoidHom_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/descmonoidhom-apply-eq--a19e5ce3c33d347270c239c1.md) | 164 | `result-track:a19e5ce3c33d347270c239c1555448ae3ad9bfb7e6639c256141f7934b7edceb` |
| 11 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcoconeiscolimit--57fe64527cc03205bbf9c1ba.md) | 173 | `declaration-track:57fe64527cc03205bbf9c1bae44ba44ac90be976fb0bd5e6daec870c0aa54745` |
| 12 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-mon-preservesfilteredcolimits--8d2fd01e1406a68f7603f0c2.md) | 187 | `declaration-track:8d2fd01e1406a68f7603f0c25a1156242bf543fc96979558901baa7c8a7cc855` |
| 13 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-preservesfilteredcolimits--1e1751a3d85847211152087f.md) | 195 | `declaration-track:1e1751a3d85847211152087f7926ae6c401e41e3ce1abbfe7ab67ca1b5b29936` |
| 14 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/r--9fe74445bade5e5f284ecd1f.md) | 213 | `declaration-track:9fe74445bade5e5f284ecd1fa921d8d46f254c3bb75f06c00c732649b13873e7` |
| 15 | `instance` | [colimitCommSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcommsemiring--4597d2e6451a1551ffe16caf.md) | 216 | `declaration-track:4597d2e6451a1551ffe16caf14a0a2b7795353b6a29e60a2c0e73a3f5655a1e0` |
| 16 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimit--e06e0fdc85689c42bdf3e256.md) | 222 | `declaration-track:e06e0fdc85689c42bdf3e256276d4842a569bcdd14dedd49903645269d7e63bf` |
| 17 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcocone--d4e35416c2467d02282f5648.md) | 226 | `declaration-track:d4e35416c2467d02282f56487848908630ff12ce0984a02bf18b9acfa39b2c78` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcoconeiscolimit--4ddd76ef00d910ba174e68bb.md) | 237 | `declaration-track:4ddd76ef00d910ba174e68bb548b0d5771374379788bd6e5555f0b0c516f14bc` |
| 19 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-semiring-preservesfilteredcolimits--9fcd5f7532c806e0ffd07063.md) | 242 | `declaration-track:9fcd5f7532c806e0ffd07063a9f4b5eb9eaac77e12fedc51836c34f0238cd7f2` |
| 20 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-preservesfilteredcolimits--4b76599c798ce865ebaab293.md) | 251 | `declaration-track:4b76599c798ce865ebaab293161d988dc7d7db52928232c8aa7be20934df8e42` |
| 21 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/r--1603167591317395382fcd6c.md) | 271 | `declaration-track:1603167591317395382fcd6c499388b879b8ba175904b90418e04bf0cd6fbe5b` |
| 22 | `instance` | [colimitRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitring--07e830d7b18a8bd2e5d13335.md) | 274 | `declaration-track:07e830d7b18a8bd2e5d1333522b48e961963ea728847dcd88bc86c4e79808c17` |
| 23 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimit--564fe6d245d05c16f1c2f5f2.md) | 280 | `declaration-track:564fe6d245d05c16f1c2f5f20f62334e1bbdb9801a0fd53a5220260d062be057` |
| 24 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcocone--a21bd4ca94f21f56b73f8a25.md) | 284 | `declaration-track:a21bd4ca94f21f56b73f8a25ea21dc4bc0ad9fbd16a879ab2a20d4ae206ebc3f` |
| 25 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcoconeiscolimit--9a7b03eab8a1cd2a41255d1a.md) | 294 | `declaration-track:9a7b03eab8a1cd2a41255d1a9e969614d51be09e61f4e0dbb9ef9a3ce54d1b84` |
| 26 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-semiring-preservesfilteredcolimits--2cc9403e69dc47f248ef1fd2.md) | 299 | `declaration-track:2cc9403e69dc47f248ef1fd2703e00f571e100f0133d278c8b1655173abf9fc9` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/instance--73fcfa46d87edbdd338a4fa9.md) | 308 | `declaration-track:73fcfa46d87edbdd338a4fa933c5280904a60115bd567a97b172c8453e64b259` |
| 28 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-preservesfilteredcolimits--ef4e1cca6992c56f3a8ebbc1.md) | 316 | `declaration-track:ef4e1cca6992c56f3a8ebbc11dfe615f6d6a3c2321ca0a8398132acc3babc8ed` |
| 29 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/r--6cb62192db722599a222422e.md) | 334 | `declaration-track:6cb62192db722599a222422e32831e9636877090aebc0e78ec0013528d003e9a` |
| 30 | `instance` | [colimitCommRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcommring--14cbbd1763c9e0995cc8e94f.md) | 337 | `declaration-track:14cbbd1763c9e0995cc8e94fd871e96a70d3bd0b264d5b729bcaecdbc579b2a4` |
| 31 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimit--7503b970266d5faae7c6a7c2.md) | 343 | `declaration-track:7503b970266d5faae7c6a7c2b3377be848b00761f4838c4a83e88420e76c6532` |
| 32 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcocone--f7b9b3e5d7e341c669a24f31.md) | 347 | `declaration-track:f7b9b3e5d7e341c669a24f31e4e53fff8b31d10f5fc4a16eec16b8d22bcaec00` |
| 33 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/colimitcoconeiscolimit--5cc1fcb2b204e7c137488608.md) | 357 | `declaration-track:5cc1fcb2b204e7c1374886082ba2726c90030760fbd39d29c9c4f3ae164d963d` |
| 34 | `instance` | [forget₂Ring_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-ring-preservesfilteredcolimits--2166ae008321e7152e108a25.md) | 362 | `declaration-track:2166ae008321e7152e108a25d9879e5241b5913b29a1480fb3e237dc2935b3fe` |
| 35 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/forget-preservesfilteredcolimits--a260df9484009e85becfd47d.md) | 370 | `declaration-track:a260df9484009e85becfd47d05d2449b2dbd03b4f5e86281c5ba6e159fbe61fe` |
| 36 | `lemma` | [nontrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/nontrivial--75a4d17223d7d748a052148f.md) | 374 | `result-track:75a4d17223d7d748a052148f8663d47ae5860cade5e31322bffb7d42d60df773` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variantc22232df4785f3dc21e0ae91730737b4db5637c171b28f12224d38ca6c041ed1.lean/declarations/instance--4b0be0603427eab7e0c5519a.md) | 387 | `declaration-track:4b0be0603427eab7e0c5519afd05c290a1885e60f00017e67d966ce61a3536cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
