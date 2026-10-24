# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Calculus.Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed0564bdde000ef414fe36823998171035f24382",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed0564bdde000ef414fe36823998171035f24382`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/macro-rules--53542429a03498deaaaf6fb8.md) | 33 | `declaration-track:53542429a03498deaaaf6fb8e944a87262effd525ea0707d8b08b02becca1a76` |
| 2 | `theorem` | [ContDiffWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/contdiffwithinat-inversion--c343891639a9d83242458058.md) | 47 | `result-track:c343891639a9d832424580581d9fa4e4389194d630e8b0d3851f321ead285041` |
| 3 | `theorem` | [ContDiffOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/contdiffon-inversion--046b9b5d30bad0c58f85bc32.md) | 52 | `result-track:046b9b5d30bad0c58f85bc32fb67a8f7489dd8c63fa0944203506f1b49f0d788` |
| 4 | `theorem` | [ContDiffAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/contdiffat-inversion--9e13c4062b517b49746affcd.md) | 57 | `result-track:9e13c4062b517b49746affcd5e7bc082f6e67ef59e81766e50a2b350f6b1089e` |
| 5 | `theorem` | [ContDiff.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/contdiff-inversion--da1b7b4c0c007074f06e4738.md) | 62 | `result-track:da1b7b4c0c007074f06e47388c58cfc40b4c735968f59a3b30db0175baac1c89` |
| 6 | `theorem` | [DifferentiableWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/differentiablewithinat-inversion--7a047094dbba54ea82fb701c.md) | 67 | `result-track:7a047094dbba54ea82fb701c962adcf47e90d940e5700d5f351cc65143484fa8` |
| 7 | `theorem` | [DifferentiableOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/differentiableon-inversion--50e9642410a84b30c8f350d2.md) | 73 | `result-track:50e9642410a84b30c8f350d2c77bf7a4373c15a19cf1327790f879190509fd83` |
| 8 | `theorem` | [DifferentiableAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/differentiableat-inversion--7de0337a1772da7e0b2798b4.md) | 78 | `result-track:7de0337a1772da7e0b2798b4edac89607f463ec8f9fdaaadca6fa67513f601e8` |
| 9 | `theorem` | [Differentiable.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/differentiable-inversion--baa6718275519739b76aa188.md) | 84 | `result-track:baa6718275519739b76aa1886d537ea8489dc6a59d4bb3ae077b05d540fb26b0` |
| 10 | `theorem` | [hasFDerivAt_inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant293a7480fe1966080aa0d9da842a136ecfcaa3fb16e2d430e1fc4481eb5c8829.lean/declarations/hasfderivat-inversion--724785195cc4c1e50a4a41bf.md) | 96 | `result-track:724785195cc4c1e50a4a41bf887563f6a9433174c0e4151d518737401a17ece2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
