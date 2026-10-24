# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpimorphic.Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73e9cc312d21648807dca50b644523255992edb2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73e9cc312d21648807dca50b644523255992edb2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-effectiveepimorphic--7ec1e301397345ea54e5f781.md) | 52 | `declaration-track:7ec1e301397345ea54e5f781a0ce3a8a850db858421e00d90c895a6dfa51021b` |
| 2 | `abbrev` | [Presieve.EffectiveEpimorphic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/presieve-effectiveepimorphic--f17702ae25deab0dd3085057.md) | 57 | `declaration-track:f17702ae25deab0dd30850576db55caf7812fee5670d5ecdfbf2f243277f4992` |
| 3 | `def` | [Sieve.generateSingleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-generatesingleton--cf74080fd66c9887bc35b8b5.md) | 65 | `declaration-track:cf74080fd66c9887bc35b8b510569be2ab2b6fd7e4f3ac37c7888f5dfe7136df` |
| 4 | `lemma` | [Sieve.generateSingleton_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-generatesingleton-eq--9e76dfa0fb899d4ea032d3a0.md) | 71 | `result-track:9e76dfa0fb899d4ea032d3a070d9f51d13d1d2f4a8be53ca38c1d35feccd66f4` |
| 5 | `structure` | [EffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepistruct--3fde493885d5365af515fa13.md) | 83 | `declaration-track:3fde493885d5365af515fa13801fff416f90d52145004adbf6bbb08270c0be0a` |
| 6 | `class` | [EffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepi--87fcd1bc0dc6099147366110.md) | 104 | `declaration-track:87fcd1bc0dc6099147366110daea742ef883a43f79a984be0f0a47dde36b1bad` |
| 7 | `def` | [EffectiveEpi.getStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepi-getstruct--5e5ad143a8342ae76e4b0660.md) | 111 | `declaration-track:5e5ad143a8342ae76e4b06609ee3a153e405686e4dcdc79ac8d92c016194e1b0` |
| 8 | `def` | [EffectiveEpi.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepi-desc--e7028929382c84a7652dbcfa.md) | 116 | `declaration-track:e7028929382c84a7652dbcfa5898d2c9179e7b73b6e3ab92c7bf1cc58aaa6aaa` |
| 9 | `lemma` | [EffectiveEpi.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepi-fac--6be186de8eaaae7f023f7e71.md) | 121 | `result-track:6be186de8eaaae7f023f7e71f995ab6819dfa32553098ae4b709f3e749cb89e0` |
| 10 | `lemma` | [EffectiveEpi.uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepi-uniq--3242ebd68054f2f91b68183d.md) | 126 | `result-track:3242ebd68054f2f91b68183dd67ed6a25fb0b45bedbc3c8280e13aea695a7fa4` |
| 11 | `instance` | [epiOfEffectiveEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/epiofeffectiveepi--c55585b45a9200db9b974c73.md) | 132 | `declaration-track:c55585b45a9200db9b974c73dd7265fecfbd4341358caf44841433a88b705971` |
| 12 | `def` | [isColimitOfEffectiveEpiStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/iscolimitofeffectiveepistruct--7cf0d350a32d9ba47465e77b.md) | 145 | `declaration-track:7cf0d350a32d9ba47465e77b19990c068be6f09a064e0bedd868dd743f0a9296` |
| 13 | `def` | [effectiveEpiStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepistructofiscolimit--644a606f81287f8a964e57a8.md) | 180 | `declaration-track:644a606f81287f8a964e57a8e2bc7f1a4f0fdc6bb1058b4ee08277eee76c05a3` |
| 14 | `theorem` | [Sieve.effectiveEpimorphic_singleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-effectiveepimorphic-singleton--c6f60b132a7f70fb8c68a8e0.md) | 215 | `result-track:c6f60b132a7f70fb8c68a8e0a18d778395f28b5307a30dc4206287a75c902881` |
| 15 | `def` | [Sieve.generateFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-generatefamily--273434fff04e67c82951a8f6.md) | 232 | `declaration-track:273434fff04e67c82951a8f6c71dd8f85cae832abc3e3e1e511af8185a431a92` |
| 16 | `lemma` | [Sieve.generateFamily_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-generatefamily-eq--15ffb2db04b082ab6105b8cc.md) | 239 | `result-track:15ffb2db04b082ab6105b8cc2b1a8d5bc37fbdc8c62bb38c352de584512dc60c` |
| 17 | `structure` | [EffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamilystruct--40791fa4eaf91423a043cb5f.md) | 251 | `declaration-track:40791fa4eaf91423a043cb5f56a5c5740e083a71a85d6c49ce3d5a23c112cd42` |
| 18 | `class` | [EffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily--4c48a4263442f18f61efc89f.md) | 275 | `declaration-track:4c48a4263442f18f61efc89f992784ccda7ca3e246c7b1e9586e69edb635c6c9` |
| 19 | `def` | [EffectiveEpiFamily.getStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily-getstruct--5734a182d5f4f6410d4a93b4.md) | 282 | `declaration-track:5734a182d5f4f6410d4a93b4963364e53b7345ff0875d649ec6d5e525e8a8c02` |
| 20 | `def` | [EffectiveEpiFamily.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily-desc--e905e617bcb30afffa5f51dc.md) | 288 | `declaration-track:e905e617bcb30afffa5f51dc55538527cfe27e1d30bc0096d297b810c34b271a` |
| 21 | `lemma` | [EffectiveEpiFamily.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily-fac--09b1693a9cb34374c276e31a.md) | 295 | `result-track:09b1693a9cb34374c276e31a1dd2910797795d56878c88f496fd796a5c5c92e2` |
| 22 | `def` | [effectiveEpiFamilyStructId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamilystructid--1b54f0dc0e85df590597b501.md) | 312 | `declaration-track:1b54f0dc0e85df590597b5012b6d7b62c70ad4243b13ac4e860e3c12d6b84a07` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/instance--592bd126d398e8c89d8c27b6.md) | 317 | `declaration-track:592bd126d398e8c89d8c27b630f232d10f13aabba17324112364d02789fb53a0` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/example--a7687322e14276ac9aae8020.md) | 320 | `declaration-track:a7687322e14276ac9aae802037de65564d14ebcb9e461c231fbfb288d66e5f94` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/example--d981a220b2f6a802fd0217d2.md) | 327 | `declaration-track:d981a220b2f6a802fd0217d2c5d695527e767c22714814ccf64782a4114e5cce` |
| 26 | `lemma` | [EffectiveEpiFamily.uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily-uniq--e0f5a58c6810bc2bfd743457.md) | 335 | `result-track:e0f5a58c6810bc2bfd74345762fa9ca2c3fd0ed8789bb5cf3aa12d93a8c6739a` |
| 27 | `lemma` | [EffectiveEpiFamily.hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily-hom-ext--c4e218781bb73d68686425eb.md) | 344 | `result-track:c4e218781bb73d68686425eb4956e8ba4ff8eecfad2ddc8771d1d3c308e30681` |
| 28 | `instance` | [epiCoproductDescOfEffectiveEpiFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/epicoproductdescofeffectiveepifamily--0cf3193282e9d0ef528e61d4.md) | 353 | `declaration-track:0cf3193282e9d0ef528e61d4522198febab8dea79429ba9d5e688a6b3cd61394` |
| 29 | `def` | [isColimitOfEffectiveEpiFamilyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/iscolimitofeffectiveepifamilystruct--e3997ec3f0f12992ea8feb55.md) | 369 | `declaration-track:e3997ec3f0f12992ea8feb5513451241aaad623f36fed58a0df42c6d3887b347` |
| 30 | `def` | [effectiveEpiFamilyStructOfIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamilystructofiscolimit--ed53beb569522637e6d2b3eb.md) | 406 | `declaration-track:ed53beb569522637e6d2b3eb2df11aad7d046f8effa73789d02ab80b4bc8d0b4` |
| 31 | `theorem` | [Sieve.effectiveEpimorphic_family](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/sieve-effectiveepimorphic-family--a506c6b7581b5f1612449935.md) | 443 | `result-track:a506c6b7581b5f16124499359c308c5c8b292c0b8af382456947ecd74c737755` |
| 32 | `def` | [EffectiveEpiFamily_descStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamily-descstruct--d9c730cbae529beae0715693.md) | 464 | `declaration-track:d9c730cbae529beae07156937788e76118c247c23aca44846d060b94ebf69a2d` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/instance--fc0e46e935315550ed758702.md) | 485 | `declaration-track:fc0e46e935315550ed7587020d5e6125a878f84c88dd7aba3c18d47b85422268` |
| 34 | `def` | [EffectiveEpi_familyStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepi-familystruct--0180d32b02f07ee76a6c34f4.md) | 493 | `declaration-track:0180d32b02f07ee76a6c34f46a60ad8a43f0c5941c272a626a24b638a9887bcf` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/instance--be14a821627c67b6d2984efd.md) | 499 | `declaration-track:be14a821627c67b6d2984efd47c6753572fe6ad44344fb764f02ae9e93b6c109` |
| 36 | `def` | [EffectiveEpiFamilyStruct_of_isIso_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/effectiveepifamilystruct-of-isiso-desc--6c14c8feeda28d151e524a97.md) | 507 | `declaration-track:6c14c8feeda28d151e524a9792077aeca7fce2a2f3c1496049d4c393a22e389e` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variant2e504d8fdebe1ae017776333dcc6b736dae743ab03e43bc204e7ee635414d1bd.lean/declarations/instance--47b5bf4dc9280f4029b900b5.md) | 525 | `declaration-track:47b5bf4dc9280f4029b900b506cfab1dcbd537defb5a7f138a37c4eba521439b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
