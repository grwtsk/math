# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhysicalPrimitive.Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3a914dace183823ec6bc3384d4b47b84d943cd4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3a914dace183823ec6bc3384d4b47b84d943cd4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceBumpPeano` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean/declarations/primitive--b9248f9895a72033167ea734.md) | 10 | `declaration-track:b9248f9895a72033167ea734998881d3036f5f16c6813bf1a9bbb30761f20dfc` |
| 2 | `def` | [primitiveSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean/declarations/primitiveslope--b014aae1814f9364863f1b9d.md) | 13 | `declaration-track:b014aae1814f9364863f1b9d328c234c467e75013c97245b76605d1cc1fe8946` |
| 3 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean/declarations/primitive-hasderivat--b627dd10159a938d6ae55cf0.md) | 16 | `result-track:b627dd10159a938d6ae55cf0778041a9735b8a05035c61b76638411992395433` |
| 4 | `theorem` | [primitiveSlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PhysicalPrimitive/Variant64c0f9d13507138898f4b0ba76442e7f6bb07a2bd9b8d8b5684bf0225c3db842.lean/declarations/primitiveslope-hasderivat--5d8928bb0a957e4d95bc6331.md) | 27 | `result-track:5d8928bb0a957e4d95bc63316fcf1f61e6897b9c78d8b8191cab78e15733187c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
