# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35f29ac29dd352e9c35e65c1bdcea1450ebc4126",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35f29ac29dd352e9c35e65c1bdcea1450ebc4126`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.PDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polynomialMap](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/polynomialmap--373c5767cfe6774f316e02db.md) | 30 | `declaration-track:373c5767cfe6774f316e02db7f45d5303e6255373d15d2b4d711fa4b92688e25` |
| 2 | `def` | [polynomialJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/polynomialjacobian--123c5d795505a46d8e4d5e11.md) | 34 | `declaration-track:123c5d795505a46d8e4d5e11091ef0aa4cfcd762ec1461c1eacc58a9940f76dd` |
| 3 | `def` | [correctionPoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/correctionpoly--dd5d96175d41dd3ded5449ae.md) | 39 | `declaration-track:dd5d96175d41dd3ded5449ae3261852520623cce56d6d2ee63edf653db0e1233` |
| 4 | `theorem` | [correction_poly_eval](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/correction-poly-eval--d8ca88c645f82032010985f2.md) | 44 | `result-track:d8ca88c645f82032010985f2b452fac6834a8f192697dfdebafafa855aa00cdd` |
| 5 | `theorem` | [correction_poly_eval_id](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/correction-poly-eval-id--595add4bff9d3d76487685bd.md) | 51 | `result-track:595add4bff9d3d76487685bdb3e5544e74fe3cefcdb42e62a923617123ab772c` |
| 6 | `theorem` | [correction_poly_jacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/correction-poly-jacobian--74c88e81c14e7fb6d7dd1b7d.md) | 59 | `result-track:74c88e81c14e7fb6d7dd1b7dc487a1e4d22f78003ccef6e91a2b6cdb930b8773` |
| 7 | `theorem` | [one_sub_correction_poly_jacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variante0ba828069d42dd6ba321198f13c885c77758d8a5d9750d860ef98d911dbb048.lean/declarations/one-sub-correction-poly-jacobian--ab9722f4be705e8adda7ec4b.md) | 66 | `result-track:ab9722f4be705e8adda7ec4bdbac1e119e2c1c0597da20b7ef095f237ef19e9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
