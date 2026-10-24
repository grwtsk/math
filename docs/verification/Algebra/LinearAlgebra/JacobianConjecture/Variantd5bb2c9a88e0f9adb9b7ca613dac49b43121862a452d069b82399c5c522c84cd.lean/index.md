# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e1ccce63a39d0f8876a9a695b4ea5363344b310",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e1ccce63a39d0f8876a9a695b4ea5363344b310`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alpogeFable₁](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable--874eec7e1df66eedf4f3bf68.md) | 34 | `declaration-track:874eec7e1df66eedf4f3bf68f87644e0c8ae7b87df2f9a75f6a56bef3c38949e` |
| 2 | `def` | [alpogeFable₂](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable--9c6cc06833cd7bbaa6901268.md) | 38 | `declaration-track:9c6cc06833cd7bbaa69012683053d768b4bf1a79cb524248bd231f9d93d3951a` |
| 3 | `def` | [alpogeFable₃](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable--0f85dd2ebfc6d5acbab4cfbc.md) | 42 | `declaration-track:0f85dd2ebfc6d5acbab4cfbcf27458b0beeac3d8e3439b29be5494e73c4a5abe` |
| 4 | `def` | [alpogeFablePoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefablepoly--123a7501c33924bf706fa3b6.md) | 46 | `declaration-track:123a7501c33924bf706fa3b6edccc0d228680731fe5c4ef13ff0bf87bb13f076` |
| 5 | `def` | [alpogeFable](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable--0a0ccbeeb96fb19ba02669d1.md) | 52 | `declaration-track:0a0ccbeeb96fb19ba02669d1a688da314a5f7fdbec9fbb6e1bf46f830b9235bf` |
| 6 | `theorem` | [alpogeFable_eq_eval](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-eq-eval--da2f7a4e634a793e639a22f5.md) | 58 | `result-track:da2f7a4e634a793e639a22f534bfbc44974484947d1fe5906aaf26a1cc767608` |
| 7 | `theorem` | [alpogeFable_eq_polynomialMap](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-eq-polynomialmap--431933c077ceb00a5c4b220e.md) | 64 | `result-track:431933c077ceb00a5c4b220ea1cd026dfa2ab7a160ba030f793d45dd7cbee44f` |
| 8 | `def` | [pZero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/pzero--032dd8b500c6e302cf7e9aa6.md) | 70 | `declaration-track:032dd8b500c6e302cf7e9aa6f3800e3d3cc919028c6742c406c3eedc6debb1a7` |
| 9 | `def` | [pPlus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/pplus--da746382ff4198c7f1203ef5.md) | 73 | `declaration-track:da746382ff4198c7f1203ef5cde880ff4db5402853117fb2c6a38af3b44ac197` |
| 10 | `def` | [pMinus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/pminus--141f9977057a96fc8f85eae1.md) | 76 | `declaration-track:141f9977057a96fc8f85eae1849cc2841d9f2b5d4cbf6252d75dc66981003ec4` |
| 11 | `def` | [target](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/target--69937913cfcc6c54783fa7f5.md) | 79 | `declaration-track:69937913cfcc6c54783fa7f5b72512bce67a5c942ee1b796cc62e59afeb58b5e` |
| 12 | `theorem` | [p_zero_ne_p_plus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/p-zero-ne-p-plus--9cf4997eb983acab92b77a9a.md) | 81 | `result-track:9cf4997eb983acab92b77a9a5917f05c726c74c854a993b416f7f835d6558ed3` |
| 13 | `theorem` | [p_zero_ne_p_minus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/p-zero-ne-p-minus--7fb98ffe1167fba4465db6f0.md) | 86 | `result-track:7fb98ffe1167fba4465db6f03e225db51c0206df984eb1b836985f37378e6e7c` |
| 14 | `theorem` | [p_plus_ne_p_minus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/p-plus-ne-p-minus--bd2dca5518cd0079a44316ce.md) | 91 | `result-track:bd2dca5518cd0079a44316ce1350044795332c34faca94a5ffad77fe0521e258` |
| 15 | `theorem` | [alpogeFable_p_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-p-zero--0611e3e858599b27294ef7a6.md) | 96 | `result-track:0611e3e858599b27294ef7a6f4da847f624811edc4533a51322ac06ff02ef3d1` |
| 16 | `theorem` | [alpogeFable_p_plus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-p-plus--758768f3188835c44234d313.md) | 102 | `result-track:758768f3188835c44234d313e335786d9cf443eb2b7092c3bc34d21ff0b48b1a` |
| 17 | `theorem` | [alpogeFable_p_minus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-p-minus--ef817442acb8d50a958977ce.md) | 108 | `result-track:ef817442acb8d50a958977cec0db41d8655e24b61064c4f657736ce9c4bbaea9` |
| 18 | `theorem` | [alpogeFable_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-not-injective--877b204591891dba050305d7.md) | 115 | `result-track:877b204591891dba050305d7b1e0eb1cc2b4c519e25b16251650e843e5b783f2` |
| 19 | `def` | [alpogeFableJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefablejacobian--008fca9aec2b17ec31061553.md) | 120 | `declaration-track:008fca9aec2b17ec31061553c5a564e3b2208ac5bc1f6223d2055b217a30479d` |
| 20 | `theorem` | [pderiv_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/pderiv-ofnat--0daf3d5a881dea12ed92612b.md) | 123 | `result-track:0daf3d5a881dea12ed92612b834ac040e7276ba16cf4f7c3ad0cb2facd0e7d8a` |
| 21 | `theorem` | [alpogeFablePoly_jacobian_eq](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefablepoly-jacobian-eq--0e72df7cde09b39015a1df7d.md) | 129 | `result-track:0e72df7cde09b39015a1df7d92d989cb6c8312f4e663a71a7de60773fbf3655b` |
| 22 | `theorem` | [alpogeFablePoly_jacobian_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefablepoly-jacobian-det--2ad7a0a7618fd2562e0a8477.md) | 149 | `result-track:2ad7a0a7618fd2562e0a84772984aaf6dd10850e1169fa42cc267ce74b66f21c` |
| 23 | `theorem` | [alpogeFable_jacobian_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-jacobian-det--34468e5d3868459212845679.md) | 157 | `result-track:34468e5d3868459212845679d7ae8c07b24281f155c9edaeb1bebe1b7ecce748` |
| 24 | `theorem` | [alpogeFable_jacobian_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-jacobian-ne-zero--1278dc28a09b6525f15e15ca.md) | 161 | `result-track:1278dc28a09b6525f15e15ca989f8b95537823e5828876e00ce13e2a2f1ee9ec` |
| 25 | `theorem` | [alpogeFable_jacobian_p_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variantd5bb2c9a88e0f9adb9b7ca613dac49b43121862a452d069b82399c5c522c84cd.lean/declarations/alpogefable-jacobian-p-zero--c877f5cb1c9f231a6d2c95b8.md) | 168 | `result-track:c877f5cb1c9f231a6d2c95b8f87eff0842efd345948ab241547ea711e44a704a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
