# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9c997c21c09b5ae81fc02d229959045b3f34503",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9c997c21c09b5ae81fc02d229959045b3f34503`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Content` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Divisible` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Compact` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index--bf930ac54d8f4993bf7b783f.md) | 104 | `declaration-track:bf930ac54d8f4993bf7b783fb918f3cba598ee8e63908375d04168a554713e6f` |
| 2 | `theorem` | [index_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-empty--3f5fd6960a16daf2e1876676.md) | 110 | `result-track:3f5fd6960a16daf2e18766768881b298e826c9273b6e1d7ea6b8c247d6460862` |
| 3 | `def` | [prehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar--59260a11317d195847dd1e3f.md) | 124 | `declaration-track:59260a11317d195847dd1e3f09e2ecefd8012da7895088f7ba5d2dbe9ff74bb3` |
| 4 | `theorem` | [prehaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-empty--0a3258d019c754f737df44f6.md) | 130 | `result-track:0a3258d019c754f737df44f6da7af38b2e0ba0ada8b23434d8fc2662ab6922b9` |
| 5 | `theorem` | [prehaar_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-nonneg--638b952e5520cdedf84671bb.md) | 136 | `result-track:638b952e5520cdedf84671bbe87dac71149eaf1715c1e4f344bec6d89422e3db` |
| 6 | `def` | [haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarproduct--83d96a4fc037aa535622a290.md) | 144 | `declaration-track:83d96a4fc037aa535622a2902219428e3f2acc60568603b3a6c9dc81cc6b9ba7` |
| 7 | `theorem` | [mem_prehaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/mem-prehaar-empty--da7e87d8b153bc35aed37fff.md) | 150 | `result-track:da7e87d8b153bc35aed37fffcd3eb5fda0333dc74a5aa87a7d2a763760e78616` |
| 8 | `def` | [clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/clprehaar--c7dc122bf2e76e9f03436c4f.md) | 162 | `declaration-track:c7dc122bf2e76e9f03436c4f39d8a2df46e9b0f5374f87359a4421c49d6281f1` |
| 9 | `theorem` | [index_defined](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-defined--654d19935947922af1221e76.md) | 179 | `result-track:654d19935947922af1221e76bba9ec24434896d41569cb2e955bda1f7044811a` |
| 10 | `theorem` | [index_elim](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-elim--88c43d93719f96b5d94b9ad3.md) | 186 | `result-track:88c43d93719f96b5d94b9ad3cec844f98a5834c53355e62e320d70ab3ed48052` |
| 11 | `theorem` | [le_index_mul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/le-index-mul--d2e61a5b81cfdc38602121d9.md) | 193 | `result-track:d2e61a5b81cfdc38602121d9fea74b281373ca773acf189a94969c5e73d6e4f5` |
| 12 | `theorem` | [index_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-pos--a56a73b75ae9ebe763f6f5a2.md) | 209 | `result-track:a56a73b75ae9ebe763f6f5a206c9468ac35a4af7566f1af7e89bdb6eefc169d2` |
| 13 | `theorem` | [index_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-mono--12e042d6c541aac419a75998.md) | 222 | `result-track:12e042d6c541aac419a75998f09424cd2252b32396fe7bc9dadbb6dbe6936e8b` |
| 14 | `theorem` | [index_union_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-union-le--3a58cd096019341fedad9351.md) | 230 | `result-track:3a58cd096019341fedad935105eef9be244ddfc6473696f7948b47829022346e` |
| 15 | `theorem` | [index_union_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/index-union-eq--fe70823309c13f09f630c434.md) | 244 | `result-track:fe70823309c13f09f630c43460e8b05bd2069dee9684578b28d6d3660cd900d6` |
| 16 | `theorem` | [mul_left_index_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/mul-left-index-le--09eaaf55208cdade134e8e19.md) | 279 | `result-track:09eaaf55208cdade134e8e19768c277a76a729a358600171d11724aa4f308f4d` |
| 17 | `theorem` | [is_left_invariant_index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/is-left-invariant-index--53c136f48a7473df1bca4ed4.md) | 294 | `result-track:53c136f48a7473df1bca4ed457c5be41b22b60e0c094af56e119500d0f4b4859` |
| 18 | `theorem` | [prehaar_le_index](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-le-index--6c7b286829791e557a863369.md) | 308 | `result-track:6c7b286829791e557a8633699cb65e185e3acf786fb7af1292f2b5317d98dbca` |
| 19 | `theorem` | [prehaar_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-pos--c2e8acc5d4cd208a65aa08ae.md) | 317 | `result-track:c2e8acc5d4cd208a65aa08ae16104988577e9aa9bb7268ee0f735bc942e7161f` |
| 20 | `theorem` | [prehaar_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-mono--d219306a8ca2c7047adb7ddf.md) | 324 | `result-track:d219306a8ca2c7047adb7ddfd32474f8444770b83ff6f9ea2449f10451574620` |
| 21 | `theorem` | [prehaar_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-self--0693e574534db93150acc1f6.md) | 333 | `result-track:0693e574534db93150acc1f6770f1c6cf2a100d6089ed4b51fd48ef8db1911a4` |
| 22 | `theorem` | [prehaar_sup_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-sup-le--0936064bc8ed9ec18add8fec.md) | 340 | `result-track:0936064bc8ed9ec18add8fec695387b12351572937d5d257925e6693a75b23c1` |
| 23 | `theorem` | [prehaar_sup_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-sup-eq--918fa033f0197ceaa6ce6f28.md) | 349 | `result-track:918fa033f0197ceaa6ce6f287aae7db45ea73d8815f8d2a2ae2307fed4508fa7` |
| 24 | `theorem` | [is_left_invariant_prehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/is-left-invariant-prehaar--28ad18da5a40354cec01c32f.md) | 360 | `result-track:28ad18da5a40354cec01c32f52e0b7b970e5825dedb03ef84b58cbaf7d112078` |
| 25 | `theorem` | [prehaar_mem_haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/prehaar-mem-haarproduct--194f40ca87bf55ee3bdab005.md) | 372 | `result-track:194f40ca87bf55ee3bdab00561ff031f3dae70e39fc21b1ba77fa7eeee2bfb60` |
| 26 | `theorem` | [nonempty_iInter_clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/nonempty-iinter-clprehaar--f29db46f9b895a36a3409233.md) | 379 | `result-track:f29db46f9b895a36a34092339f07ff92af87aa4182a0bc748c4f76cb1b0a73ec` |
| 27 | `def` | [chaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar--002eea0496c0367caad7123e.md) | 413 | `declaration-track:002eea0496c0367caad7123e6aed755675f9e8b6db1bef487905bab2b5ec49e6` |
| 28 | `theorem` | [chaar_mem_haarProduct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-mem-haarproduct--e4f8d28e116586bed1574829.md) | 419 | `result-track:e4f8d28e116586bed15748290b2815c309708f8c2f67795f673c802127cef9bd` |
| 29 | `theorem` | [chaar_mem_clPrehaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-mem-clprehaar--2fcd530c38c120c45024777a.md) | 425 | `result-track:2fcd530c38c120c45024777aff84d8d7074e296152d72aa2201246e6641f21d3` |
| 30 | `theorem` | [chaar_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-nonneg--535de6ded0da1fca2aa4d886.md) | 433 | `result-track:535de6ded0da1fca2aa4d886470b4dcb207e254b11bdd759757c4e41d75d22c1` |
| 31 | `theorem` | [chaar_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-empty--a07826629df81db2cb4cec0d.md) | 439 | `result-track:a07826629df81db2cb4cec0de5d29caeee5ca4821c809f992b5848049f1eacd7` |
| 32 | `theorem` | [chaar_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-self--8fa70f5645c028fc88ab4911.md) | 451 | `result-track:8fa70f5645c028fc88ab49110538be3b553d9e891ea860871b1faef07bc90626` |
| 33 | `theorem` | [chaar_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-mono--ae87a0ebf925093c7844798b.md) | 464 | `result-track:ae87a0ebf925093c7844798b2724c6795a6ad019bddace7d9803be51a31eebd1` |
| 34 | `theorem` | [chaar_sup_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-sup-le--1a6eb64357ae3d617eb470f4.md) | 478 | `result-track:1a6eb64357ae3d617eb470f485df025bb7ca3df235543decb6f32ca476ab6b1a` |
| 35 | `theorem` | [chaar_sup_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/chaar-sup-eq--4199a505dae0beb3b0f55863.md) | 493 | `result-track:4199a505dae0beb3b0f55863d7ad9b5213588bcec4e3280159de1d7f1df5f673` |
| 36 | `theorem` | [is_left_invariant_chaar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/is-left-invariant-chaar--a20d2b443058c335e6872a0f.md) | 527 | `result-track:a20d2b443058c335e6872a0f67d1b6383acebe1b826cacb0ac3583dc0c4991dd` |
| 37 | `def` | [haarContent](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarcontent--d9fa249d77e65b2b346e4634.md) | 549 | `declaration-track:d9fa249d77e65b2b346e46344a2ed113dfd7a13f75009cc030bbde01ce8fed58` |
| 38 | `theorem` | [haarContent_apply](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarcontent-apply--b82e5919628a8d36fb730a44.md) | 563 | `result-track:b82e5919628a8d36fb730a44121527d66482a2bc7a79af45f1371a7000a064fc` |
| 39 | `theorem` | [haarContent_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarcontent-self--74e7645a6618e10b224ad6ee.md) | 571 | `result-track:74e7645a6618e10b224ad6eeb17aafb9765803820b00757e93f69c65e39dd3df` |
| 40 | `theorem` | [is_left_invariant_haarContent](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/is-left-invariant-haarcontent--a97392ee674fea51e92af9bb.md) | 578 | `result-track:a97392ee674fea51e92af9bb4bc2297d81e4eb9eddc0a59420001d88e364db0b` |
| 41 | `theorem` | [haarContent_outerMeasure_self_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarcontent-outermeasure-self-pos--4237dd4b7d370fc1e388d660.md) | 586 | `result-track:4237dd4b7d370fc1e388d66046a0f23da1c8decdd758af2b1b0e5d53223c484a` |
| 42 | `def` | [haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarmeasure--562b5d9e8e9a2fd0b5e87994.md) | 614 | `declaration-track:562b5d9e8e9a2fd0b5e879944bde6c8501e368cb4708de3f1afc9c9b10d26008` |
| 43 | `theorem` | [haarMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarmeasure-apply--97f09ba6d4f89057d035d2c3.md) | 620 | `result-track:97f09ba6d4f89057d035d2c3897390e41e88fdab1db013a1a8606e0baccbcc81` |
| 44 | `instance` | [isMulLeftInvariant_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/ismulleftinvariant-haarmeasure--8265b1bc9ea48f8068cb0cd7.md) | 628 | `declaration-track:8265b1bc9ea48f8068cb0cd727e29daf9de287fd92bf203f9bf3e134dc3b68f0` |
| 45 | `theorem` | [haarMeasure_self](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarmeasure-self--e35f908ec6cc7953cbecd0c2.md) | 641 | `result-track:e35f908ec6cc7953cbecd0c2ed7d46236bbb5ac7c9bc7a425735787d65c79fc1` |
| 46 | `instance` | [regular_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/regular-haarmeasure--f48a6e96d2175abbb16b5503.md) | 651 | `declaration-track:f48a6e96d2175abbb16b550328901153ee659800d183019114c5400557d9e1ce` |
| 47 | `instance` | [sigmaFinite_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/sigmafinite-haarmeasure--5c661e31998b014da9b5e17a.md) | 661 | `declaration-track:5c661e31998b014da9b5e17a38e4fec56e63622254394ead91e58686abc5c8f1` |
| 48 | `instance` | [isHaarMeasure_haarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/ishaarmeasure-haarmeasure--656cf568598b3ceff20d18cb.md) | 672 | `declaration-track:656cf568598b3ceff20d18cbe6d09f032c1d3c678739b126cd57794261ff5195` |
| 49 | `def` | [haar](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haar--e12dcafedb729a4dc963a7c2.md) | 684 | `declaration-track:e12dcafedb729a4dc963a7c20c035a68cb954dac6339e4530e7b9dc520d41caa` |
| 50 | `theorem` | [haarMeasure_unique](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/haarmeasure-unique--b88dde97264ed65a5970f305.md) | 701 | `result-track:b88dde97264ed65a5970f305c6679fe6c6d37f6f54b9ebf7cca8771b0f551d26` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/example--5ec431984d2b11691377fa3a.md) | 710 | `declaration-track:5ec431984d2b11691377fa3ade473be076969f30b5af817e4721d87e7cb32bbd` |
| 52 | `theorem` | [regular_of_isMulLeftInvariant](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/regular-of-ismulleftinvariant--98503301226d0f1c05f58d98.md) | 719 | `result-track:98503301226d0f1c05f58d983bec27dfac7e1316656e103b9cac3d467a22f5a2` |
| 53 | `theorem` | [isHaarMeasure_eq_smul_isHaarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/ishaarmeasure-eq-smul-ishaarmeasure--6b3cf7127c3e510db4ee375e.md) | 726 | `result-track:6b3cf7127c3e510db4ee375e2ff40ebbda124ebd46b8611c1bded1a532fd6c18` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/instance--fbaf323b6bf790a79020c10d.md) | 747 | `declaration-track:fbaf323b6bf790a79020c10d653a25acb2dc4e054d9718adfa1da6f065e8379d` |
| 55 | `theorem` | [div_mem_nhds_one_of_haar_pos](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/div-mem-nhds-one-of-haar-pos--ea28fd6f6424bb9fe9d1d9ab.md) | 762 | `result-track:ea28fd6f6424bb9fe9d1d9abaa7a4e5d2c5234d7a88ec95e6daf4f80a9d19864` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/instance--bc3442d35a8eda729dfd8336.md) | 818 | `declaration-track:bc3442d35a8eda729dfd8336f751028c1f5b571203710b82407d7a592bb2c788` |
| 57 | `theorem` | [measurePreserving_zpow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/measurepreserving-zpow--1abc7c00f6a226655e57c25a.md) | 846 | `result-track:1abc7c00f6a226655e57c25a5e842d6df72e02a8e6e6ef2f355409951b4bc23d` |
| 58 | `theorem` | [MeasurePreserving.zpow](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/declarations/measurepreserving-zpow--756779593172149a8349b464.md) | 867 | `result-track:756779593172149a8349b4645fb9fb81d62c4b749fd730f6026d9035e1b6018a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
