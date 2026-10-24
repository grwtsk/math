# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22312e548a8b559a3ce3e66893250ff4c33311d9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22312e548a8b559a3ce3e66893250ff4c33311d9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedPointTransform](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/fixedpointtransform--67936b060687ac4058b473cf.md) | 28 | `declaration-track:67936b060687ac4058b473cf07b315e28eee23b1a1ac553450dd712aa93c3a47` |
| 2 | `theorem` | [fixed_point_transform_fixed_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/fixed-point-transform-fixed-iff--d9cf40881ec9dcb7b111f816.md) | 33 | `result-track:d9cf40881ec9dcb7b111f81623922d1afa1d466a20a783b012e4d22e04f80d94` |
| 3 | `theorem` | [fixed_point_transform_fixed_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/fixed-point-transform-fixed-points--c1408f3527fac2013d099375.md) | 46 | `result-track:c1408f3527fac2013d099375e69b95766c1a8c42d8f33f47cb398bdb340b504c` |
| 4 | `theorem` | [fixed_point_transform_id_fixed_iff](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/fixed-point-transform-id-fixed-iff--397a04fcca2a68f24d2011b0.md) | 53 | `result-track:397a04fcca2a68f24d2011b0399d7ceec0f69eb4e4eca2a46ffa5d3b12d48ee6` |
| 5 | `theorem` | [fixed_point_transform_id_fixed_points](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/fixed-point-transform-id-fixed-points--20322c7c1f505176d337f907.md) | 59 | `result-track:20322c7c1f505176d337f9074d8227173db32b953df2c2926202f57b8aa27819` |
| 6 | `theorem` | [fixed_point_transform_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/fixed-point-transform-zero--933f030bb8ca68f63283dc4a.md) | 65 | `result-track:933f030bb8ca68f63283dc4a25bf0f8a9705dffcb3e6b38fe4990efd635c63a7` |
| 7 | `theorem` | [noninjective_correction_fixed_outside_fiber](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantb953b825210cf2d1aa156f14346db91fe12edec5e862730a5962b4c68a2f5f53.lean/declarations/noninjective-correction-fixed-outside-fiber--e6b3b343807e8a2ac846110c.md) | 73 | `result-track:e6b3b343807e8a2ac846110c1683c1f6a3f372db349bad29e3d51e39e8f1bc6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
