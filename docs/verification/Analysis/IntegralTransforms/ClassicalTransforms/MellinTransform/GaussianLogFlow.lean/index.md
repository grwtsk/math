# Verification target: GRWTSK.Analysis.MellinTransform.GaussianLogFlow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0050cb011b95a33418ae424ca38aaca61820575c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianLogFlow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0050cb011b95a33418ae424ca38aaca61820575c`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianLogFlow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianLogFlow.lean.json)

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
| 1 | `def` | [gaussianFlow](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/declarations/gaussianflow--3d480c66994432788bd4aba8.md) | 31 | `declaration-track:3d480c66994432788bd4aba8255f8457d4fc2adee1f87d19fd6304363be04d85` |
| 2 | `lemma` | [gaussianFlow_analytic](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/declarations/gaussianflow-analytic--816b65b070b32cc7c06406ca.md) | 34 | `result-track:816b65b070b32cc7c06406caed6f005ba6f826ba7279c94cbaa0767fa1d20854` |
| 3 | `lemma` | [gaussianFlow_real](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/declarations/gaussianflow-real--935306f3d93c9f55ce6d64af.md) | 37 | `result-track:935306f3d93c9f55ce6d64af00944e7ffeabc21b9ea99f520462422681fc157f` |
| 4 | `lemma` | [iteratedDeriv_restrict_real](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/declarations/iteratedderiv-restrict-real--67d9760c4d2a6c1021eba7f4.md) | 43 | `result-track:67d9760c4d2a6c1021eba7f495dcbd1736504915ab73901956c51981e7b7fccd` |
| 5 | `lemma` | [gaussianFlow_disk_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/declarations/gaussianflow-disk-bound--f12a8a1ce5b670ac681c8a8b.md) | 56 | `result-track:f12a8a1ce5b670ac681c8a8b8c8f81e85537f38a017ffbb2c118bba042671b76` |
| 6 | `lemma` | [gaussianFlow_derivative_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianLogFlow.lean/declarations/gaussianflow-derivative-bound--7265e1f592a2d7332290916f.md) | 92 | `result-track:7265e1f592a2d7332290916f41a5aeeb47ce85619b03f9f710c71c25204ffbfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
