# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Indicator.Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "937ee1f78e162e55811d09731a9e4b7b8fec35de",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `937ee1f78e162e55811d09731a9e4b7b8fec35de`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean.json)

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
| 1 | `def` | [mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator--a201d2da10b0d35062bf6442.md) | 52 | `declaration-track:a201d2da10b0d35062bf6442f957a7fc9112da74c4f7c1500c4b7ca632dce43c` |
| 2 | `lemma` | [piecewise_eq_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/piecewise-eq-mulindicator--3ee72588fbad618488c4a562.md) | 57 | `result-track:3ee72588fbad618488c4a562bc47846ed04815e772ba34b72694f798e7dad3c0` |
| 3 | `lemma` | [mulIndicator_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-apply--cb54a473bf5cba3e65785be0.md) | 61 | `result-track:cb54a473bf5cba3e65785be084b1fb9034f57ee9448d34ea83fbe073bd7389db` |
| 4 | `lemma` | [mulIndicator_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-of-mem--50148b5ff57185350f399b09.md) | 67 | `result-track:50148b5ff57185350f399b096138efe8fa64fe388b248b65addcccebb4bf74cb` |
| 5 | `lemma` | [mulIndicator_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-of-notmem--5ec3d6f27549c51710b62499.md) | 70 | `result-track:5ec3d6f27549c51710b62499dff7a8139e074ec30bc9e0c418b7377bb776630f` |
| 6 | `lemma` | [mulIndicator_eq_one_or_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-eq-one-or-self--2756e40bff84c02c408f761e.md) | 73 | `result-track:2756e40bff84c02c408f761e8e6af8a442e05142682611a10c2c4cec97d0d7f1` |
| 7 | `lemma` | [mulIndicator_apply_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-apply-eq-self--10bdf633636219efc475d500.md) | 80 | `result-track:10bdf633636219efc475d500c22a96f72180a4f61165aa5b000eeaae5cb90d56` |
| 8 | `lemma` | [mulIndicator_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-eq-self--83ebd90206a467b41c2a6d6d.md) | 85 | `result-track:83ebd90206a467b41c2a6d6d5b711b5166f56d7ae48d407f3a212394df8eb533` |
| 9 | `lemma` | [mulIndicator_eq_self_of_superset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-eq-self-of-superset--42cbb336ae24e1e479a3a8f7.md) | 89 | `result-track:42cbb336ae24e1e479a3a8f7eb0349868a6d2684e467c6073b165117ec78d5aa` |
| 10 | `lemma` | [mulIndicator_apply_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-apply-eq-one--f2975ac5090fc42e890fa037.md) | 95 | `result-track:f2975ac5090fc42e890fa0372105f4e1d400c766e43dcb9fe417f7b157f542c3` |
| 11 | `lemma` | [mulIndicator_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-eq-one--91bbf183254499f5d2b8bc93.md) | 100 | `result-track:91bbf183254499f5d2b8bc93956c8f15f80286bc5712c7f05ea93876a0320052` |
| 12 | `lemma` | [mulIndicator_eq_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-eq-one--57714c1bec21592d78790272.md) | 105 | `result-track:57714c1bec21592d787902726bafaa3b4e47f2d96e55c29616e7386a14e55c23` |
| 13 | `lemma` | [mulIndicator_apply_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-apply-ne-one--b1e67843fc608e90c9b41c8d.md) | 109 | `result-track:b1e67843fc608e90c9b41c8deb62f6712f8816cb3ec3a37ea33e34d76b145882` |
| 14 | `lemma` | [mulSupport_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulsupport-mulindicator--2fba919b29e43a1575ff9531.md) | 113 | `result-track:2fba919b29e43a1575ff95314098b86d364cc36dc273b752a2fd0fd92ec5dc95` |
| 15 | `lemma` | [mem_of_mulIndicator_ne_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mem-of-mulindicator-ne-one--6e1cd5aee85054214a0c37f7.md) | 122 | `result-track:6e1cd5aee85054214a0c37f7219f00e35e66fa039261392cd90ba91bff9d0d7e` |
| 16 | `lemma` | [eqOn_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/eqon-mulindicator--03b575948a81a89872f08cd4.md) | 127 | `result-track:03b575948a81a89872f08cd4cc9270564868e3c17ddacf735c7bb8f20708fc72` |
| 17 | `lemma` | [eqOn_mulIndicator'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/eqon-mulindicator--41270a538ad4b132cee1ea37.md) | 131 | `result-track:41270a538ad4b132cee1ea37afc2a8d3bfd14bb1f53044f16448065ac5a1a3fe` |
| 18 | `lemma` | [mulSupport_mulIndicator_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulsupport-mulindicator-subset--72142dfa5dddbc962bfd23cf.md) | 135 | `result-track:72142dfa5dddbc962bfd23cf5ff34292b297e86321f6b52ded1c2f69b6d5814c` |
| 19 | `lemma` | [mulIndicator_mulSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-mulsupport--2bff723a6812ac9d5f3033cd.md) | 139 | `result-track:2bff723a6812ac9d5f3033cd86690eb3fed163fc457ae1c0c40be931dd39baac` |
| 20 | `lemma` | [mulIndicator_range_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-range-comp--823250410b41c5c2264a36e5.md) | 143 | `result-track:823250410b41c5c2264a36e5ed04a44f42fc64dded9abb5dcc094c7bb9a0e984` |
| 21 | `lemma` | [mulIndicator_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-congr--907a62a38e28c55f66e50706.md) | 149 | `result-track:907a62a38e28c55f66e5070611715ebd094349fe576519e881f525e1e6055743` |
| 22 | `lemma` | [mulIndicator_eq_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-eq-mulindicator--118668679b1fd540aa528be6.md) | 157 | `result-track:118668679b1fd540aa528be602674d5ac7c1a5f9478332805b64d7563f20f6c8` |
| 23 | `lemma` | [mulIndicator_const_eq_mulIndicator_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-const-eq-mulindicator-const--eda5f58bd8878acafd74cb62.md) | 163 | `result-track:eda5f58bd8878acafd74cb62f651ffb70f34d4b98116ed539a7324ecac78e6e7` |
| 24 | `lemma` | [mulIndicator_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-univ--829cb9fac12919271d3d3af3.md) | 168 | `result-track:829cb9fac12919271d3d3af32395c7e472b797e2e07f417df787644333c15d6f` |
| 25 | `lemma` | [mulIndicator_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-empty--886c6fb31b8cfeaa94c82990.md) | 172 | `result-track:886c6fb31b8cfeaa94c8299098a1d59f7924ffd6a078c6ccc7e505f803e46936` |
| 26 | `lemma` | [mulIndicator_empty'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-empty--d0737cabb96af59571d202ae.md) | 176 | `result-track:d0737cabb96af59571d202ae76a2c1983d4db154d32f74ca9a7b639c64ac041f` |
| 27 | `lemma` | [mulIndicator_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-one--b0772f302a5ff81aeb2c32ec.md) | 182 | `result-track:b0772f302a5ff81aeb2c32ec86e8b82b9f7445847c3abc944dc3871f533c9096` |
| 28 | `lemma` | [mulIndicator_one'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-one--0dccaa1ff3055ff6f559d77b.md) | 186 | `result-track:0dccaa1ff3055ff6f559d77b8695534335b438bc46e39f62a9b17abdff6fab7a` |
| 29 | `lemma` | [mulIndicator_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-mulindicator--a63c9bbd4cf8f8cf30fe12cc.md) | 192 | `result-track:a63c9bbd4cf8f8cf30fe12cc850834d61c7045fc90e3bffb89aa9e8ff60b4656` |
| 30 | `lemma` | [mulIndicator_inter_mulSupport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-inter-mulsupport--8f9a53346fed388e7af0e397.md) | 199 | `result-track:8f9a53346fed388e7af0e3975bab04a4325fc38937fba8a4969d5e4de1e0af6c` |
| 31 | `lemma` | [comp_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/comp-mulindicator--5de8f4abb4a7fb56611b623a.md) | 204 | `result-track:5de8f4abb4a7fb56611b623aaa835a61ba36b4b789ca36f53090fd0570e60c5c` |
| 32 | `lemma` | [mulIndicator_comp_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-comp-right--d742b73db1f1040a1983dba3.md) | 210 | `result-track:d742b73db1f1040a1983dba3b8f7f65063e7f3aa7bf352f5c9e484ca89f96d21` |
| 33 | `lemma` | [mulIndicator_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-image--2831bd10f5727a6b74e88cc5.md) | 215 | `result-track:2831bd10f5727a6b74e88cc59778f4bd5badfdc30b9eec4ab52ba0b3bb949186` |
| 34 | `lemma` | [mulIndicator_comp_of_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-comp-of-one--f0e06ed887448c30b2f553cb.md) | 220 | `result-track:f0e06ed887448c30b2f553cbb240496eb068b7c3a56fe3434780f174778ef64e` |
| 35 | `lemma` | [comp_mulIndicator_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/comp-mulindicator-const--334872024b55d443a7d60cf0.md) | 227 | `result-track:334872024b55d443a7d60cf0f207d4ba2582b7fd51477c8afc06dc29b0388f4e` |
| 36 | `lemma` | [mulIndicator_apply_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-apply-apply--811ffaf42dffd49e6893df28.md) | 234 | `result-track:811ffaf42dffd49e6893df28e097b30f964e1cdf77eeb8ee3a109276b891f70a` |
| 37 | `lemma` | [mulIndicator_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-preimage--9eb511627d677024e82a98d0.md) | 239 | `result-track:9eb511627d677024e82a98d0914725dce9a4b8a1fa13af6d02e34bf2c42bdead` |
| 38 | `lemma` | [mulIndicator_one_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-one-preimage--8ac5acfacd62d01b11b6cc8a.md) | 245 | `result-track:8ac5acfacd62d01b11b6cc8a12bffc2d33998d0691b6ee27e4eb864bdce9ccba` |
| 39 | `lemma` | [mulIndicator_const_preimage_eq_union](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-const-preimage-eq-union--03b9a56cac64208177c5d00e.md) | 252 | `result-track:03b9a56cac64208177c5d00e5a23dd8c86c6d824cc4d6607c736f778788c06c8` |
| 40 | `lemma` | [mulIndicator_const_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-const-preimage--cbbc24e6ed951b5d88a70bfa.md) | 259 | `result-track:cbbc24e6ed951b5d88a70bfacdcc1ec58a43307ff2c61ebd7ca6b8ce7791cac4` |
| 41 | `lemma` | [mulIndicator_preimage_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-preimage-of-notmem--225c9dabdf9c7574e053cdea.md) | 266 | `result-track:225c9dabdf9c7574e053cdea48176d59bff5f2765a5361ee575dd2182130e225` |
| 42 | `lemma` | [mem_range_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mem-range-mulindicator--7982f1315009e5fc8a0c2bc8.md) | 271 | `result-track:7982f1315009e5fc8a0c2bc8c1f8ed8602888da05be36bee1f3e53c2bebe3ab5` |
| 43 | `lemma` | [mulIndicator_rel_mulIndicator](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/mulindicator-rel-mulindicator--522d0c4b82bd155546ac56e8.md) | 277 | `result-track:522d0c4b82bd155546ac56e8c4e66142c07cba2517227f5287a8e80a684a9c49` |
| 44 | `lemma` | [indicator_one_preimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Indicator/Variant6b331a28202c1c22d675c67301d6952a959ca0a9db370a4be62feed250693c66.lean/declarations/indicator-one-preimage--6d69e77706705be42312499f.md) | 283 | `result-track:6d69e77706705be42312499f6426f65b15257c5c10047774115dbcb6cc9bff93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
