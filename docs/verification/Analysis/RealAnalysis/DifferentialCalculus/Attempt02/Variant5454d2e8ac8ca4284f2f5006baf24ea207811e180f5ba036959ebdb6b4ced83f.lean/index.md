# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt02.Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "901d69ed0a4dd314405859bbc78d4957d906bbcd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `901d69ed0a4dd314405859bbc78d4957d906bbcd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean.json)

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
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/cellkernel--fad0a4a86eabc176ed33ee33.md) | 21 | `declaration-track:fad0a4a86eabc176ed33ee331c4eeda24e4ea5ba313c6f54cde742b30e86f7e9` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/cellderivative--af053f28c7c6b8d8df34f048.md) | 22 | `declaration-track:af053f28c7c6b8d8df34f0482f4827e83b1a666fb4969eb3e21904f55d9a3f96` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/derivativemajorant--5dd5126c969b6933e6f78b04.md) | 23 | `declaration-track:5dd5126c969b6933e6f78b04d61b80e715ee60cc8e9e9d6b8b97e598be02af86` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/cellkernel-integrable--5e58ac28976a6ce03d6a1a3c.md) | 25 | `result-track:5e58ac28976a6ce03d6a1a3cdebbbe19453829cf42b2836bf97224613cb64e3f` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/cellderivative-integrable--e89244d2fa00dbd72b0e8d02.md) | 35 | `result-track:e89244d2fa00dbd72b0e8d028e912ad0d45e33c0087699b9d7d9e7006b2fabe5` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/cellkernel-hasderivat--5263194f4115569237a74c25.md) | 46 | `result-track:5263194f4115569237a74c25890df6927bd0b987054d18837ca279a94d850a6e` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variant5454d2e8ac8ca4284f2f5006baf24ea207811e180f5ba036959ebdb6b4ced83f.lean/declarations/cellderivative-bound--fb6ec1f0229c23fb188d11fd.md) | 62 | `result-track:fb6ec1f0229c23fb188d11fd58c0450b378c7b9e35a1906a9cf4262df781234c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
