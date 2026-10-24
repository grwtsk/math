# Verification target: GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40dc27846be5127f03ff440eb84ac0c927c1a4a0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40dc27846be5127f03ff440eb84ac0c927c1a4a0`.

Source path: `GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/ScaledGaussianDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) — import line 20; pinned internal source present.
- `Mathlib.Analysis.Complex.Liouville` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianLog](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog--2718861328a8f0355635c462.md) | 31 | `declaration-track:2718861328a8f0355635c462af35cc2c42b121ce2021a9997045e473886d0171` |
| 2 | `lemma` | [gaussianLog_ofReal](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog-ofreal--13568e2928a7312210da306b.md) | 34 | `result-track:13568e2928a7312210da306b5f3a0d742f78d4e3d40166379b7f3d4dd731eaa7` |
| 3 | `lemma` | [gaussianLog_power_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog-power-bound--85c07ac5e50f2122e25e920f.md) | 36 | `result-track:85c07ac5e50f2122e25e920fd2707b7dcd02f7f874dec4cd325631edec4db540` |
| 4 | `lemma` | [iteratedDeriv_restrict_positive](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/iteratedderiv-restrict-positive--da021a3b0f2a601d45831f10.md) | 54 | `result-track:da021a3b0f2a601d45831f10ab4d1516402de0b28bcffabb8b35dd8ee6fdb502` |
| 5 | `lemma` | [gaussianLog_analytic](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog-analytic--9be3b39e0ea43a2c9b24dcbe.md) | 67 | `result-track:9be3b39e0ea43a2c9b24dcbe21bcd2a398a8f1f4b23dc7192a5998d882c60f75` |
| 6 | `lemma` | [gaussianLog_scaled_analytic](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog-scaled-analytic--c0d46562d03f782804cf7ade.md) | 72 | `result-track:c0d46562d03f782804cf7adec6d3b95189dc31064feeb39169cd0fcdbce3dba9` |
| 7 | `lemma` | [gaussianLog_scaled_disk_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog-scaled-disk-bound--4810a99c16eea3606103d766.md) | 77 | `result-track:4810a99c16eea3606103d7664f88fb15cbf307a94fb24921000b95b1dcf14567` |
| 8 | `lemma` | [gaussianLog_scaled_derivative_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/declarations/gaussianlog-scaled-derivative-bound--7df1f2dc52ffe3f4b441febf.md) | 110 | `result-track:7df1f2dc52ffe3f4b441febf840e8e659d90bec8b57da4be3a4d0ad3043a1222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
