# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourcePrimitiveMass.Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef1259e08891e031481a8bbc4468bf3b497bddcd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef1259e08891e031481a8bbc4468bf3b497bddcd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [expHalfMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/declarations/exphalfmoment-integrable--f17e0cdc29f7d848216217a2.md) | 16 | `result-track:f17e0cdc29f7d848216217a28c1eb694d6db9c3069fa2347491f83a524170612` |
| 2 | `theorem` | [expHalfMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/declarations/exphalfmoment-integral--5697372ae34c2070e75d81c7.md) | 37 | `result-track:5697372ae34c2070e75d81c72af20d742bcb193044b65a942f31147f741ac9b8` |
| 3 | `theorem` | [reflectedEnvelope_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/declarations/reflectedenvelope-integrable--2fabbf96f0d43117c7d1bcbc.md) | 50 | `result-track:2fabbf96f0d43117c7d1bcbc0c46182218d7d447b714f315f4fabdb4967aed46` |
| 4 | `theorem` | [reflectedEnvelope_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/declarations/reflectedenvelope-integral--4245d26590a305d9e64f5392.md) | 62 | `result-track:4245d26590a305d9e64f53924b41785d916d6391ab14cc58e0a635244500c272` |
| 5 | `theorem` | [reflectedPrimitive_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/declarations/reflectedprimitive-intervalintegrable--6551627475d450ba2bf99199.md) | 79 | `result-track:6551627475d450ba2bf99199a3330139d1fbc1813491b6cbca20c9d250ed6cca` |
| 6 | `theorem` | [reflectedPrimitive_mass_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourcePrimitiveMass/Variant0dfb3d489dca8438f12638648d3237a241f95ba096e81d930866a853d35bd1ea.lean/declarations/reflectedprimitive-mass-bounds--45488bb74dae4214773b896f.md) | 87 | `result-track:45488bb74dae4214773b896fc877b82175e560c1e57518065f32ef11b084d4bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
