# Verification target: GRWTSK.Analysis.Opposition.Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e40eefc2f81f7724f5707ac7ab20ca6cdc785903",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/index.md) · [Full source](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e40eefc2f81f7724f5707ac7ab20ca6cdc785903`.

Source path: `GRWTSK/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Point` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Relations.Affinity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Extend` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OppositionProfile](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/oppositionprofile--290d029eb3b8e7ffd6e5ded0.md) | 30 | `declaration-track:290d029eb3b8e7ffd6e5ded06588d694014f80dddf022f68912b1d07d560ba9c` |
| 2 | `def` | [oppositionAffinity](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/oppositionaffinity--8bd387ea0ab5bac3ba8e3ec3.md) | 36 | `declaration-track:8bd387ea0ab5bac3ba8e3ec306904f362839e4b0492280ea59192af2425caf6c` |
| 3 | `theorem` | [oppositionAffinity_mem_Icc](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/oppositionaffinity-mem-icc--34161aa232e85e404c24eb82.md) | 43 | `result-track:34161aa232e85e404c24eb82cd0792bd3a0c93d59bbda02c7b9b27cbb28aae45` |
| 4 | `structure` | [OppositionStructure](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/oppositionstructure--b7c2ea5fc25708773c296b44.md) | 54 | `declaration-track:b7c2ea5fc25708773c296b440d9c762be9ef2cef1d2d9089c52f8833187358c7` |
| 5 | `def` | [indexEquiv](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/indexequiv--ee4849f5472ddc8e23cd82fe.md) | 68 | `declaration-track:ee4849f5472ddc8e23cd82fe8e4ab1470d2d54d23fc8803e7d3eab41ee104c3c` |
| 6 | `theorem` | [indexEquiv_apply](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/indexequiv-apply--3c0b4a57c581d3e46e7c511f.md) | 80 | `result-track:3c0b4a57c581d3e46e7c511fd7c7b2c1c4e1cae3e9d1b6add9201b63a8304f34` |
| 7 | `def` | [rawEquiv](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/rawequiv--e658666b3ee4740352dbe9f6.md) | 89 | `declaration-track:e658666b3ee4740352dbe9f69170e3d574334350d2ba5d81942c29236ddd3cee` |
| 8 | `theorem` | [rawEquiv_basisVector](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/rawequiv-basisvector--7cf11f296fc655c106623e6b.md) | 94 | `result-track:7cf11f296fc655c106623e6b3a339fda1c6c8ac51d582fc5257be49693f13bcf` |
| 9 | `theorem` | [rawEquiv_inner](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/rawequiv-inner--68f3035626c444a8d6bff584.md) | 103 | `result-track:68f3035626c444a8d6bff5842d4f027f2d690b29bdf0687cf632f1a558ef3f82` |
| 10 | `theorem` | [rawEquiv_involutive](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/rawequiv-involutive--984e820d781d4c19fc87c831.md) | 113 | `result-track:984e820d781d4c19fc87c831374b92e58bf847b143e447dc200b482c9290e40f` |
| 11 | `theorem` | [rawToRhetorical_denseRange](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/rawtorhetorical-denserange--2442e5c7af4816e7a34ddbd2.md) | 125 | `result-track:2442e5c7af4816e7a34ddbd24b8b88fede7e201f91d22b316100f450b1d83564` |
| 12 | `theorem` | [rawToRhetorical_rawEquiv_norm](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/rawtorhetorical-rawequiv-norm--2ef71f354af6ce7461a7afcb.md) | 135 | `result-track:2ef71f354af6ce7461a7afcbd400f6e2dc932930f4e901a2a81739f3ea2eb44e` |
| 13 | `def` | [unitary](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/unitary--8724da131c06115ee34372db.md) | 148 | `declaration-track:8724da131c06115ee34372db29435b7cb6e195b3f31048a2d73a3fb8bd9e952d` |
| 14 | `theorem` | [unitary_rawToRhetorical](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/unitary-rawtorhetorical--f4a570b20e809c43b5052a70.md) | 159 | `result-track:f4a570b20e809c43b5052a705a8d45a12d9aea2e49d5f9e5a96f131074690ed6` |
| 15 | `theorem` | [unitary_rhetoricalVector](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/unitary-rhetoricalvector--1f2bb3b95267aa29b7e51c6a.md) | 176 | `result-track:1f2bb3b95267aa29b7e51c6a13a1f9ca9072e3714be88fe191c8deec3180a4ae` |
| 16 | `theorem` | [unitary_involutive](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/unitary-involutive--bc1e6ff3505eb93611bb9c10.md) | 188 | `result-track:bc1e6ff3505eb93611bb9c10eda98ff96f9ef2245f9bb8f8d91bc2d4fd3b1715` |
| 17 | `def` | [operator](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/operator--e6fac27d7d97f7c1c779b1ac.md) | 203 | `declaration-track:e6fac27d7d97f7c1c779b1ac3805c6bacfdb3a4019312f456391dd5b4ed11e94` |
| 18 | `theorem` | [operator_idempotentInvolution](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/operator-idempotentinvolution--7085becb92380b29f4ce3d86.md) | 208 | `result-track:7085becb92380b29f4ce3d86d3030b16631a3a88ffac89fe7b75c8f29d4f1491` |
| 19 | `theorem` | [operator_selfAdjoint](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/operator-selfadjoint--a9cf77f5893628bb5146fee5.md) | 215 | `result-track:a9cf77f5893628bb5146fee59e0ccddddeab8fc58a2666eded5fd43c88f72af8` |
| 20 | `def` | [ExactOpposition](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/exactopposition--72c283fd144153a3826880c4.md) | 228 | `declaration-track:72c283fd144153a3826880c4c17067b6af5f8d33c1fbaa4353a2adf7c15ebc6a` |
| 21 | `def` | [baseResidual](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/baseresidual--dc188cc314b3454f484c1653.md) | 235 | `declaration-track:dc188cc314b3454f484c16534fc6d4c6bd155040f5df7d1fc342f77a0cbf5a63` |
| 22 | `theorem` | [baseResidual_eq_zero_iff](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/baseresidual-eq-zero-iff--814d5675177b04ee8fc7e13d.md) | 243 | `result-track:814d5675177b04ee8fc7e13df1d8b27fe0de2769c537fcde0a06cd0f085f5947` |
| 23 | `def` | [CoordinateAntipodes](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/coordinateantipodes--a48b9943090a6a45ee215886.md) | 255 | `declaration-track:a48b9943090a6a45ee215886dee09af2ed1b0c242f136b57ad3c9d98ec590679` |
| 24 | `def` | [residual](../../../../mathematics/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/declarations/residual--a28cd39b8544c8ef10fec0c6.md) | 261 | `declaration-track:a28cd39b8544c8ef10fec0c6eccbc6b29ff00cc818a871aef2a7b3ed4f43bf63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
