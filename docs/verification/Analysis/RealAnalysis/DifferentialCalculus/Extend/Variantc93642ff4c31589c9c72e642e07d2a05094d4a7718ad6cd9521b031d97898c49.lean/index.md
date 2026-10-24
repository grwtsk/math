# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Extend.Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e14f74ffb834f8c4a36f10ae9b762e15361e2b7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e14f74ffb834f8c4a36f10ae9b762e15361e2b7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.MeanValue` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFDerivWithinAt_closure_of_tendsto_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/declarations/hasfderivwithinat-closure-of-tendsto-fderiv--63f1d27b96e163d6187553b2.md) | 40 | `result-track:63f1d27b96e163d6187553b25d7af68b31153711d15c3a367a8fc36115a563b7` |
| 2 | `theorem` | [hasDerivWithinAt_Ici_of_tendsto_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/declarations/hasderivwithinat-ici-of-tendsto-deriv--bf979b74f81b4b4f131f0f84.md) | 113 | `result-track:bf979b74f81b4b4f131f0f84a284cf156f15daa14ac201f58068abc42fd5c234` |
| 3 | `theorem` | [hasDerivWithinAt_Iic_of_tendsto_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/declarations/hasderivwithinat-iic-of-tendsto-deriv--0ca42fb79ddf8cbac4115bfd.md) | 147 | `result-track:0ca42fb79ddf8cbac4115bfd9f805456aff554d2d300d5fbcc169e36df96c06b` |
| 4 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/declarations/hasderivat-of-hasderivat-of-ne--4318583dcf103505ed5e2670.md) | 182 | `result-track:4318583dcf103505ed5e2670e93ae80699f13374d4a1c8bd7e4147ba8fed573c` |
| 5 | `theorem` | [hasDerivAt_of_hasDerivAt_of_ne'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Extend/Variantc93642ff4c31589c9c72e642e07d2a05094d4a7718ad6cd9521b031d97898c49.lean/declarations/hasderivat-of-hasderivat-of-ne--516910413b4434cdbdb7292f.md) | 215 | `result-track:516910413b4434cdbdb7292f7ec20941c6ea8a546a243c5a5228a60b72e91879` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
