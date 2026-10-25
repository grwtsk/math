# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Bundled.Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0a078ff64218964fb9a11bfa74aed064fbddee8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0a078ff64218964fb9a11bfa74aed064fbddee8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean.json)

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
| 1 | `instance` | [CategoryTheory.Bundled.structure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/categorytheory-bundled-structure--204dd49a22eccd82da9d3296.md) | 41 | `declaration-track:204dd49a22eccd82da9d3296523bc4280eb9a2d154d8a9020c0f407cf4f12642` |
| 2 | `def` | [bundledInduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/bundledinduced--53a7fcb88a40bc40d3d67df3.md) | 54 | `declaration-track:53a7fcb88a40bc40d3d67df3d152c91046033426ecb58c2a1555ca58c847d015` |
| 3 | `def` | [bundledInducedEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/bundledinducedequiv--a5d418e609d238457ac8b990.md) | 60 | `declaration-track:a5d418e609d238457ac8b99051e22d27c739e70fa701ba1e1220483560d1b0c6` |
| 4 | `instance` | [equivSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/equivsetoid--48b358c44f37a1c8a54a1d92.md) | 70 | `declaration-track:48b358c44f37a1c8a54a1d9209e6978d5d3252239a888258fb5834730ac9fd09` |
| 5 | `structure` | [ModelType](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/modeltype--f3cbb45fb07d441ebcc6b619.md) | 81 | `declaration-track:f3cbb45fb07d441ebcc6b6191b7b2d2f2699796e075da2422242bae84743062e` |
| 6 | `instance` | [instCoeSort](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/instcoesort--ea8871c521f0a3b3b00c4ead.md) | 96 | `declaration-track:ea8871c521f0a3b3b00c4ead3493a10f143ad347e987146ce9f780756ca13b27` |
| 7 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/of--0901bffc499aa16290c1b993.md) | 101 | `declaration-track:0901bffc499aa16290c1b9934ef72db617b0d1ebb06c2092a0d7478da7d93ba9` |
| 8 | `theorem` | [coe_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/coe-of--415e60156e137b4116ff2d21.md) | 105 | `result-track:415e60156e137b4116ff2d21e453d0c1e8810f37f383a462d9371e61bc67038b` |
| 9 | `instance` | [instNonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/instnonempty--0f3658045d596d8938065539.md) | 108 | `declaration-track:0f3658045d596d89380655399c464e64da2c90553c245832c680da7bf77e3504` |
| 10 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/instinhabited--7bd8a9f7ac710cef237d81b7.md) | 115 | `declaration-track:7bd8a9f7ac710cef237d81b7dd382e9cf6ccc0dbfc0286199646a7f79e3b15ba` |
| 11 | `def` | [equivInduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/equivinduced--533e0400ff4d96687ec78489.md) | 123 | `declaration-track:533e0400ff4d96687ec7848978528436b2e92736ec854a1ccb2425cde5749e82` |
| 12 | `instance` | [of_small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/of-small--0c95a5dab1c7648f46b9c890.md) | 131 | `declaration-track:0c95a5dab1c7648f46b9c890c586a28d8d9d3518b5619f9aba7d7a031def27e5` |
| 13 | `def` | [shrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/shrink--c3d9bcfc21055ef9037c27c7.md) | 136 | `declaration-track:c3d9bcfc21055ef9037c27c7b983e7e10b5b2c915b746908d09a28cb1c3dab6d` |
| 14 | `def` | [ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/ulift--a28666a1528b5a80c92b7bc5.md) | 140 | `declaration-track:a28666a1528b5a80c92b7bc54d08c41919cb62b02b798df188ae4bf8c9058c23` |
| 15 | `def` | [reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/reduct--f98ceb103f5cee46fa732374.md) | 145 | `declaration-track:f98ceb103f5cee46fa732374deadb36fbfa79181889ec4752a70fa64330b9be1` |
| 16 | `def` | [defaultExpansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/defaultexpansion--3eb8f337053356bd99e5657c.md) | 154 | `declaration-track:3eb8f337053356bd99e5657c574710c518fd9916623756abfb0e9ac53b1e2e5a` |
| 17 | `instance` | [leftStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/leftstructure--0b52fd44f45b9488716795b5.md) | 165 | `declaration-track:0b52fd44f45b9488716795b5025d1ca7c6fae55576f49e1aa142aed08ada57b1` |
| 18 | `instance` | [rightStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/rightstructure--24a0a118367ca89dd351a19f.md) | 168 | `declaration-track:24a0a118367ca89dd351a19f9479045cafe8eec28f74e5a75e1332aabacbec1e` |
| 19 | `def` | [subtheoryModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/subtheorymodel--a83f1d21fdfd8fe1d4f2fcec.md) | 174 | `declaration-track:a83f1d21fdfd8fe1d4f2fcec2e8adae61d80f734e822f330429b06d424c4c39a` |
| 20 | `instance` | [subtheoryModel_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/subtheorymodel-models--27a1e55be31f46e1454cebfe.md) | 178 | `declaration-track:27a1e55be31f46e1454cebfe58cf468c1e554293c3d18bdf478397646fd21d27` |
| 21 | `def` | [Model.bundled](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/model-bundled--5f08d900054ed87f132c08fc.md) | 187 | `declaration-track:5f08d900054ed87f132c08fc649484ec77b3c49f46f1285a814b92bc8b582cf7` |
| 22 | `theorem` | [coe_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/coe-of--0b93f3a0e04de4f175c4d00e.md) | 191 | `result-track:0b93f3a0e04de4f175c4d00e3f748d2b9a391109a631c69e6448099a2f167e58` |
| 23 | `def` | [ElementarilyEquivalent.toModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/elementarilyequivalent-tomodel--4b36682a8d88a805435262ea.md) | 197 | `declaration-track:4b36682a8d88a805435262ea55e628f29e0440758f55d8ab57a6fb899992f7b5` |
| 24 | `def` | [ElementarySubstructure.toModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/elementarysubstructure-tomodel--6f3fb2ca3375b9e99ea0ae0d.md) | 205 | `declaration-track:6f3fb2ca3375b9e99ea0ae0df3c1ecf48156f805090c1dc0fcd8589350be56ba` |
| 25 | `instance` | [ElementarySubstructure.toModel.instSmall](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variant8e2b49edb845c189d9441f8413566261988b4da05c1c7f612b5394c011244735.lean/declarations/elementarysubstructure-tomodel-instsmall--bd90974d863758000668b1e9.md) | 209 | `declaration-track:bd90974d863758000668b1e9a0f708ab7edf00ea9e574af427c31ffd5133bfd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
