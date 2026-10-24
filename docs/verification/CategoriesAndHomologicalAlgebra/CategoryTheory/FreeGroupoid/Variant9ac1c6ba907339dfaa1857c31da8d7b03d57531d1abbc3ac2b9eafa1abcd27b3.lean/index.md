# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeGroupoid.Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "264710fb9a4fbb4fbfcd24508b7a68e13efa3adb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `264710fb9a4fbb4fbfcd24508b7a68e13efa3adb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean.json)

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
| 1 | `abbrev` | [Hom.toPosPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/hom-topospath--9dd6053dacb24c3a10051e72.md) | 48 | `declaration-track:9dd6053dacb24c3a10051e72ab00b060f9a6482bf0caa38100a5084a6afbaa51` |
| 2 | `abbrev` | [Hom.toNegPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/hom-tonegpath--2201b9cadf6e3ad478819156.md) | 53 | `declaration-track:2201b9cadf6e3ad478819156e8329db213e4fbd1c787c24987f54ae7969fd52e` |
| 3 | `inductive` | [FreeGroupoid.redStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/freegroupoid-redstep--80fb90f8ea4617844e9f33d8.md) | 58 | `declaration-track:80fb90f8ea4617844e9f33d85bbdd4872ff2e1a6518278579aa2ae0b3d1a0ae0` |
| 4 | `def` | [FreeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/freegroupoid--43b3bb561f738366b980083a.md) | 63 | `declaration-track:43b3bb561f738366b980083afc4bfd0dc731ee5f94aa90045062e82aecbabeed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/instance--e0f17e984d49a5cfd26af4a1.md) | 70 | `declaration-track:e0f17e984d49a5cfd26af4a1482c479f9e46fac73ace57c0aa8930bececf9fa6` |
| 6 | `theorem` | [congr_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/congr-reverse--2d29dafb266e6b5ea495925f.md) | 74 | `result-track:2d29dafb266e6b5ea495925f87edc0c67787377971ca93848029e481f5c3ee8a` |
| 7 | `theorem` | [congr_comp_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/congr-comp-reverse--e8eb19310020ad8239aa0356.md) | 87 | `result-track:e8eb19310020ad8239aa03566e6e55e29377046c39410c135701bb2d2b8a55c3` |
| 8 | `theorem` | [congr_reverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/congr-reverse-comp--df9b55b18ad833e9a50312d4.md) | 114 | `result-track:df9b55b18ad833e9a50312d4f1af42e1bc1258e68479a24deed7157bf9d04231` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/instance--ebbbc9072591384529e9f1a0.md) | 120 | `declaration-track:ebbbc9072591384529e9f1a096bc8b30e028cda414730b7eaec619b44ba4f642` |
| 10 | `def` | [quotInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/quotinv--0218fb0dd3cfc2dc0d132d89.md) | 124 | `declaration-track:0218fb0dd3cfc2dc0d132d890c0e90a30891c9238d17744db8f7d93fd89e5c0f` |
| 11 | `instance` | [instGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/instgroupoid--b8471bf0bf473c23096eaa13.md) | 128 | `declaration-track:b8471bf0bf473c23096eaa13e8c9be2d2cb95b4a5e968025da0f596f2715b9fb` |
| 12 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/of--e5d970c2463be6b5e3968665.md) | 134 | `declaration-track:e5d970c2463be6b5e39686652d84dba5c903b4dbaf5cd02dc2c30563c6a470e6` |
| 13 | `theorem` | [of_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/of-eq--72571489431b5c71f23e7871.md) | 138 | `result-track:72571489431b5c71f23e7871af27f4ec83129f6b1199e438951d887c944688af` |
| 14 | `lemma` | [hom_rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/hom-rec--3c097c91148b4cd2349abbea.md) | 148 | `result-track:3c097c91148b4cd2349abbea401a107766830d0c9f471b73bcc718209bee3146` |
| 15 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/lift--8a693e8c16c7e37cc02fbaf8.md) | 173 | `declaration-track:8a693e8c16c7e37cc02fbaf867776a51bfd44f8e1f72bd3c28350db6cdb13ffa` |
| 16 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/lift-spec--22ae1e82ec72ce7efaa64839.md) | 183 | `result-track:22ae1e82ec72ce7efaa648398619ddf377f2e782fac25943ee720a26c800f252` |
| 17 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/lift-unique--d12973cffe0fb76928ee3b81.md) | 189 | `result-track:d12973cffe0fb76928ee3b81e214c00700faf4e04817aa8a1709fce959a91cd1` |
| 18 | `def` | [freeGroupoidFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/freegroupoidfunctor--a4cae520009b3e09da0ffee8.md) | 214 | `declaration-track:a4cae520009b3e09da0ffee824e8a919741ef8369e96679731f34206a7447530` |
| 19 | `theorem` | [freeGroupoidFunctor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/freegroupoidfunctor-id--56d0be4783cbfa201923d8d1.md) | 217 | `result-track:56d0be4783cbfa201923d8d10a85820e98ddffbca3ca353ed05b94dd4159be88` |
| 20 | `theorem` | [freeGroupoidFunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/declarations/freegroupoidfunctor-comp--3e52defe516ce5b5c6ff2897.md) | 222 | `result-track:3e52defe516ce5b5c6ff28979cda8b07a392766888d29a7b8b9d0e9f9ddfa9f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
