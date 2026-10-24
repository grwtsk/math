# Verification target: GRWTSK.Algebra.LinearAlgebra.MangoldtMobiusJacobiBeforeDocstrings.Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89dc2294088afd8b8107b763b5b27b7577045035",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89dc2294088afd8b8107b763b5b27b7577045035`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedDilation](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/signeddilation--385d90a200559653611a6f8c.md) | 33 | `declaration-track:385d90a200559653611a6f8cf4c324a0e3d019fefffacf005555c424ec662cab` |
| 2 | `def` | [jointVector](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/jointvector--c45a6b887e2756dcf3f1a63a.md) | 37 | `declaration-track:c45a6b887e2756dcf3f1a63af360d5eab51420534ae22a49263f13eaad104500` |
| 3 | `theorem` | [signedDilation_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/signeddilation-symmetric--b4e91da2bb5d4f12301177f8.md) | 40 | `result-track:b4e91da2bb5d4f12301177f8eb5bc096d61f75d0a5e45d2db74014a9c2ccb4e4` |
| 4 | `theorem` | [signedDilation_quadratic](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/signeddilation-quadratic--17901755b1efeb54b2745bc0.md) | 45 | `result-track:17901755b1efeb54b2745bc03c8709334add3f6457f7c1158d0892c2f6056ff1` |
| 5 | `theorem` | [signedDilation_quadratic_sum](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/signeddilation-quadratic-sum--e433c2395303abe2fe7041c9.md) | 56 | `result-track:e433c2395303abe2fe7041c998ce759039637e769c339573754f85f34cc52c5f` |
| 6 | `def` | [pairKernel](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/pairkernel--60ecf5f101a04d9b43de4d5a.md) | 72 | `declaration-track:60ecf5f101a04d9b43de4d5a2f8ab01e2782a6c6772d0f7122fe9c1045ac9a3d` |
| 7 | `theorem` | [pairKernel_covariance](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/pairkernel-covariance--480d03d426c53501595501c9.md) | 74 | `result-track:480d03d426c53501595501c923720b6f6efc7110e9929807896756987b64b059` |
| 8 | `theorem` | [finiteMangoldtMobius_covariance](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/finitemangoldtmobius-covariance--216a05121ead333f4b8ef193.md) | 89 | `result-track:216a05121ead333f4b8ef1932b17aec3a619e09e3a33fb16dacc6695c5261b27` |
| 9 | `def` | [SourceAtom](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceatom--2b6ed7e2991acf4c3512cde6.md) | 103 | `declaration-track:2b6ed7e2991acf4c3512cde6c319ceab3773d9b18be2c7bd820d261592e2f173` |
| 10 | `instance` | [sourceAtomFintype](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceatomfintype--cf0d00e5e65269d451181d8a.md) | 107 | `declaration-track:cf0d00e5e65269d451181d8a9432e1505398e94d3e11748d15b8646109d4bacc` |
| 11 | `instance` | [sourceAtomDecidableEq](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceatomdecidableeq--10eda3646e9f3d0f49f8289b.md) | 111 | `declaration-track:10eda3646e9f3d0f49f8289b3edaa80ca97622cdcd46ad856ed7d8565b1b4e0a` |
| 12 | `def` | [sourceMobiusRow](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourcemobiusrow--64334b9cbf62b31a471a85c7.md) | 114 | `declaration-track:64334b9cbf62b31a471a85c70360da0d489b674471a4e711295194fe02ba384a` |
| 13 | `def` | [sourceLogRow](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourcelogrow--db165b7174f296465f5656e0.md) | 117 | `declaration-track:db165b7174f296465f5656e0b7c0e50c1714a492c051fa2525c430d5e0ae8dcc` |
| 14 | `def` | [sourceAtomWeight](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceatomweight--e1c79c96e877a070831f69cd.md) | 119 | `declaration-track:e1c79c96e877a070831f69cd38529d4ca0818f733b14a40511aeef2eb1c80631` |
| 15 | `def` | [sourceSignedOperator](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourcesignedoperator--eb969db3c068d4518ff81eba.md) | 122 | `declaration-track:eb969db3c068d4518ff81eba2b62423694357b0528cf824aa148671077d00b22` |
| 16 | `def` | [sourceJointVector](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourcejointvector--8c0b87fb9f9d5ad5de7a1b2c.md) | 126 | `declaration-track:8c0b87fb9f9d5ad5de7a1b2c0c8c4d796e749b8f87c3e11deb7597efccb7f5d9` |
| 17 | `def` | [sourceOperatorValue](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceoperatorvalue--0df3226847b1c1383cacba6a.md) | 129 | `declaration-track:0df3226847b1c1383cacba6acafc91452a81a9d8b3f801343fd8299bf0686138` |
| 18 | `theorem` | [sourceOperatorValue_eq_twice_mobius](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceoperatorvalue-eq-twice-mobius--cf5974d90bf8d5a16738419d.md) | 133 | `result-track:cf5974d90bf8d5a16738419d85d067d96fe0d5329caaa5ce891ee4d441e16832` |
| 19 | `theorem` | [sourceOperatorValue_eq_twice_residual](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/sourceoperatorvalue-eq-twice-residual--d746ee0add46c874114fef39.md) | 156 | `result-track:d746ee0add46c874114fef39ef6f4385d5eeddc012ed43c75372233f0597e79b` |
| 20 | `def` | [SignedOperatorTailUpperBound](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/signedoperatortailupperbound--844b2cf3d57f7e06b2fae2df.md) | 162 | `declaration-track:844b2cf3d57f7e06b2fae2dfdcad7023e9dc06f7fd3212b04e7476da69ca58f7` |
| 21 | `theorem` | [signedOperatorTail_iff_mertensResidualTail](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/signedoperatortail-iff-mertensresidualtail--66e9351eb6c7c2d9c7acc329.md) | 167 | `result-track:66e9351eb6c7c2d9c7acc32985523809f6b93b24207cfb960857c727f9a7eb62` |
| 22 | `theorem` | [estimate_of_signedOperatorTail](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/estimate-of-signedoperatortail--89e6bbb5e8b1b4fdc915b183.md) | 183 | `result-track:89e6bbb5e8b1b4fdc915b1835fc3aa6a22e83eaf9eaf8e31f412807a2b394c1a` |
| 23 | `theorem` | [cancellation_fixture](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/cancellation-fixture--d239c3a7f0d3b52a757fdd83.md) | 190 | `result-track:d239c3a7f0d3b52a757fdd83616d2e8d6dea5b0ef0c960abbee580392b0c7ddb` |
| 24 | `theorem` | [absolute_fixture](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/absolute-fixture--0e41e148b7b20e69b9344bf9.md) | 197 | `result-track:0e41e148b7b20e69b9344bf910faee97cbc3f313b9b53d660b19fac608d695dc` |
| 25 | `theorem` | [unbounded_representation_fixture](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variantf35c8591c60a9cbe804e6d97ab1f4350782481694dc3c4e4f543a51aab454c3c.lean/declarations/unbounded-representation-fixture--30e5a1d2b5d3eb02469e3b33.md) | 204 | `result-track:30e5a1d2b5d3eb02469e3b33ac5658295455a36adf02fa9b6cb19dd494517a64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
