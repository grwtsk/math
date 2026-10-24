# Verification target: GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dbfada61aa6ee9e6d2e3c37ad0e26a15d67b207",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunctions/PolynomialBumpNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dbfada61aa6ee9e6d2e3c37ad0e26a15d67b207`.

Source path: `GRWTSK/Analysis/TestFunctions/PolynomialBumpNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunctions/PolynomialBumpNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.WeakDerivatives.PolynomialBump`](../../../../mathematics/Analysis/WeakDerivatives/PolynomialBump.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitBump](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/unitbump--a6ca20269b72f924dc236dae.md) | 24 | `declaration-track:a6ca20269b72f924dc236daec4f117509a15d8521669543e40c111b0f6e01ef9` |
| 2 | `def` | [unitSecond](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/unitsecond--11be1cd5cfd6423d38ba6936.md) | 27 | `declaration-track:11be1cd5cfd6423d38ba69365ebdf648752b18f65ff319d3d14053cedfc1c2d3` |
| 3 | `theorem` | [unitBump_square_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/unitbump-square-integral--3051588cf155479588a9c581.md) | 30 | `result-track:3051588cf155479588a9c58162073ae7bbc6bf4ac6d46b4e67fefb5bca9780b6` |
| 4 | `theorem` | [unitSecond_square_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/unitsecond-square-integral--dc71219e77d104621e9a4997.md) | 45 | `result-track:dc71219e77d104621e9a49977fd79c9cf639625f58ac56b66e513bc7cc7769ba` |
| 5 | `theorem` | [unitSecond_mul_bump_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/unitsecond-mul-bump-integral--51f6a35575cc4609e00bbd53.md) | 60 | `result-track:51f6a35575cc4609e00bbd53b099b2115ec0004a3b1944c0cd54498abd364e1a` |
| 6 | `theorem` | [interior_square_scaling](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/interior-square-scaling--4f3513fc3c507c7b3dd44072.md) | 75 | `result-track:4f3513fc3c507c7b3dd44072875b61e05259133e2559ff5b2988c6b13319f8cb` |
| 7 | `theorem` | [unit_dilation_square_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/unit-dilation-square-integral--28cb71799648cabf53ee3efb.md) | 86 | `result-track:28cb71799648cabf53ee3efb978f2d649a0822f3cb3668c98e60a8ae14c575f0` |
| 8 | `theorem` | [explicit_normalization](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/explicit-normalization--dc8ad4d994c5710c4fe63109.md) | 106 | `result-track:dc8ad4d994c5710c4fe631099b626d738445af4cc859b46b66535d13b992824e` |
| 9 | `theorem` | [normalized_square_integrable](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/normalized-square-integrable--14cd506a3117946b5c7b9392.md) | 126 | `result-track:14cd506a3117946b5c7b939239fed6aee96394b403fbef761ab55acd25c8383d` |
| 10 | `theorem` | [normalized_square_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/normalized-square-integral--93332a3c74ef734d3664fc72.md) | 132 | `result-track:93332a3c74ef734d3664fc72ab33cda1b525c926e7b52f12e55efe5c489ca92e` |
| 11 | `theorem` | [normalized_ne_zero](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpNormalization.lean/declarations/normalized-ne-zero--5d974a96932a5e9197c40c87.md) | 139 | `result-track:5d974a96932a5e9197c40c871d316da9561dc9baaf1e5c1641f6fa74d812d91d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
