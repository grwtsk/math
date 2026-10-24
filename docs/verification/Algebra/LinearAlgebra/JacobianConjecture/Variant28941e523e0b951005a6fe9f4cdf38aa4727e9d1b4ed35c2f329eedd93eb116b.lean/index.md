# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c600631393af81423189d19912f8f31703d0d14f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c600631393af81423189d19912f8f31703d0d14f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPointTransform](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/fixedpointtransform--7f2ef2fadd8ef008a04e0121.md) | 20 | `declaration-track:7f2ef2fadd8ef008a04e01213aeb0aae7cc44343d044f322d9f714da0189ad00` |
| 2 | `theorem` | [fixed_point_transform_fixed_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/fixed-point-transform-fixed-iff--725803b378e3e7d26fcd99a4.md) | 25 | `result-track:725803b378e3e7d26fcd99a4cf735e911b9aa7dbc1cbb1558a03f90b72dfc7f2` |
| 3 | `theorem` | [fixed_point_transform_fixed_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/fixed-point-transform-fixed-points--56ed04fe1cdcbccf54d4d990.md) | 38 | `result-track:56ed04fe1cdcbccf54d4d990e44f933dd854ae2150417cf846266b7ad43e2994` |
| 4 | `theorem` | [fixed_point_transform_id_fixed_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/fixed-point-transform-id-fixed-iff--ffaae937832225827e82ee74.md) | 45 | `result-track:ffaae937832225827e82ee742ff44a1ba01aab24250817faab7a246ecbab092c` |
| 5 | `theorem` | [fixed_point_transform_id_fixed_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/fixed-point-transform-id-fixed-points--d5970a10f52d917c6c2f1960.md) | 51 | `result-track:d5970a10f52d917c6c2f19601c70cd746f17442f12f21c3a5c73b7eddba9f3db` |
| 6 | `theorem` | [fixed_point_transform_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/fixed-point-transform-zero--98b7ca68be1896f622fe6d4f.md) | 57 | `result-track:98b7ca68be1896f622fe6d4fb9c121d519f96cfeb455ad53343fb083a01d7f1c` |
| 7 | `theorem` | [noninjective_correction_fixed_outside_fiber](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant28941e523e0b951005a6fe9f4cdf38aa4727e9d1b4ed35c2f329eedd93eb116b.lean/declarations/noninjective-correction-fixed-outside-fiber--4f377dad7bb7558d666046ce.md) | 65 | `result-track:4f377dad7bb7558d666046ce2d69bb9e9243ea292d07d27e6468c935dea273b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
