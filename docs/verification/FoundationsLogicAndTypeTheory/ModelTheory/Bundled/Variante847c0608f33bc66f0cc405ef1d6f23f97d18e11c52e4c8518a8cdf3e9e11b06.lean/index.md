# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Bundled.Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef9ed3d718fb9ec0bb5200569775f3c5deab162b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef9ed3d718fb9ec0bb5200569775f3c5deab162b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.ElementarySubstructures` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [CategoryTheory.Bundled.structure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/categorytheory-bundled-structure--d46fc907b917a6c7a9b2b659.md) | 37 | `declaration-track:d46fc907b917a6c7a9b2b65976522030aa7a234b80f1f23503b1f2ea51dc4f0d` |
| 2 | `def` | [bundledInduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/bundledinduced--2f9af9e4af505cd29ddfc5e4.md) | 50 | `declaration-track:2f9af9e4af505cd29ddfc5e483f538b1f07bdf2ad0cbce726a289e7561fc32a0` |
| 3 | `def` | [bundledInducedEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/bundledinducedequiv--6e19474f9379ea6ae635ab31.md) | 56 | `declaration-track:6e19474f9379ea6ae635ab31bf630d040ef923657c153b6265ba67b3977d5203` |
| 4 | `instance` | [equivSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/equivsetoid--6ebdd64c29beba696e60a13a.md) | 66 | `declaration-track:6ebdd64c29beba696e60a13a52ffcad025501ffc70e09ca06e41103c462bd60e` |
| 5 | `structure` | [ModelType](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/modeltype--27578dc83d831b3a9aa15c3f.md) | 77 | `declaration-track:27578dc83d831b3a9aa15c3f7282cca2c4f6263260ca1f59220eb35f2ba2da27` |
| 6 | `instance` | [instCoeSort](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/instcoesort--67da6fe3f224aa4f4dea510d.md) | 92 | `declaration-track:67da6fe3f224aa4f4dea510d6c36c67231091f07e0a4c35fd7982e6faf8ff0d3` |
| 7 | `def` | [of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/of--93e415d99ed1def1e469fde9.md) | 97 | `declaration-track:93e415d99ed1def1e469fde98a1bdf26aac17d0a87e220a0617a85ff5c4071ef` |
| 8 | `theorem` | [coe_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/coe-of--277ad7af7c64dd34b8179944.md) | 101 | `result-track:277ad7af7c64dd34b8179944285c2f153e0d0b7998f9b59e470678641c13508b` |
| 9 | `instance` | [instNonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/instnonempty--6d5a5fc0cadabf5b177fb172.md) | 104 | `declaration-track:6d5a5fc0cadabf5b177fb172ecd0d585e1d2590d98a343db22e7a254e87cf52d` |
| 10 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/instinhabited--0038cef430ee032c5c5dfe07.md) | 111 | `declaration-track:0038cef430ee032c5c5dfe071df187e996f80ac936e4e9cb409ddb7ff404004e` |
| 11 | `def` | [equivInduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/equivinduced--456a456834a9777cc9225d63.md) | 119 | `declaration-track:456a456834a9777cc9225d63d87512ee067d9784cb898e23c9dfc463e4084241` |
| 12 | `instance` | [of_small](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/of-small--c9d75e6bb6ec640799d4fad9.md) | 127 | `declaration-track:c9d75e6bb6ec640799d4fad9d9fbabfcc54bf1f7ae640e18bb36eac3562f9115` |
| 13 | `def` | [shrink](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/shrink--7fb45a17e9da898b828d235b.md) | 132 | `declaration-track:7fb45a17e9da898b828d235b228d54f3f0b58cbdc418f9498d111da59929f708` |
| 14 | `def` | [ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/ulift--bc85f32bca3b0fc631190d96.md) | 136 | `declaration-track:bc85f32bca3b0fc631190d96cbb8e94bcb4c917293bd98b0060747ec33da1390` |
| 15 | `def` | [reduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/reduct--13036bea26267e80280bea4d.md) | 141 | `declaration-track:13036bea26267e80280bea4da8fa9cdbd281545c13423256e0e2d4d94dd9d3f8` |
| 16 | `def` | [defaultExpansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/defaultexpansion--621c149161f11b2ea7e559cb.md) | 150 | `declaration-track:621c149161f11b2ea7e559cbc3ada942c3c2562bce07e7a5e889fa06af04a42a` |
| 17 | `instance` | [leftStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/leftstructure--1cf052f562a78f9e07758daa.md) | 161 | `declaration-track:1cf052f562a78f9e07758daa0b36419f66b847ca4812a0b8f492b92ed7711638` |
| 18 | `instance` | [rightStructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/rightstructure--8ec02cf59536e00b0f4512fa.md) | 164 | `declaration-track:8ec02cf59536e00b0f4512fa2820a6cf6477fa3beb81dbcc21e4771c2fde83f3` |
| 19 | `def` | [subtheoryModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/subtheorymodel--cc348c25689e807d8989979e.md) | 170 | `declaration-track:cc348c25689e807d8989979e215f1c51b84c64e6518dd141256ead3d5a9b5e12` |
| 20 | `instance` | [subtheoryModel_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/subtheorymodel-models--1a66ef573934abb24be87a3b.md) | 174 | `declaration-track:1a66ef573934abb24be87a3b3ec88209fc374442fbd972cb6149bf2a6d73ae02` |
| 21 | `def` | [Model.bundled](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/model-bundled--a653285b6c15d9189c38065d.md) | 183 | `declaration-track:a653285b6c15d9189c38065deee212a08f24b06c4ffb0a2ad3372a45c5e806cc` |
| 22 | `theorem` | [coe_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/coe-of--dee3d3d6ef6d82f8e56db9f3.md) | 187 | `result-track:dee3d3d6ef6d82f8e56db9f320807d7b6c077e81267752d4f1c74099ebb005c2` |
| 23 | `def` | [ElementarilyEquivalent.toModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/elementarilyequivalent-tomodel--8d2e9d7cb1fc5066f4cb7c11.md) | 193 | `declaration-track:8d2e9d7cb1fc5066f4cb7c11fb4ae596f4142656bf6eb91a54ad7732e64fb128` |
| 24 | `def` | [ElementarySubstructure.toModel](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/elementarysubstructure-tomodel--b642da8c2d2ab4c5a2efc9ed.md) | 201 | `declaration-track:b642da8c2d2ab4c5a2efc9ed2ca06e7bae11831c24494dc2418abc319e4e3621` |
| 25 | `instance` | [ElementarySubstructure.toModel.instSmall](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Bundled/Variante847c0608f33bc66f0cc405ef1d6f23f97d18e11c52e4c8518a8cdf3e9e11b06.lean/declarations/elementarysubstructure-tomodel-instsmall--96a2f17c856c637d9d8bbe6c.md) | 205 | `declaration-track:96a2f17c856c637d9d8bbe6c216d66d050305487a980f566c565dfb411529825` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
