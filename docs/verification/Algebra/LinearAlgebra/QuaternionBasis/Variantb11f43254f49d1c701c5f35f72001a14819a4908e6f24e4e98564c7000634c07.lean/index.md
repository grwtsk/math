# Verification target: GRWTSK.Algebra.LinearAlgebra.QuaternionBasis.Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d47fd03e133e155e88a726fa0ccf06735526ddc5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d47fd03e133e155e88a726fa0ccf06735526ddc5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quaternion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Basis](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/basis--fb03768174c735a1ba23de48.md) | 43 | `declaration-track:fb03768174c735a1ba23de48278469478974f65b07d756bc22ee51bb29a2695d` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/ext--12ea60fe271625eb09377854.md) | 62 | `result-track:12ea60fe271625eb093778547125f1af6fcd5f253b3b38cfd3f800ac470060be` |
| 3 | `def` | [self](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/self--fa46d265e2a081ff6ff3ba58.md) | 73 | `declaration-track:fa46d265e2a081ff6ff3ba588d81fe9053a9b5b236713cc40302bc57e57811a3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/instance--04ce2c63df738800d7a04599.md) | 82 | `declaration-track:04ce2c63df738800d7a045998d9db71280177de5383676317af4006216924550` |
| 5 | `theorem` | [i_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/i-mul-k--5ab13521594766edb9d48886.md) | 90 | `result-track:5ab13521594766edb9d4888625d5258a9781f585f57b166a31bf22a9e86871e4` |
| 6 | `theorem` | [k_mul_i](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/k-mul-i--3230ed973b50ee52ecd41c14.md) | 94 | `result-track:3230ed973b50ee52ecd41c1419dc1c2daa7135f8226a0d2eb893794dc6cff29f` |
| 7 | `theorem` | [k_mul_j](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/k-mul-j--bb4336ce82a01836d24a5f17.md) | 99 | `result-track:bb4336ce82a01836d24a5f172eed39e168eb4ceac73e718e1e32430ead0e871f` |
| 8 | `theorem` | [j_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/j-mul-k--8ca476459006b9ebe726997c.md) | 103 | `result-track:8ca476459006b9ebe726997c5dd516d0fc32d6059909404c4f42baf0f6a4058a` |
| 9 | `theorem` | [k_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/k-mul-k--266b575527eef8ad8ef15075.md) | 108 | `result-track:266b575527eef8ad8ef150751cb7e9ab69fd9351264131e4b9e474926c3eaf4d` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift--13657cd845a571a99df0cbd5.md) | 117 | `declaration-track:13657cd845a571a99df0cbd5a3b00286e7cf176cc032dbc31d636f87da64a8a6` |
| 11 | `theorem` | [lift_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift-zero--e352a20899ab775e78b45fc9.md) | 120 | `result-track:e352a20899ab775e78b45fc99c494dbd023ac8225bfdb5d2a1f865cd23912220` |
| 12 | `theorem` | [lift_one](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift-one--df07c2258b177f2e35aa19fb.md) | 122 | `result-track:df07c2258b177f2e35aa19fbe897e83fc539fe85d970103790caaffbb5ebdde3` |
| 13 | `theorem` | [lift_add](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift-add--9a58a02e6c7f3a871a4ddced.md) | 124 | `result-track:9a58a02e6c7f3a871a4ddced59b10fc82fa126e670b73ce09f485f762f9eea34` |
| 14 | `theorem` | [lift_mul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift-mul--8d650e06d60cb25eb330a566.md) | 128 | `result-track:8d650e06d60cb25eb330a566f5364fd5e9de1fc465d47a1706a8795b1a2c3c40` |
| 15 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift-smul--8a06db255d4dd9ec6bf22328.md) | 140 | `result-track:8a06db255d4dd9ec6bf22328c2579da57398ea699128f00a34aad3943ddd3845` |
| 16 | `def` | [liftHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lifthom--1343805f2aea24f833c59e4e.md) | 145 | `declaration-track:1343805f2aea24f833c59e4e4d7e7f0bc76e134a9c8b55ba63e9eb20c95af04b` |
| 17 | `def` | [compHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/comphom--97f2777376dde5ce8005338e.md) | 155 | `declaration-track:97f2777376dde5ce8005338e5a92be639a06629a122f79c49fd7ef66fc584610` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/lift--75ff86446239d80d954358ff.md) | 168 | `declaration-track:75ff86446239d80d954358ff39a56bd69c6a19ec4a53070bab31f2a98e046b3f` |
| 19 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/hom-ext--5a87a6f4b097f663dd8b2925.md) | 182 | `result-track:5a87a6f4b097f663dd8b2925064f69d773452d78abf576a00373666f102647fa` |
| 20 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variantb11f43254f49d1c701c5f35f72001a14819a4908e6f24e4e98564c7000634c07.lean/declarations/hom-ext--e147574ca2b45c3dcedbf0e0.md) | 196 | `result-track:e147574ca2b45c3dcedbf0e09b8dbe2b24869c8af7dc8c2dcd9d0d0aa2ca3cdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
