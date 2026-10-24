# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AbsolutelyMonotone.Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ceef50b379e699cf11b28101149436f3d80dd3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ceef50b379e699cf11b28101149436f3d80dd3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean.json)

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
| 1 | `def` | [AbsolutelyMonotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/absolutelymonotoneon--08d1e0f6e8b49ace0c774531.md) | 65 | `declaration-track:08d1e0f6e8b49ace0c774531d0f9635200180f5ca8ce2880dac478fbce1553c8` |
| 2 | `theorem` | [contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/contdiffon--ea3060fdee5ccc76f163f9be.md) | 75 | `result-track:ea3060fdee5ccc76f163f9be4ae0c60eeb3d306e3e77744abafebc263f59882d` |
| 3 | `theorem` | [of_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/of-contdiff--20388fd84e5d0f3985eda4ae.md) | 81 | `result-track:20388fd84e5d0f3985eda4ae248778499aa1217c3456b3326b5d82489905f91d` |
| 4 | `theorem` | [iteratedDerivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/iteratedderivwithin-nonneg--3d1760e918b082faa2f6c3a0.md) | 88 | `result-track:3d1760e918b082faa2f6c3a0e8e0d1300fd0cfbb720f1869269c85c1e03ef4a4` |
| 5 | `theorem` | [iff_iteratedDerivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/iff-iteratedderivwithin-nonneg--b0a749eb601854f3dcd4540f.md) | 98 | `result-track:b0a749eb601854f3dcd4540f96ec2a4a1518909e45c96699e2b53328b03a889b` |
| 6 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/add--a58ce28e54808fd582210ec7.md) | 109 | `result-track:a58ce28e54808fd582210ec7c0439e260ab88746d826c59496bef5d0856d3d75` |
| 7 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/declarations/smul--f5bb07d0d07f03cfd52e247f.md) | 118 | `result-track:f5bb07d0d07f03cfd52e247fb6117b1ee4010d4ab76b90cbfdf91b41d9d80449` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
