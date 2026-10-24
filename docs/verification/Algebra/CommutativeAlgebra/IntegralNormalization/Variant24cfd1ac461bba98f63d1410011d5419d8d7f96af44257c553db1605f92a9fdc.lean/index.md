# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntegralNormalization.Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06dd5a2f76c6c2e0a75f5766f9d36e177a35ff0b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06dd5a2f76c6c2e0a75f5766f9d36e177a35ff0b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization--822e5bec0affb2cff9d70351.md) | 38 | `declaration-track:822e5bec0affb2cff9d7035140da561292e2682782e99dd3b8c6b91adff77a3b` |
| 2 | `theorem` | [integralNormalization_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-zero--ad5527f45c72d778370395b9.md) | 44 | `result-track:ad5527f45c72d778370395b97ea8c4b09eadb12b4958876051a0f469a9f33900` |
| 3 | `theorem` | [integralNormalization_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-coeff--1b7c93e945fc9fbfe494fcf9.md) | 48 | `result-track:1b7c93e945fc9fbfe494fcf9815dcea5cd570676d2544dc610cde6d9736752ca` |
| 4 | `theorem` | [integralNormalization_support](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-support--714f25bdc4f2e1813bc22557.md) | 56 | `result-track:714f25bdc4f2e1813bc22557c2d15f7caa683e9e0556cf18946c155c5e5e515a` |
| 5 | `theorem` | [integralNormalization_coeff_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-coeff-degree--41a1e56d063f99f31d8df4f6.md) | 62 | `result-track:41a1e56d063f99f31d8df4f602a81dd00c95e5f3b367da1d6cf820ba909e4534` |
| 6 | `theorem` | [integralNormalization_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-coeff-natdegree--a3eb18547d718b7e036433e6.md) | 66 | `result-track:a3eb18547d718b7e036433e68279612109fa974580a1d34bf81a8486fa2b4720` |
| 7 | `theorem` | [integralNormalization_coeff_ne_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-coeff-ne-degree--3f32e1e097f8eaefd60c8ca4.md) | 71 | `result-track:3f32e1e097f8eaefd60c8ca449ccd068876d655e6d510a1907ec25e339c88964` |
| 8 | `theorem` | [integralNormalization_coeff_ne_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-coeff-ne-natdegree--323266ca86e7b74c52520fd5.md) | 76 | `result-track:323266ca86e7b74c52520fd57db4a2495eea569396a83b899302f03ddf037ff8` |
| 9 | `theorem` | [monic_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/monic-integralnormalization--a4bfeebd6a3f8f1618e48715.md) | 81 | `result-track:a4bfeebd6a3f8f1618e4871554b01603d3a613d379ec2bfebd45ad4856ba606b` |
| 10 | `theorem` | [support_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/support-integralnormalization--c8014ebef9da6ab7cd1e5a86.md) | 95 | `result-track:c8014ebef9da6ab7cd1e5a86f740e59db981c81b26fab23f07da51c27feea021` |
| 11 | `theorem` | [integralNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-eval-eq-zero--e007901262b1416d849f0e45.md) | 113 | `result-track:e007901262b1416d849f0e45fae82388d589896b10dae8568a9c14caeb1622ff` |
| 12 | `theorem` | [integralNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variant24cfd1ac461bba98f63d1410011d5419d8d7f96af44257c553db1605f92a9fdc.lean/declarations/integralnormalization-aeval-eq-zero--64a8ccba55e006a41f902622.md) | 147 | `result-track:64a8ccba55e006a41f90262221e3e6a3fad78c69d5ef72ae691e64b502d2b1f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
