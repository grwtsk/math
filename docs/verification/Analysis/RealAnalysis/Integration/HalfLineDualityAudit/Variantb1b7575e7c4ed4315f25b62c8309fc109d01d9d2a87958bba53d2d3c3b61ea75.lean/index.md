# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDualityAudit.Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "442b1170366c9f45e82088e798aa5fbddaafeee6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `442b1170366c9f45e82088e798aa5fbddaafeee6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/fullh--b632d83f3b0c78303abc7ab2.md) | 25 | `declaration-track:b632d83f3b0c78303abc7ab2eb9488d7286cbd3b587052de90744362215c79fa` |
| 2 | `def` | [zeroExtensionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionfunction--e443bfe2d2b6aef341cbed1b.md) | 27 | `declaration-track:e443bfe2d2b6aef341cbed1bdc0da19f0cfe66f8ed6f7d422b905a5db07f3b83` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionfunction-memlp--3e2dfa7b04c084210125fc60.md) | 29 | `result-track:3e2dfa7b04c084210125fc6075a16128147d94145a434ed3ec98d638b6c29f9f` |
| 4 | `def` | [zeroExtensionVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionvector--2852557b747af554b1005656.md) | 33 | `declaration-track:2852557b747af554b1005656f4089d97644329312017f0fa929a133c92eafb68` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionvector-ae--da6548684e205ea92deb1842.md) | 36 | `result-track:da6548684e205ea92deb1842a5541bb364f4358ac885c3db5d0fb0b1d5e45644` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionvector-norm--62ea20c2230c5679f8840bcc.md) | 40 | `result-track:62ea20c2230c5679f8840bcc9e1bda48f4f060555b38310cb64595970cbccf07` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionvector-add--0c4ea2a9bd45d1ac9cda0ddd.md) | 45 | `result-track:0c4ea2a9bd45d1ac9cda0ddd9037efcb44f24703c2f4ae3097e215dda0f3ad65` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextensionvector-smul--6894c3de34ad3e8019a273ee.md) | 57 | `result-track:6894c3de34ad3e8019a273ee80873e685052813af6a8df7367882ab19e98b165` |
| 9 | `def` | [zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextension--4290986058c89fc178651c3a.md) | 70 | `declaration-track:4290986058c89fc178651c3a2438571e1a8c0f4f16b7513ae61769f6d92d3207` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextension-ae--b160a27915fdbce2663f98cf.md) | 76 | `result-track:b160a27915fdbce2663f98cfe0be77e2ad9a2e4cda16e9fcd2e7b0d265a66ea1` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextension-norm--b7f0a70da2726f2b4ee2e3f8.md) | 80 | `result-track:b7f0a70da2726f2b4ee2e3f84f9b9660267e2a1a7619ca62876788f58fd6c74d` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextension-ae-halfline--459a4665bf4ed86e41c3eec8.md) | 83 | `result-track:459a4665bf4ed86e41c3eec8fee31b8ee77f050b2b0b7c773bdc06117ec62d57` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextension-ae-nonpositive--f6a544c1b103c0679712502f.md) | 89 | `result-track:f6a544c1b103c0679712502f81042eb0da05886075aa2ee46b54d220d90943b9` |
| 14 | `def` | [restriction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction--d4df5715cde730f60f2122cf.md) | 98 | `declaration-track:d4df5715cde730f60f2122cf6be2952985881999d1b50eb880cf35c0435893c2` |
| 15 | `theorem` | [restriction_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction-ae--503d8046b6deda93a48b27b0.md) | 100 | `result-track:503d8046b6deda93a48b27b06abd8614cb106983d4fafdd3f5c6fc07fc43466b` |
| 16 | `theorem` | [restriction_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction-norm-le--2e823a19262bd582a013a9d2.md) | 103 | `result-track:2e823a19262bd582a013a9d21f9e5e1befc021dc396f107fd5317d39a1100f2b` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction-opnorm-le--a9b1e90d3763416e61fb9d99.md) | 106 | `result-track:a9b1e90d3763416e61fb9d993f8f95ce92c25b4734f2ad5f2d4e92f792e33e74` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction-zeroextension--76850fe8eb53f8b7964d7b4f.md) | 111 | `result-track:76850fe8eb53f8b7964d7b4fb4e0f5dd0efda9f4240114f4575efae3aa800098` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction-comp-zeroextension--ad456045bc25323599f167a6.md) | 114 | `result-track:ad456045bc25323599f167a64e5e3c8ccc8b61bc727130bfc45808b49719292a` |
| 20 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restricted-inner-integrable--c0ac3b02450d6c6b6af72115.md) | 136 | `result-track:c0ac3b02450d6c6b6af7211549acf3dc9e633034357239ccfc063d1187c122ae` |
| 21 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/extended-inner-integrable--da00e56f80dd2689318afa8e.md) | 142 | `result-track:da00e56f80dd2689318afa8e4a8321f01f7aa57e49021794e408ba5ab1da01b5` |
| 22 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/inner-restriction-zeroextension--a1cf77ea2684169ac8d295d8.md) | 146 | `result-track:a1cf77ea2684169ac8d295d85cd329ae213db40a226e2f61236061aed9d25d12` |
| 23 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/zeroextension-adjoint--6d7795b1054c6a529834e1c7.md) | 164 | `result-track:6d7795b1054c6a529834e1c72cae79438327d3489ee0c680abfdcba1ad81a20e` |
| 24 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variantb1b7575e7c4ed4315f25b62c8309fc109d01d9d2a87958bba53d2d3c3b61ea75.lean/declarations/restriction-adjoint--752ac723621761d1c62baa30.md) | 169 | `result-track:752ac723621761d1c62baa302804a356a9038508b467d4432cf673d47ad37787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
