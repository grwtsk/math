# Verification target: GRWTSK.Analysis.Asymptotics.SignedEnergyDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c7901370857dc6f95e1f3e81fa7416ab56c1cb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/SignedEnergyDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c7901370857dc6f95e1f3e81fa7416ab56c1cb`.

Source path: `GRWTSK/Analysis/Asymptotics/SignedEnergyDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/SignedEnergyDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion`](../../../../mathematics/Analysis/InnerProductSpace/MoebiusResponseGramExpansion.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBound.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TransformRoute](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/transformroute--66ce66bbbcf2cfe6ffa7b804.md) | 15 | `declaration-track:66ce66bbbcf2cfe6ffa7b80410ab8d6de737ca7cee52186f61000b5c5f156ebe` |
| 2 | `structure` | [ExactDecomposition](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/exactdecomposition--4b40e99589aa8a71e649979f.md) | 19 | `declaration-track:4b40e99589aa8a71e649979f48c600ed830af7be5c4476723da812ded131213e` |
| 3 | `def` | [signedSettlement](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/signedsettlement--5a68849b2f699ccf61c9873e.md) | 29 | `declaration-track:5a68849b2f699ccf61c9873ef0618862d47885467f578fe46e8db9ad997c7a63` |
| 4 | `def` | [RightLineTailBound](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/rightlinetailbound--22857c7df5c73932b4c6587e.md) | 32 | `declaration-track:22857c7df5c73932b4c6587e297948c3c93cc9aea0c78eeca3199959b55c080b` |
| 5 | `def` | [SignedSettlementBound](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/signedsettlementbound--b56d74e0c498f7701325f7c5.md) | 35 | `declaration-track:b56d74e0c498f7701325f7c5fc475b98d54fd0eef5fcd0e5ab40eb8a239ca607` |
| 6 | `theorem` | [assembly_implies_literal_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/assembly-implies-literal-p04--2979b5dfd9a6fbda09215376.md) | 40 | `result-track:2979b5dfd9a6fbda09215376f9eb3697766f8ef1b867c985c463fd5c5b7690ba` |
| 7 | `def` | [TransformRouteConstruction](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/transformrouteconstruction--dcadf33529d4deb9396e7dee.md) | 63 | `declaration-track:dcadf33529d4deb9396e7dee540314eda7d66b8d93cc8d63e13900adfa9fedf2` |
| 8 | `theorem` | [transform_route_implies_P04](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/transform-route-implies-p04--94338a7f6c199f0a2c9c0fd6.md) | 68 | `result-track:94338a7f6c199f0a2c9c0fd64c8074e260c0f4963e19506845a9f09320953ed3` |
| 9 | `theorem` | [right_tail_majorant](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/right-tail-majorant--76215f6472600aa14aef2b95.md) | 73 | `result-track:76215f6472600aa14aef2b958c304efe01024a736922721ff27a0da60c503d08` |
| 10 | `theorem` | [right_tail_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/right-tail-bound--ecfff6c47b859a4c92312d17.md) | 87 | `result-track:ecfff6c47b859a4c92312d17c43a4348038375da690d965a30ee4665b87ef32f` |
| 11 | `theorem` | [external_height_cancellation](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/external-height-cancellation--f2790035e00dcce7e3d6015a.md) | 103 | `result-track:f2790035e00dcce7e3d6015ae54389f7cd80aae3dabdabc241c5cb4e60db59f5` |
| 12 | `def` | [AnalyticClosureConstruction](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/analyticclosureconstruction--4bdaef74642680c113af7c03.md) | 113 | `declaration-track:4bdaef74642680c113af7c0319071efc2ced0bf92bc9051f4211bab7e98eb7d7` |
| 13 | `theorem` | [assembled_route_implies_literal_RH](../../../../mathematics/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition__SourceOccurrence4741b610cd3f0d63b00b71ad.lean/declarations/assembled-route-implies-literal-rh--cf7dc1d7ca00abd5fd0873f7.md) | 117 | `result-track:cf7dc1d7ca00abd5fd0873f79f6a1cb31463f067546a2c528e0220d413e93b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
