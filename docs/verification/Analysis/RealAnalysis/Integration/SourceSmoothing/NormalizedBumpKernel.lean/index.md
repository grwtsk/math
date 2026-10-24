# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.NormalizedBumpKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "845f686a81418ed16de8a37a9a0ceedd249add59",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `845f686a81418ed16de8a37a9a0ceedd249add59`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/smoothingbump--b8e2a8476428067d19663bf6.md) | 52 | `declaration-track:b8e2a8476428067d19663bf6e11e91fd2371278f762980d056849c8fd310a8f5` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier--343187b93c4c936046d665d8.md) | 59 | `declaration-track:343187b93c4c936046d665d840186b0a026c3e3abb00d68d8d71fad6f31fe4c9` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-nonneg--ec16ab4e1735d88ac93c4015.md) | 63 | `result-track:ec16ab4e1735d88ac93c4015a6dfc14b7679301261ebcd16c2439b46895de706` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-even--df435fe49fd2f8f9bcbb7979.md) | 68 | `result-track:df435fe49fd2f8f9bcbb7979d006036dcd9a0ac34c6b0999942dad212ecb4c52` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-contdiff--d5089fa9369d18c59238fc97.md) | 72 | `result-track:d5089fa9369d18c59238fc97cee6c9167e8aaa6e02129958b21578fe6d9e59c9` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-integrable--40fc10e1ca9ca2d13cdc94b8.md) | 77 | `result-track:40fc10e1ca9ca2d13cdc94b8978a06bc079d8695ec82fab4845aa3a1dea80a1e` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-integral--f8bc3901d253580b00bd1295.md) | 82 | `result-track:f8bc3901d253580b00bd1295c1f47a6eb5bb4dd947473107a9a87e2ffecf01e6` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-support--681e9fa6b224b11ceb50ec40.md) | 87 | `result-track:681e9fa6b224b11ceb50ec400b83578cfb56cb2d96cb39b0b9faa3a583353a7e` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-tsupport--b3d2960c83196a7a70092e8b.md) | 93 | `result-track:b3d2960c83196a7a70092e8b267ec787840e2e2fa6e14141745c6b69662472b6` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSmoothing/NormalizedBumpKernel.lean/declarations/mollifier-hascompactsupport--6ae0c593c6704bdba589ddad.md) | 99 | `result-track:6ae0c593c6704bdba589ddadb8f1ff9808d049713f4956da7a01eafbb739354c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
