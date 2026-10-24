# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Calculus.Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57f10f4e288cae10e534ab2476ba8d95d3f87e00",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57f10f4e288cae10e534ab2476ba8d95d3f87e00`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Inversion.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContDiffWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/contdiffwithinat-inversion--0f47b490daa806b65bfc8799.md) | 38 | `result-track:0f47b490daa806b65bfc8799cb7dd3555ba20f408ef01225a67abf7da2252d74` |
| 2 | `theorem` | [ContDiffOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/contdiffon-inversion--d6c0f0cb4b35755705888bc7.md) | 43 | `result-track:d6c0f0cb4b35755705888bc7264f4c7112e25be32daa493899086ebe56f47a63` |
| 3 | `theorem` | [ContDiffAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/contdiffat-inversion--f9af14ff83189db86be7b2bb.md) | 48 | `result-track:f9af14ff83189db86be7b2bbaae6fbe0ec3b8055166c8fbdd71279a547fe977c` |
| 4 | `theorem` | [ContDiff.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/contdiff-inversion--5f093678a4816b07f61bcff2.md) | 53 | `result-track:5f093678a4816b07f61bcff21e99d8505efbdd8e4f937deb9ffc06e56c44fbb9` |
| 5 | `theorem` | [DifferentiableWithinAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/differentiablewithinat-inversion--711b0c74eabbe0a4bf0b306b.md) | 58 | `result-track:711b0c74eabbe0a4bf0b306b3b919ce9930085f9b4b6a8acfe767c3707e9baaf` |
| 6 | `theorem` | [DifferentiableOn.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/differentiableon-inversion--2b9076d8d08156e0945c77b7.md) | 64 | `result-track:2b9076d8d08156e0945c77b73a97a44810cff6cde09d9f7638b6ffbd56388c3b` |
| 7 | `theorem` | [DifferentiableAt.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/differentiableat-inversion--5525686dc85a1e21180d52f8.md) | 69 | `result-track:5525686dc85a1e21180d52f8d7f3299ea3f030cbacd9e761bac290f8e638bdd3` |
| 8 | `theorem` | [Differentiable.inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/differentiable-inversion--242d9427d86a270dcc617fa4.md) | 75 | `result-track:242d9427d86a270dcc617fa4c912101395bbd9171929550db1a0dcdc600533ec` |
| 9 | `theorem` | [hasFDerivAt_inversion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant1ebaf0df2c62f6c058374f8deac827d7ebd9752fc31ad9842de082f624a6bf77.lean/declarations/hasfderivat-inversion--2d711f9ed9168d3a777d536c.md) | 87 | `result-track:2d711f9ed9168d3a777d536c27613b5e2c3e8a4e4459394443ce4c7d9ecf2d19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
