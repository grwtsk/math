# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.UniformTime.Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aecb670e4b544ed0da2bfe9d4808a39675db5418",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/index.md) · [Full source](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aecb670e4b544ed0da2bfe9d4808a39675db5418`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IntegralCurve.ExistUnique` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eqOn_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/eqon-of-isintegralcurveon-ioo--ad6951a3fad41e6edbe3fad1.md) | 38 | `result-track:ad6951a3fad41e6edbe3fad1aaf1b7b33aeae8df2334f39d055284e8a9971e05` |
| 2 | `lemma` | [eqOn_abs_add_one_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/eqon-abs-add-one-of-isintegralcurveon-ioo--957adb8efb05ac73d31ab642.md) | 53 | `result-track:957adb8efb05ac73d31ab6423e9506ac396ba3420b46f3751c7df22d3beaf69d` |
| 3 | `lemma` | [isIntegralCurve_abs_add_one_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/isintegralcurve-abs-add-one-of-isintegralcurveon-ioo--5a80fbecdbd789e8b848b6a5.md) | 67 | `result-track:5a80fbecdbd789e8b848b6a556b37b51d6318800d54352483a9fdea166d0e157` |
| 4 | `lemma` | [exists_isIntegralCurve_iff_exists_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/exists-isintegralcurve-iff-exists-isintegralcurveon-ioo--0bd347bcb33d4cb4a2deab36.md) | 86 | `result-track:0bd347bcb33d4cb4a2deab366edceab7cc1a2131d0b06acc6ad5424e8eaa52f7` |
| 5 | `lemma` | [eqOn_piecewise_of_isIntegralCurveOn_Ioo](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/eqon-piecewise-of-isintegralcurveon-ioo--b17ff944325ca82720756d3c.md) | 99 | `result-track:b17ff944325ca82720756d3c115f3c01701f5fe16eb1be084c01630de5752e36` |
| 6 | `lemma` | [isIntegralCurveOn_piecewise](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/isintegralcurveon-piecewise--53040147c152144f343d6e5a.md) | 125 | `result-track:53040147c152144f343d6e5a71fc4104a94ea435c11501611afca9f7033234bc` |
| 7 | `lemma` | [exists_isIntegralCurve_of_isIntegralCurveOn](../../../../mathematics/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/declarations/exists-isintegralcurve-of-isintegralcurveon--68cdf735d520e0517e8b53c5.md) | 151 | `result-track:68cdf735d520e0517e8b53c579c82f6a8ec2b575781d51c8bfa2ea16cefb017a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
