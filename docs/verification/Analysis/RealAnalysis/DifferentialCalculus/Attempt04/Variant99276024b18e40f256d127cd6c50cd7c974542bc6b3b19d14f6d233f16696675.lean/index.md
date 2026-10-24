# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt04.Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a95a61731336c20a77673a50b63556ebf9ad04d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a95a61731336c20a77673a50b63556ebf9ad04d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/cellkernel--06d8d38afbe41785d0ac5b7a.md) | 21 | `declaration-track:06d8d38afbe41785d0ac5b7a77be362f6ac61a0bf66f5bc0d79eceecdafd58eb` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/cellderivative--174f832d55f1a624d84d48ba.md) | 22 | `declaration-track:174f832d55f1a624d84d48badaef1e692e8c6eb7942318ae435c5ed4eb72c6c2` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/derivativemajorant--2d2165fbf23fd5402fd84e10.md) | 23 | `declaration-track:2d2165fbf23fd5402fd84e104c234104dd41e707650615aa52e8a71bfb2bd45d` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/cellkernel-integrable--8abfd4f5c248be2f60124a2c.md) | 25 | `result-track:8abfd4f5c248be2f60124a2c6e29a1a1414f763b4a381a3f63659f54b1e57c17` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/cellderivative-integrable--82fcefcf41744cde64b792ce.md) | 35 | `result-track:82fcefcf41744cde64b792ced2853d980bb39ca6971cdf87b68cf17e22bc3d8a` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/cellkernel-hasderivat--961c3dd29ed1b6dee82ac3ce.md) | 46 | `result-track:961c3dd29ed1b6dee82ac3ce6d5ad14bd178510f215d43326becf1785ca88a53` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/cellderivative-bound--88f897867c151dced449bb3a.md) | 61 | `result-track:88f897867c151dced449bb3a35d87975cc792f209fcf256da2cd991223cae9b3` |
| 8 | `theorem` | [term_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/term-hasderivat--b01529ecac899b98183719ea.md) | 81 | `result-track:b01529ecac899b98183719ea75da33cabe27b920a642dc270ad14a9dbcbe8983` |
| 9 | `theorem` | [term_hasDerivAt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant99276024b18e40f256d127cd6c50cd7c974542bc6b3b19d14f6d233f16696675.lean/declarations/term-hasderivat-one--9e491f98c99040573937ba25.md) | 106 | `result-track:9e491f98c99040573937ba25dbbbb3e1425cfd4c0365148e132e81caec8e7b35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
