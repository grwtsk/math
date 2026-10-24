# Verification target: GRWTSK.Algebra.LinearAlgebra.JacobianConjecture.Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80720ddd1498564d87349716ada33f3c161ae56",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80720ddd1498564d87349716ada33f3c161ae56`.

Source path: `GRWTSK/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.Polynomial` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alpogeFable₁](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable--5dfd6f9e244064d65f1c3cf7.md) | 26 | `declaration-track:5dfd6f9e244064d65f1c3cf75d64c596dcfdc4500b87662dd0772601e9e04b63` |
| 2 | `def` | [alpogeFable₂](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable--06293aa2fd7c8034c1d3aa56.md) | 30 | `declaration-track:06293aa2fd7c8034c1d3aa56b50bf070f85c3f7361f1b1b54e77e091066a03ad` |
| 3 | `def` | [alpogeFable₃](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable--619f20aaa908c5b67b8671b1.md) | 34 | `declaration-track:619f20aaa908c5b67b8671b134731f363badc937100738cc08ff7efc47776fab` |
| 4 | `def` | [alpogeFablePoly](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefablepoly--aba984d583e5545aaa35ec14.md) | 38 | `declaration-track:aba984d583e5545aaa35ec1415cfff5094cebc1e55de832a8cb4fcd1c15918fa` |
| 5 | `def` | [alpogeFable](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable--777e0c8dea6e3f8a540ca7da.md) | 44 | `declaration-track:777e0c8dea6e3f8a540ca7da8538c7e50eee84f4d389fd33079f50bd13e78ab8` |
| 6 | `theorem` | [alpogeFable_eq_eval](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-eq-eval--fc5c3a84831f02c441c0f4fc.md) | 50 | `result-track:fc5c3a84831f02c441c0f4fc4eb9026164ca82e932ac615d0e812e3b9fa67eaa` |
| 7 | `theorem` | [alpogeFable_eq_polynomialMap](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-eq-polynomialmap--8ac44f7c659d3d43618bd8d2.md) | 56 | `result-track:8ac44f7c659d3d43618bd8d28f6e676e7025a4dfa19f7f7b94317b6b5f1db3e9` |
| 8 | `def` | [pZero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/pzero--2d0fa3520a4fc8540822c501.md) | 62 | `declaration-track:2d0fa3520a4fc8540822c50173d06ccba7790ae0832fceffc97a3ca6fe8cc8a3` |
| 9 | `def` | [pPlus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/pplus--d69db4774c5a9d68764e8a9d.md) | 65 | `declaration-track:d69db4774c5a9d68764e8a9dc26ba965ddb916850d0bc0bbe87d4cd98015637a` |
| 10 | `def` | [pMinus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/pminus--5634956ab95778800d8d7f4b.md) | 68 | `declaration-track:5634956ab95778800d8d7f4b5955db3f239eba9e40afcb60b95e8a3557090468` |
| 11 | `def` | [target](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/target--2cc3b43a0db8b32069ac33f0.md) | 71 | `declaration-track:2cc3b43a0db8b32069ac33f058eb86b8f77e72c33507fc76877dc18eac32dcdc` |
| 12 | `theorem` | [p_zero_ne_p_plus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/p-zero-ne-p-plus--a811d8c4a5034382650cbb68.md) | 73 | `result-track:a811d8c4a5034382650cbb6899ab8239ad92a0c18cad3aa0fea898ee7b0de26d` |
| 13 | `theorem` | [p_zero_ne_p_minus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/p-zero-ne-p-minus--2e5cf459d1dc84e80eacd827.md) | 78 | `result-track:2e5cf459d1dc84e80eacd827a3f4a43e93713dc54d84e8aa350bc223fb120d59` |
| 14 | `theorem` | [p_plus_ne_p_minus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/p-plus-ne-p-minus--761f5196ffd666f99f971956.md) | 83 | `result-track:761f5196ffd666f99f971956aba9e995c059d23788a1e0625244f72ffc7a1763` |
| 15 | `theorem` | [alpogeFable_p_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-p-zero--1219b0364f02de32e9dec049.md) | 88 | `result-track:1219b0364f02de32e9dec049fda33734e15a647cf0fade2f314a784f79c5d69e` |
| 16 | `theorem` | [alpogeFable_p_plus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-p-plus--345ec964b51a9a344d5c5ae4.md) | 94 | `result-track:345ec964b51a9a344d5c5ae438d4bd7eca59f1b303c2c591d13b1b8e634044e5` |
| 17 | `theorem` | [alpogeFable_p_minus](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-p-minus--b4e7ec9bee2a45c096bda4c6.md) | 100 | `result-track:b4e7ec9bee2a45c096bda4c66ee9c8ccefbe068bd077f4f022ed752e5ca3b447` |
| 18 | `theorem` | [alpogeFable_not_injective](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-not-injective--262473f6bfaa6dff714b917f.md) | 107 | `result-track:262473f6bfaa6dff714b917fae62d23f3f4946bae8045475a7ade54eec296f39` |
| 19 | `def` | [alpogeFableJacobian](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefablejacobian--bf1008d9c5a7a136f1c59804.md) | 112 | `declaration-track:bf1008d9c5a7a136f1c59804ee86fad6e6f0a452c0c1aa3abaef35e320199012` |
| 20 | `theorem` | [pderiv_ofNat](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/pderiv-ofnat--a4c093f6f3b02b77289b8ca2.md) | 115 | `result-track:a4c093f6f3b02b77289b8ca2d6f78e9dae2cb0b0b2a59674c28ada443d25d0b6` |
| 21 | `theorem` | [alpogeFablePoly_jacobian_eq](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefablepoly-jacobian-eq--cbf8449448cd6d405a83d10a.md) | 121 | `result-track:cbf8449448cd6d405a83d10a885b3eb68c94127e19daa066a550a50fc4fe3ee2` |
| 22 | `theorem` | [alpogeFablePoly_jacobian_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefablepoly-jacobian-det--b9b0f48fd9ac79a9eef3a47c.md) | 141 | `result-track:b9b0f48fd9ac79a9eef3a47c2297007a932c504f13aeac16dd7f8544e8b0945d` |
| 23 | `theorem` | [alpogeFable_jacobian_det](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-jacobian-det--62feaa50ac92cd2de7276aeb.md) | 149 | `result-track:62feaa50ac92cd2de7276aebe69df3966a78f203cf6c544c5649d8a2859c2ed1` |
| 24 | `theorem` | [alpogeFable_jacobian_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-jacobian-ne-zero--2c394e4c9009244ed7536e9b.md) | 153 | `result-track:2c394e4c9009244ed7536e9b774fe48f33b9609aea0ae158097ff968f6773fad` |
| 25 | `theorem` | [alpogeFable_jacobian_p_zero](../../../../../mathematics/Algebra/LinearAlgebra/JacobianConjecture/Variant00c8be9c8221328ba90f555935772011de28db532323f9ed0425504e58e976d9.lean/declarations/alpogefable-jacobian-p-zero--b993f45595a52db5c48b74bc.md) | 160 | `result-track:b993f45595a52db5c48b74bc8996bb9c4f74037f6bdf0c74b22f8ea92c635707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
