# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c98afa613dcfec5efee0161d39d72a19bf9db26",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c98afa613dcfec5efee0161d39d72a19bf9db26`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Archimedean` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.sInf_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-sinf-smul-of-nonneg--5e579541a24e3e7d49361fe2.md) | 37 | `result-track:5e579541a24e3e7d49361fe22234a50dff15ea0a741bdccaa9ed1d180c633cb2` |
| 2 | `theorem` | [Real.smul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-smul-iinf-of-nonneg--f6ac17e93812d4fcb53bd1bf.md) | 48 | `result-track:f6ac17e93812d4fcb53bd1bf649c6e951dd7c8bcd2c001d627d037fab01617e6` |
| 3 | `theorem` | [Real.sSup_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-ssup-smul-of-nonneg--76b159b61c7bd3a67b190d30.md) | 51 | `result-track:76b159b61c7bd3a67b190d30d2c2d90ffeed30ad8e57ae906297a0f80aa6a287` |
| 4 | `theorem` | [Real.smul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-smul-isup-of-nonneg--1adbb57c227dfea3f4fd4770.md) | 62 | `result-track:1adbb57c227dfea3f4fd47703b5d0dbbaf39e882840958c87f6796f646934a3b` |
| 5 | `theorem` | [Real.sInf_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-sinf-smul-of-nonpos--188ff1f5238f498cf352590a.md) | 71 | `result-track:188ff1f5238f498cf352590a484486e08f3f494dfa1061216e1e13d1b662355f` |
| 6 | `theorem` | [Real.smul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-smul-isup-of-nonpos--a028f865f3916c3826cf3699.md) | 82 | `result-track:a028f865f3916c3826cf369924b627c1f5de4b73605f43db9fa23460d30fb764` |
| 7 | `theorem` | [Real.sSup_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-ssup-smul-of-nonpos--d029105f54a119e37e96a5de.md) | 85 | `result-track:d029105f54a119e37e96a5def92480ede818aa00f90cf1c074b712defe8f195a` |
| 8 | `theorem` | [Real.smul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-smul-iinf-of-nonpos--f0e80091f22bb4d904931f6a.md) | 96 | `result-track:f0e80091f22bb4d904931f6a35cfba3bece00250c5c853a6fbbdd85f41043237` |
| 9 | `theorem` | [Real.mul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-mul-iinf-of-nonneg--4bde4999edf2ca7e863673f8.md) | 108 | `result-track:4bde4999edf2ca7e863673f8b4071e74520ae734b3de874c412077526c90e7dc` |
| 10 | `theorem` | [Real.mul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-mul-isup-of-nonneg--69d18270794cb0d27754cad7.md) | 111 | `result-track:69d18270794cb0d27754cad740d3cfe7b128de74a267fe19b3860dfd329a6951` |
| 11 | `theorem` | [Real.mul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-mul-iinf-of-nonpos--a2ad3cfba3d4ef08fc7d7e32.md) | 114 | `result-track:a2ad3cfba3d4ef08fc7d7e32efefd34723552cd32449fa5fbdca5b94ddecd499` |
| 12 | `theorem` | [Real.mul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-mul-isup-of-nonpos--21b1f9907346a91c70b85794.md) | 117 | `result-track:21b1f9907346a91c70b85794997192d369939b6a68728bbab9bad71b392e2d40` |
| 13 | `theorem` | [Real.iInf_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-iinf-mul-of-nonneg--0f12c2543ffc7801b472cf85.md) | 120 | `result-track:0f12c2543ffc7801b472cf851dc1193f0fefe741b12c7a341138d5c9db653a2f` |
| 14 | `theorem` | [Real.iSup_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-isup-mul-of-nonneg--0b57c0b5c70978ded15f1422.md) | 123 | `result-track:0b57c0b5c70978ded15f1422c443ae41d645fcdeb55efea6db5b7bd281c23178` |
| 15 | `theorem` | [Real.iInf_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-iinf-mul-of-nonpos--68c30a068bb7c1a6b5f1783d.md) | 126 | `result-track:68c30a068bb7c1a6b5f1783d3283a06e5c99aca45d47a0e47edf3865f188e8ef` |
| 16 | `theorem` | [Real.iSup_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variante875d39adb646e6a9c044d8ce60d0ea72cdd1d89ad52dc4b0891fa116be5269c.lean/declarations/real-isup-mul-of-nonpos--e0c97e0a53d17cd64b56f8ad.md) | 129 | `result-track:e0c97e0a53d17cd64b56f8ad51e425d8812f07623bafae0a4e44a5ce8b37f554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
