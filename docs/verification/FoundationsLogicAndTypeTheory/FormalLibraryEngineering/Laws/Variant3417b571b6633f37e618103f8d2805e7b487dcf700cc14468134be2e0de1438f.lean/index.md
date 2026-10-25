# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Laws.Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f40eb1073cd917614bb94682f91493f34c0374b5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f40eb1073cd917614bb94682f91493f34c0374b5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Semantics` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equivalent_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-refl--ed32f63bff5152c039a4995a.md) | 19 | `result-track:ed32f63bff5152c039a4995a12e787c36a1859381a01e7bc17d55bbd266c86bb` |
| 2 | `theorem` | [equivalent_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-symm--c62bdac6d4f92b7682fb838f.md) | 24 | `result-track:c62bdac6d4f92b7682fb838f56fecac378764101a68690409953d3c4bf068d35` |
| 3 | `theorem` | [equivalent_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-trans--e3649da25bb5dbd0f14a55e8.md) | 29 | `result-track:e3649da25bb5dbd0f14a55e8e32799f9b710204b534dd5f260f84ab1bb46783e` |
| 4 | `theorem` | [entails_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/entails-refl--dc984790d6eab3394a1f464a.md) | 35 | `result-track:dc984790d6eab3394a1f464af4dd937ca8f12c7f6af2ad4e5cd8459ec8998352` |
| 5 | `theorem` | [entails_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/entails-trans--6ca1116a1fdca5aa19a72193.md) | 40 | `result-track:6ca1116a1fdca5aa19a721932250f75346bcdde074161aa1b833d57e9ed97831` |
| 6 | `theorem` | [entails_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/entails-of-equivalent--d83bed14de30ee3a3e05f655.md) | 46 | `result-track:d83bed14de30ee3a3e05f655dfe89aa70e71654b7c239f42c8b3ac2378ed1678` |
| 7 | `theorem` | [valid_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-of-equivalent--6ed0bf7845eeef58c0bfafa8.md) | 52 | `result-track:6ed0bf7845eeef58c0bfafa8eb4f48e907191c5f8ab884c1ebce38b1b237a5aa` |
| 8 | `theorem` | [satisfiable_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/satisfiable-of-equivalent--b35435e2c456c01bda9dac1d.md) | 58 | `result-track:b35435e2c456c01bda9dac1d51aa02af6b563159be77f287dcea4c8762f0584f` |
| 9 | `theorem` | [unsatisfiable_of_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/unsatisfiable-of-equivalent--88bab2bab6ca96da723bbf13.md) | 66 | `result-track:88bab2bab6ca96da723bbf13e56fab87f61f4a880642d456b86abf49a63fe2c9` |
| 10 | `theorem` | [equivalent_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-neg--d2a9d7e4347d71b6465da940.md) | 72 | `result-track:d2a9d7e4347d71b6465da94066f47508d05c86b87035d6b1ba609a072b52d6d0` |
| 11 | `theorem` | [equivalent_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-conj--1cb21416c6d41a104d6fa469.md) | 77 | `result-track:1cb21416c6d41a104d6fa469747cb3b0aa3f39bb22f2930c34faac72e915a7a6` |
| 12 | `theorem` | [equivalent_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-disj--c42101431c4a617909e00fce.md) | 83 | `result-track:c42101431c4a617909e00fceda31e088cad31304a2b89afbb1fa5e2367d5f834` |
| 13 | `theorem` | [equivalent_impl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-impl--1e8271cb2c6eaf1f79245819.md) | 89 | `result-track:1e8271cb2c6eaf1f79245819fe1b5574276f2de877f46f53cdb81b850347bbe3` |
| 14 | `theorem` | [equivalent_eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-eqv--e272baafc4000855d79a176e.md) | 95 | `result-track:e272baafc4000855d79a176e13498436c3e9150a2b4af2017c52ce9c38fc2eb3` |
| 15 | `theorem` | [valid_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-truth--d3efe6a882f392d72265533f.md) | 101 | `result-track:d3efe6a882f392d72265533fa3935bcadda9244ebab9ceac0b15306d40fbdcac` |
| 16 | `theorem` | [unsatisfiable_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/unsatisfiable-falsum--7ea757f9c6ae4c3308706815.md) | 106 | `result-track:7ea757f9c6ae4c33087068154dd9e1209fdfe580105de065abbc734daab63d9d` |
| 17 | `theorem` | [satisfiable_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/satisfiable-truth--dedc8e4138682f650741ee9a.md) | 111 | `result-track:dedc8e4138682f650741ee9a97d0921ff30ef3a0db0a262da32193403c9d67f0` |
| 18 | `theorem` | [not_satisfiable_falsum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/not-satisfiable-falsum--1447c3f7bad651dcfef5bed7.md) | 115 | `result-track:1447c3f7bad651dcfef5bed7cf408008c7f1968a542a17e1477d43f226313840` |
| 19 | `theorem` | [satisfiable_of_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/satisfiable-of-valid--d466ad24aac3d6aa96beefa9.md) | 121 | `result-track:d466ad24aac3d6aa96beefa94aa86f3aa966792c906c36709f6959964702f4db` |
| 20 | `theorem` | [valid_neg_of_unsatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-neg-of-unsatisfiable--30e88db7dc7edc29fe953096.md) | 125 | `result-track:30e88db7dc7edc29fe953096fc78219a3dfce40022eaaadbf9c79d7788e0b269` |
| 21 | `theorem` | [unsatisfiable_of_valid_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/unsatisfiable-of-valid-neg--8fba7c6e94a14f9eca07aaca.md) | 130 | `result-track:8fba7c6e94a14f9eca07aaca2a1ce62a0d9beb91822480faeafdd62a4566cddc` |
| 22 | `theorem` | [valid_neg_iff_unsatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-neg-iff-unsatisfiable--44ee48628788e069ad87ac89.md) | 140 | `result-track:44ee48628788e069ad87ac891b08fab6c078c80747324c7032781ba0d8de3f77` |
| 23 | `theorem` | [unsatisfiable_iff_not_satisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/unsatisfiable-iff-not-satisfiable--bd7cff83cbd47c49bdfff6a0.md) | 148 | `result-track:bd7cff83cbd47c49bdfff6a0ae63be9d4fb5a17a6f640c2e465f658ee5b5cf2c` |
| 24 | `theorem` | [valid_iff_not_satisfiable_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-iff-not-satisfiable-neg--ac636c2cf19d6d3f4f2e5962.md) | 162 | `result-track:ac636c2cf19d6d3f4f2e5962f766409b3e295bf2dffb78c74fd3d6197637f494` |
| 25 | `theorem` | [equivalent_double_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-double-neg--2df1eebb9d3ae6adfad9f070.md) | 177 | `result-track:2df1eebb9d3ae6adfad9f070532e983aa0f236835f2f0c274ee07b3854033c72` |
| 26 | `theorem` | [equivalent_conj_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-conj-comm--7a080e203a1a201fad69f881.md) | 182 | `result-track:7a080e203a1a201fad69f8815c5272dfb9f9d6d7672f8feab8c6c876108cb8ec` |
| 27 | `theorem` | [equivalent_disj_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-disj-comm--54b2887423873dd3e292bc69.md) | 187 | `result-track:54b2887423873dd3e292bc69616da844363c2c5e34883ca9540f8b6f2d321f33` |
| 28 | `theorem` | [equivalent_conj_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-conj-assoc--3f5b39952bb82995538ee148.md) | 192 | `result-track:3f5b39952bb82995538ee1480b6b7637d302188c4b13cba9e77e03588284e306` |
| 29 | `theorem` | [equivalent_disj_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-disj-assoc--722b87d2f6d7d1e48efc78d5.md) | 200 | `result-track:722b87d2f6d7d1e48efc78d50d4622da4d1b9fd0515324423bcf766ebbec923c` |
| 30 | `theorem` | [equivalent_impl_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-impl-disj--dfe8145dbf2b0a99656a1c9a.md) | 208 | `result-track:dfe8145dbf2b0a99656a1c9a7980045d4f8f74ac4cff31d7b7db6f565f09eb2a` |
| 31 | `theorem` | [equivalent_deMorgan_conj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-demorgan-conj--29063d7c197dc28b27d4d183.md) | 213 | `result-track:29063d7c197dc28b27d4d1832735571e5a8f7cd8061874b6358a7dee4731cb20` |
| 32 | `theorem` | [equivalent_deMorgan_disj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/equivalent-demorgan-disj--b0f2efeabbda547e96900d78.md) | 218 | `result-track:b0f2efeabbda547e96900d7817de56641580a53b78891e78492918d24f6a0294` |
| 33 | `theorem` | [valid_impl_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-impl-refl--ccf5255b488614e48c41b59a.md) | 223 | `result-track:ccf5255b488614e48c41b59af73ac16b9faa1cbe00d4235bbc3416c2de424555` |
| 34 | `theorem` | [valid_eqv_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant3417b571b6633f37e618103f8d2805e7b487dcf700cc14468134be2e0de1438f.lean/declarations/valid-eqv-refl--37b284c751b78ab0d4a0d88b.md) | 228 | `result-track:37b284c751b78ab0d4a0d88b268abe5a7603e50d73b020807e4eedb41258c6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
