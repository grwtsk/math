# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c643b6983078ecf242cf01dd2221ab2152d1927",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c643b6983078ecf242cf01dd2221ab2152d1927`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/uniquemdiffwithinat-iff-uniquediffwithinat--83b68fd82b7c47d5072b1fb6.md) | 31 | `result-track:83b68fd82b7c47d5072b1fb6e07576ee9f0360f637a0c8d02a405a2a1f026a6f` |
| 2 | `theorem` | [uniqueMDiffOn_iff_uniqueDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/uniquemdiffon-iff-uniquediffon--ae2911e3853d051b9aeae5fd.md) | 39 | `result-track:ae2911e3853d051b9aeae5fdd42d29261df2383d282af2e08a25c21872521c59` |
| 3 | `theorem` | [ModelWithCorners.uniqueMDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/modelwithcorners-uniquemdiffon--af25567ad58879b995b7e244.md) | 44 | `result-track:af25567ad58879b995b7e24408df9ee325d3047acb84f5e6a40ccd07d1f8b714` |
| 4 | `theorem` | [writtenInExtChartAt_model_space](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/writteninextchartat-model-space--acc495d7e0011e1aafc2ceab.md) | 49 | `result-track:acc495d7e0011e1aafc2ceabf737096836ff77fb675f0861760f5d4aee8fbeee` |
| 5 | `theorem` | [hasMFDerivWithinAt_iff_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/hasmfderivwithinat-iff-hasfderivwithinat--11aa7c91688a2bb2e0b78b47.md) | 55 | `result-track:11aa7c91688a2bb2e0b78b4727fa108f9d398f1d84a770a8a22927ebf5ea4025` |
| 6 | `theorem` | [hasMFDerivAt_iff_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/hasmfderivat-iff-hasfderivat--5b1a6ed1de28d45f7ee26696.md) | 64 | `result-track:5b1a6ed1de28d45f7ee26696710d9a1576aa3e164e7bbf26e39796597ef313e9` |
| 7 | `theorem` | [mdifferentiableWithinAt_iff_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/mdifferentiablewithinat-iff-differentiablewithinat--61c8f69893c9f0d8983350cb.md) | 71 | `result-track:61c8f69893c9f0d8983350cb535828e7c5fdb8103bb2a494cb6cff42ab61268d` |
| 8 | `theorem` | [mdifferentiableAt_iff_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/mdifferentiableat-iff-differentiableat--6e0152154de36aff833a9b4f.md) | 81 | `result-track:6e0152154de36aff833a9b4faf0371fbdf92cd02be6828f5d7b3abded4a699aa` |
| 9 | `theorem` | [mdifferentiableOn_iff_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/mdifferentiableon-iff-differentiableon--61191a79c9d61d73dbba32bd.md) | 90 | `result-track:61191a79c9d61d73dbba32bdecb0d7a070c7fe0ecdb06f5cd25281d84fd8f951` |
| 10 | `theorem` | [mdifferentiable_iff_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant164617fb3bc4ea368ed73cf0d953804a2562901f8855519ff10d11b30e8fd262.lean/declarations/mdifferentiable-iff-differentiable--a607c0b8a0828bae84a1f17a.md) | 99 | `result-track:a607c0b8a0828bae84a1f17af8135cbca216cf57121a44c24cf5263e173fbb6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
