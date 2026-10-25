# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Laws.Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ced6e8eadf52490814542a4fb39ae9fc313257c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ced6e8eadf52490814542a4fb39ae9fc313257c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean.json)

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
| 1 | `theorem` | [entails.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/entails-refl--484ad519a7e696832bfdce22.md) | 41 | `result-track:484ad519a7e696832bfdce2242341a65a5460bf0f1b52a76abc39a6bdd0f9e0a` |
| 2 | `theorem` | [entails.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/entails-trans--b25f1d723c43772505291dbb.md) | 46 | `result-track:b25f1d723c43772505291dbbb41de44cedbc65eea35edca617c810fb388f8729` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/instance--fb2f2d1f79be1734dfdbd628.md) | 51 | `declaration-track:fb2f2d1f79be1734dfdbd6289fe18d3bc9721ff2d57fa17da98c9dbf5787d774` |
| 4 | `theorem` | [bientails.iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/bientails-iff--cba79d377d83bd6799e1b982.md) | 56 | `result-track:cba79d377d83bd6799e1b982aa8da204ce2f981bd1dee68f8e7fb4cb9c26ba80` |
| 5 | `theorem` | [bientails.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/bientails-refl--051ef9aa95420e86261d861b.md) | 65 | `result-track:051ef9aa95420e86261d861bc6395c90d8a67d43be4fa6412a2e01d971cef371` |
| 6 | `theorem` | [bientails.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/bientails-trans--51fbf74aa75d9ea871968677.md) | 68 | `result-track:51fbf74aa75d9ea8719686778905ee4117ca6114029592006a3e2193791a499a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/instance--53def5f3a75eb855872e7fce.md) | 73 | `declaration-track:53def5f3a75eb855872e7fce42b7159faaf65135e0c66fcd0aa1dcee838e1d2f` |
| 8 | `theorem` | [bientails.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/bientails-symm--1a5802163c79ec2d8a1f59e4.md) | 76 | `result-track:1a5802163c79ec2d8a1f59e4f53e7b6bc82af5e981b01635e7916aeca657e473` |
| 9 | `theorem` | [bientails.to_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/bientails-to-eq--144330e5c799c0f601553d65.md) | 81 | `result-track:144330e5c799c0f601553d65dcf81774753c545cbbc8a2d7514d7af9fd1eef84` |
| 10 | `theorem` | [down_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/down-pure--193a5fb9dac997b5e2aad463.md) | 89 | `result-track:193a5fb9dac997b5e2aad46382b3b99b23751eefd44c9b82427ca8cdad29aead` |
| 11 | `theorem` | [apply_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/apply-pure--81c53094e224e469231e5072.md) | 90 | `result-track:81c53094e224e469231e507281887bd612031a2dcc64141f28f5528816017069` |
| 12 | `theorem` | [pure_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/pure-intro--abe32271a11e6924c47c4a38.md) | 92 | `result-track:abe32271a11e6924c47c4a386aeb3db4dcd96b2b408d7fc907b505dbc8a8f807` |
| 13 | `theorem` | [pure_elim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/pure-elim--f513b4875e3f049302962989.md) | 95 | `result-track:f513b4875e3f0493029629896e1a66ec9faaddf6b0703a9abe41c8d9997045d3` |
| 14 | `theorem` | [and_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/and-intro--8742a680458b2aa34947b8aa.md) | 104 | `result-track:8742a680458b2aa34947b8aa0dc4d7404a540f1022866edc4ede52897c589d8e` |
| 15 | `theorem` | [and_elim_l](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/and-elim-l--396aed7e434706a29b14a37a.md) | 107 | `result-track:396aed7e434706a29b14a37aee045b5c5b3658fe416910c1f6ec4523b34f0f51` |
| 16 | `theorem` | [and_elim_r](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/and-elim-r--f09e1b995066b5e4d3fb5c21.md) | 110 | `result-track:f09e1b995066b5e4d3fb5c21da0a16f9a5c55ed6a6163c64bc1a84906c7aa3a5` |
| 17 | `theorem` | [or_intro_l](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/or-intro-l--4ae98fabc979e9c57282036c.md) | 115 | `result-track:4ae98fabc979e9c57282036c13ada813d996797ecc734531f0abbd2e6c183558` |
| 18 | `theorem` | [or_intro_r](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/or-intro-r--02b51b8ee6e4bd78d730e49f.md) | 118 | `result-track:02b51b8ee6e4bd78d730e49faa85e85cd9fc318c46c24c45ac293d06c3842a4b` |
| 19 | `theorem` | [or_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/or-elim--9717608e0477058c59efffe1.md) | 121 | `result-track:9717608e0477058c59efffe1676729dbd45ea449b0a8201ae99e0b69a655164d` |
| 20 | `theorem` | [imp_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/imp-intro--f1151e3ee5191497cd1d406e.md) | 128 | `result-track:f1151e3ee5191497cd1d406ea151bbe6062904d61d4c0b0b245abb798fecdda3` |
| 21 | `theorem` | [imp_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/imp-elim--02d21f83dd6085b4260db86b.md) | 131 | `result-track:02d21f83dd6085b4260db86bce23870e05f666b8d04abf21601b7174da5151fe` |
| 22 | `theorem` | [forall_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/forall-intro--56715bf400533652f6ce273a.md) | 136 | `result-track:56715bf400533652f6ce273a85428d6866992186873a5bc2d58375e01ec2c294` |
| 23 | `theorem` | [forall_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/forall-elim--73eca1ffdfa86b5a5438c3fa.md) | 139 | `result-track:73eca1ffdfa86b5a5438c3fafa7b184aca1e68b8876165d27294a0753acd7ca4` |
| 24 | `theorem` | [exists_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/exists-intro--00d1a65c9de6f3621aac03ba.md) | 142 | `result-track:00d1a65c9de6f3621aac03bad3f4cb08716637888f131af7e59054a0db9abf47` |
| 25 | `theorem` | [exists_elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/exists-elim--c6990324bc623db5744c3fe7.md) | 147 | `result-track:c6990324bc623db5744c3fe7c81197ba35055a8105d5e0320b6b8e421d90a5f1` |
| 26 | `theorem` | [and_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/and-curry--ed4ba532a64c8ddf308d0f6c.md) | 154 | `result-track:ed4ba532a64c8ddf308d0f6ce6ea250006aa386d1ea877d915e8e8fb4a88d392` |
| 27 | `theorem` | [or_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/or-curry--8d6c9ad8b17846f875148e0d.md) | 159 | `result-track:8d6c9ad8b17846f875148e0d168d0730ef079fb9167a5d6294e475b1dcd17b32` |
| 28 | `theorem` | [imp_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/imp-curry--e9fad475cc3b8d7ea880d2ec.md) | 164 | `result-track:e9fad475cc3b8d7ea880d2ec8b29e2f2a39180b482e35383f80b82644a55ee36` |
| 29 | `def` | [evalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/evalsto--1284dd560d43496dff5893e9.md) | 176 | `declaration-track:1284dd560d43496dff5893e9de92b07f8d1762115ec761267e6bf24d13c0642c` |
| 30 | `theorem` | [evalsTo_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/evalsto-nil--3e185831b8fbad920681b981.md) | 179 | `result-track:3e185831b8fbad920681b9810b1527df68844bab337d1d398a4674a8a80cd3b0` |
| 31 | `theorem` | [evalsTo_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/evalsto-cons--da022d42ef8ac2a2534927cf.md) | 182 | `result-track:da022d42ef8ac2a2534927cfd5db1e2cc52ec5df8692acc5e702191a345239ba` |
| 32 | `theorem` | [evalsTo_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Laws/Variant8eea455a22f2e88aec08e941a7e45a72b814d9d4631e1b7cefd73c053220d9ce.lean/declarations/evalsto-total--d670cc3bb4a3adb92e139a60.md) | 185 | `result-track:d670cc3bb4a3adb92e139a60f181a91a97056dc3c7548b26bf3890bb6b97bc79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
