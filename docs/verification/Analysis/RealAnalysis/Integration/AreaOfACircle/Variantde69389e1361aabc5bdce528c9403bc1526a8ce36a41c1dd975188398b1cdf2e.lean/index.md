# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AreaOfACircle.Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f34ad8696e8a7878febf99526ba4b2e312ed44",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f34ad8696e8a7878febf99526ba4b2e312ed44`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.InverseDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean/declarations/disc--9660ad68cae26df95a04fa15.md) | 64 | `declaration-track:9660ad68cae26df95a04fa15f72d23a33c11366685ddd3e76bd9b8e793ce7897` |
| 2 | `theorem` | [disc_eq_regionBetween](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean/declarations/disc-eq-regionbetween--3ff1e787aab02b78b1a0fac8.md) | 71 | `result-track:3ff1e787aab02b78b1a0fac82c4c9ae9a144c5beff47fca05a7b5032e63f8b38` |
| 3 | `theorem` | [measurableSet_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean/declarations/measurableset-disc--5109a6754e539af45f9d5abc.md) | 86 | `result-track:5109a6754e539af45f9d5abc9a3247e2ce6563eeb22b6c0404ed446335142796` |
| 4 | `theorem` | [area_disc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AreaOfACircle/Variantde69389e1361aabc5bdce528c9403bc1526a8ce36a41c1dd975188398b1cdf2e.lean/declarations/area-disc--91a174aa114e892347b29ee4.md) | 90 | `result-track:91a174aa114e892347b29ee45d31178931daccd40ef465c4edc9b795424d9faf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
