# Verification target: GRWTSK.Algebra.CommutativeAlgebra.GroupRingAction.Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b71f76600c314ee347c00bb198d2e7d051762b2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b71f76600c314ee347c00bb198d2e7d051762b2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_map](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/smul-eq-map--a4b170e67676c5b763dd6214.md) | 32 | `result-track:a4b170e67676c5b763dd6214ca6ff33543aaf290bd72d32b053e1986a5844023` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/instance--ef13c66ded1785a31fa57f48.md) | 45 | `declaration-track:ef13c66ded1785a31fa57f4844b1cf00a3c532fa321876ba71a107e6217af23d` |
| 3 | `theorem` | [smul_X](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/smul-x--3d531db465a9a29588871aa9.md) | 58 | `result-track:3d531db465a9a29588871aa978464191c7b4b2a43d6a19f817b55080e3328fd2` |
| 4 | `theorem` | [smul_eval_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/smul-eval-smul--ff12a1bbeff08b69069a4f54.md) | 65 | `result-track:ff12a1bbeff08b69069a4f541b799959e32247e6e51e4b6f79f48f07d4a5462c` |
| 5 | `theorem` | [eval_smul'](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/eval-smul--b61e392a3b4079297a4e7797.md) | 74 | `result-track:b61e392a3b4079297a4e7797cf015b7782532a25cfa0d6c119bfde7636a76fc2` |
| 6 | `theorem` | [smul_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/smul-eval--fb0b0cf8deaf2e73e2936e6e.md) | 79 | `result-track:fb0b0cf8deaf2e73e2936e6ebe823ccb3ddabf5de59dd054b7d4416b0f5f6716` |
| 7 | `def` | [prodXSubSmul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/prodxsubsmul--f50eeea6006c470c7b8b3425.md) | 98 | `declaration-track:f50eeea6006c470c7b8b3425c2fd11b129e830b97f201b7e4902680cb2a4aa7f` |
| 8 | `theorem` | [prodXSubSmul.monic](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/prodxsubsmul-monic--f1a8ecb732cc34b84b0cbcbf.md) | 103 | `result-track:f1a8ecb732cc34b84b0cbcbf9bc186fb83bf0ca626061565b65b59cb8bcd33f9` |
| 9 | `theorem` | [prodXSubSmul.eval](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/prodxsubsmul-eval--3f2f3afd6b8f9318953fd9d3.md) | 107 | `result-track:3f2f3afd6b8f9318953fd9d303a5c1e23435edf298af5f3b7b0ca6827e9af28d` |
| 10 | `theorem` | [prodXSubSmul.smul](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/prodxsubsmul-smul--e830305dba7db033aea4a7cd.md) | 112 | `result-track:e830305dba7db033aea4a7cdbc57705df2b3fdf5533b48e8243e11ace74cfb61` |
| 11 | `theorem` | [prodXSubSmul.coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/prodxsubsmul-coeff--2a804405976b8f3bd3624ba7.md) | 118 | `result-track:2a804405976b8f3bd3624ba7e00a8092e85c07cbfeb67364a46b58d01777410f` |
| 12 | `def` | [polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/polynomial--f86c8229a3beef969f32e693.md) | 136 | `declaration-track:f86c8229a3beef969f32e6932ed1a51fe216389af4ecc9541100df7b5e7c9a32` |
| 13 | `theorem` | [coe_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/declarations/coe-polynomial--23889862ca7c8a02e55ee861.md) | 155 | `result-track:23889862ca7c8a02e55ee8616d51b2aa633de6038119501500320dae098f4439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
