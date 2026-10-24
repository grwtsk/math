# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab09219a031b27024db0168a02124f3ec16c9df",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab09219a031b27024db0168a02124f3ec16c9df`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.fourierCoeff_tsum_comp_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/real-fouriercoeff-tsum-comp-add--63d7ed4cb3904e685847f38f.md) | 58 | `result-track:63d7ed4cb3904e685847f38fe67ce4846eb3fff93f11db8f46204ce3e1339696` |
| 2 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/real-tsum-eq-tsum-fourierintegral--d3e7f11ca642865030ab3d65.md) | 109 | `result-track:d3e7f11ca642865030ab3d653d7c43bc5f9fe41be822953cc362e87c0b13727e` |
| 3 | `theorem` | [isBigO_norm_Icc_restrict_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/isbigo-norm-icc-restrict-attop--d021df048c7cadef2cd7e646.md) | 133 | `result-track:d021df048c7cadef2cd7e6463930f1012b1a2a864ba423d718ed5764e99c1ed7` |
| 4 | `theorem` | [isBigO_norm_Icc_restrict_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/isbigo-norm-icc-restrict-atbot--581b2760ce6a0d9f5e337ace.md) | 179 | `result-track:581b2760ce6a0d9f5e337ace99b2f95465a0ef355679502620da6685f032b740` |
| 5 | `theorem` | [isBigO_norm_restrict_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/isbigo-norm-restrict-cocompact--c814080733ef579f31ac6b88.md) | 201 | `result-track:c814080733ef579f31ac6b888d0f629176cc7fdd6471d3f0f21589fce52fa604` |
| 6 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay-of-summable--9d5cb84b26dd16a8cf530743.md) | 227 | `result-track:9d5cb84b26dd16a8cf53074330742ee774152b70db7cd8bc12f6fcd68e997e0a` |
| 7 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay--edca5b9d69aaaf9bcd0bcc0c.md) | 242 | `result-track:edca5b9d69aaaf9bcd0bcc0ce636986b6336b6306d59b734bab6bfb48da54343` |
| 8 | `theorem` | [SchwartzMap.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variantb732f9141b785c5fe8b0429c58a0dc1d38989f90f40dea4363200dbb0b3c1597.lean/declarations/schwartzmap-tsum-eq-tsum-fourierintegral--383d5f2cc83b7f4e7d43c467.md) | 255 | `result-track:383d5f2cc83b7f4e7d43c46783a010a8fcf523bbf3a947824c066b49d525391f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
