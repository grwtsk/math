# Verification target: GRWTSK.Analysis.MellinTransform.ReverseInversion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36924ae62310b807be6dfbcb4860e68dae2011d4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/ReverseInversion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36924ae62310b807be6dfbcb4860e68dae2011d4`.

Source path: `GRWTSK/Analysis/MellinTransform/ReverseInversion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/ReverseInversion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MellinInversion` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_logProfile](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/integrable-logprofile--68a737cb36d0386d3dba9b05.md) | 21 | `result-track:68a737cb36d0386d3dba9b05856bb9c7a0accf88682ce2b3fece3d78b64f16a6` |
| 2 | `theorem` | [mellin_mellinInv_eq](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/mellin-mellininv-eq--53ebd97f9c6510d05ac9b8c1.md) | 52 | `result-track:53ebd97f9c6510d05ac9b8c169284e2042e0a514a75d275d49e68e3291701e1d` |
| 3 | `def` | [logarithmicGaussian](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/logarithmicgaussian--67097e530b98690d20e0111a.md) | 89 | `declaration-track:67097e530b98690d20e0111a6dccef737730cbcc99e2c3450949ef7c2ffd9db9` |
| 4 | `def` | [gaussianMellin](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/gaussianmellin--f92828de50d23f4c3f3f420d.md) | 93 | `declaration-track:f92828de50d23f4c3f3f420d9e6c05a67ea5a51554fd282aea68582039694697` |
| 5 | `lemma` | [gaussianMellin_on_line](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/gaussianmellin-on-line--7b6cb44121a75b31f8d17360.md) | 96 | `result-track:7b6cb44121a75b31f8d17360d710ef2f0fad7b2c499d7001e89d11b53b59f025` |
| 6 | `lemma` | [logarithmicGaussian_profile](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/logarithmicgaussian-profile--aff9c418d6150b8360e840b3.md) | 105 | `result-track:aff9c418d6150b8360e840b31de15873e27b9dedc509863705db3b6abeabd79f` |
| 7 | `lemma` | [logarithmicGaussian_convergent](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/logarithmicgaussian-convergent--07e9efda2ff32e9639a00e9a.md) | 110 | `result-track:07e9efda2ff32e9639a00e9a90794847f6b3ed8a82a8cec11575b3bef470a41b` |
| 8 | `lemma` | [gaussianMellin_line_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/gaussianmellin-line-integrable--80e084257f289edde0d86625.md) | 133 | `result-track:80e084257f289edde0d86625da5c90f1bdda0189a979615c843a0c9ccb206675` |
| 9 | `lemma` | [gaussianMellin_line_continuous](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/gaussianmellin-line-continuous--839506f746e3062bd31477eb.md) | 138 | `result-track:839506f746e3062bd31477ebd8b15148456d88f14ee9b9cf05b3e0542e8dfb1f` |
| 10 | `lemma` | [logarithmicGaussian_inverse](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/logarithmicgaussian-inverse--02c5fce50ade752a9202a746.md) | 143 | `result-track:02c5fce50ade752a9202a746679cefa9d001a6d8455104443a99d56a4478c64b` |
| 11 | `theorem` | [logarithmicGaussian_mellin](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/logarithmicgaussian-mellin--9525b1d22b945a9c08bf2953.md) | 154 | `result-track:9525b1d22b945a9c08bf2953a4069b248ba1d1fefd76dfe760170eb2edc530c9` |
| 12 | `lemma` | [logarithmicGaussian_one](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/declarations/logarithmicgaussian-one--6ceb334f38aed44b57d1c454.md) | 162 | `result-track:6ceb334f38aed44b57d1c454860dbf59b7ef5c2f7e2c33bafd6ef7eb45398816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
