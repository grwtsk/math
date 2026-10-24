# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Attempt01.Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d69392b7e042dc18a6ee22c514f4a7f70bbf5aa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d69392b7e042dc18a6ee22c514f4a7f70bbf5aa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean.json)

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
| 1 | `def` | [cellKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/cellkernel--c4dbeaed0de96049aa0c315b.md) | 13 | `declaration-track:c4dbeaed0de96049aa0c315bf7ff8fa9d17aa0e11c6a3b81abc19a04bbced6ac` |
| 2 | `def` | [cellDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/cellderivative--a490f631f4cdce15604b88fa.md) | 14 | `declaration-track:a490f631f4cdce15604b88faa00253806d57a1d68f42f9df38785f027063d1d2` |
| 3 | `def` | [derivativeMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/derivativemajorant--4042c7bf7d58b0c59c90080d.md) | 15 | `declaration-track:4042c7bf7d58b0c59c90080d2efab8bbf6576721be10883d889381fe5f1cf91d` |
| 4 | `theorem` | [cellKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/cellkernel-integrable--3b1e04431774c8271825923b.md) | 17 | `result-track:3b1e04431774c8271825923bad839d6bf371e858bde2689cf2eec5c4bf64f50d` |
| 5 | `theorem` | [cellDerivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/cellderivative-integrable--609d5a50db579fbece4fd608.md) | 27 | `result-track:609d5a50db579fbece4fd60841cb838b7fbeeed482c1ba4eef0d7f4443086659` |
| 6 | `theorem` | [cellKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/cellkernel-hasderivat--accd7cab1015e4479294b552.md) | 38 | `result-track:accd7cab1015e4479294b552e5c861cae910da51ed0a5e0e039ada81292fcb00` |
| 7 | `theorem` | [cellDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Varianteeb5c9463c06b78f8504255cc5f769cd6b254089ca96d4099d92036fb06a1245.lean/declarations/cellderivative-bound--d64c50e04bacd0ac53073114.md) | 48 | `result-track:d64c50e04bacd0ac53073114f825d208f2f315f5a20a2024a8e9b55640c4c077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
