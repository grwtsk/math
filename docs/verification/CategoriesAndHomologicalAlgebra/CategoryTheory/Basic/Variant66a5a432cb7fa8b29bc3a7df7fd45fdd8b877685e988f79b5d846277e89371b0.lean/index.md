# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c372a13d0979bbd65169f0af401c3cec174568",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c372a13d0979bbd65169f0af401c3cec174568`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean.json)

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
| 1 | `structure` | [Monad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monad--63161d1dc8714f8f75531410.md) | 50 | `declaration-track:63161d1dc8714f8f75531410c4c86506dcb93f9ea3960640f3744c958cadd4e5` |
| 2 | `lemma` | [Monad.unit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monad-unit-naturality--fe7ec88e6f2073bcbaf51d0c.md) | 60 | `result-track:fe7ec88e6f2073bcbaf51d0cfd6563df060f0ea959a3dfd1a9a2f2d383d4d22e` |
| 3 | `lemma` | [Monad.mu_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monad-mu-naturality--3e4915cade7bcac41651fc22.md) | 65 | `result-track:3e4915cade7bcac41651fc229267aea0ab75694983f6b6ebcd6b5092c6877dd5` |
| 4 | `structure` | [Comonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonad--1ee96e039c6949b6574290f4.md) | 75 | `declaration-track:1ee96e039c6949b6574290f43faffe1c8be679bff6e5dceeb557df2c258b5a1b` |
| 5 | `lemma` | [Comonad.counit_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonad-counit-naturality--80d6bef99ba30ff529bf3d8a.md) | 86 | `result-track:80d6bef99ba30ff529bf3d8a9994e0f998afcaa55c29a958f8ca2726fbdde060` |
| 6 | `lemma` | [Comonad.delta_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonad-delta-naturality--4ae9ed1c7e124de14c870706.md) | 91 | `result-track:4ae9ed1c7e124de14c870706ed401c194c66c2752e030ed3d3e56daca2aae4e6` |
| 7 | `instance` | [coeMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/coemonad--162fafcba20cae6a22418cd7.md) | 98 | `declaration-track:162fafcba20cae6a22418cd7916528b14d8768209648e8e3d74fab3c30f178be` |
| 8 | `instance` | [coeComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/coecomonad--f5fa2a339c4a571dd4f6d796.md) | 101 | `declaration-track:f5fa2a339c4a571dd4f6d796f61c7529d2591361c802d1a6e45d26878e61825e` |
| 9 | `structure` | [MonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadhom--03aa27f3f717d752ee78aea3.md) | 114 | `declaration-track:03aa27f3f717d752ee78aea3a5ce0da93dc375e6b1fbff6f9e258c114858978d` |
| 10 | `structure` | [ComonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadhom--7345857f42ec1bfddf4cbdf0.md) | 123 | `declaration-track:7345857f42ec1bfddf4cbdf030067e5537f13d829b57f816002b00e76a734a56` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--a4f50595122e8b32769580a5.md) | 132 | `declaration-track:a4f50595122e8b32769580a55c6ef1483b98d721b92f7dc3ca06aab84ef987a8` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--985af09fc30a827db4e8734c.md) | 135 | `declaration-track:985af09fc30a827db4e8734cf8dcb9c2537cb40f156bd4fcfb04121bfefbc72f` |
| 13 | `lemma` | [MonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadhom-ext--63179f37d1d84a03b2889de5.md) | 139 | `result-track:63179f37d1d84a03b2889de53851888ebd60d4bcd11dacdcb779cfa28c7cfd20` |
| 14 | `lemma` | [ComonadHom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadhom-ext--9c4c47bddb497eb328473827.md) | 143 | `result-track:9c4c47bddb497eb3284738276eb0e26bc6f3c874ed139291f5f94af1d8d31e56` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--394989cd26541eb3b1149af7.md) | 146 | `declaration-track:394989cd26541eb3b1149af7be67a4aaaa3c3e194fb1b489bfe01b7940b0ae29` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--35eaa0bbb0350eceeae33e44.md) | 154 | `declaration-track:35eaa0bbb0350eceeae33e4420756d4cc4abc0c0dadfaf547172eee07de99b64` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--aab15cf63f29b6536c537653.md) | 161 | `declaration-track:aab15cf63f29b6536c5376533cc545ced10fa9b1175349c0f876c678b71f7b8b` |
| 18 | `theorem` | [MonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadhom-id-tonattrans--a9de9968c2aff8502d489a3c.md) | 165 | `result-track:a9de9968c2aff8502d489a3c584c9137af5638219ffbf1c7728ece983d6a6720` |
| 19 | `theorem` | [MonadHom.comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadhom-comp-tonattrans--00b343f99e7f872c600ede32.md) | 169 | `result-track:00b343f99e7f872c600ede327cd07ac8c93f63b414c2a4f993c92e65532936a5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--b5322d4541218eabe43af8c7.md) | 173 | `declaration-track:b5322d4541218eabe43af8c7d6e3815fe24646c06213d79a5139287033b2f4dd` |
| 21 | `theorem` | [ComonadHom.id_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadhom-id-tonattrans--5105db19c9accddf017b6a78.md) | 177 | `result-track:5105db19c9accddf017b6a78bcef9da55daa9814a91ac111c583eb67b4940e26` |
| 22 | `theorem` | [comp_toNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comp-tonattrans--e023b362b213c31eb74e3f3c.md) | 181 | `result-track:e023b362b213c31eb74e3f3c80c14fab4d057093e0d89747f0a17885023c5395` |
| 23 | `def` | [MonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadiso-mk--82c7fa87734c9aefdf2bc856.md) | 188 | `declaration-track:82c7fa87734c9aefdf2bc8567c86b9fdc76f553424bc956953b36b2ebe9f8df2` |
| 24 | `def` | [ComonadIso.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadiso-mk--331599d6fafc7d891974e1d0.md) | 208 | `declaration-track:331599d6fafc7d891974e1d080ed681e9f4296b1fa9071695b9589d4939682f7` |
| 25 | `def` | [monadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadtofunctor--65ef4f708e84c8d1f38fcc1f.md) | 230 | `declaration-track:65ef4f708e84c8d1f38fcc1f0c339ce36633a9f5f788c9a281c162cc8a3f0efe` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--a40ca6360325e37df9587513.md) | 234 | `declaration-track:a40ca6360325e37df9587513ca3f4a3e57e832bcdad6c759267a205e96c2de87` |
| 27 | `theorem` | [monadToFunctor_mapIso_monad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadtofunctor-mapiso-monad-iso-mk--22a679a01f509b425d5c739f.md) | 236 | `result-track:22a679a01f509b425d5c739f88554839a24661f2ba8ba835ceecdb99e6c994f1` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--6cd403cef211901238aba9d2.md) | 242 | `declaration-track:6cd403cef211901238aba9d24a1f02c0c01df3813eb8b2db0e56a32ec7bbf942` |
| 29 | `def` | [comonadToFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadtofunctor--0016097f6d864539b910549c.md) | 248 | `declaration-track:0016097f6d864539b910549c42c0dd2933d66b3529cf945b171d449d1d5b2bab` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--155ce8f465e9d691879ab4c9.md) | 252 | `declaration-track:155ce8f465e9d691879ab4c9ff411ea29bd8cea50e2bc76901a8262673400550` |
| 31 | `theorem` | [comonadToFunctor_mapIso_comonad_iso_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadtofunctor-mapiso-comonad-iso-mk--c6a5b7e41ef5e44122b11f3f.md) | 254 | `result-track:c6a5b7e41ef5e44122b11f3f70859e6aca26ca797b3094e1e83e728ddab27c35` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--fe5d621fdf2e566a1f80a63d.md) | 260 | `declaration-track:fe5d621fdf2e566a1f80a63df7b284823bf24eaf3fa4e04eca1f9b90a3bd79ec` |
| 33 | `def` | [MonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/monadiso-tonatiso--01ae9f9caa0b42443257319a.md) | 268 | `declaration-track:01ae9f9caa0b42443257319a9efbb5b2b840bfaf726eb4e9f34e935e467f02a6` |
| 34 | `def` | [ComonadIso.toNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/comonadiso-tonatiso--05297a407f3c4cbfac29b758.md) | 274 | `declaration-track:05297a407f3c4cbfac29b75897874238bea6ec13c3ee69c8632fda2bc0cae8a0` |
| 35 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/id--c07336d448c5bf57832e1a5e.md) | 283 | `declaration-track:c07336d448c5bf57832e1a5e5d5fd29a5f8043d47faa5d7039594a349d95f055` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--f056b9087d9934418441f21c.md) | 288 | `declaration-track:f056b9087d9934418441f21c3f1a6f57b00c3d257053925493e57dcea88deab0` |
| 37 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/id--0d2de4a54068d2461bf4e0ca.md) | 298 | `declaration-track:0d2de4a54068d2461bf4e0ca04f0f125c72c370aa78b86e867e0d5a0cbe4e498` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/instance--cb6263d243b73e78d80de984.md) | 303 | `declaration-track:cb6263d243b73e78d80de98499d84b29bd089b13e61db13ce21a4728cddca2ad` |
| 39 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/transport--ac93231f7fef95b833fc6c99.md) | 316 | `declaration-track:ac93231f7fef95b833fc6c99ab12285f75c798c56aa480a1ce7ed0b30bbd2a26` |
| 40 | `def` | [transport](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/transport--6574c057837b105611653d26.md) | 348 | `declaration-track:6574c057837b105611653d262e9b3669a9f986b0fd539b08528a3b9ab986808b` |
| 41 | `lemma` | [map_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/map-unit-app--8c3cb7a022a1c99ff85c08ee.md) | 373 | `result-track:8c3cb7a022a1c99ff85c08eed2514b2618b6fb53066434693165cbd55f7f4741` |
| 42 | `lemma` | [isSplitMono_iff_isIso_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/issplitmono-iff-isiso-unit--cd8959ca7d3c6a0a541791f1.md) | 377 | `result-track:cd8959ca7d3c6a0a541791f17dc24d050b8c0dd229c067881d12c21b2b0849ac` |
| 43 | `lemma` | [map_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/map-counit-app--16f361969c2dd10bad3a7c29.md) | 387 | `result-track:16f361969c2dd10bad3a7c297cad2151058d28fdfb75c607a72cb83bd89579e9` |
| 44 | `lemma` | [isSplitEpi_iff_isIso_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant66a5a432cb7fa8b29bc3a7df7fd45fdd8b877685e988f79b5d846277e89371b0.lean/declarations/issplitepi-iff-isiso-counit--5912c823b295b691c8fec476.md) | 391 | `result-track:5912c823b295b691c8fec476dda548ad94a2c375a9729df9ba27dbd0211d91d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
