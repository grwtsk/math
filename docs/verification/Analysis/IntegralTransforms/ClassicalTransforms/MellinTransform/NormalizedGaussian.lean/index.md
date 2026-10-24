# Verification target: GRWTSK.Analysis.MellinTransform.NormalizedGaussian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a27d43838697c660b546d91d38e35a1bbfa23e5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a27d43838697c660b546d91d38e35a1bbfa23e5`.

Source path: `GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/NormalizedGaussian.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.LogarithmicGaussian`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/LogarithmicGaussian.lean/index.md) — import line 15; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianMellinProfile](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellinprofile--4e9a25efc1bb6a67d5f55185.md) | 23 | `declaration-track:4e9a25efc1bb6a67d5f55185b8f8c5a44fb5edbe4fe91f02664047e1c6f59946` |
| 2 | `def` | [gaussianMellinCoefficient](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellincoefficient--037b18ea4929c527586446af.md) | 27 | `declaration-track:037b18ea4929c527586446afa0a6c929f858cbbc3ce975944012b620e8ac0e04` |
| 3 | `lemma` | [quarter_root](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/quarter-root--902f860b5b3f7f99ef293b44.md) | 30 | `result-track:902f860b5b3f7f99ef293b44a7e24fcc7374ba38a8b9fc3c2910f91c3d23ca05` |
| 4 | `lemma` | [gaussianMellinCoefficient_normalizes](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellincoefficient-normalizes--148aee7e4bc0e021970c2452.md) | 40 | `result-track:148aee7e4bc0e021970c2452fbbbf61715d141999b6499666db5f925902efc03` |
| 5 | `lemma` | [gaussianMellinProfile_eq_quarter](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellinprofile-eq-quarter--f08d28be12e0504e221f5333.md) | 54 | `result-track:f08d28be12e0504e221f53338e1f90913151ed82dbed03f17e5bb1f0a70386b1` |
| 6 | `theorem` | [gaussianMellinProfile_convergent](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellinprofile-convergent--3061da9cebc066cddcec96f1.md) | 65 | `result-track:3061da9cebc066cddcec96f1b7162e52871761fa13519373a31a555e39455efa` |
| 7 | `theorem` | [gaussianMellinProfile_mellin](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellinprofile-mellin--948ca9f7b347c81a6bd38884.md) | 73 | `result-track:948ca9f7b347c81a6bd38884ba7a50070f1546e59d6f935abc68b08e0063364c` |
| 8 | `lemma` | [gaussian_transform_vertical_norm](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussian-transform-vertical-norm--5fd75ecc40d4824bfda45ae0.md) | 86 | `result-track:5fd75ecc40d4824bfda45ae0f9e2d31b6241e153f8a1504b85aabf60fe8502d4` |
| 9 | `lemma` | [gaussian_transform_vertical_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussian-transform-vertical-integrable--937db9a47f459f4d66c5e369.md) | 94 | `result-track:937db9a47f459f4d66c5e369bad0fcf9747b8a2c631944f86c822e73414e9e2a` |
| 10 | `lemma` | [gaussian_transform_vertical_continuous](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussian-transform-vertical-continuous--d8fbf129338b9835a8ed97bd.md) | 100 | `result-track:d8fbf129338b9835a8ed97bd1b9c4ce414a58e238cc0d61c305ffcbf79dbbdc7` |
| 11 | `lemma` | [gaussianMellinProfile_continuousAt](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellinprofile-continuousat--1546d59f720abcd57127c8ab.md) | 104 | `result-track:1546d59f720abcd57127c8abab851c778957cfb0d287cf7470c6774f02a948da` |
| 12 | `theorem` | [gaussianMellinProfile_inverse](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellinprofile-inverse--a89af7e35571b947327fa691.md) | 118 | `result-track:a89af7e35571b947327fa691753067050cf40d9640fde9a7c2d63864ac9e1f86` |
| 13 | `theorem` | [gaussianMellin_inversion](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean/declarations/gaussianmellin-inversion--2c3c8f312434db424e660474.md) | 129 | `result-track:2c3c8f312434db424e66047412d482bf78a102e46cd22c48c4c5abd57d98d6aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
