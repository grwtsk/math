# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Satisfiability.Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e8f5d7fa99799272cc381e0c7724fe6b6fff5a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Ultraproducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Bundled` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Skolem` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable--a78c78098e3eb55186a23741.md) | 71 | `declaration-track:a78c78098e3eb55186a23741eb5473601a6c0b1129af8d71afc331d467531b7b` |
| 2 | `def` | [IsFinitelySatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/isfinitelysatisfiable--573e87102d67788d7d503626.md) | 75 | `declaration-track:573e87102d67788d7d503626bdea0ffcfffd6f8cdf190bed9674a04124071f8a` |
| 3 | `theorem` | [Model.isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/model-issatisfiable--d3183807884f3c022cc3ccc8.md) | 80 | `result-track:d3183807884f3c022cc3ccc861e6b2914b5d9fb1035863d6b318702a167462fb` |
| 4 | `theorem` | [IsSatisfiable.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-mono--0c2c8cfee328d7f6365cd0dd.md) | 84 | `result-track:0c2c8cfee328d7f6365cd0dd2f3655b6a472ee63aa22aae34cb6e75eeeb1cd25` |
| 5 | `theorem` | [isSatisfiable_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-empty--6e1bd65b790a5253285fc770.md) | 87 | `result-track:6e1bd65b790a5253285fc770819ac805ad9298ded6bb45f29f9c6168ac30c86e` |
| 6 | `theorem` | [isSatisfiable_of_isSatisfiable_onTheory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-of-issatisfiable-ontheory--33a23ffc1c3a505ca729c73c.md) | 90 | `result-track:33a23ffc1c3a505ca729c73c60d90bb2e9f9d95b99d58dd0986e9e5258c4d858` |
| 7 | `theorem` | [isSatisfiable_onTheory_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-ontheory-iff--821fea977e39da474fb83565.md) | 94 | `result-track:821fea977e39da474fb83565e11d4788e0b7490c3ba39da85a867ce9b08c511b` |
| 8 | `theorem` | [IsSatisfiable.isFinitelySatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-isfinitelysatisfiable--b964d2b1548f17157fce354e.md) | 101 | `result-track:b964d2b1548f17157fce354ea86a2ec64498da78059da2e8229c0f27e2968cf7` |
| 9 | `theorem` | [isSatisfiable_iff_isFinitelySatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-iff-isfinitelysatisfiable--79acfe100582d2c49867f8be.md) | 106 | `result-track:79acfe100582d2c49867f8be0c1463481a7bf3987d7384870aa26ff277dd066c` |
| 10 | `theorem` | [isSatisfiable_directed_union_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-directed-union-iff--4ae1facdc048130e56653cd5.md) | 127 | `result-track:4ae1facdc048130e56653cd52fca4e34111c61fefae2aade581d38a1c963d923` |
| 11 | `theorem` | [isSatisfiable_union_distinctConstantsTheory_of_card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-union-distinctconstantstheory-of-card-le--55ec23f0c8b570d3e145074e.md) | 135 | `result-track:55ec23f0c8b570d3e145074e88630f5bdc9b76dd3f73d48c7ac2370c412508a4` |
| 12 | `theorem` | [isSatisfiable_union_distinctConstantsTheory_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-union-distinctconstantstheory-of-infinite--4125a9eff26397d451077dec.md) | 153 | `result-track:4125a9eff26397d451077dece6e3e290c3fface5181a9ac8fb817edc822acae5` |
| 13 | `theorem` | [exists_large_model_of_infinite_model](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/exists-large-model-of-infinite-model--7f3e09a763fc7d6deecc5b7f.md) | 169 | `result-track:7f3e09a763fc7d6deecc5b7f73c9d21705e4c8e5e36f8cd0d7262db39c2b527d` |
| 14 | `theorem` | [isSatisfiable_iUnion_iff_isSatisfiable_iUnion_finset](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable-iunion-iff-issatisfiable-iunion-finset--f2224cc6dfcfce468223fcc7.md) | 183 | `result-track:f2224cc6dfcfce468223fcc7f81758fcf83b90d6ddd54a4422b044c8c7049cab` |
| 15 | `theorem` | [exists_elementaryEmbedding_card_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/exists-elementaryembedding-card-eq-of-le--1c85be347aa76fbf58232960.md) | 205 | `result-track:1c85be347aa76fbf58232960791604d247b30f94c7b95b7176083001d61d5baf` |
| 16 | `theorem` | [exists_elementaryEmbedding_card_eq_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/exists-elementaryembedding-card-eq-of-ge--791f7e56c0d61db2d5fc1c3a.md) | 223 | `result-track:791f7e56c0d61db2d5fc1c3a6b15620d314b73107fa9aab62f87f2ea1f0fb4e5` |
| 17 | `theorem` | [exists_elementaryEmbedding_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/exists-elementaryembedding-card-eq--4d644eb8150da75a63a26b75.md) | 249 | `result-track:4d644eb8150da75a63a26b7528dd65ae1f5faa0a70c8b858ad2290c18af6715c` |
| 18 | `theorem` | [exists_elementarilyEquivalent_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/exists-elementarilyequivalent-card-eq--8fdbb04328e627f01bc125ec.md) | 263 | `result-track:8fdbb04328e627f01bc125ec76de7922a32207ce2b7df06e3c513a6c88cd3cc5` |
| 19 | `theorem` | [exists_model_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/exists-model-card-eq--9cb24125b0ec32af6367b67b.md) | 274 | `result-track:9cb24125b0ec32af6367b67bb6d6e39c5282e876f181b7865d014a626c56faf0` |
| 20 | `def` | [ModelsBoundedFormula](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/modelsboundedformula--42dcb3b752cba54dc17c8128.md) | 288 | `declaration-track:42dcb3b752cba54dc17c8128efb46831193d3b4c2d1fa70776fe4ddc7de9146f` |
| 21 | `theorem` | [models_formula_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-formula-iff--993e25a13b90b10f428763b9.md) | 296 | `result-track:993e25a13b90b10f428763b935719a2104ad960c1eb516049b4a6eda77ea58ee` |
| 22 | `theorem` | [models_sentence_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-sentence-iff--099a251624bcd0d62f4d48cb.md) | 300 | `result-track:099a251624bcd0d62f4d48cbf2fe5d203e1309f4e7b4475efcef197a03822507` |
| 23 | `theorem` | [models_sentence_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-sentence-of-mem--915d61bd9203b5399ac29524.md) | 303 | `result-track:915d61bd9203b5399ac29524a0decbbfeb2494a019a9938b52a1733a610161bf` |
| 24 | `theorem` | [models_iff_not_satisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-iff-not-satisfiable--dffbdee025fea1f67116c079.md) | 306 | `result-track:dffbdee025fea1f67116c079d1daddbfd12173222fdef33d1c11071eb042dcb0` |
| 25 | `theorem` | [ModelsBoundedFormula.realize_sentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/modelsboundedformula-realize-sentence--73e49b71a1e0214d48db9184.md) | 323 | `result-track:73e49b71a1e0214d48db91848f5c06ba3e4f17e9c140cee5c1c52cfdab598d12` |
| 26 | `theorem` | [models_formula_iff_onTheory_models_equivSentence](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-formula-iff-ontheory-models-equivsentence--0cd484afe8d3a39188d82f35.md) | 334 | `result-track:0cd484afe8d3a39188d82f35033035243348388c1ab96458952b9c246a269f5a` |
| 27 | `theorem` | [ModelsBoundedFormula.realize_formula](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/modelsboundedformula-realize-formula--085cf0e7d0e7b3c4f185095d.md) | 349 | `result-track:085cf0e7d0e7b3c4f185095da40096c3963f2614be705053dc2e5e955c4b2d64` |
| 28 | `theorem` | [models_toFormula_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-toformula-iff--22080af10b7d3b6628666e35.md) | 356 | `result-track:22080af10b7d3b6628666e35ee575f8943ebc05c376a85eb6c1253d330826167` |
| 29 | `theorem` | [ModelsBoundedFormula.realize_boundedFormula](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/modelsboundedformula-realize-boundedformula--9811d68e3af5d19c8aa8b61b.md) | 364 | `result-track:9811d68e3af5d19c8aa8b61b96f867f3650134686241f3915c670daa268d51b9` |
| 30 | `theorem` | [models_of_models_theory](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-of-models-theory--6ba31a125236ae56667c80c7.md) | 371 | `result-track:6ba31a125236ae56667c80c73890c03c25953c99643d9c52aab01edfd2aa9cc2` |
| 31 | `theorem` | [models_iff_finset_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-iff-finset-models--5248137af7a747e86f085ead.md) | 380 | `result-track:5248137af7a747e86f085ead3b9e255571a472d72583613389a5f31a8c7ebec7` |
| 32 | `def` | [IsComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/iscomplete--c1d09f943958eadb3d33a0fa.md) | 397 | `declaration-track:c1d09f943958eadb3d33a0fa0cf7ec94b657667d38f9803c8dea7ea1088fdbe4` |
| 33 | `theorem` | [models_not_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/models-not-iff--32ce2835c644aa000e35dc0b.md) | 402 | `result-track:32ce2835c644aa000e35dc0bec684abe66a648bed5c8a08c387b9fd1860a83c4` |
| 34 | `theorem` | [realize_sentence_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/realize-sentence-iff--c7d29b3a3bd0a2d10b598787.md) | 414 | `result-track:c7d29b3a3bd0a2d10b598787ff4ff7633204f2f972d9588a6d264a1880c0976f` |
| 35 | `def` | [IsMaximal](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/ismaximal--4c2c02a11494c1f76ce7d5e8.md) | 426 | `declaration-track:4c2c02a11494c1f76ce7d5e80713027d53b8799e0413a7877c0e0ebdff4eb8fd` |
| 36 | `theorem` | [IsMaximal.isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/ismaximal-iscomplete--7c55c7e6ffa1e5cc191a0df4.md) | 429 | `result-track:7c55c7e6ffa1e5cc191a0df4eb8f4f8dc4e84ee79f95246ff932237f55b07741` |
| 37 | `theorem` | [IsMaximal.mem_or_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/ismaximal-mem-or-not-mem--29c1c07d3aa0a6d038e50961.md) | 432 | `result-track:29c1c07d3aa0a6d038e50961f6a372a49704712e32b81cba70091d3b3248353e` |
| 38 | `theorem` | [IsMaximal.mem_of_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/ismaximal-mem-of-models--e8e0c81f7050bc9dfa05d8c2.md) | 435 | `result-track:e8e0c81f7050bc9dfa05d8c22f4039a905720630f2f9d2b795428043090c4ca5` |
| 39 | `theorem` | [IsMaximal.mem_iff_models](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/ismaximal-mem-iff-models--22a9d915b35d8c727fdad068.md) | 440 | `result-track:22a9d915b35d8c727fdad068d4310a59f9c55163bd92b07b5424b35f3b8fe480` |
| 40 | `theorem` | [isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/issatisfiable--03b8347d8c4eb5510e3a88f8.md) | 450 | `result-track:03b8347d8c4eb5510e3a88f88239f9f40fca99284a8eb0282b39c3e1ca1caaa1` |
| 41 | `theorem` | [mem_or_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/mem-or-not-mem--1b015093b2505391a485d223.md) | 453 | `result-track:1b015093b2505391a485d2235874148532e09db748ffb1c4c0a266407b9ca7e1` |
| 42 | `theorem` | [isMaximal](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/ismaximal--a363d9c87a026c024654f591.md) | 456 | `result-track:a363d9c87a026c024654f5919191748f5b542560f6254929c595cff082909a6d` |
| 43 | `theorem` | [isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/iscomplete--4f3f10fb6262dedaf1e5e095.md) | 459 | `result-track:4f3f10fb6262dedaf1e5e0950763fd3bea982ab4834661fa424dff20826bbae3` |
| 44 | `def` | [Categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/categorical--3f1aa5ac05b3416e16bcaab1.md) | 475 | `declaration-track:3f1aa5ac05b3416e16bcaab1a91d9ee3e25d5b9e655b00e8dc589d4380fa644b` |
| 45 | `theorem` | [Categorical.isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/categorical-iscomplete--3d74944b097bdcaf7bef9aa8.md) | 479 | `result-track:3d74944b097bdcaf7bef9aa8ef77219c6450cc0921b2ceb28cf15fbaaef46d2d` |
| 46 | `theorem` | [empty_theory_categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/empty-theory-categorical--83ab0f9aceb7c99c1be6b10c.md) | 498 | `result-track:83ab0f9aceb7c99c1be6b10c0ef96ac0db35e9a03123eca994ac811f3f603f35` |
| 47 | `theorem` | [empty_infinite_Theory_isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantf6a6b45dec8a408703aee22238326397fe98bd67c1f3d913e75227ac86f2a82f.lean/declarations/empty-infinite-theory-iscomplete--830d3de912789956aa852826.md) | 501 | `result-track:830d3de912789956aa8528261fbfb724ceb24f769dd384a1df4562bd7e547d95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
