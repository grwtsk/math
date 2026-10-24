# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RightDerived.Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d333b601bd45fe1ec52cc0931a9348f673883d7f",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d333b601bd45fe1ec52cc0931a9348f673883d7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean.json)

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
| 1 | `class` | [IsRightDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/isrightderivedfunctor--b4f79e3e51dcda3735d39729.md) | 62 | `declaration-track:b4f79e3e51dcda3735d397298b722fdb1087791645ada02dc69d407ada471476` |
| 2 | `lemma` | [isRightDerivedFunctor_iff_isLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/isrightderivedfunctor-iff-isleftkanextension--8edf4db8a386d115b02d8b0b.md) | 66 | `result-track:8edf4db8a386d115b02d8b0b47f2cbc8d2ad2b37d9a3616ac8362f4af7d0fe5b` |
| 3 | `lemma` | [isRightDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/isrightderivedfunctor-iff-of-iso--93e214419b8e8d15306b02c3.md) | 73 | `result-track:93e214419b8e8d15306b02c326e62cd4771da490a4c0bee94f608801c6eea755` |
| 4 | `def` | [rightDerivedDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderiveddesc--971d27015e7ee83fb4345038.md) | 84 | `declaration-track:971d27015e7ee83fb43450381fadb1219b236cdaec082c4f930f2acb83475c15` |
| 5 | `lemma` | [rightDerived_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderived-fac--507c9e27f03c58f54e4f407c.md) | 89 | `result-track:507c9e27f03c58f54e4f407c97e0790306fb85607aeba305ba2f4dc41e5753c8` |
| 6 | `lemma` | [rightDerived_fac_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderived-fac-app--512fc576ad56498be11a946b.md) | 95 | `result-track:512fc576ad56498be11a946b3f42960bcc546792f5cd2428bb1db2ffc0e6d3ff` |
| 7 | `lemma` | [rightDerived_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderived-ext--10f6c2169ad6622044d00f87.md) | 101 | `result-track:10f6c2169ad6622044d00f87362b469cff8a3782e83fdfff4dd989c1546b06a6` |
| 8 | `def` | [rightDerivedNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivednattrans--74a6fb156cf5241d7b947904.md) | 108 | `declaration-track:74a6fb156cf5241d7b947904a57dfff53f8e764523992a4af2432f90e1b550c0` |
| 9 | `lemma` | [rightDerivedNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivednattrans-fac--bea7b8333bca90329626a6b1.md) | 112 | `result-track:bea7b8333bca90329626a6b103b2e54c60e18fc15c2c76ffad3365a55af08732` |
| 10 | `lemma` | [rightDerivedNatTrans_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivednattrans-app--262328a80cd1e2ddb2f1f824.md) | 118 | `result-track:262328a80cd1e2ddb2f1f82413cdec218b3949aeb4f6e161e2ca8ce5bc2820fa` |
| 11 | `lemma` | [rightDerivedNatTrans_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivednattrans-id--a394e3c622bdb02afa11fb41.md) | 125 | `result-track:a394e3c622bdb02afa11fb41375c7c19dfac40ff0ca91df23f31a2c47d012ae8` |
| 12 | `lemma` | [rightDerivedNatTrans_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivednattrans-comp--5236b4685d4362abf85f4731.md) | 132 | `result-track:5236b4685d4362abf85f4731c771d3df3c716d165557a84d32f70f1ab028a605` |
| 13 | `def` | [rightDerivedNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivednatiso--d94875d0b563aac6df2d3df3.md) | 140 | `declaration-track:d94875d0b563aac6df2d3df3c6c949167d0f725c55434a6046347cc4fe24b228` |
| 14 | `abbrev` | [rightDerivedUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/rightderivedunique--a5beac721f50f8a686241555.md) | 146 | `declaration-track:a5beac721f50f8a686241555118878b5a547a603e74d4b293e6425dbc1ea2da7` |
| 15 | `lemma` | [isRightDerivedFunctor_iff_isIso_rightDerivedDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/isrightderivedfunctor-iff-isiso-rightderiveddesc--fffac8fb4013a783a049da70.md) | 149 | `result-track:fffac8fb4013a783a049da7063e21dd068295bcaa92a9a6673d369d6a36a0ad4` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/instance--2cd52389c13c2cbc8355e1b0.md) | 155 | `declaration-track:2cd52389c13c2cbc8355e1b07946d4dd4cfd7870a10e78ec4ebd84601f21640f` |
| 17 | `class` | [HasRightDerivedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/hasrightderivedfunctor--185e4d0116f1fb8687d924ec.md) | 170 | `declaration-track:185e4d0116f1fb8687d924ec85126a4c991333650193eb0169e4bf71603987b5` |
| 18 | `lemma` | [hasRightDerivedFunctor_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/hasrightderivedfunctor-iff--4ce92b17fe72c05206334e5a.md) | 176 | `result-track:4ce92b17fe72c05206334e5ab887a379c1d996bbee40338d47a09635cabd0052` |
| 19 | `lemma` | [hasRightDerivedFunctor_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/hasrightderivedfunctor-iff-of-iso--dacec08b777c167db3662b97.md) | 185 | `result-track:dacec08b777c167db3662b97b73d5f886a7a06af7e30c039e4f6c67c75f1fcc7` |
| 20 | `lemma` | [HasRightDerivedFunctor.hasLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/hasrightderivedfunctor-hasleftkanextension--2dc9c80a4e17b4fc1a29a13d.md) | 192 | `result-track:2dc9c80a4e17b4fc1a29a13dfe8c0f1ef6c64552aad3f22745147be6127d159c` |
| 21 | `lemma` | [HasRightDerivedFunctor.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/hasrightderivedfunctor-mk--187b9288af5941c9a886848d.md) | 198 | `result-track:187b9288af5941c9a886848dfb1bde446e4ae5c38bc49f7ca0a95f1ff72a2b55` |
| 22 | `def` | [totalRightDerived](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/totalrightderived--5bedde78323219b8c64795ca.md) | 210 | `declaration-track:5bedde78323219b8c64795ca86995a7704db54709d56f1c466206865987babd6` |
| 23 | `def` | [totalRightDerivedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/totalrightderivedunit--1ded3fd523c9fac8a3b949ea.md) | 215 | `declaration-track:1ded3fd523c9fac8a3b949ea445474cfcea29a2a3691235425f5b3cf8e744c03` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/instance--8cdf6ea7c6689e9c099921c7.md) | 219 | `declaration-track:8cdf6ea7c6689e9c099921c7c67144e3ffe5cb2fc41682670c1fce49cbaf9815` |
| 25 | `lemma` | [isRightDerivedFunctor_iff_precomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variant31c0becd7918fb8398ff0eac0b1295742e5ebb86d48e0c65c053756f9c79053e.lean/declarations/isrightderivedfunctor-iff-precomp--665229229a998a965ab844a4.md) | 236 | `result-track:665229229a998a965ab844a4de6b0407873175bbb875c19095a3df688d9b4722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
