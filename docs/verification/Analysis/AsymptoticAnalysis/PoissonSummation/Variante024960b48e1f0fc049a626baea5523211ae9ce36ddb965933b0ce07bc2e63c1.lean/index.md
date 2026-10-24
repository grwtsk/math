# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6181f9999b89fb90b0272db2278bcaa3e3d950fc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6181f9999b89fb90b0272db2278bcaa3e3d950fc`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.AddCircle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.FourierSchwartz` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Periodic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.fourierCoeff_tsum_comp_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/real-fouriercoeff-tsum-comp-add--cc91f780f33d6ba68142aa78.md) | 57 | `result-track:cc91f780f33d6ba68142aa78e9a66c61178e9b618322f2d9619b5855c219bab1` |
| 2 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/real-tsum-eq-tsum-fourierintegral--28bd6777c379028a0bd84298.md) | 107 | `result-track:28bd6777c379028a0bd84298ff5f54d911424d7c58763208c9f487532cbcd471` |
| 3 | `theorem` | [isBigO_norm_Icc_restrict_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/isbigo-norm-icc-restrict-attop--a181d4e70c000cdf39e5e1b3.md) | 129 | `result-track:a181d4e70c000cdf39e5e1b32c9a2eba3b1bc341fa31704906f28e81ca6a9ffc` |
| 4 | `theorem` | [isBigO_norm_Icc_restrict_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/isbigo-norm-icc-restrict-atbot--31033cc3128406cf19a4f50f.md) | 157 | `result-track:31033cc3128406cf19a4f50f58eaa49fdce2b4b17b64180a3be4039d241b74b3` |
| 5 | `theorem` | [isBigO_norm_restrict_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/isbigo-norm-restrict-cocompact--b362ff511999c7933b64428d.md) | 177 | `result-track:b362ff511999c7933b64428dd9233d8e9cd58c13407636cce2041a8a9ab466b5` |
| 6 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay-of-summable--e03518830944f11198368aaf.md) | 199 | `result-track:e03518830944f11198368aafef50add8098a4739f73839a8ff3a49e7330bc534` |
| 7 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay--414c29c004eaa64a4f9dea3d.md) | 210 | `result-track:414c29c004eaa64a4f9dea3d9e7b8cd00568533bb1a9f1c1e73408590658b6bd` |
| 8 | `theorem` | [SchwartzMap.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variante024960b48e1f0fc049a626baea5523211ae9ce36ddb965933b0ce07bc2e63c1.lean/declarations/schwartzmap-tsum-eq-tsum-fourierintegral--c16dc2d9cd8cfb1bf71f2c34.md) | 222 | `result-track:c16dc2d9cd8cfb1bf71f2c34f233f5941a89bffa24302ce1f0ce55c45c2227ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
