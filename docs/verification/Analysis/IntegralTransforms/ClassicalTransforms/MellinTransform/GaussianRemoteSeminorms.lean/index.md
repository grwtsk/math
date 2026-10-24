# Verification target: GRWTSK.Analysis.MellinTransform.GaussianRemoteSeminorms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a0d5b90c1edc9bc39bd500766fe60762c8f61ba",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a0d5b90c1edc9bc39bd500766fe60762c8f61ba`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianRemoteSeminorms.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean/index.md) — import line 15; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianSeminormProfile](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianseminormprofile--8980551f6fad4da68e85e795.md) | 25 | `declaration-track:8980551f6fad4da68e85e7952de504695938c19fcbc997aff328f5928947905d` |
| 2 | `lemma` | [gaussianSeminormProfile_nonneg](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianseminormprofile-nonneg--f427be4922142c2942161b13.md) | 28 | `result-track:f427be4922142c2942161b13c5087561e1ae8153355f10266ded65e32672d500` |
| 3 | `def` | [gaussianWeightedSeminorm](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianweightedseminorm--4b2420cdcfef548e5b7d5bf1.md) | 33 | `declaration-track:4b2420cdcfef548e5b7d5bf199a65b5c110f99dbf932a351431247af87fe081d` |
| 4 | `lemma` | [gaussianWeightedSeminorm_nonneg](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianweightedseminorm-nonneg--6d118083cb2e97c5623c2891.md) | 36 | `result-track:6d118083cb2e97c5623c28916e39bd5f6670ff45e31cd7e84814e53c84b66d0f` |
| 5 | `lemma` | [gaussianWeightedSeminorm_power_bound](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianweightedseminorm-power-bound--6040f214afb3c94878a791bf.md) | 40 | `result-track:6040f214afb3c94878a791bf47cc49cca48d5fa4a5c5e1ec1cb1754b84f3021b` |
| 6 | `lemma` | [gaussianWeightedSeminorm_polynomial_decay](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianweightedseminorm-polynomial-decay--42b2d9ff9e967f06a9fbc9e6.md) | 56 | `result-track:42b2d9ff9e967f06a9fbc9e6dfe74b82da3b2f30d8a0cf6f4c37d1aa7da1ff75` |
| 7 | `theorem` | [gaussianWeightedSeminorm_summed](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianweightedseminorm-summed--b330cf0595ea4bcdca362097.md) | 90 | `result-track:b330cf0595ea4bcdca36209705ef3ace06ccb73cb20000d8bc33624212673fa7` |
| 8 | `def` | [gaussianRemoteSeminorm](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianremoteseminorm--1d6437a2f88fc41f7772ab5c.md) | 118 | `declaration-track:1d6437a2f88fc41f7772ab5c1487d8dd40e5ee0702a52d86cfaebee6c779db2f` |
| 9 | `theorem` | [gaussianRemoteSeminorm_summed](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianremoteseminorm-summed--8963f77f1af64f942134e246.md) | 123 | `result-track:8963f77f1af64f942134e246f2d018a23cc3c0f6b3c78fa0cb4d14b70b9fd3b8` |
| 10 | `def` | [gaussianRemoteValue](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianremotevalue--8411cce599527cb476548d38.md) | 189 | `declaration-track:8411cce599527cb476548d384380cd966eb345677ec5404c35689c38ca8780c7` |
| 11 | `lemma` | [gaussianRemoteValue_nonneg](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianremotevalue-nonneg--d8f6547bfa8c44775f3dcd08.md) | 194 | `result-track:d8f6547bfa8c44775f3dcd0863a0219d075787e38b047f88202de23c7b64c765` |
| 12 | `theorem` | [gaussianRemoteValue_summed](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianRemoteSeminorms.lean/declarations/gaussianremotevalue-summed--5c1699107adbf5b817c8c927.md) | 199 | `result-track:5c1699107adbf5b817c8c9275d08adcfa3be5817da5ee67ab88d4f2055a31cfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
