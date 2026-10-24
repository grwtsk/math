# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "128063da36f09da4c457724d1c6b0805a4a1da8e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `128063da36f09da4c457724d1c6b0805a4a1da8e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/uniquemdiffwithinat-iff-uniquediffwithinat--8d9c9d84669da0e85240943e.md) | 34 | `result-track:8d9c9d84669da0e85240943ec29a5f39579260090edf5dcdd939c158eea036d3` |
| 2 | `theorem` | [uniqueMDiffOn_iff_uniqueDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/uniquemdiffon-iff-uniquediffon--6c160a61772085936b179522.md) | 41 | `result-track:6c160a61772085936b17952207388210b46ce5956019e9f9a260078c0b07bb71` |
| 3 | `theorem` | [ModelWithCorners.uniqueMDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/modelwithcorners-uniquemdiffon--954a66f14db771776e2165a6.md) | 46 | `result-track:954a66f14db771776e2165a650d4af39c71d82292497e20cfafd0cde2549c8e8` |
| 4 | `theorem` | [writtenInExtChartAt_model_space](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/writteninextchartat-model-space--563c715752631e81d3c0562b.md) | 51 | `result-track:563c715752631e81d3c0562bd95ccd49830ac2bc6947ad78da3139e31ae3ce4c` |
| 5 | `theorem` | [hasMFDerivWithinAt_iff_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/hasmfderivwithinat-iff-hasfderivwithinat--3d622d1a3eb04a9cfe541c5b.md) | 54 | `result-track:3d622d1a3eb04a9cfe541c5b2dffbdd729d5ebd7280db80a78a60c9c15dbb1ba` |
| 6 | `theorem` | [hasMFDerivAt_iff_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/hasmfderivat-iff-hasfderivat--0767018f48e8551999e98136.md) | 62 | `result-track:0767018f48e8551999e981360d0e2617e83b771b09c75caa147a544ff2b0c518` |
| 7 | `theorem` | [mdifferentiableWithinAt_iff_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/mdifferentiablewithinat-iff-differentiablewithinat--b9e65eed0e0aa0017234d81e.md) | 70 | `result-track:b9e65eed0e0aa0017234d81e5e7b364e942ba12f604f4ea7b67ce3e4b353f35a` |
| 8 | `theorem` | [mdifferentiableAt_iff_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/mdifferentiableat-iff-differentiableat--095167ce881eb2bc55a809ee.md) | 80 | `result-track:095167ce881eb2bc55a809ee9edc8a0704e7f16a1445bb714fb196fbcf57735d` |
| 9 | `theorem` | [mdifferentiableOn_iff_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/mdifferentiableon-iff-differentiableon--3344205839139a1fb9c160b8.md) | 89 | `result-track:3344205839139a1fb9c160b805a90594df23e0d2c42ac9fb3ff1481653751711` |
| 10 | `theorem` | [mdifferentiable_iff_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/mdifferentiable-iff-differentiable--a3a2f6beac8d2847c9388e9b.md) | 98 | `result-track:a3a2f6beac8d2847c9388e9b6e67b5b4d24087b85e6e2cca5af06b2754245f8d` |
| 11 | `theorem` | [mfderivWithin_eq_fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/mfderivwithin-eq-fderivwithin--81f97b0ed652179c59b63735.md) | 107 | `result-track:81f97b0ed652179c59b637356f0b48adf5922180744ef62a40bd0492f16ec86e` |
| 12 | `theorem` | [mfderiv_eq_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant74b84fbd784b3d00adf48512d4cfbb76049f02abe0c5e97bd4e1aeb4d599895e.lean/declarations/mfderiv-eq-fderiv--7b19210a0e48f8f81fc3dca3.md) | 117 | `result-track:7b19210a0e48f8f81fc3dca372088519452527acff966de9d3e0dd65ce267be5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
