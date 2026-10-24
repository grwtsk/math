# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d6879f058930e721ba82c20b10c10607ca9b97",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d6879f058930e721ba82c20b10c10607ca9b97`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polynomialMap](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/polynomialmap--8dbf0baf1899b1ccfbd569a5.md) | 22 | `declaration-track:8dbf0baf1899b1ccfbd569a5da529f5045d3727a9cea7da4669bd650a9041c71` |
| 2 | `def` | [polynomialJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/polynomialjacobian--5c749849d6b1787cb148165b.md) | 26 | `declaration-track:5c749849d6b1787cb148165b9d30fbdd914e7413d803348ef2b54338909a2807` |
| 3 | `def` | [correctionPoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/correctionpoly--a722e362a3ecbe5268f7c38d.md) | 31 | `declaration-track:a722e362a3ecbe5268f7c38d0f2234486a9910257639ec79edce7e9fa1c307dd` |
| 4 | `theorem` | [correction_poly_eval](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/correction-poly-eval--c233acd4a993c31e10db34e7.md) | 36 | `result-track:c233acd4a993c31e10db34e791a10e11b4bbedfe6d7340604e50517ccfefcf74` |
| 5 | `theorem` | [correction_poly_eval_id](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/correction-poly-eval-id--f71cff5ebc3b08883383ae57.md) | 43 | `result-track:f71cff5ebc3b08883383ae579805cbd4fbc60b579cd4d09613e9b4b0ca0cac4f` |
| 6 | `theorem` | [correction_poly_jacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/correction-poly-jacobian--570fca2c9e99cc78b624bfe2.md) | 51 | `result-track:570fca2c9e99cc78b624bfe2a4508889d3e69275afb2b6f1a0f1e98e0fb75cf5` |
| 7 | `theorem` | [one_sub_correction_poly_jacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant281835d4aa3967f36561f26afbaec171b9ac9b8fe3255b91bdada1324f0d97b2.lean/declarations/one-sub-correction-poly-jacobian--502c46e5b5fb1d5c42de1b6d.md) | 58 | `result-track:502c46e5b5fb1d5c42de1b6de3825d8ac8d6770ed070c610aae5d9b857e4b9f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
