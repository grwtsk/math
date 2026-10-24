# Verification target: GRWTSK.Algebra.LinearAlgebra.MangoldtMobiusJacobiBeforeDocstrings.Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c17c49c15312f83327cc5f16a2a65e6b55ff81e3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c17c49c15312f83327cc5f16a2a65e6b55ff81e3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedDilation](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/signeddilation--d96ad91b7bb6adb95d6f39ab.md) | 41 | `declaration-track:d96ad91b7bb6adb95d6f39ab916ee944fd729a6b66381da8b4a2aea5d47218a6` |
| 2 | `def` | [jointVector](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/jointvector--071a48bee169a8249b006efd.md) | 45 | `declaration-track:071a48bee169a8249b006efdbb2aa78829c77f2f94a1a1c5401a30258bd0a2c2` |
| 3 | `theorem` | [signedDilation_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/signeddilation-symmetric--5ecdbf2195edad2746f74f17.md) | 48 | `result-track:5ecdbf2195edad2746f74f17fad3167f95da239faa4301e5ec62918748138ff9` |
| 4 | `theorem` | [signedDilation_quadratic](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/signeddilation-quadratic--b91b7a2f65b7722b1c6df098.md) | 53 | `result-track:b91b7a2f65b7722b1c6df098e214455ec34da89911dce4711fe8de25d2abb242` |
| 5 | `theorem` | [signedDilation_quadratic_sum](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/signeddilation-quadratic-sum--6cf7f04f6d89fc482225232a.md) | 64 | `result-track:6cf7f04f6d89fc482225232acfa9ca6e3e8193459750d9e52ebb7bd4b9fa35ed` |
| 6 | `def` | [pairKernel](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/pairkernel--579abec33368754fa5557df5.md) | 80 | `declaration-track:579abec33368754fa5557df5a5782ac78687cbd065d4c9809cff28eef7540acc` |
| 7 | `theorem` | [pairKernel_covariance](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/pairkernel-covariance--d9bdb30ceda9e4f3812b262c.md) | 82 | `result-track:d9bdb30ceda9e4f3812b262ce7c00f4618ab32f4678300c87f7914c941703f41` |
| 8 | `theorem` | [finiteMangoldtMobius_covariance](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/finitemangoldtmobius-covariance--0b7992363d55472f1ccce55a.md) | 97 | `result-track:0b7992363d55472f1ccce55a928a9ce3790f1d82c42a561eca239ef871f10335` |
| 9 | `def` | [SourceAtom](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceatom--0722a182402753966ed8a327.md) | 111 | `declaration-track:0722a182402753966ed8a327dfd1d18900c4a7819e3d044dc2577e7800c50c80` |
| 10 | `instance` | [sourceAtomFintype](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceatomfintype--4faa176e063c38642c3ce932.md) | 115 | `declaration-track:4faa176e063c38642c3ce9328de46c984e2d18cd8f2dc40a6bcd850862444a12` |
| 11 | `instance` | [sourceAtomDecidableEq](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceatomdecidableeq--e18cc7ac6c6422d33868fbbf.md) | 119 | `declaration-track:e18cc7ac6c6422d33868fbbfcbdab90da9035285498a8db8b379ddd66aaf1c5d` |
| 12 | `def` | [sourceMobiusRow](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourcemobiusrow--fe35f763a4ec760581d4de3c.md) | 122 | `declaration-track:fe35f763a4ec760581d4de3c2c01ab651bba7e662f1e03c1108d635accb0a8ed` |
| 13 | `def` | [sourceLogRow](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourcelogrow--069818112018fee1bbb9e66a.md) | 125 | `declaration-track:069818112018fee1bbb9e66ac5d8dff1b67f104ca8e90ae02a89fce0cac684b2` |
| 14 | `def` | [sourceAtomWeight](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceatomweight--f80be8bff6c658d71b7d11bd.md) | 127 | `declaration-track:f80be8bff6c658d71b7d11bd830b579d1ae955c7b1d9799d975769b06cf35bf9` |
| 15 | `def` | [sourceSignedOperator](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourcesignedoperator--b37357ed2af2e0f0aa586606.md) | 130 | `declaration-track:b37357ed2af2e0f0aa5866060b8244498aed04d206596c494cf7fd9c650aa539` |
| 16 | `def` | [sourceJointVector](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourcejointvector--360e403dc2c94c5713cbb25e.md) | 134 | `declaration-track:360e403dc2c94c5713cbb25e4690dcb0aa610db6a8f6208e9fd0ff41e08f9ef5` |
| 17 | `def` | [sourceOperatorValue](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceoperatorvalue--74a796f74b1ef9f71a397b6a.md) | 137 | `declaration-track:74a796f74b1ef9f71a397b6a51c0fa5ecdfd4e663e1388ccdda328a72040dc8d` |
| 18 | `theorem` | [sourceOperatorValue_eq_twice_mobius](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceoperatorvalue-eq-twice-mobius--ac4593306c1b7525b70eb311.md) | 141 | `result-track:ac4593306c1b7525b70eb311981fffeabcf7dc93d612f67744efd50cc8919a07` |
| 19 | `theorem` | [sourceOperatorValue_eq_twice_residual](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/sourceoperatorvalue-eq-twice-residual--a03b33589417c64fc4496a19.md) | 164 | `result-track:a03b33589417c64fc4496a1956066d120528d922fb4b301ecee619a8b5f8f007` |
| 20 | `def` | [SignedOperatorTailUpperBound](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/signedoperatortailupperbound--d2c0d6856b8072201c633977.md) | 170 | `declaration-track:d2c0d6856b8072201c6339775003340781f35fbb851bc299931c81003f44cd2c` |
| 21 | `theorem` | [signedOperatorTail_iff_mertensResidualTail](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/signedoperatortail-iff-mertensresidualtail--1a3a3d7ae4e9d31d24ec4493.md) | 175 | `result-track:1a3a3d7ae4e9d31d24ec44934ccf7c8ae7a3619dd3548876fccfd7c3cd582366` |
| 22 | `theorem` | [estimate_of_signedOperatorTail](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/estimate-of-signedoperatortail--334ae19d0d0d8ddec567bb37.md) | 191 | `result-track:334ae19d0d0d8ddec567bb37f4b8a572e1b3e7b5900875236d6aa3777385d618` |
| 23 | `theorem` | [cancellation_fixture](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/cancellation-fixture--f72b3729f3918f9e922285a9.md) | 198 | `result-track:f72b3729f3918f9e922285a90a158d589d713c48a76950eeb0d31e2f4b21f1f2` |
| 24 | `theorem` | [absolute_fixture](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/absolute-fixture--2fb41a28e3da8a495d5f363d.md) | 205 | `result-track:2fb41a28e3da8a495d5f363dd1bbbb4b2ef5e6696bbacbdcdfa3253938bd9731` |
| 25 | `theorem` | [unbounded_representation_fixture](../../../../../mathematics/Algebra/LinearAlgebra/MangoldtMobiusJacobiBeforeDocstrings/Variant3093ed15987967c0441912f9720b0f88c897d94d98fe0fc79d0db933a445f5f5.lean/declarations/unbounded-representation-fixture--be246385d9524e2b8d45d757.md) | 212 | `result-track:be246385d9524e2b8d45d75796102a073d8390ed660ec1b12f48402b9ee9919f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
