# Verification target: GRWTSK.MeasureTheory.Integral.Centering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58cb396ece576b5e0e8a4c29b8e3dd70b4e80d91",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/MeasureTheory/Integral/Centering.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58cb396ece576b5e0e8a4c29b8e3dd70b4e80d91`.

Source path: `GRWTSK/MeasureTheory/Integral/Centering.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/MeasureTheory/Integral/Centering.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mean](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/mean--743eff49702b2b6cd11934d1.md) | 26 | `declaration-track:743eff49702b2b6cd11934d1be46512ac4e4ad1dcbe35e8ea7da5cef3a4c0a5e` |
| 2 | `def` | [centered](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/centered--3f224b4039566fef8cf49c58.md) | 28 | `declaration-track:3f224b4039566fef8cf49c5885570c2c28578d044d8da851b0b5cbe729c2ea50` |
| 3 | `def` | [energy](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/energy--85825138e697a3268778c41a.md) | 30 | `declaration-track:85825138e697a3268778c41ad044ff2f45e88e074a34176da78babae68686237` |
| 4 | `theorem` | [integral_centered](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/integral-centered--214116a989d7a144de30a458.md) | 32 | `result-track:214116a989d7a144de30a458b99784f95344fe6e6ee45a34db3dd304234f5703` |
| 5 | `theorem` | [centered_integrable](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/centered-integrable--e36309f8a2a0b1608f525023.md) | 38 | `result-track:e36309f8a2a0b1608f525023736938a42ac33e96134c6af787444ac930e9b6be` |
| 6 | `theorem` | [shifted_square_integrable](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/shifted-square-integrable--3f7b864ef88a1ee5ffa89ca6.md) | 42 | `result-track:3f7b864ef88a1ee5ffa89ca624edcbaea0bb829fb33a983744a86d95fadf5d60` |
| 7 | `theorem` | [integral_shifted_square](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/integral-shifted-square--5bfcc552a94cafa500714494.md) | 52 | `result-track:5bfcc552a94cafa5007144942336896cf5e98159cc04feab4c4c062c8ff6e9e2` |
| 8 | `theorem` | [energy_nonneg](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/energy-nonneg--682e9af90c9fb0f190616d9d.md) | 64 | `result-track:682e9af90c9fb0f190616d9dfd17fc2a1a00261452054e9941fdca53745c5326` |
| 9 | `theorem` | [energy_eq_second_moment_sub_mean_sq](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/energy-eq-second-moment-sub-mean-sq--472a3db6f974df460404a8e9.md) | 67 | `result-track:472a3db6f974df460404a8e9a522f38589e23ee5d4d7a2251ae57878b2e036fa` |
| 10 | `theorem` | [reconstruct_second_moment](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/reconstruct-second-moment--6f7a37f11dacec6fff9741c6.md) | 74 | `result-track:6f7a37f11dacec6fff9741c6955dd2a41a512eb5671f167ccf2848a0d941dd00` |
| 11 | `theorem` | [center_is_minimizer](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/center-is-minimizer--3212b68343dcb5edd8dd0d08.md) | 80 | `result-track:3212b68343dcb5edd8dd0d08454fb8459c174d9e32a3646d30ad5a37678d0ff9` |
| 12 | `theorem` | [center_minimal](../../../../../../../mathematics/Analysis/MeasureTheory/Integral/Centering/Variants/Varianta16dadedca05c73b.lean/declarations/center-minimal--8d062d5c3a36bbfe3018209e.md) | 87 | `result-track:8d062d5c3a36bbfe3018209ea0d9d2e4ae8975ef2ee79c22fd3d75c6ecd1294f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
