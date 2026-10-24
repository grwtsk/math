# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8181ba79b818c7c1f68d9f16495945a97778fbec",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8181ba79b818c7c1f68d9f16495945a97778fbec`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.AddCircle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.fourierCoeff_tsum_comp_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/real-fouriercoeff-tsum-comp-add--5a2b02d696c388dd51957143.md) | 66 | `result-track:5a2b02d696c388dd519571434b5d5dd1bfc25f517de61964f105a29a7fa53f44` |
| 2 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/real-tsum-eq-tsum-fourierintegral--c8268e216d11dc3b5fc22687.md) | 117 | `result-track:c8268e216d11dc3b5fc22687746049ec2a613fe51461904f4b7b96ca8a27917d` |
| 3 | `theorem` | [isBigO_norm_Icc_restrict_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/isbigo-norm-icc-restrict-attop--2694d1c24d26f4ffc01465b7.md) | 141 | `result-track:2694d1c24d26f4ffc01465b70efaba1b1af748b3fb8d586114e3e1e97765ee11` |
| 4 | `theorem` | [isBigO_norm_Icc_restrict_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/isbigo-norm-icc-restrict-atbot--99f14e6f185797cdeaec3d1b.md) | 187 | `result-track:99f14e6f185797cdeaec3d1b94177c953887c802e7ad092f4a40a1a39cf072ab` |
| 5 | `theorem` | [isBigO_norm_restrict_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/isbigo-norm-restrict-cocompact--5f432b49bbe1a8e06c6c63fa.md) | 209 | `result-track:5f432b49bbe1a8e06c6c63fab664e28a3190bf8ca5600f320eefc4beab2885e1` |
| 6 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay-of-summable--f009d0212c8b0450c459239a.md) | 235 | `result-track:f009d0212c8b0450c459239ac713c9c1f54344180b93141de5f67620a1fe018e` |
| 7 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay--bc1c64b9e367ab3ac573d57d.md) | 250 | `result-track:bc1c64b9e367ab3ac573d57d650054b1a31551b24c67c8f7153325ac664a0d12` |
| 8 | `theorem` | [SchwartzMap.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant9dd87905e01e3196cee35501f48438931ca8273b637ed300c0bda196e1460f5b.lean/declarations/schwartzmap-tsum-eq-tsum-fourierintegral--7a15cbd666c2359598208e65.md) | 263 | `result-track:7a15cbd666c2359598208e652fbba1beffaa6955e4814bba5851f060c024d6af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
