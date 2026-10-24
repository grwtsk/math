# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredColimits.Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "474f257662ee3869afb6d5ff03d7fa0e4a3ef2bb",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `474f257662ee3869afb6d5ff03d7fa0e4a3ef2bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean.json)

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
| 1 | `instance` | [semiringObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/semiringobj--c775959b16c879efb3c021e9.md) | 52 | `declaration-track:c775959b16c879efb3c021e9ec600e539810af7e0c5eda68cfcbac9989340a39` |
| 2 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/r--0338935973b6f20a4eb9dc8e.md) | 61 | `declaration-track:0338935973b6f20a4eb9dc8ecb0ec5dd229fba784e94152054b7df21f7c595f3` |
| 3 | `instance` | [colimitSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitsemiring--43f7c3456f70e8ce3bbd4326.md) | 64 | `declaration-track:43f7c3456f70e8ce3bbd43268137ce02af24d3b86a647a8f75f516614c4502e1` |
| 4 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimit--52432fd9719331b5cbf98833.md) | 112 | `declaration-track:52432fd9719331b5cbf98833f4520210349e41793250a96c396a25beeac0c679` |
| 5 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcocone--e2aa62b697e36c1c222f9d00.md) | 116 | `declaration-track:e2aa62b697e36c1c222f9d009e937a48370019a091b160c8075fde54a55eb20e` |
| 6 | `def` | [descAddMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/descaddmonoidhom--d1afe7de2dafce987969aa9f.md) | 133 | `declaration-track:d1afe7de2dafce987969aa9fe2f788a580f91897cd84b62e87094f4c0ed6e02d` |
| 7 | `lemma` | [descAddMonoidHom_quotMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/descaddmonoidhom-quotmk--5d3553f41c30ce20589cc4d5.md) | 138 | `result-track:5d3553f41c30ce20589cc4d5a8b0b1b31dfcc6d3fd29b95efefecafac42a8e69` |
| 8 | `def` | [descMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/descmonoidhom--1d66f1a4249c1dc5c1ad3aa6.md) | 146 | `declaration-track:1d66f1a4249c1dc5c1ad3aa6dc5c4fb5bc037189a7dc89cd134655feb0038b7e` |
| 9 | `lemma` | [descMonoidHom_quotMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/descmonoidhom-quotmk--120f8002140c8358ae252440.md) | 150 | `result-track:120f8002140c8358ae2524409fc1b823d530742e251168a581ab2309eeb4eb88` |
| 10 | `lemma` | [descMonoidHom_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/descmonoidhom-apply-eq--34ffe3a728c65b036dd6ba8c.md) | 156 | `result-track:34ffe3a728c65b036dd6ba8ce43b29fd07a7c6dc26567044dca49dda6497ee9d` |
| 11 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcoconeiscolimit--dcb7ce74846f4f77ad493d9e.md) | 165 | `declaration-track:dcb7ce74846f4f77ad493d9eb8aa8c34cd14228984798b60c337129d99cf46ae` |
| 12 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-mon-preservesfilteredcolimits--9643c2a4e58a004c294537f9.md) | 179 | `declaration-track:9643c2a4e58a004c294537f96b4b1a16f765b90e06efcf61e3c3e4ca4298dac8` |
| 13 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-preservesfilteredcolimits--46967cb6908e8cc831d42574.md) | 187 | `declaration-track:46967cb6908e8cc831d42574d82aa28f3c256c02a2067d3c1eb11e61a3729adb` |
| 14 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/r--7d1721f508c77529c643622a.md) | 205 | `declaration-track:7d1721f508c77529c643622a80551222c41df5fa3c1eea062f976f4dc04ed02b` |
| 15 | `instance` | [colimitCommSemiring](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcommsemiring--7777b4b10988d1764420408c.md) | 208 | `declaration-track:7777b4b10988d1764420408c051488ae20e44915e2b57f39244992f58640e3e0` |
| 16 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimit--5246bde3477706641be8c9a3.md) | 214 | `declaration-track:5246bde3477706641be8c9a3bd6af0bfab950180e99c57a7e5ebe62a599d47ee` |
| 17 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcocone--0bb4720c483e7f8ce791fba3.md) | 218 | `declaration-track:0bb4720c483e7f8ce791fba35314953c6592038aab89ec54acabda34085409bb` |
| 18 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcoconeiscolimit--a565262958dc5e8492455fae.md) | 229 | `declaration-track:a565262958dc5e8492455fae0acb192eef4df682e9b71f7dfa98ee165346337a` |
| 19 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-semiring-preservesfilteredcolimits--f2e7eae59867c9c8bc031a72.md) | 234 | `declaration-track:f2e7eae59867c9c8bc031a72cb688f36cbe298c950dc1cd9aa033e0d86a57b4b` |
| 20 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-preservesfilteredcolimits--1b47101591166cf0c3ef8043.md) | 243 | `declaration-track:1b47101591166cf0c3ef80430a55ad0574389a29cbb1a182847cf2a9880acf8a` |
| 21 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/r--a12b738e8216e79864b28b29.md) | 263 | `declaration-track:a12b738e8216e79864b28b29cc96c04a07a9ea80aae4a38b34aebb4635c1c4f6` |
| 22 | `instance` | [colimitRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitring--5a76f527efd719362254925f.md) | 266 | `declaration-track:5a76f527efd719362254925f27d7e840a155db7ed5bb869c3b5caab4dfcda80e` |
| 23 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimit--4d5004f9ff9683ccc9809495.md) | 272 | `declaration-track:4d5004f9ff9683ccc9809495a1e14ccb79dc769237f35c1434ad294ab53acdca` |
| 24 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcocone--06fcff4c3adabc72a6009b19.md) | 276 | `declaration-track:06fcff4c3adabc72a6009b19657c0cc5d03c20f9cc7a7ac781b542f1408b0006` |
| 25 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcoconeiscolimit--36e7af14287958946e62ee59.md) | 286 | `declaration-track:36e7af14287958946e62ee5957361ed3ca405480047ca133a4c562ba4508d2b0` |
| 26 | `instance` | [forget₂SemiRing_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-semiring-preservesfilteredcolimits--143b817df3457c38acb231e9.md) | 291 | `declaration-track:143b817df3457c38acb231e9dc734ac55a51ead8b0137df151bb2df5b379d77d` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/instance--8e16c30340c1d8a0da6bb7f9.md) | 300 | `declaration-track:8e16c30340c1d8a0da6bb7f9a4f1773a92db3e2d7cdd1152dcebab370f6abbc6` |
| 28 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-preservesfilteredcolimits--611a4710dc16082b1289b88a.md) | 308 | `declaration-track:611a4710dc16082b1289b88a8e33243212fe4a545ed599474d219a5295ad11a8` |
| 29 | `abbrev` | [R](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/r--ba97e8da48b80caa9fd1a4c0.md) | 326 | `declaration-track:ba97e8da48b80caa9fd1a4c0e084392f60413f829e11ceac2a1a3a8010935b3f` |
| 30 | `instance` | [colimitCommRing](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcommring--1ed14f794f596b91c71fcb32.md) | 329 | `declaration-track:1ed14f794f596b91c71fcb32cc397e8cb13af4560f1471352f7ac0ee0a22c3ae` |
| 31 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimit--2d0ef6a300b677ba569d377c.md) | 335 | `declaration-track:2d0ef6a300b677ba569d377cc092b6539fe3c660faee66bebedc82bc2f1d44ff` |
| 32 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcocone--e1017735ef1dc2d83090983d.md) | 339 | `declaration-track:e1017735ef1dc2d83090983d57cbeaced37b2b6e267f8ba4ca083ed5d47a877b` |
| 33 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/colimitcoconeiscolimit--e1b4b70ac195bc9aeb4ddf77.md) | 349 | `declaration-track:e1b4b70ac195bc9aeb4ddf77c310aa47ce64340f8f2ca9e422cef50dd36084c1` |
| 34 | `instance` | [forget₂Ring_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-ring-preservesfilteredcolimits--3ef2e1e19846feea5007b678.md) | 354 | `declaration-track:3ef2e1e19846feea5007b67886c5f182c7993ce15966f9612b327a8d843f9d4b` |
| 35 | `instance` | [forget_preservesFilteredColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/forget-preservesfilteredcolimits--748d47e9ebdff45a0c4673e2.md) | 362 | `declaration-track:748d47e9ebdff45a0c4673e2f1e62a851bfb0d1e498b2d860cd6a663ff16325f` |
| 36 | `lemma` | [nontrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/nontrivial--93f1569c018797e1c9dcddc5.md) | 366 | `result-track:93f1569c018797e1c9dcddc506c2d26c73be8891e43cbb1083059089844b6678` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b576da79fb3bd5a07f17d9bfa0a03fae5ccfc23035bfa5300103c0516831060.lean/declarations/instance--7462addaad65f5405cff07b9.md) | 379 | `declaration-track:7462addaad65f5405cff07b9a4d5c5f3ccea93e3b0ad950e628aaa13d95c7869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
