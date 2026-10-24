# Verification target: GRWTSK.Analysis.MeasureTheory.HalfLineExtension.Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28cefcbdfcb40438f6b485184fa857a30c041155",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28cefcbdfcb40438f6b485184fa857a30c041155`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/fullh--01704e9e545e1c29f22f603b.md) | 16 | `declaration-track:01704e9e545e1c29f22f603b6dd3a3e07dceb2e719f54cb71af47c5035f6a761` |
| 2 | `def` | [zeroExtensionFunction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionfunction--e7f5ce2e0954a9211f577e66.md) | 18 | `declaration-track:e7f5ce2e0954a9211f577e666f3142c45907cca9aaebddfd401935e47dc945a8` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionfunction-memlp--52659f0aeb4600b03b062b9e.md) | 20 | `result-track:52659f0aeb4600b03b062b9e60487e89ce514adc55ba0a94e34b7f026d35958b` |
| 4 | `def` | [zeroExtensionVector](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionvector--d37d971536053efa0ddacd7e.md) | 24 | `declaration-track:d37d971536053efa0ddacd7ed9f51cf7e56dd742674319dcf93ca4513b206221` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionvector-ae--1f9ad7f7c76fbf87f401d8ca.md) | 27 | `result-track:1f9ad7f7c76fbf87f401d8ca753e01b74013b6043510dc8b07fa152b3e476a4d` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionvector-norm--6d6a42b305211923b226fadf.md) | 31 | `result-track:6d6a42b305211923b226fadf9cbe4dcad939cf0c899edfda691ff1117ce40b3a` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionvector-add--507ba271df2d2533bb509522.md) | 36 | `result-track:507ba271df2d2533bb509522599083b5f47daa13c188f0a4508593d6107a83c0` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextensionvector-smul--bcc2b22c45e6a2e8a6094b37.md) | 48 | `result-track:bcc2b22c45e6a2e8a6094b373f4d3eed18f1f9a1816dc94e82fcfa209016b0ec` |
| 9 | `def` | [zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextension--aea135383abdf5fe817fe172.md) | 61 | `declaration-track:aea135383abdf5fe817fe17212e6484e6154b25e851680f80ebfcd1194aaa4cd` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextension-ae--207f1c3d5a1f390d9e75c044.md) | 67 | `result-track:207f1c3d5a1f390d9e75c044958f6869b174204725785259465003fff227658f` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextension-norm--23d22f641ac0733bbf6357ac.md) | 71 | `result-track:23d22f641ac0733bbf6357acdde71876b583be0eae4909b6c585570be6dc36c5` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextension-ae-halfline--24f545bebceddfae8209534a.md) | 74 | `result-track:24f545bebceddfae8209534a653b10341765165b5f8b0b13de449608e2402fe5` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/zeroextension-ae-nonpositive--a4edb7bf22898894666b919a.md) | 80 | `result-track:a4edb7bf22898894666b919ac2c40e850166bf288c411520ab864454b1a51b17` |
| 14 | `def` | [restriction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/restriction--d6090c3d5f7b016a0aab68d8.md) | 89 | `declaration-track:d6090c3d5f7b016a0aab68d87357b7fe0d1438e7d7626b9dba5c1cc799af03c9` |
| 15 | `theorem` | [restriction_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/restriction-ae--f4526afe9dbf88bce37226a6.md) | 91 | `result-track:f4526afe9dbf88bce37226a6c58ba6de01bf282170740fbdca560af079a29f09` |
| 16 | `theorem` | [restriction_norm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/restriction-norm-le--aa2d3ee58bb18a4e741827b8.md) | 94 | `result-track:aa2d3ee58bb18a4e741827b8f2a06ad3c208be5b8ea48b3651dbe44d40630389` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/restriction-opnorm-le--06f54e5e4adf4696e4cefada.md) | 97 | `result-track:06f54e5e4adf4696e4cefada8707f4a3cdbe7fa4ae92eb6a9140c0674bd6c81b` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/restriction-zeroextension--663c492f5d69d11ffce1811e.md) | 102 | `result-track:663c492f5d69d11ffce1811e71ae4a13d8899d486403d16fe195a747d0803ff7` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtension/Variant0eb284bf24370277c783df80530680cf60a7c4ed93e278b07fadc3fb5b804334.lean/declarations/restriction-comp-zeroextension--71db76cec4570e79c6a0065f.md) | 105 | `result-track:71db76cec4570e79c6a0065f3e3ad01734e88229cee8587ae201c1730e8aac6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
