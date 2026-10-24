# Verification target: GRWTSK.Algebra.LinearAlgebra.QuaternionBasis.Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31a83a936872eca4a5954996685955acb04ef9e9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31a83a936872eca4a5954996685955acb04ef9e9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quaternion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Basis](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/basis--22c3f76ce9097c3ed1d28d7d.md) | 37 | `declaration-track:22c3f76ce9097c3ed1d28d7d3f6427556fb332600f67fa6bdc352a4be038ab26` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/ext--427f505fe513ba085c6c1a4b.md) | 53 | `result-track:427f505fe513ba085c6c1a4b4d79786f05a6a66d2b35fba7910fa2decef04634` |
| 3 | `def` | [self](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/self--4c062fe4eee5397a8439d6f4.md) | 65 | `declaration-track:4c062fe4eee5397a8439d6f46526d52e698436e85b9d5c210d5b93774ce12f60` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/instance--0ab459861d605a192ce9965a.md) | 77 | `declaration-track:0ab459861d605a192ce9965acd8a5a389c625a4c4692f3de6c2d15fea98011a8` |
| 5 | `theorem` | [i_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/i-mul-k--3ad3fa08ff02bde3254f4ceb.md) | 85 | `result-track:3ad3fa08ff02bde3254f4ceba5d7c7d445ae9f4f6beba646b8f540bef86eb515` |
| 6 | `theorem` | [k_mul_i](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/k-mul-i--80f749c37bf3ba22d3a58369.md) | 90 | `result-track:80f749c37bf3ba22d3a5836944ef4c4cbdc8fb8ce920be78e65f1195dc8bd2ef` |
| 7 | `theorem` | [k_mul_j](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/k-mul-j--680e34dbc4fac680e379232d.md) | 95 | `result-track:680e34dbc4fac680e379232decf2f8af2bbff69df50b9fab7fc257b60defad6c` |
| 8 | `theorem` | [j_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/j-mul-k--be139c8ee3cefd9bd70ee598.md) | 100 | `result-track:be139c8ee3cefd9bd70ee598d1cc5ae7908f66a54891e74f0bcfbc9326e31032` |
| 9 | `theorem` | [k_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/k-mul-k--a00c54d368952201dde10bf7.md) | 105 | `result-track:a00c54d368952201dde10bf7070adb5a1356b72e27ad9948af01df7865d719cf` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift--64a1ac101cd919b122b49588.md) | 111 | `declaration-track:64a1ac101cd919b122b4958880db0408d100eefa926a9bd59d0e87f0cbf5c555` |
| 11 | `theorem` | [lift_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift-zero--d9db11bb67c2cd0561d97ce5.md) | 115 | `result-track:d9db11bb67c2cd0561d97ce540ec3d68e9b2e30a8b16926eb81e37f10dd6f706` |
| 12 | `theorem` | [lift_one](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift-one--c2c8b5d387cb8f5b1b18f4f3.md) | 118 | `result-track:c2c8b5d387cb8f5b1b18f4f389afa0e39c0f5c4eddfde421d66ea78124455cc9` |
| 13 | `theorem` | [lift_add](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift-add--1b11dfc5744a1aa27b5e2a0e.md) | 121 | `result-track:1b11dfc5744a1aa27b5e2a0e1058078b51dd9ae1f2c37afa7b471494a05f6dc3` |
| 14 | `theorem` | [lift_mul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift-mul--143bf1b277aec53d3f273187.md) | 126 | `result-track:143bf1b277aec53d3f273187453da2a19bfd6d1ab0c15ad45ae10af853bb3b7f` |
| 15 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift-smul--5d6010b0a986c1aa4f4261f4.md) | 139 | `result-track:5d6010b0a986c1aa4f4261f4fb2fc56856e89a56edd33ea2aa7d78aa6248392e` |
| 16 | `def` | [liftHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lifthom--deac77fbf274b2e9e054ce83.md) | 145 | `declaration-track:deac77fbf274b2e9e054ce830912f04f3924b5e391de537f09518217e745d3ed` |
| 17 | `def` | [compHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/comphom--c32fe13306013c6f72ddd919.md) | 156 | `declaration-track:c32fe13306013c6f72ddd9192c237a8492f609a8acfd456ff8166b89bcf2b3cb` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variante5c79804210655ee030f1836b643fe02500ddd7359380e64ea6c1eee3dbd7be1.lean/declarations/lift--eb342204f1fd3bfffb1ea301.md) | 170 | `declaration-track:eb342204f1fd3bfffb1ea30102097f5df37ea5302b5376764d7bca7a7c3213b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
