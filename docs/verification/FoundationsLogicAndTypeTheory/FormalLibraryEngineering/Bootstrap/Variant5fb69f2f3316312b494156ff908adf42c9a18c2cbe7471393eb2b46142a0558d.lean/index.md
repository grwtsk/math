# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bootstrap.Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51656aff087292f1234528f5385dc70fd023892e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51656aff087292f1234528f5385dc70fd023892e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 16; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [testBit_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/testbit-tonat--567c09358495bcbd213dfdb6.md) | 28 | `result-track:567c09358495bcbd213dfdb63933af04dfb5dca9f440dd275baefbb8b7b71441` |
| 2 | `theorem` | [getLsbD_ofFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/getlsbd-offin--9617696355cb546b2a2ea2aa.md) | 30 | `result-track:9617696355cb546b2a2ea2aa3c285b70c7b474ab4e534d2dc42503bf7bb71693` |
| 3 | `theorem` | [getLsbD_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/getlsbd-of-ge--41a829fcc16162f5258edcef.md) | 33 | `result-track:41a829fcc16162f5258edcef90cffea2bcfc49626572dd9eb72371ec04273b82` |
| 4 | `theorem` | [eq_of_toNat_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/eq-of-tonat-eq--b1dad93da8f586e1b94766f9.md) | 41 | `result-track:b1dad93da8f586e1b94766f93e7727451bf84d818c304982209fb9904dbdc122` |
| 5 | `theorem` | [eq_of_getLsbD_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/eq-of-getlsbd-eq--b8bee4845870ee8771b8f334.md) | 44 | `result-track:b8bee4845870ee8771b8f334f8129c6df195585ed2de904078b82786321d8962` |
| 6 | `theorem` | [toNat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-ofnat--7f7560305c34bb22441310f8.md) | 56 | `result-track:7f7560305c34bb22441310f8831982a6a0ab06c70b077b0b1037a6add3466486` |
| 7 | `theorem` | [eq_of_getElem_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/eq-of-getelem-eq--7733237950aaa2f4c88df1e2.md) | 59 | `result-track:7733237950aaa2f4c88df1e27b5dea9fd12261cb8565f3cd9dada15539f883ac` |
| 8 | `theorem` | [toNat_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-append--7e8d7daf9c38f8075a2afea2.md) | 63 | `result-track:7e8d7daf9c38f8075a2afea2fc5b252c20e4c1cb541ace876f3afa5a64fbf2fa` |
| 9 | `theorem` | [toNat_ofBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-ofbool--24bd9da802c47bcbdab85050.md) | 67 | `result-track:24bd9da802c47bcbdab850503b1e7c820f42fb3acc7c1550828dffb2de658566` |
| 10 | `theorem` | [toNat_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-cast--940b7f148556f087f853ec52.md) | 71 | `result-track:940b7f148556f087f853ec5234c74cc3f8cb73cc0cd61bca874ef4ff9fe39649` |
| 11 | `theorem` | [toNat_ofFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-offin--1e264f54f88bc0f7da2dda4c.md) | 74 | `result-track:1e264f54f88bc0f7da2dda4c2649b45e3ab240c7199c0df9ea80270a5825dada` |
| 12 | `theorem` | [toNat_ofNatLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-ofnatlt--db04148aeefbfb56685441f1.md) | 79 | `result-track:db04148aeefbfb56685441f171c9ee958c7bd2c4b629fc667bad7575320e9f9b` |
| 13 | `theorem` | [toNat_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-cons--82e4585957051c86cf5f4dc0.md) | 81 | `result-track:82e4585957051c86cf5f4dc0407c40e1e780c4b2682e2258ece4cebd0180adfe` |
| 14 | `theorem` | [getElem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/getelem-cons--8c13169d72da84f3dbf61c91.md) | 87 | `result-track:8c13169d72da84f3dbf61c913bb53565ff23042da1fa4d6e4443f529f2d9fc49` |
| 15 | `theorem` | [lt_two_pow_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/lt-two-pow-of-le--e1242ca3ef2805e210af532a.md) | 102 | `result-track:e1242ca3ef2805e210af532afa1c95ee7945823a863b40c461bc662884eb7b10` |
| 16 | `theorem` | [toNat_setWidth'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-setwidth--1d19cb97e5a33bf58b81b065.md) | 106 | `result-track:1d19cb97e5a33bf58b81b065116d54ea2af5746fb0adfdcfee3a46f147e12fd7` |
| 17 | `theorem` | [toNat_setWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-setwidth--69017c397768ac47a202acfa.md) | 111 | `result-track:69017c397768ac47a202acfa99d7b0f8607c9c8dc1f257615b5971bce8c920fc` |
| 18 | `theorem` | [ofNat_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/ofnat-tonat--7ed5afdeb0876433a0027eb1.md) | 122 | `result-track:7ed5afdeb0876433a0027eb1af7be33bc5c02bd0a3386c11b73c14e30699db8e` |
| 19 | `theorem` | [getElem_setWidth'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/getelem-setwidth--80b71f1f2bc2ae8a4f35bcf2.md) | 127 | `result-track:80b71f1f2bc2ae8a4f35bcf2925cfd8a2646fd1b46b48a1359b09af996485230` |
| 20 | `theorem` | [getElem_setWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/getelem-setwidth--48517eedb48f9d67cd8784c8.md) | 132 | `result-track:48517eedb48f9d67cd8784c8729288a0e4ea5a359eb9bb8dc2f0d8816cdf448b` |
| 21 | `theorem` | [cons_msb_setWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/cons-msb-setwidth--57d2d72424752a8a66d64bd8.md) | 142 | `result-track:57d2d72424752a8a66d64bd806ba8d1c90ddf8f0d881a741c395b9a33c91da88` |
| 22 | `theorem` | [toNat_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/tonat-neg--24e939d0c9bb51fe35fc5dce.md) | 152 | `result-track:24e939d0c9bb51fe35fc5dce3315fc2f9c6682dccba61c9dc6a3bfd9013085e3` |
| 23 | `theorem` | [setWidth_neg_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/setwidth-neg-of-le--090caafaf3ad6c68252b1322.md) | 156 | `result-track:090caafaf3ad6c68252b1322308f1049e7ba01103895724bd76d16fc6930d459` |
| 24 | `theorem` | [cons_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/cons-induction--11581eabdfc75ea4e9df7da3.md) | 176 | `result-track:11581eabdfc75ea4e9df7da339c260a1e1f2b6b01d393f8057b5e5bbb684a0ed` |
| 25 | `theorem` | [ofNatLT_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant5fb69f2f3316312b494156ff908adf42c9a18c2cbe7471393eb2b46142a0558d.lean/declarations/ofnatlt-eq-ofnat--98157913f03e8b68d8788fff.md) | 188 | `result-track:98157913f03e8b68d8788fff087259a4a8cedcceaf508df40187a660b6bb8fd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
