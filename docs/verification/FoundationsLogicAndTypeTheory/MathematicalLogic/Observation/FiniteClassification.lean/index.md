# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.FiniteClassification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a871da55bab141b1f6ab8617872291cffd60b04",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a871da55bab141b1f6ab8617872291cffd60b04`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.SupportedClaims`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Outcome](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/outcome--6eaa9ae58947747ff29cb656.md) | 38 | `declaration-track:6eaa9ae58947747ff29cb656b5a9f3c0cf4dbfb7b609c95bc4e1cded6d163ae5` |
| 2 | `structure` | [Flags](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags--f39e61ef371f1e86d8043075.md) | 46 | `declaration-track:f39e61ef371f1e86d8043075acdc699aed18be67b3701e1c48685394c3ec9ead` |
| 3 | `def` | [Flags.classify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags-classify--2c9c826988b30d8bdc14c0d2.md) | 51 | `declaration-track:2c9c826988b30d8bdc14c0d2eef205ffa3c795a29e8d02daf128ff472551a99a` |
| 4 | `theorem` | [Flags.eq_of_fields](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags-eq-of-fields--b1fa03aa5f07384593a6d98c.md) | 58 | `result-track:b1fa03aa5f07384593a6d98cb45a49b0d22778f9b2c121089a1742ae1b5215b3` |
| 5 | `theorem` | [Flags.classify_supported_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags-classify-supported-iff--c74f94b738c50455924d9ea4.md) | 69 | `result-track:c74f94b738c50455924d9ea4c2cdcf784b8541fce5a8e02090ad7c84249b30d7` |
| 6 | `theorem` | [Flags.classify_refuted_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags-classify-refuted-iff--7f8666f052b1f4c16d8eea9f.md) | 90 | `result-track:7f8666f052b1f4c16d8eea9f1de8e7e1bcb46acc3ea73ba4eea1997b6246e98f` |
| 7 | `theorem` | [Flags.classify_ambiguous_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags-classify-ambiguous-iff--2dfa39f4e7b2f4b0385605f6.md) | 111 | `result-track:2dfa39f4e7b2f4b0385605f6be9f5afde0215e7dfe75c21caeac26354109b38f` |
| 8 | `theorem` | [Flags.classify_model_mismatch_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/flags-classify-model-mismatch-iff--c34d64c5b7f8f00bc409f824.md) | 132 | `result-track:c34d64c5b7f8f00bc409f8246aa4b8535206120e73d055d4a5dff14f1758b9db` |
| 9 | `theorem` | [any_true_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/any-true-iff--9aa494760b3bd38c2cc04809.md) | 156 | `result-track:9aa494760b3bd38c2cc048091faec435def9ad7e72c090583b0a818c0d8ce0a2` |
| 10 | `def` | [ListedAdmissible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/listedadmissible--81d7cb176826fa5b36753c73.md) | 197 | `declaration-track:81d7cb176826fa5b36753c7373f20bb2f314fd8ebce859fc1b786daf7457bec1` |
| 11 | `def` | [CoversFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/coversfiber--fbb9904b2b5a7c85e842a0f6.md) | 203 | `declaration-track:fbb9904b2b5a7c85e842a0f67c5c9b0e3868eee9da8af13710c7dbaf04e2fede` |
| 12 | `theorem` | [coversFiber_of_admissible_enumeration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/coversfiber-of-admissible-enumeration--9a04d94565cf74a5acc0814d.md) | 208 | `result-track:9a04d94565cf74a5acc0814dc24164ab47dd7ca05a9830bb0e79de1656d4e3ed` |
| 13 | `theorem` | [listed_nonempty_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/listed-nonempty-iff--c8b9687e46303324dc1c0588.md) | 215 | `result-track:c8b9687e46303324dc1c05885fbd1338c7923ed97f11479a6f90a156d5d3662c` |
| 14 | `theorem` | [listed_support_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/listed-support-iff--8fda6c31fbf1d297499dd283.md) | 228 | `result-track:8fda6c31fbf1d297499dd28378711e03deb7b638f74b3e839e494731a319524a` |
| 15 | `theorem` | [listed_refutation_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/listed-refutation-iff--a03f99d579d92fdc92a98f42.md) | 243 | `result-track:a03f99d579d92fdc92a98f429def4c0e1648d004198de98f12c8db5b2c9d6877` |
| 16 | `def` | [scan](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/scan--55ba98a635cf6a93c40c6954.md) | 259 | `declaration-track:55ba98a635cf6a93c40c6954ef15d80b02f153cd98579a43093d371b33810a77` |
| 17 | `def` | [classify](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify--40b6e6c99b7ded460e74fd27.md) | 263 | `declaration-track:40b6e6c99b7ded460e74fd2734143a0fdb8cbd1294a52421418a96a8d5b6e039` |
| 18 | `theorem` | [scan_positive_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/scan-positive-iff--bd3d36a69a75be2e52cbdd1e.md) | 266 | `result-track:bd3d36a69a75be2e52cbdd1ecc388aac3e8540171a2424754044767d38321dea` |
| 19 | `theorem` | [scan_negative_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/scan-negative-iff--016fad68ca9045059555b4b3.md) | 283 | `result-track:016fad68ca9045059555b4b39c2ad746831fca51805a9db5168cafd041503c01` |
| 20 | `theorem` | [scan_positive_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/scan-positive-false-iff--fe588839322cbbdb60dcaf1b.md) | 300 | `result-track:fe588839322cbbdb60dcaf1b37c4a58f5ad3c37a5d9da6755682df389a4e804e` |
| 21 | `theorem` | [scan_negative_false_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/scan-negative-false-iff--5aaefdc9f159be84493fefb8.md) | 315 | `result-track:5aaefdc9f159be84493fefb870ef6f2bbbd14a1c6f24f7259b1612f7b60a819a` |
| 22 | `theorem` | [classify_supported_iff_listed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-supported-iff-listed--3e3cfb936de17127eea85cb1.md) | 334 | `result-track:3e3cfb936de17127eea85cb1e3372e1f3479ea7a95eb7ac8e674dac2597c8a20` |
| 23 | `theorem` | [classify_refuted_iff_listed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-refuted-iff-listed--b75ac5a622442ee9cad9d530.md) | 358 | `result-track:b75ac5a622442ee9cad9d530024a4aa380aa9058403880356d95e073a7ac8646` |
| 24 | `theorem` | [classify_model_mismatch_iff_listed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-model-mismatch-iff-listed--ed07078aaffd74b3ea6f7449.md) | 382 | `result-track:ed07078aaffd74b3ea6f7449b3975b75adbee96cc8ad1c0ab4726e65b5b538b8` |
| 25 | `theorem` | [classify_ambiguous_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-ambiguous-iff--3b40fe33c05087842cf1a2b3.md) | 408 | `result-track:3b40fe33c05087842cf1a2b365b61c624666abb5e2b9c11664cdda5bd6379497` |
| 26 | `theorem` | [classify_ambiguous_no_certainty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-ambiguous-no-certainty--2fbf6870df804b73933c35ba.md) | 423 | `result-track:2fbf6870df804b73933c35ba338810a490be9f8caf6924b80563c7002a42881e` |
| 27 | `theorem` | [classify_supported_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-supported-iff--85f8b8c734b193e3049359f6.md) | 434 | `result-track:85f8b8c734b193e3049359f657c58b78399ed0be0dfc91c891fbda0c161e95b0` |
| 28 | `theorem` | [classify_refuted_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-refuted-iff--e0f419e22ffaa4a20273ccfe.md) | 441 | `result-track:e0f419e22ffaa4a20273ccfe86b6aef7c74f3dc3afc04a77c0aa04bfe767a875` |
| 29 | `theorem` | [classify_model_mismatch_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-model-mismatch-iff--928dbe27f6d3a0e9d466c357.md) | 448 | `result-track:928dbe27f6d3a0e9d466c357041ee6ea99966f76d34032154c1c7b72c0d2474c` |
| 30 | `theorem` | [classified_support_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classified-support-sound--499f89264d1ee671dc4be52f.md) | 464 | `result-track:499f89264d1ee671dc4be52f1916f47bebf44fa2476fe5af0ed7ca63715f456a` |
| 31 | `theorem` | [empty_inventory_model_mismatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/empty-inventory-model-mismatch--067a942c792298a79dfa31d8.md) | 473 | `result-track:067a942c792298a79dfa31d80cd702990329b7aec771429d95aa8bb1f664d5e9` |
| 32 | `theorem` | [empty_inventory_no_certainty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/empty-inventory-no-certainty--27ec0a38285b8083af09777c.md) | 478 | `result-track:27ec0a38285b8083af09777ce54b54ba2a8ba1a3984bb241c33f1efc3e148c2f` |
| 33 | `theorem` | [scan_inventory_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/scan-inventory-congr--9ea155907beb5bfb36f52a95.md) | 489 | `result-track:9ea155907beb5bfb36f52a95bd5822b68d54de9254e05e3d95fe5ea4d51af262` |
| 34 | `theorem` | [classify_inventory_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classify-inventory-congr--0514dcc9875535e6b13f6f45.md) | 527 | `result-track:0514dcc9875535e6b13f6f45cdc0883a193508885a67ee04711f6ef29ae8d0d2` |
| 35 | `structure` | [Row](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/row--0791d311ac71ba86bb8ae58f.md) | 538 | `declaration-track:0791d311ac71ba86bb8ae58f2f60ac72a839f922accea555f74c7afe167c8921` |
| 36 | `def` | [classifyRows](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classifyrows--91f988c47182626aefbca71b.md) | 546 | `declaration-track:91f988c47182626aefbca71b587d542c1e07ef1bedb6b45b32b936f673c8c66e` |
| 37 | `theorem` | [classifyRows_supported_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/classifyrows-supported-iff--231edebbba3d749f0f78bd16.md) | 550 | `result-track:231edebbba3d749f0f78bd161f5a78ca9d82abf3a69e6dfc3ec9b1d2c43104d9` |
| 38 | `abbrev` | [admitted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/admitted--d359f0ffbbd5522bb32becfb.md) | 559 | `declaration-track:d359f0ffbbd5522bb32becfbe50f5caa002a75191e4e25537b0b594c0050ff92` |
| 39 | `def` | [lostReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/lostreceipt--c0b1edee8f5a46d442dafd30.md) | 561 | `declaration-track:c0b1edee8f5a46d442dafd300cad7f3f7bde6c8971e2dc066a5782a662fc1885` |
| 40 | `abbrev` | [occurred](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/occurred--37b32adb21e4c4994c2fd76f.md) | 563 | `declaration-track:37b32adb21e4c4994c2fd76f1c9a8ba891ebbcdd2dcacff8570f73c9ac4c5d32` |
| 41 | `def` | [completeInventory](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/completeinventory--73199ceac04a213d684cf834.md) | 565 | `declaration-track:73199ceac04a213d684cf834a262dbfc1f84be02c077129874697ac16d4f2f5d` |
| 42 | `theorem` | [complete_inventory_covers](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/complete-inventory-covers--b36e9a70d23596478e13d22b.md) | 567 | `result-track:b36e9a70d23596478e13d22bc7d985af7ca499c29c52904c3d60e068844b14ae` |
| 43 | `theorem` | [supported_control](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/supported-control--57ec3d095e5686168eae6e4d.md) | 574 | `result-track:57ec3d095e5686168eae6e4d42fa10e374c9063770c7cddf742794f517fe1afd` |
| 44 | `theorem` | [refuted_control](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/refuted-control--8f76a6594c533fbfdcf53d70.md) | 577 | `result-track:8f76a6594c533fbfdcf53d70e8804aeefb218c3f0777b113f4926e9e7b215e86` |
| 45 | `theorem` | [ambiguous_control](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/ambiguous-control--9a942a2d116a55eaeb9a97e0.md) | 580 | `result-track:9a942a2d116a55eaeb9a97e0e9c6418d5d5e659b434dc5ffd6b90facde1de60b` |
| 46 | `theorem` | [model_mismatch_control](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/model-mismatch-control--d075471011b4c3741bacc2f4.md) | 583 | `result-track:d075471011b4c3741bacc2f4b8c04468d43c5b883cb1060d0e9216a9d1f18c66` |
| 47 | `theorem` | [different_view_ignored](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/different-view-ignored--4d8124f57ac51fa41c505eb9.md) | 586 | `result-track:4d8124f57ac51fa41c505eb9625e18515405fb10f08b76c5125b215961728007` |
| 48 | `theorem` | [inadmissible_trace_ignored](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/inadmissible-trace-ignored--15900093f24cfcb25edcbb14.md) | 589 | `result-track:15900093f24cfcb25edcbb144af0d2f978aea3f662ef5c52f51a404ed5c4b4f1` |
| 49 | `theorem` | [omission_can_report_list_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/omission-can-report-list-support--d67250e30c799e2f91250a67.md) | 594 | `result-track:d67250e30c799e2f91250a67a44a46b981746f2114194bc76bb8f237338a69eb` |
| 50 | `theorem` | [omitted_counterexample_breaks_coverage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/omitted-counterexample-breaks-coverage--813bd9cd3a86386ad4a6a342.md) | 603 | `result-track:813bd9cd3a86386ad4a6a342f18c060299420f9bfe8827443db7ae711b8d3cf5` |
| 51 | `theorem` | [empty_inventory_can_miss_real_fiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/empty-inventory-can-miss-real-fiber--a8b7cf74a7ca7392e7d73149.md) | 616 | `result-track:a8b7cf74a7ca7392e7d73149b8908d8b371b2f36d494c599d86ea0f155e127b8` |
| 52 | `theorem` | [repeated_and_reordered_inventory](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean/declarations/repeated-and-reordered-inventory--98f7c41687bf6f969e629cf6.md) | 621 | `result-track:98f7c41687bf6f969e629cf6411bab1b8094eba05da35ef93b703dcd4b61a2d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
