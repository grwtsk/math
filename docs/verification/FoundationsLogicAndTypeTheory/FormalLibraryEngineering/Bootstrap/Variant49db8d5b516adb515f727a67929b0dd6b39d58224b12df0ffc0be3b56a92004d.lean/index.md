# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bootstrap.Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6e77ea6120e1c4c8884035d01cd805687a00878",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6e77ea6120e1c4c8884035d01cd805687a00878`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Ext` — import line 11; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [testBit_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/testbit-tonat--a604885ccce9fe03f1d24bf3.md) | 20 | `result-track:a604885ccce9fe03f1d24bf3ca86a498953e866dd040422c52ec56775ceba476` |
| 2 | `theorem` | [getLsbD_ofFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/getlsbd-offin--81e4fb72739f1d05658fb5c0.md) | 22 | `result-track:81e4fb72739f1d05658fb5c0f93d1d58cca1255d4fc84901d4ce0c9e526aa3a2` |
| 3 | `theorem` | [getLsbD_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/getlsbd-of-ge--07cf2b5f064898986414b628.md) | 25 | `result-track:07cf2b5f064898986414b6280e6856473239d7dc0a60d798841ea0c123c63076` |
| 4 | `theorem` | [eq_of_toNat_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/eq-of-tonat-eq--7ceec868c5a0c08f6aba951a.md) | 33 | `result-track:7ceec868c5a0c08f6aba951a4712e1925a686baf730ecc6260cf6e17fbbd2aab` |
| 5 | `theorem` | [eq_of_getLsbD_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/eq-of-getlsbd-eq--08e4c869f5d9e8c077236cbc.md) | 36 | `result-track:08e4c869f5d9e8c077236cbc4b4ca2df2380e3968416fc3b189f3adc795bbc42` |
| 6 | `theorem` | [toNat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-ofnat--e7ec26cd67e39a711acba504.md) | 48 | `result-track:e7ec26cd67e39a711acba5048986407f3ab9a60240ae87abe86263b77c8bb416` |
| 7 | `theorem` | [eq_of_getElem_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/eq-of-getelem-eq--9270a249d5822ff77192bd8e.md) | 51 | `result-track:9270a249d5822ff77192bd8e042f1c1c58669d31601d2cf126f2f372e7ca7b23` |
| 8 | `theorem` | [toNat_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-append--5a2c783f154fe744c9a4ca1e.md) | 55 | `result-track:5a2c783f154fe744c9a4ca1eb171fb0bb0a87f66d7e73bfb91b5b12331b7ea6d` |
| 9 | `theorem` | [toNat_ofBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-ofbool--490783ca839c443997802692.md) | 59 | `result-track:490783ca839c44399780269221a06cb1afcbb0b44d0b706f81b0553a2da8907c` |
| 10 | `theorem` | [toNat_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-cast--f5937f8ad91f8abc969383f9.md) | 63 | `result-track:f5937f8ad91f8abc969383f942e206cafe4565603c774e1ab7ac9024243524ef` |
| 11 | `theorem` | [toNat_ofFin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-offin--5eb05b84af441b4a88bb47d4.md) | 66 | `result-track:5eb05b84af441b4a88bb47d45da50eb2317c59a9594454d7ef1fb327e4be9048` |
| 12 | `theorem` | [toNat_ofNatLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-ofnatlt--063c25bf10b406e1d214d554.md) | 71 | `result-track:063c25bf10b406e1d214d554c3e8f3049b7c3764fb13b2452c6ac29c5ad016c8` |
| 13 | `theorem` | [toNat_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-cons--9a0958205005508c02269652.md) | 73 | `result-track:9a0958205005508c022696523f4fb1ab6b6bc5a548ff92026c58af9963456fcc` |
| 14 | `theorem` | [getElem_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/getelem-cons--06cecf09ed53624f51a8d12d.md) | 79 | `result-track:06cecf09ed53624f51a8d12d469b852fc2848308e7d33a567be09dddbdf1ab23` |
| 15 | `theorem` | [lt_two_pow_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/lt-two-pow-of-le--9d53cfb387c2f82d3645db3d.md) | 94 | `result-track:9d53cfb387c2f82d3645db3d7165fbf3123e9141583a32a4a44c5b8a5d91436a` |
| 16 | `theorem` | [toNat_setWidth'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-setwidth--360f8506feeb82e97a07ace2.md) | 98 | `result-track:360f8506feeb82e97a07ace2ed43175e6fa15ec830a12df8d9c2eac30ed94b98` |
| 17 | `theorem` | [toNat_setWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-setwidth--f5cbc41d120882e8d6d7ba56.md) | 103 | `result-track:f5cbc41d120882e8d6d7ba5626241a897deb7252d7116d2c4a321fa0ba0771fd` |
| 18 | `theorem` | [ofNat_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/ofnat-tonat--56b58063c27b77dcb9d6e710.md) | 114 | `result-track:56b58063c27b77dcb9d6e7105c698fe55b0121d9a0008ba06ca203d3aa5fd2a1` |
| 19 | `theorem` | [getElem_setWidth'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/getelem-setwidth--7e1906034b04f75c6517743a.md) | 119 | `result-track:7e1906034b04f75c6517743a45892659ee7e080e5fb783ab322654984a8b11b0` |
| 20 | `theorem` | [getElem_setWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/getelem-setwidth--18206303ea7470e0e1af1af2.md) | 124 | `result-track:18206303ea7470e0e1af1af2f3ca05b132f00d756c2bb53b5f970b760de51d15` |
| 21 | `theorem` | [cons_msb_setWidth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/cons-msb-setwidth--e857a52173fe12dafecc1c5d.md) | 134 | `result-track:e857a52173fe12dafecc1c5d5a3660a3e7a00f2a1e1356263ee3a468697e6564` |
| 22 | `theorem` | [toNat_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/tonat-neg--bd10e69b260e6eb7451fd1dd.md) | 144 | `result-track:bd10e69b260e6eb7451fd1dd00915bf7c3ef7ec64abfc0861708c921fbd4164b` |
| 23 | `theorem` | [setWidth_neg_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/setwidth-neg-of-le--f10b94280d9a24f2a4fa688b.md) | 148 | `result-track:f10b94280d9a24f2a4fa688b46b21f3d1c0650ab15b60f150fa16c4380282f5c` |
| 24 | `theorem` | [cons_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/cons-induction--9a45337830710dccdd77fbab.md) | 168 | `result-track:9a45337830710dccdd77fbab23ef56f17fef2f6c06a9ff36c65342e0df8e2863` |
| 25 | `theorem` | [ofNatLT_eq_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bootstrap/Variant49db8d5b516adb515f727a67929b0dd6b39d58224b12df0ffc0be3b56a92004d.lean/declarations/ofnatlt-eq-ofnat--0a637c3831ff971b54f71e3e.md) | 180 | `result-track:0a637c3831ff971b54f71e3ed0215c7dedb17dcd577e9e4a7fba30702bd1c7d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
