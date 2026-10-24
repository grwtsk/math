# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineDualityCombined.Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11b8cb9132b1353927568e4264b127dd6a9e0cc8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11b8cb9132b1353927568e4264b127dd6a9e0cc8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean.json)

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
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/fullh--aa8c6ce4b545c9816b113b0a.md) | 25 | `declaration-track:aa8c6ce4b545c9816b113b0abe7d5206e3eeff77dfe3d3462e5a41bce8e1a17a` |
| 2 | `def` | [zeroExtensionFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionfunction--d3c8eb4937d6a59202397ba6.md) | 27 | `declaration-track:d3c8eb4937d6a59202397ba66822d2bf8234467ac15d42bec77c5e4ff3955fd1` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionfunction-memlp--b18c8804ba7a6c01b90fc7e3.md) | 29 | `result-track:b18c8804ba7a6c01b90fc7e3b963ad19fe9aa134e58221b3eb507918a0903417` |
| 4 | `def` | [zeroExtensionVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionvector--19b62332461b968fd3d8ade3.md) | 33 | `declaration-track:19b62332461b968fd3d8ade32fd65fbf4c3ce9fcc1f8bdcabbda2e797d389cc2` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionvector-ae--7d011d66806660fc992adb69.md) | 36 | `result-track:7d011d66806660fc992adb69b4520e2e4ff5a824a948daeb2cb3e28072316943` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionvector-norm--9991cf4f2325211ff9a9fef2.md) | 40 | `result-track:9991cf4f2325211ff9a9fef227b54e479b8cf2aa80649bcc8bbb97f72ddf3897` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionvector-add--b602df82dd8b7d15a8fd2e8d.md) | 45 | `result-track:b602df82dd8b7d15a8fd2e8d055552372f61ee9c6a738d77af83b20a07237f37` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextensionvector-smul--dfcb421d3eac184f162828dc.md) | 57 | `result-track:dfcb421d3eac184f162828dc902bd58438a950f7da637457bf4e136607f79b5d` |
| 9 | `def` | [zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextension--b0148d4f1d01a8aab27ee0c0.md) | 70 | `declaration-track:b0148d4f1d01a8aab27ee0c001e1177dc421b59546769a8b89e638a8050c8bae` |
| 10 | `theorem` | [zeroExtension_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextension-ae--dc261d2d66677fa94a92894a.md) | 76 | `result-track:dc261d2d66677fa94a92894a40054c1f5bf0a492e0d0f9183729bbb7714583dd` |
| 11 | `theorem` | [zeroExtension_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextension-norm--cb5e4b022143c7d3c62b82f6.md) | 80 | `result-track:cb5e4b022143c7d3c62b82f62ba1783041b041e9a5e791f867fcc0f11670b1f7` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextension-ae-halfline--e6f7cb9fbaaf20df7bd9749b.md) | 83 | `result-track:e6f7cb9fbaaf20df7bd9749b4718fd42931766a4183a2be383babb1003b9ba51` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextension-ae-nonpositive--b7e335017a2bb239f9acee8c.md) | 89 | `result-track:b7e335017a2bb239f9acee8c13af287b6c3d6a220f3a35d1f41b1007362b8f8e` |
| 14 | `def` | [restriction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction--000167462d8f15bdf5324ee9.md) | 98 | `declaration-track:000167462d8f15bdf5324ee9ceccf5d3d995c9b151d3adbc6292025856f36187` |
| 15 | `theorem` | [restriction_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction-ae--c105d1cffeeae62eee4aaa0d.md) | 100 | `result-track:c105d1cffeeae62eee4aaa0d77b82ccbca3a822b91a7ec22e647817a82c47ce8` |
| 16 | `theorem` | [restriction_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction-norm-le--1dde2680c5141c45da5c8587.md) | 103 | `result-track:1dde2680c5141c45da5c85871714631c945cf67123b1a0993a1a35945eec6871` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction-opnorm-le--bdf0c30745a17564cb155b9b.md) | 106 | `result-track:bdf0c30745a17564cb155b9bdb7e27da8b4614d6c884417d3d069a86538c1d56` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction-zeroextension--31bb8305c350227a26f1b295.md) | 111 | `result-track:31bb8305c350227a26f1b295cf5ca6a494e15482fc32ee0a3a2b8fbc02f08071` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction-comp-zeroextension--da6f20f37c485a878744f389.md) | 114 | `result-track:da6f20f37c485a878744f389c1c2cf90a6033143bd552bf65501beed2b6b2ab9` |
| 20 | `theorem` | [restricted_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restricted-inner-integrable--6c070fbbfe03ab162132af07.md) | 136 | `result-track:6c070fbbfe03ab162132af07ab12b76c3e5c364ea1d23ac464902a90e4a2f7d0` |
| 21 | `theorem` | [extended_inner_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/extended-inner-integrable--83dd7e674729920b8665d547.md) | 142 | `result-track:83dd7e674729920b8665d5474575e88ec1ca691231bd6f936e24dfe320cd6561` |
| 22 | `theorem` | [inner_restriction_zeroExtension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/inner-restriction-zeroextension--53fca192cf1bd926987bdf3b.md) | 146 | `result-track:53fca192cf1bd926987bdf3b4d305a8cf266a70f4bf6e4154d4f765e9ac19fe7` |
| 23 | `theorem` | [zeroExtension_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/zeroextension-adjoint--99936c49a7f0bbca63725da7.md) | 164 | `result-track:99936c49a7f0bbca63725da78b5a96475141187463947f69b7f05559417bc667` |
| 24 | `theorem` | [restriction_adjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantfaf5afbbc2ce85687e97641bef20c0a50f5cfa9dd5ec0453955df73f60bea214.lean/declarations/restriction-adjoint--7bb86cf973dac6f7fec7aa1b.md) | 169 | `result-track:7bb86cf973dac6f7fec7aa1b8f9cb9e58c7d5a7acea78333e95ad0b35624d704` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
