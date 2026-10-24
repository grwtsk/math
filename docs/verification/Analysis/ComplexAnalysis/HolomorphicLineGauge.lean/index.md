# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineGauge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02bce81ab498f01b07b51b41e21eed45bcc2e742",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02bce81ab498f01b07b51b41e21eed45bcc2e742`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineGauge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineSections`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSections.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitValue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/unitvalue--1c0fa99d5ee954517c040376.md) | 22 | `declaration-track:1c0fa99d5ee954517c04037689c95d684acc2446eb45aaeff70036779a10e357` |
| 2 | `theorem` | [unitValue_one](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/unitvalue-one--dfe43209e7c8dcda11d13760.md) | 25 | `result-track:dfe43209e7c8dcda11d137608bccfbc5e20f924b9d076eac1a94881b8ce2a741` |
| 3 | `theorem` | [unitValue_mul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/unitvalue-mul--eda855ada6bf6ca91177d4ee.md) | 28 | `result-track:eda855ada6bf6ca91177d4ee89e81c8505ea3273282008ca4f03ec8c66120d10` |
| 4 | `theorem` | [unitValue_inv_mul](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/unitvalue-inv-mul--1242b1b786973fb16fdbb345.md) | 31 | `result-track:1242b1b786973fb16fdbb3454a17c916bc8a93c03ea0521f1a88f263adac61f0` |
| 5 | `theorem` | [unitValue_mul_inv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/unitvalue-mul-inv--4da344c4a32238e648c20707.md) | 35 | `result-track:4da344c4a32238e648c20707a4305e75138570d8434288ee074114dfeced9871` |
| 6 | `structure` | [Gauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/gauge--6837e14dfe0b21dcdfb86079.md) | 40 | `declaration-track:6837e14dfe0b21dcdfb86079a961c676e9fb24b1ed159fa052e5e9a5bed5d0c6` |
| 7 | `theorem` | [ext_frame](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/ext-frame--2085ed33e88ea8009989389c.md) | 51 | `result-track:2085ed33e88ea8009989389c2379f53bf8a8791184b8ce55d9af96064e5e8d42` |
| 8 | `def` | [identity](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/identity--41950614ffd3fcdfc8632799.md) | 58 | `declaration-track:41950614ffd3fcdfc8632799c9c62fee5bc3dd733410c23136bb4f83b959a87e` |
| 9 | `def` | [symm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/symm--c988fa12c7e107f450b8b477.md) | 63 | `declaration-track:c988fa12c7e107f450b8b477487f7f73e6ae2febe3fe12dd6f610feeb7203c5e` |
| 10 | `def` | [comp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/comp--5a0b7935808206bb58eb9417.md) | 82 | `declaration-track:5a0b7935808206bb58eb9417c5bc0a63c3efc7a11e11f1c8e1513813894817e7` |
| 11 | `theorem` | [comp_identity](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/comp-identity--fc2db75b1413db5ed29ed5eb.md) | 99 | `result-track:fc2db75b1413db5ed29ed5eb35c8fc7f3d0230acf9503dd99d9e8d80ce8db6b5` |
| 12 | `theorem` | [identity_comp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/identity-comp--ad28e65936555bc77590e13f.md) | 104 | `result-track:ad28e65936555bc77590e13f499464e3c22bbc91ca49b69b056760302e795614` |
| 13 | `theorem` | [comp_symm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/comp-symm--cab69ca406ce740bc56ce997.md) | 109 | `result-track:cab69ca406ce740bc56ce997afdbdc676d41034bcc4e1789b996d84ba73df79d` |
| 14 | `theorem` | [symm_comp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/symm-comp--68703410e4ce7be380740e34.md) | 114 | `result-track:68703410e4ce7be380740e34212e3415896f2ba5803d231fb2836a2b1b9b7332` |
| 15 | `theorem` | [comp_assoc](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/comp-assoc--7b3eb3f1936721aab0bb0288.md) | 119 | `result-track:7b3eb3f1936721aab0bb028868795273fbba81b321a31354dbfa62f838f5a56f` |
| 16 | `def` | [mapFamily](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/mapfamily--0ae01d06e652c7cb178c2632.md) | 126 | `declaration-track:0ae01d06e652c7cb178c263255bd4542479a0c43859dd9e4977f06f6cf51d6d6` |
| 17 | `def` | [familyEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/familyequiv--7894713507a9aa63b73a9aa5.md) | 137 | `declaration-track:7894713507a9aa63b73a9aa594af323ccd7089f24701eb5d25c975e9c6a42df3` |
| 18 | `def` | [bundleSectionEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/bundlesectionequiv--d9b0991a3591b3c5f546dde9.md) | 156 | `declaration-track:d9b0991a3591b3c5f546dde9ccc252a7d2e1a28426f5d6cce1ecbbb9bea63be5` |
| 19 | `theorem` | [bundleSectionEquiv_coordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/bundlesectionequiv-coordinate--6fde9db3f1d10733a05b6e62.md) | 161 | `result-track:6fde9db3f1d10733a05b6e6289eb44cf496de135dbc40bd65d5501ccf652ee06` |
| 20 | `theorem` | [mapFamily_comp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/mapfamily-comp--2b18091337b7f280fbccd7e1.md) | 169 | `result-track:2b18091337b7f280fbccd7e15496bdd31a46715fe63b50896be0cf29a129e5d5` |
| 21 | `theorem` | [transportedSection_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/transportedsection-continuous--0445f28e4e44370fb17ccdd1.md) | 176 | `result-track:0445f28e4e44370fb17ccdd1e85c4f3774821f27ff3df55258baf799954ccd95` |
| 22 | `def` | [changeFrames](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/changeframes--28a311f95185abe17ff9d8ff.md) | 189 | `declaration-track:28a311f95185abe17ff9d8ffdc0519cb20e96fb8e87091605981b9e22d82cf1a` |
| 23 | `def` | [changeFramesGauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/declarations/changeframesgauge--522e6d629aee62242258d717.md) | 222 | `declaration-track:522e6d629aee62242258d71781e932461a2b0b23e607fb5937f8aedf189a3404` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
