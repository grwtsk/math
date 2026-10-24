# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PoissonSummation.Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07ea4e1a5eb724e2e068edc41691f1e2ed36683f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07ea4e1a5eb724e2e068edc41691f1e2ed36683f`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.AddCircle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.FourierSchwartz` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Periodic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.fourierCoeff_tsum_comp_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/real-fouriercoeff-tsum-comp-add--f66b206c6697472d4fdc8141.md) | 49 | `result-track:f66b206c6697472d4fdc81418542e566112d426a002f3159c9d6b7c5d56c193d` |
| 2 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/real-tsum-eq-tsum-fourierintegral--f83152c267ad3a1816d5c3c1.md) | 99 | `result-track:f83152c267ad3a1816d5c3c1f82363e997b424b5dcb87552279c7eaf43c2aebc` |
| 3 | `theorem` | [isBigO_norm_Icc_restrict_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/isbigo-norm-icc-restrict-attop--89e473d7fee03421aa8f7688.md) | 121 | `result-track:89e473d7fee03421aa8f7688d9103ea9a04f66a63ccb0778b492480cc7f95a83` |
| 4 | `theorem` | [isBigO_norm_Icc_restrict_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/isbigo-norm-icc-restrict-atbot--b379685d556a74330f557848.md) | 149 | `result-track:b379685d556a74330f55784814bde74059f672aa62bb4d9b55f294a2aeb1afe5` |
| 5 | `theorem` | [isBigO_norm_restrict_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/isbigo-norm-restrict-cocompact--0970b3bfd3622d14753ce950.md) | 169 | `result-track:0970b3bfd3622d14753ce950dfcdcc6105622da398c431b1ccfdd38d1429f24a` |
| 6 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay-of-summable--bb12059048b4af9bba8ecc8c.md) | 191 | `result-track:bb12059048b4af9bba8ecc8c94a475dbb75da0bb2564c5bd05241454ba9d6ab8` |
| 7 | `theorem` | [Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/real-tsum-eq-tsum-fourierintegral-of-rpow-decay--b372f7983e398ef20ba16b59.md) | 202 | `result-track:b372f7983e398ef20ba16b59d8ac0110939e7382e13cf240cbc1f84ecc250750` |
| 8 | `theorem` | [SchwartzMap.tsum_eq_tsum_fourierIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/PoissonSummation/Variant19627f647d0852d82404514578b80e69c96b99eaed99d2922f9cc66c437ae6a7.lean/declarations/schwartzmap-tsum-eq-tsum-fourierintegral--22761e1550d54a60adb8c775.md) | 214 | `result-track:22761e1550d54a60adb8c775a5a7e352036448c4839df682cf3f0853136df355` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
