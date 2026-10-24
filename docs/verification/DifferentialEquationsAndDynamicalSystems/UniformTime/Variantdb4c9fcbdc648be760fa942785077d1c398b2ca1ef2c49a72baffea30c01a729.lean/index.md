# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.UniformTime.Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a4a7045082eb89d91df6afda446aeac3a83a83f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a4a7045082eb89d91df6afda446aeac3a83a83f`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IntegralCurve.ExistUnique` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eqOn_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/eqon-of-isintegralcurveon-ioo--117cf93fe932b51b7c7396c5.md) | 46 | `result-track:117cf93fe932b51b7c7396c563076de70ffc89f187981e6d2a1756b9fd68a7b7` |
| 2 | `lemma` | [eqOn_abs_add_one_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/eqon-abs-add-one-of-isintegralcurveon-ioo--c67091946a334978d4dcbe79.md) | 61 | `result-track:c67091946a334978d4dcbe79507e1c9a48ea2eb63b5fb874cc1115811713a7a4` |
| 3 | `lemma` | [isIntegralCurve_abs_add_one_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/isintegralcurve-abs-add-one-of-isintegralcurveon-ioo--1b45b037a8c9975185961672.md) | 75 | `result-track:1b45b037a8c9975185961672e64fbe51f50a0b2659b2c21cade82d40400731b7` |
| 4 | `lemma` | [exists_isIntegralCurve_iff_exists_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/exists-isintegralcurve-iff-exists-isintegralcurveon-ioo--68ce39e6984d6c4d95b7034f.md) | 94 | `result-track:68ce39e6984d6c4d95b7034f979c713111439273f43992a28b3742c309359f9b` |
| 5 | `lemma` | [eqOn_piecewise_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/eqon-piecewise-of-isintegralcurveon-ioo--1e26f8939ef8dd38df551ae0.md) | 107 | `result-track:1e26f8939ef8dd38df551ae09ff30ee0cc610992972485381426b174e806bbac` |
| 6 | `lemma` | [isIntegralCurveOn_piecewise](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/isintegralcurveon-piecewise--dbed34b9857e2923417d5b4c.md) | 133 | `result-track:dbed34b9857e2923417d5b4c91d1a83c5baf8b0d793ad4c68c5f0c079f0d94c6` |
| 7 | `lemma` | [exists_isIntegralCurve_of_isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variantdb4c9fcbdc648be760fa942785077d1c398b2ca1ef2c49a72baffea30c01a729.lean/declarations/exists-isintegralcurve-of-isintegralcurveon--0e85d87f183f934ff26e32df.md) | 159 | `result-track:0e85d87f183f934ff26e32dff9b9a22411d9c88e4bf5834b45e2852d4bb6ac5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
