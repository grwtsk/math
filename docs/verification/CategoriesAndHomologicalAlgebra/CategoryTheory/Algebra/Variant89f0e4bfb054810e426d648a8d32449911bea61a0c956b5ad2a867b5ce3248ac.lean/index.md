# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Algebra.Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "938ea87943bb0c45cbc945f5808e98f37060fa2e",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `938ea87943bb0c45cbc945f5808e98f37060fa2e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra--28940dedb0af95c8a8789365.md) | 48 | `declaration-track:28940dedb0af95c8a8789365d812567fefe554a2343c838da2f95fb02ae132e3` |
| 2 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/hom--8449b11a04db74a34acfaee9.md) | 81 | `declaration-track:8449b11a04db74a34acfaee941de58a3fbe476b8a5aa38d6c47db3c445a93994` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/id--4614edc502a1af9ef5da6762.md) | 100 | `declaration-track:4614edc502a1af9ef5da6762649772cac54754f8bb547dd902099df73705360f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/instance--483c65338dd81ddb57b6b653.md) | 103 | `declaration-track:483c65338dd81ddb57b6b653a4dc765b58f6db3c1dd4f0387f170aab17612b2e` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/comp--cc9cbe101cf31ac5cccaa84d.md) | 107 | `declaration-track:cc9cbe101cf31ac5cccaa84ddf3297a68df67bb07af7a6d4ba68d06da531af5b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/instance--a7566301c919053542a1e94a.md) | 112 | `declaration-track:a7566301c919053542a1e94adcd4dc72f1f7ad47fbdb0a152eb0d5244fa0fdcf` |
| 7 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/hom-ext--786036df0fe170c52225c03f.md) | 119 | `result-track:786036df0fe170c52225c03fd989a738c8e7986ec03f6c3157c7b222183fee29` |
| 8 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/comp-eq-comp--9f8887ced51bbc56fec54fae.md) | 122 | `result-track:9f8887ced51bbc56fec54fae1e7be5cafa61174f570baba7d151acf55fd8c2ed` |
| 9 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/id-eq-id--8b55c613dcccb5c7e99a0b01.md) | 128 | `result-track:8b55c613dcccb5c7e99a0b017634e0c1a2ec3b177932df2f6da2110e943ca66a` |
| 10 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/id-f--0881c496cd151118296bb8fe.md) | 133 | `result-track:0881c496cd151118296bb8feb2f8ed80e8c571cb156a822e0e3356e4272cbc89` |
| 11 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/comp-f--2ead2ffea230eea6c6bcfceb.md) | 138 | `result-track:2ead2ffea230eea6c6bcfceb811a4f78477880bb228289233b1da903dbae71b1` |
| 12 | `instance` | [eilenbergMoore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/eilenbergmoore--9a526ef5ab3c32071da51590.md) | 144 | `declaration-track:9a526ef5ab3c32071da51590e47147ceb52c3dffb8836173e537ed353dd961b9` |
| 13 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/isomk--71ec7cffe85f3f8dfc548dfc.md) | 153 | `declaration-track:71ec7cffe85f3f8dfc548dfc58a215745d191efc40ca6f47179a7dbe2fdb3d02` |
| 14 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/forget--f3a3a250118e4277a11caff1.md) | 169 | `declaration-track:f3a3a250118e4277a11caff1a82bad4d2ca29c63e0a655a6e27d8c0ff870fdcf` |
| 15 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/free--bb19c4b896b063ffc296f9b7.md) | 176 | `declaration-track:bb19c4b896b063ffc296f9b7d5dc0879f1b2786b0bb2432da6ae24c97781e3c2` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/instance--398234f3fc7bb928c0cdd79b.md) | 186 | `declaration-track:398234f3fc7bb928c0cdd79b222a05152018c41dc2a5d35ab09b3d1f42ccae7d` |
| 17 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/adj--49c0794b18f54bdc881cf28a.md) | 194 | `declaration-track:49c0794b18f54bdc881cf28a67d18f6613d0d157a8ca0de401b3b5dd5b8f7649` |
| 18 | `theorem` | [algebra_iso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra-iso-of-iso--7f96114829f22d967c8a8b17.md) | 215 | `result-track:7f96114829f22d967c8a8b175737b8250e22671a62c525f2f9775c77622dc55a` |
| 19 | `instance` | [forget_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/forget-reflects-iso--e2c3d82151a2852d39813855.md) | 223 | `declaration-track:e2c3d82151a2852d39813855894e90c392caaa86837e699a3a3b5ac2da9f79f1` |
| 20 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/forget-faithful--d897eb94f03ae87c00384892.md) | 228 | `declaration-track:d897eb94f03ae87c003848921503875f54f3f905bf55a22716609ba69d3b3ed5` |
| 21 | `theorem` | [algebra_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra-epi-of-epi--87dc10ccc17baea30566e190.md) | 233 | `result-track:87dc10ccc17baea30566e190d449661f368844693def266171b44ecaaf1af755` |
| 22 | `theorem` | [algebra_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra-mono-of-mono--0030b319b40bf63c91a9312c.md) | 239 | `result-track:0030b319b40bf63c91a9312c25194506acce60f298dc00654290bf2581897469` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/instance--2cd5f4829c178c6d86b13c15.md) | 243 | `declaration-track:2cd5f4829c178c6d86b13c15f81651b647ffd6e4a2157cd9ed3e3cd413ac8da4` |
| 24 | `theorem` | [leftAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/leftadjoint-forget--eb9de42441bf8c3cf58d612e.md) | 247 | `result-track:eb9de42441bf8c3cf58d612ebd3ade343a93eebc1dce2f34499bb71b7e63adba` |
| 25 | `theorem` | [ofRightAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/ofrightadjoint-forget--82b85eb0dde9ac0cf5ac8883.md) | 252 | `result-track:82b85eb0dde9ac0cf5ac88836ab7954f6ca8c6832a18cbf7414529da51767feb` |
| 26 | `def` | [algebraFunctorOfMonadHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebrafunctorofmonadhom--96932ad76382f4036e35f642.md) | 261 | `declaration-track:96932ad76382f4036e35f642391903d8ffaffba3a582bf9c43c4c9dfa3c5be83` |
| 27 | `def` | [algebraFunctorOfMonadHomId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebrafunctorofmonadhomid--8388fd5a8026b3ca3e19e4b5.md) | 279 | `declaration-track:8388fd5a8026b3ca3e19e4b520e2305180cf8bfaed01c57db679976fe3d68f66` |
| 28 | `def` | [algebraFunctorOfMonadHomComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebrafunctorofmonadhomcomp--93729679b2f23210a1775848.md) | 286 | `declaration-track:93729679b2f23210a1775848afb73b4e45ccf7901b63feb67142aa8ffec511ca` |
| 29 | `def` | [algebraFunctorOfMonadHomEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebrafunctorofmonadhomeq--2048f594a991fe378c81c7ef.md) | 297 | `declaration-track:2048f594a991fe378c81c7ef181537c66ac553d3b9509b4bc829049fe92dc525` |
| 30 | `def` | [algebraEquivOfIsoMonads](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebraequivofisomonads--365a4e35deb4463b52daad9d.md) | 306 | `declaration-track:365a4e35deb4463b52daad9d185e6a1bd968724a9ffa8a9ace731b05a7165f8a` |
| 31 | `theorem` | [algebra_equiv_of_iso_monads_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra-equiv-of-iso-monads-comp-forget--a73b5136e34b23eb39cfcff1.md) | 318 | `result-track:a73b5136e34b23eb39cfcff14a101357eb5f1be37c30b3c9965c127b1f1605aa` |
| 32 | `structure` | [Coalgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/coalgebra--ec6fd77d3e3eb9d3f820bbb1.md) | 330 | `declaration-track:ec6fd77d3e3eb9d3f820bbb175cca9e297305d41b46078eef5f3576de0a12a8d` |
| 33 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/hom--806b2e00a392dc39cf69e9d4.md) | 365 | `declaration-track:806b2e00a392dc39cf69e9d42958a45a4c6f0b1d5132fab4bb423ea8d0b0374f` |
| 34 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/id--7e60615ed66b7331a036a6b3.md) | 384 | `declaration-track:7e60615ed66b7331a036a6b34892cd63442112d2541ab6c44472a74d573ab349` |
| 35 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/comp--a759defd757dd831c219539d.md) | 388 | `declaration-track:a759defd757dd831c219539d392b23c10e3a4e2ded6cbabd849ae2f6f958b383` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/instance--210f678f33bd2aee39db2f46.md) | 394 | `declaration-track:210f678f33bd2aee39db2f464d2869bbc05922b4ee58039152095405c5852c61` |
| 37 | `lemma` | [Hom.ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/hom-ext--6f9e15d19d2d71825014e005.md) | 401 | `result-track:6f9e15d19d2d71825014e00570e9c45a1425a4b2ca3a3e2ff6670f592975f060` |
| 38 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/comp-eq-comp--ac207ac2fefe2041138549ba.md) | 404 | `result-track:ac207ac2fefe2041138549ba1d97375fcf8d5999c9ecfa25c23f51015151eddb` |
| 39 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/id-eq-id--8cfa92412b0ca728fc890dcd.md) | 410 | `result-track:8cfa92412b0ca728fc890dcd530520ceb87dce6a1ce64d473bddb4de03361bc4` |
| 40 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/id-f--e33e80994d1e460d2c7b2886.md) | 415 | `result-track:e33e80994d1e460d2c7b2886b7955ca6d9423b0bede9340e0f5b2db83f61dd2c` |
| 41 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/comp-f--3e32553cb6af9ce901d7fe63.md) | 420 | `result-track:3e32553cb6af9ce901d7fe6358b7d7ed22db57da65c7c2aedf84d5bfdf1a784e` |
| 42 | `instance` | [eilenbergMoore](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/eilenbergmoore--65b6eaa481d8eaa2e483a5ec.md) | 425 | `declaration-track:65b6eaa481d8eaa2e483a5ec77fa74b3fcf364871ba3f610b015c949952e124e` |
| 43 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/isomk--77aa3c27b57b3c50b33bdc15.md) | 434 | `declaration-track:77aa3c27b57b3c50b33bdc15af6bece514b0f8055026895acc512dd9ea8ad08f` |
| 44 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/forget--71829d0f2bd70d0b420263ab.md) | 451 | `declaration-track:71829d0f2bd70d0b420263ab0d913de6a29a9724e03457cb785e8fbf31f1a0e4` |
| 45 | `def` | [cofree](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/cofree--a4f06f8a02678f5c9b0aef45.md) | 459 | `declaration-track:a4f06f8a02678f5c9b0aef459085cf2154dbec1ac4357ac410ddec2968b1945c` |
| 46 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/adj--2baf4c9f827b05da946c53c1.md) | 475 | `declaration-track:2baf4c9f827b05da946c53c105baeffcf7f9c1e1d67cb45a4f11c22c074e0687` |
| 47 | `theorem` | [coalgebra_iso_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/coalgebra-iso-of-iso--88dd9e224701c208abf6fbbe.md) | 495 | `result-track:88dd9e224701c208abf6fbbe895fd35c913bfc200d2bdab26028a5ff694a3b9f` |
| 48 | `instance` | [forget_reflects_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/forget-reflects-iso--dfaffcefff96d0bc1cf6a8a1.md) | 503 | `declaration-track:dfaffcefff96d0bc1cf6a8a141448dbe947a1c574daabc1ae9c463d2937e1f09` |
| 49 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/forget-faithful--23ae535d85ec3dee68b511fc.md) | 508 | `declaration-track:23ae535d85ec3dee68b511fc12afbd864203cacec01c61159913f44c84f76965` |
| 50 | `theorem` | [algebra_epi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra-epi-of-epi--35aece01b4e4491e47899609.md) | 513 | `result-track:35aece01b4e4491e478996097dce36dc75bfa9a44c082454a5a4eed95348b76f` |
| 51 | `theorem` | [algebra_mono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/algebra-mono-of-mono--5e239fc27089d74b78b095ed.md) | 519 | `result-track:5e239fc27089d74b78b095edc6e7ed008b20bdb51adc9c4212789e248923b63b` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/instance--d7727dc6d3a82c6980b68bcd.md) | 523 | `declaration-track:d7727dc6d3a82c6980b68bcda447d55eaba875124f600b7bdeb422991dacb900` |
| 53 | `theorem` | [rightAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/rightadjoint-forget--2b2399e122a4cd45e0c1e31b.md) | 527 | `result-track:2b2399e122a4cd45e0c1e31b2bf2f507f4b4bb979f8cdf6386e902d87f48379b` |
| 54 | `theorem` | [ofLeftAdjoint_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/declarations/ofleftadjoint-forget--4dd526ea31b22e92fcc528d6.md) | 532 | `result-track:4dd526ea31b22e92fcc528d6c1e200d79ebac947df41a6aab909c77ca03f74bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
