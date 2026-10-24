# Verification target: GRWTSK.Algebra.CommutativeAlgebra.JacobianConjecture.Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fdb15af2ddf526dfd08906ce408b96b4277e255",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fdb15af2ddf526dfd08906ce408b96b4277e255`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.JacobianConjecture.AlpogeFable` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alpogeFableTransform](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefabletransform--b60fad44459d5a59bf3576e9.md) | 17 | `declaration-track:b60fad44459d5a59bf3576e99f69b5a9a1c9e3e5934c1967d60ef8ef3204c5f7` |
| 2 | `def` | [alpogeFableTransformPoly](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefabletransformpoly--cc830ef9ec92a3dbed6a2336.md) | 21 | `declaration-track:cc830ef9ec92a3dbed6a23367bf5824b368868b14294917bdeb3ce7f4db178c8` |
| 3 | `theorem` | [alpogeFable_transform_eq_polynomialMap](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-transform-eq-polynomialmap--50ac87c87157f1038018f116.md) | 24 | `result-track:50ac87c87157f1038018f116ba44fad16c780edf38c011fe832573c9eb966cc5` |
| 4 | `theorem` | [alpogeFable_transform_fixed_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-transform-fixed-iff--735352c4f7f330275fa3ba07.md) | 30 | `result-track:735352c4f7f330275fa3ba07cf35ab6d99e7196e0b4536bea62cbe64052265c9` |
| 5 | `theorem` | [alpogeFable_transform_fixed_points](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-transform-fixed-points--936abd128f5a7f2f9626bc5c.md) | 34 | `result-track:936abd128f5a7f2f9626bc5cd88a05d858462ab56dc09cd5774f3b4bff780174` |
| 6 | `theorem` | [alpogeFable_p_zero_fixed](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-p-zero-fixed--9216f6f4e141d4b63c612abf.md) | 38 | `result-track:9216f6f4e141d4b63c612abfce829d2c90dd5a912b4dbf092dc554732d5fbf99` |
| 7 | `theorem` | [alpogeFable_p_plus_fixed](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-p-plus-fixed--6ed491f0db3b4bf6123e7f5b.md) | 41 | `result-track:6ed491f0db3b4bf6123e7f5b93fea880585025fb0d4241b3dc3f097a4c6cc318` |
| 8 | `theorem` | [alpogeFable_p_minus_fixed](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-p-minus-fixed--d03414e2acad0c49360ca1e4.md) | 44 | `result-track:d03414e2acad0c49360ca1e497de33c9b53d9d4c3abda849b49a27a7b0da5244` |
| 9 | `theorem` | [alpogeFable_three_distinct_fixed_points](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-three-distinct-fixed-points--d936d7c3383e8adb99d8a281.md) | 47 | `result-track:d936d7c3383e8adb99d8a2819afef2eba3a652cf62b4daa470abe6dda6d5182c` |
| 10 | `def` | [fixedPointJacobian](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/fixedpointjacobian--c98fdbcf59ab2790a69faf47.md) | 56 | `declaration-track:c98fdbcf59ab2790a69faf476cff5b278b5624457d0ef728456b72f975eff2c9` |
| 11 | `theorem` | [alpogeFable_one_sub_fixed_point_jacobian](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-one-sub-fixed-point-jacobian--672439a8ee68fc29ffb41521.md) | 59 | `result-track:672439a8ee68fc29ffb41521824496a3bdc21c2bda4850df48d6291eea2aae61` |
| 12 | `theorem` | [alpogeFable_fixed_point_det](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-fixed-point-det--42a2f9ae84b387b811457f00.md) | 65 | `result-track:42a2f9ae84b387b811457f008d95ac3eb749aba91fbf0f4c86f1f1dd6a8f4b91` |
| 13 | `theorem` | [alpogeFable_fixed_points_nondegenerate](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-fixed-points-nondegenerate--339224925e9833327562457f.md) | 70 | `result-track:339224925e9833327562457fe23df96a367d3083a2ea15b7c1c009672a6b3284` |
| 14 | `theorem` | [alpogeFable_everywhere_jacobian_invertible](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-everywhere-jacobian-invertible--ada4efbaada7c40175b6bbe8.md) | 75 | `result-track:ada4efbaada7c40175b6bbe80f818c9927fdb37ff672881af4ff42739a352222` |
| 15 | `theorem` | [alpogeFable_counterexample_certificate](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-counterexample-certificate--4563fbe5e40225c15fd943a3.md) | 81 | `result-track:4563fbe5e40225c15fd943a304548df648918dbc0ad8f362a177f48e1e3b5123` |
| 16 | `theorem` | [exists_polynomial_constant_jacobian_not_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/exists-polynomial-constant-jacobian-not-injective--e95ccd55b4c615b4a3f2b82a.md) | 90 | `result-track:e95ccd55b4c615b4a3f2b82abcb83f0c31905845e387462311b1688037758280` |
| 17 | `theorem` | [exists_polynomial_three_nondegenerate_fixed_points](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/exists-polynomial-three-nondegenerate-fixed-points--a11d32a108514ab0656c2bac.md) | 100 | `result-track:a11d32a108514ab0656c2bacf83f250b2b8f6e688884f458dfef3c7123015549` |
| 18 | `theorem` | [alpogeFable_not_unique_fixed_point](../../../../../mathematics/Algebra/CommutativeAlgebra/JacobianConjecture/Variant2751b969c4419d688c0f4899e8ab9b485e2a54cdf2618e2473faa339ba5aed7b.lean/declarations/alpogefable-not-unique-fixed-point--4b9b07f589eb87c6e4e88134.md) | 110 | `result-track:4b9b07f589eb87c6e4e8813412c9e69abd27cc75f00cd2b5b605cabbdab84a7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
