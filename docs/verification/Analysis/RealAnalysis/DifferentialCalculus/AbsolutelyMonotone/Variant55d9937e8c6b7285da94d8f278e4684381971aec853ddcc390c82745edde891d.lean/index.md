# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AbsolutelyMonotone.Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d8455c05544334897a8f2c6dea3702dec49be1f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d8455c05544334897a8f2c6dea3702dec49be1f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean.json)

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
| 1 | `def` | [AbsolutelyMonotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/absolutelymonotoneon--b4066c52dafdc9364597219a.md) | 57 | `declaration-track:b4066c52dafdc9364597219ac7f4dbd75381cdb0e85737364ec54e601e30eee4` |
| 2 | `theorem` | [contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/contdiffon--508d5b3c95eab01bdeb18f3e.md) | 67 | `result-track:508d5b3c95eab01bdeb18f3e7250e88cf5b3903195f1f6a1481849cff0dc2640` |
| 3 | `theorem` | [of_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/of-contdiff--f7ec2b2e3d5f275a99a13b60.md) | 73 | `result-track:f7ec2b2e3d5f275a99a13b6009318c59f522c84d1a18faf9b112266ec968a45f` |
| 4 | `theorem` | [iteratedDerivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/iteratedderivwithin-nonneg--875860883715eabf4ad3ab8f.md) | 80 | `result-track:875860883715eabf4ad3ab8f3a27e9f10cbb2c413adf48c3b172672bbacc184d` |
| 5 | `theorem` | [iff_iteratedDerivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/iff-iteratedderivwithin-nonneg--003754ac9bd2159e81f7c09f.md) | 90 | `result-track:003754ac9bd2159e81f7c09f22dd419e870da7be8b6ad35a6afd4e0a367841d3` |
| 6 | `theorem` | [add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/add--a3ce148034a7edc8d3de7453.md) | 101 | `result-track:a3ce148034a7edc8d3de74534262c4e3ca11248691e3118b75356457472eb644` |
| 7 | `theorem` | [smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant55d9937e8c6b7285da94d8f278e4684381971aec853ddcc390c82745edde891d.lean/declarations/smul--0acdb5f3f8dcb906b20bed55.md) | 110 | `result-track:0acdb5f3f8dcb906b20bed5532beae6acf19e84f3e81d0405921722103004b09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
