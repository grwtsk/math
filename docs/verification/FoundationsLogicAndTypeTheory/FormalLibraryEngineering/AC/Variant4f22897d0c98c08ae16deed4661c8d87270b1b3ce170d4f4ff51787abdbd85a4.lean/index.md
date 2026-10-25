# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AC.Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4fb30e862e29a6a5f4eb47fb4b7fac6a43eb418",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4fb30e862e29a6a5f4eb47fb4b7fac6a43eb418`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/expr--ef5250a0119f90a7f3715a1d.md) | 25 | `declaration-track:ef5250a0119f90a7f3715a1debc612ca20802d3d80ae3190f4acc6f558f76239` |
| 2 | `structure` | [Variable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/variable--ac3b66003e0cf20277ec5c08.md) | 32 | `declaration-track:ac3b66003e0cf20277ec5c085c132a6321e91cd2d20b838746703fd682e8e4c6` |
| 3 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context--a84a5b3ab94a2f6dc6ab150a.md) | 36 | `declaration-track:a84a5b3ab94a2f6dc6ab150a121a365928f325a6dbddc435a69529a319e0bf3c` |
| 4 | `class` | [ContextInformation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/contextinformation--056b60baaca840305d81ba41.md) | 44 | `declaration-track:056b60baaca840305d81ba412d61dd0470cc0107d24fa2e131b9a3b0a337e97e` |
| 5 | `class` | [EvalInformation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/evalinformation--1c668ceba02eea3b481341a9.md) | 49 | `declaration-track:1c668ceba02eea3b481341a9e19a59b2a1b50f3305f2f555089807310df76109` |
| 6 | `def` | [Context.var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-var--eca3946e84070e470e701e60.md) | 54 | `declaration-track:eca3946e84070e470e701e60d3d2caa130afa41ad082420c40ccf109ef28341f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/instance--c1d9a6eca6dab3180e8fef87.md) | 57 | `declaration-track:c1d9a6eca6dab3180e8fef878b28618f08c4c5c47ab2b6c4f12772e78472f21d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/instance--55b4b20ddce631d20c965791.md) | 62 | `declaration-track:55b4b20ddce631d20c965791d204372da3df4e3f33621601de346e79627162a1` |
| 9 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/eval--c781aacaba5ac715116ca820.md) | 67 | `declaration-track:c781aacaba5ac715116ca820d7d276c7073df9064a088fcbab5d4baa3c021f14` |
| 10 | `def` | [Expr.toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/expr-tolist--5108f90298ad97cc1a2da09d.md) | 71 | `declaration-track:5108f90298ad97cc1a2da09d3d3bcac70ce08c317bfad1ba65757fe6e32d2ef5` |
| 11 | `def` | [evalList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/evallist--1067404e0cbc1c2a33b2bedb.md) | 75 | `declaration-track:1067404e0cbc1c2a33b2bedb94b6f884b48a1bef2d8abdd9ee99cf13f6aa5236` |
| 12 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/insert--74064a4525489253cf9d40aa.md) | 80 | `declaration-track:74064a4525489253cf9d40aa2bc8b60c3a6ef30044088e54e0543ca571802a34` |
| 13 | `def` | [sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/sort--a2ba078fe40271bb135cd9ae.md) | 84 | `declaration-track:a2ba078fe40271bb135cd9ae60bfb9ad122e6bc581102373b99fb15fa81a39d3` |
| 14 | `def` | [mergeIdem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/mergeidem--f1adfed53e15948f3d5b2d6e.md) | 90 | `declaration-track:f1adfed53e15948f3d5b2d6e222be02dc3f5685aba8f2acb7b57227423eb5499` |
| 15 | `def` | [removeNeutrals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/removeneutrals--5422401a783a537bf5be056a.md) | 103 | `declaration-track:5422401a783a537bf5be056a8cff64f79af31fc3f42d7dc5cc2c43da27525890` |
| 16 | `def` | [norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/norm--9e163a1f95853b07c464f29f.md) | 116 | `declaration-track:9e163a1f95853b07c464f29f8a5acf26cc5d885f24d559ada82081400488eee1` |
| 17 | `def` | [List.two_step_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/list-two-step-induction--2d1fb0f1737e0d93e2815e3e.md) | 122 | `declaration-track:2d1fb0f1737e0d93e2815e3eefb09538ffe21309f1a7b0490493b727981091b6` |
| 18 | `theorem` | [Context.mergeIdem_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-mergeidem-nonempty--75c6e89c95b10178ade73af8.md) | 133 | `result-track:75c6e89c95b10178ade73af8d145139e7a87429e82d118f63428ccd198c5755b` |
| 19 | `theorem` | [Context.mergeIdem_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-mergeidem-head--51d1d224aef90544ea02239b.md) | 139 | `result-track:51d1d224aef90544ea02239bb6045b04b18e9e68455ef7f12028a4006337069f` |
| 20 | `theorem` | [Context.mergeIdem_head2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-mergeidem-head2--6a79faf098696f94ab89bfdc.md) | 142 | `result-track:6a79faf098696f94ab89bfdce76d35985f821a99dd7366dd44f40a7eacd2d8a6` |
| 21 | `theorem` | [Context.evalList_mergeIdem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-mergeidem--a8dd114b4f450508efab405e.md) | 145 | `result-track:a8dd114b4f450508efab405e245dc292f353319e14912bd190b98051d22c379b` |
| 22 | `theorem` | [insert_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/insert-nonempty--bc3358e7795919f06caaa59f.md) | 182 | `result-track:bc3358e7795919f06caaa59fbebc0108ee8eb05a24be61a2f11be0c2d459df6a` |
| 23 | `theorem` | [Context.sort_loop_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-sort-loop-nonempty--add6ca3df4defb4c53ddcf12.md) | 187 | `result-track:add6ca3df4defb4c53ddcf1286f9b3b6f9c352b22f42ee26244e83a15b3bdca6` |
| 24 | `theorem` | [Context.evalList_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-insert--7ad3cb9cf7066e0637b55ef1.md) | 192 | `result-track:7ad3cb9cf7066e0637b55ef10f76b2c8e0b8e4f9bf8d579c9df3a408804a26d5` |
| 25 | `theorem` | [Context.evalList_sort_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-sort-congr--890c6d31ee64915e949d5128.md) | 213 | `result-track:890c6d31ee64915e949d5128978df900c9f968764f32f657cb7a7be202ebfa0f` |
| 26 | `theorem` | [Context.evalList_sort_loop_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-sort-loop-swap--6f2c6ae156f9f4e78e6f187a.md) | 232 | `result-track:6f2c6ae156f9f4e78e6f187aec076471a25d347c39ac13646ea1f91cb01b284c` |
| 27 | `theorem` | [Context.evalList_sort_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-sort-cons--f22ea46dad440c66eed5e6ed.md) | 247 | `result-track:f22ea46dad440c66eed5e6ed59b8af9a374bc8b0403539289341bd6a8f8f3311` |
| 28 | `theorem` | [Context.evalList_sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-sort--17d2ab38e0def20cbd16f8ed.md) | 271 | `result-track:17d2ab38e0def20cbd16f8ed8fe97b9052cbe5bae4b6491abb40b1ded2f1a4c9` |
| 29 | `theorem` | [Context.toList_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-tolist-nonempty--4b9469ae01df6310cf1a41b9.md) | 289 | `result-track:4b9469ae01df6310cf1a41b92966043e48d41446e949b88386fa126ed01b04e2` |
| 30 | `theorem` | [Context.unwrap_isNeutral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-unwrap-isneutral--2390bae91924454ced6b3f94.md) | 298 | `result-track:2390bae91924454ced6b3f9419ba4e386341f01552f8a2ec762283af84fe59d5` |
| 31 | `theorem` | [Context.evalList_removeNeutrals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-removeneutrals--0fb5f6e5f66d3b2b7df5a124.md) | 309 | `result-track:0fb5f6e5f66d3b2b7df5a124d8cf6fd6f17e1a37092bdf5fd92d4e5178b107fa` |
| 32 | `theorem` | [Context.evalList_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-evallist-append--fd8cdfa112ab2941ead06f3f.md) | 324 | `result-track:fd8cdfa112ab2941ead06f3fb80541888e3ac95b733db27ef366364be4fda8b2` |
| 33 | `theorem` | [Context.eval_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-eval-tolist--109614fc3e73b781e3652433.md) | 338 | `result-track:109614fc3e73b781e36524337de2594d15d68bc32988843547f93dce499b830a` |
| 34 | `theorem` | [Context.eval_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-eval-norm--2f8ba7e968d94c31113daff7.md) | 345 | `result-track:2f8ba7e968d94c31113daff784afa431eb623ad0c88dec9833aec20aeb6673d5` |
| 35 | `theorem` | [Context.eq_of_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant4f22897d0c98c08ae16deed4661c8d87270b1b3ce170d4f4ff51787abdbd85a4.lean/declarations/context-eq-of-norm--a08db910c9d9ac1969d04612.md) | 350 | `result-track:a08db910c9d9ac1969d04612435cb531f715e0dae632baa47f2a35df91e7d63e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
