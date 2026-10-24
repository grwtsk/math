# Verification target: GRWTSK.Analysis.MeasureTheory.HalfLineExtensionAudit.Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff3c09d3e946ff8ee6e79a5a6e6128fcbf8f43db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff3c09d3e946ff8ee6e79a5a6e6128fcbf8f43db`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/fullh--c4656b1dbe00876fda57c472.md) | 24 | `declaration-track:c4656b1dbe00876fda57c47203868dc70f2cdc51e582262cdc081dd9ce3aa724` |
| 2 | `def` | [zeroExtensionFunction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionfunction--0212e9715714b1f0c4ed0135.md) | 26 | `declaration-track:0212e9715714b1f0c4ed013547759329a6a23c210cc555e9cdc899048776a424` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionfunction-memlp--744f219956d1355a527ba807.md) | 28 | `result-track:744f219956d1355a527ba807f2f19e74bb34e97356ea7e1b566811b6807588ef` |
| 4 | `def` | [zeroExtensionVector](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionvector--f7c5eda1241c416f2fb6171e.md) | 32 | `declaration-track:f7c5eda1241c416f2fb6171ebd48e55c58757f80a58828c4b48dc3f441822062` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionvector-ae--8b1011b3928f99eea2c142c4.md) | 35 | `result-track:8b1011b3928f99eea2c142c495df1be032a6dab0a55bae197ace666307d9b1d8` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionvector-norm--76945786db0c6ce699f7465d.md) | 39 | `result-track:76945786db0c6ce699f7465d560457de0d00150518f1ea702cd8e5d5d27a3bff` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionvector-add--5e5567894a6fb6cfec9ec23a.md) | 44 | `result-track:5e5567894a6fb6cfec9ec23af9a7ae88dd00580af82127c4afa83c77c8f55099` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextensionvector-smul--8546b097685a1f14b89fcf8f.md) | 56 | `result-track:8546b097685a1f14b89fcf8fad4f49dcc622a41010cc5b164f043e3f69290130` |
| 9 | `def` | [zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextension--8bae34155c3bf69749ca6e87.md) | 69 | `declaration-track:8bae34155c3bf69749ca6e87cf84807805792dff39ca59fb3de6962dcf515342` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextension-ae--6268013e37cb9856bea063d9.md) | 75 | `result-track:6268013e37cb9856bea063d9623b9435992417f4579563cff5735c627f84ec00` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextension-norm--47f7d8967aa5c444b03c9318.md) | 79 | `result-track:47f7d8967aa5c444b03c9318ad5cf2c4ae1a6bd7dfe4b457e2fa613c877a52b5` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextension-ae-halfline--946526d5caa5d669b7d16483.md) | 82 | `result-track:946526d5caa5d669b7d164837e572d1d5ad04c8717d93c2f8720aed14250457b` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/zeroextension-ae-nonpositive--891d51dbbd20882ae9980c4b.md) | 88 | `result-track:891d51dbbd20882ae9980c4bfe8c42cc1e7d71dab6a94309ffb65278be64e761` |
| 14 | `def` | [restriction](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/restriction--0bd5574af4d9edeedaeaab4b.md) | 97 | `declaration-track:0bd5574af4d9edeedaeaab4b207e903d1e67c3273dd1eb8ce1e0a527df9dc4db` |
| 15 | `theorem` | [restriction_ae](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/restriction-ae--722ec76252bb95da7c65c822.md) | 99 | `result-track:722ec76252bb95da7c65c822f41b9644bd65bade0cef0f17f075d37e4f1d605f` |
| 16 | `theorem` | [restriction_norm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/restriction-norm-le--b81aafca00f8dd063529b7ff.md) | 102 | `result-track:b81aafca00f8dd063529b7ff40966992915e5af676e85dc4077426f1fe79c647` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/restriction-opnorm-le--ff55bf37f73309de23ca627b.md) | 105 | `result-track:ff55bf37f73309de23ca627be2af794dc550ee3ca240f9a052bafb69141b0660` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/restriction-zeroextension--618734377a0f5aeec53af5f0.md) | 110 | `result-track:618734377a0f5aeec53af5f08cfff26168f5ea0a638a84dd56ddd728fb396313` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../mathematics/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean/declarations/restriction-comp-zeroextension--660261c9f7676459ea7e2fda.md) | 113 | `result-track:660261c9f7676459ea7e2fdac73aac5aededf60040e3c09331749f5f57617e7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
