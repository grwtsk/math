# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt03.Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94ae0c2a41acd402737170296240746635a487ff",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94ae0c2a41acd402737170296240746635a487ff`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualLogCellMoment` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/cellkernel--e5afe61a638c43047ed28a9b.md) | 13 | `declaration-track:e5afe61a638c43047ed28a9bbc9975b75aeea4661bfdacb407c30d45b3ebcd63` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/cellderivative--dea8674b512449249c12f511.md) | 14 | `declaration-track:dea8674b512449249c12f5117e78b33df1d6c7e1adb8e042eb4426225e3858a4` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/derivativemajorant--5dbb727ae7c298484e8c1b17.md) | 15 | `declaration-track:5dbb727ae7c298484e8c1b17c31f651d6b6b6809aac5be09e82030ca2b7dce67` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/cellkernel-integrable--c50d451ac27c4b532ca5d672.md) | 17 | `result-track:c50d451ac27c4b532ca5d672734c7b6fd05f8391362d24870b69306b79ba7c7e` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/cellderivative-integrable--18ea1c5cafa3721146f4202b.md) | 27 | `result-track:18ea1c5cafa3721146f4202b4b4bc6ae4e0b5ba1e6f2aff10af868488932a8c6` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/cellkernel-hasderivat--a87150d532d6971a0aa26f73.md) | 38 | `result-track:a87150d532d6971a0aa26f738843cbfa6a652b4f6c3dbf23bab812534d1a3eaf` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variantcbf186d33e8c6c7f9c83694205cd5b59f266a72495cb6ec1405e3bb513ad982a.lean/declarations/cellderivative-bound--f71405296725462535bba118.md) | 53 | `result-track:f71405296725462535bba1180ac1486a63fad24d9dba74cea2bb7f365e668f13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
