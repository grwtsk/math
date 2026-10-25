# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFExtrinsicFix.Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5459c98e7814ea679222e682b752e967fd4ebc7f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5459c98e7814ea679222e682b752e967fd4ebc7f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Classical` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opaqueFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/opaquefix--104884ba41686df94d1a2447.md) | 44 | `declaration-track:104884ba41686df94d1a2447e455665b9b0a807c1cf2358a22497b934cbe1104` |
| 2 | `def` | [extrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix--5b9c88382aacd2bbb3f601b7.md) | 67 | `declaration-track:5b9c88382aacd2bbb3f601b701449860effb37625337ce0e10419372899436b4` |
| 3 | `theorem` | [extrinsicFix_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-eq-fix--d441832ffa7a60c57590c878.md) | 77 | `result-track:d441832ffa7a60c57590c878b6f7ae3477bad5b7c35f8d0e5294f8b705317abd` |
| 4 | `theorem` | [extrinsicFix_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-eq-apply--46f21ab3421989ae8c5c37d8.md) | 83 | `result-track:46f21ab3421989ae8c5c37d844a66090babd1866a708ced6eba4fbd56c484722` |
| 5 | `theorem` | [extrinsicFix_invImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-invimage--e55baf2eb53a8bde669f8c4a.md) | 89 | `result-track:e55baf2eb53a8bde669f8c4afa16435c7a1a41be4d833083bad273fe2244eba6` |
| 6 | `def` | [opaqueFix₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/opaquefix--a13a78204150b716499b3fa2.md) | 128 | `declaration-track:a13a78204150b716499b3fa291fc9c8eecc8fdee4a117835f52c5462db247206` |
| 7 | `def` | [extrinsicFix₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix--86a6769f2d785167ad9d4228.md) | 154 | `declaration-track:86a6769f2d785167ad9d42288ba95ef0a1cae39362eaf65155d2316229d3ad3a` |
| 8 | `theorem` | [extrinsicFix₂_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-eq-fix--cd81b274174d5cc56d522cf0.md) | 163 | `result-track:cd81b274174d5cc56d522cf04040e32c55b4c49a56126019a732efc8039dff91` |
| 9 | `theorem` | [extrinsicFix₂_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-eq-apply--0ba32a3131142100c230415d.md) | 170 | `result-track:0ba32a3131142100c230415d03c992930f3226553e521b9fdf914c85c695a979` |
| 10 | `def` | [opaqueFix₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/opaquefix--a1db3bc7e073edd4f1a8cfd1.md) | 200 | `declaration-track:a1db3bc7e073edd4f1a8cfd1829c2d52934e93bc09a0c5a735718766fecd8fa0` |
| 11 | `def` | [extrinsicFix₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix--f6398dc30e135f90ac8cb332.md) | 226 | `declaration-track:f6398dc30e135f90ac8cb3328ea9bdf81ed64606fe133ea2036169fc209cfa40` |
| 12 | `theorem` | [extrinsicFix₃_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-eq-fix--5cd7a24e055644815cc7836b.md) | 236 | `result-track:5cd7a24e055644815cc7836b9f9e7e060a110f746241833667b07cca686f9a2d` |
| 13 | `theorem` | [extrinsicFix₃_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/extrinsicfix-eq-apply--e16d2cb02dde6facaf015a49.md) | 243 | `result-track:e16d2cb02dde6facaf015a498bafdb2d2d8081abe3f9f4ab965216b749cc1ff9` |
| 14 | `def` | [partialExtrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix--41cdc1ae27a416f7f3fc6bf0.md) | 285 | `declaration-track:41cdc1ae27a416f7f3fc6bf017d5ee5319fdf446bba1574f1429f6cad11e5621` |
| 15 | `theorem` | [partialExtrinsicFix_eq_apply_of_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-apply-of-acc--9744f73b76615998f96f3146.md) | 297 | `result-track:9744f73b76615998f96f314627e45bd90f27a06c9cd9616104858cb4a920279d` |
| 16 | `theorem` | [partialExtrinsicFix_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-apply--a74bd71091724ad6a2bec564.md) | 332 | `result-track:a74bd71091724ad6a2bec5641d95d8594e86ae4ecc0c95eb24ddd4d772d3a12b` |
| 17 | `theorem` | [partialExtrinsicFix_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-fix--9cb1ae7a24dabacaf7061203.md) | 337 | `result-track:9cb1ae7a24dabacaf706120354f868a2e5087b79deb535982f218c06d09e3f5e` |
| 18 | `def` | [partialExtrinsicFix₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix--d40abbc5e7b28d2aefb32ce8.md) | 370 | `declaration-track:d40abbc5e7b28d2aefb32ce8674bc3773d1e55e419265187bcf51bd5b12967e3` |
| 19 | `theorem` | [partialExtrinsicFix₂_eq_partialExtrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-partialextrinsicfix--7c01aeb76b243187cd10e205.md) | 385 | `result-track:7c01aeb76b243187cd10e205e8fe205e61a1bbcb5a781beff8dd86021d353e1e` |
| 20 | `theorem` | [partialExtrinsicFix₂_eq_apply_of_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-apply-of-acc--a93b574150cda9ee5c90992e.md) | 416 | `result-track:a93b574150cda9ee5c90992ededfbca1abce619480f308886602efdca701aa8e` |
| 21 | `theorem` | [partialExtrinsicFix₂_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-apply--50324e785b5a97b85b95457e.md) | 425 | `result-track:50324e785b5a97b85b95457e66ddea81ad982d0bf428f05dc3c3d91a9de770cb` |
| 22 | `theorem` | [partialExtrinsicFix₂_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-fix--f851f87011e1c5c088d97d4d.md) | 432 | `result-track:f851f87011e1c5c088d97d4d92abb384e045dfd956eaff0278c61e4d9e99c489` |
| 23 | `def` | [partialExtrinsicFix₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix--719eb8b557abc1ff53f636d3.md) | 463 | `declaration-track:719eb8b557abc1ff53f636d329bd6739838585be933ad805c8c65261fd685d1a` |
| 24 | `theorem` | [partialExtrinsicFix₃_eq_partialExtrinsicFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-partialextrinsicfix--c87870fd43ed9acf706e5577.md) | 478 | `result-track:c87870fd43ed9acf706e55779ad2dcb32758f71a011b57db73fe37563e750e89` |
| 25 | `theorem` | [partialExtrinsicFix₃_eq_apply_of_acc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-apply-of-acc--c0110df99ce6341859936514.md) | 509 | `result-track:c0110df99ce6341859936514fc3d80b85aaf9c04a8b1e1a763a65c9073abc49d` |
| 26 | `theorem` | [partialExtrinsicFix₃_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-apply--cb1e50e759b1c782730ecc72.md) | 518 | `result-track:cb1e50e759b1c782730ecc72463baed4957de9aadb2c36cf595e5b3a7284f700` |
| 27 | `theorem` | [partialExtrinsicFix₃_eq_fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/declarations/partialextrinsicfix-eq-fix--4c3893b41238bfe47b06db77.md) | 525 | `result-track:4c3893b41238bfe47b06db7790f92ee0ebd6315f218dfb472e00918d57bc5d23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
