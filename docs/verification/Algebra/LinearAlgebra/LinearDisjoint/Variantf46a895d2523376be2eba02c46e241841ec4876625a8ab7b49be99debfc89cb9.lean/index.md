# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearDisjoint.Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c11d5ea55cbb2780e05b80a37e99db9ee389aaa9",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c11d5ea55cbb2780e05b80a37e99db9ee389aaa9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Finiteness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearDisjoint](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint--560b8c1b77689062e3160f5d.md) | 149 | `declaration-track:560b8c1b77689062e3160f5d5d4f168ecb759aba9380e0f90c77e8ec56f0ebe2` |
| 2 | `def` | [LinearDisjoint.mulMap](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-mulmap--627065853f1865284cde0fa8.md) | 156 | `declaration-track:627065853f1865284cde0fa8be3e3c1b8ab0094903434470846163b4e12d079b` |
| 3 | `theorem` | [LinearDisjoint.val_mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-val-mulmap-tmul--694a9df01aa8239f075658f6.md) | 160 | `result-track:694a9df01aa8239f075658f682b003203091398b0864a56463f28274ba71b9cc` |
| 4 | `theorem` | [LinearDisjoint.of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-of-subsingleton--b8f8ebbae21890f585fffcfe.md) | 164 | `result-track:b8f8ebbae21890f585fffcfed7d253eda9f03ba242a49d6921ef41d4a62d7b06` |
| 5 | `theorem` | [LinearDisjoint.of_subsingleton_top](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-of-subsingleton-top--bb65e9ae80e7aee132f00ef5.md) | 169 | `result-track:bb65e9ae80e7aee132f00ef523c144991a177b6e8c0e538fbd33109604fe73f4` |
| 6 | `theorem` | [linearDisjoint_op](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-op--1130982fddef808cdb686407.md) | 173 | `result-track:1130982fddef808cdb686407d23951faa9818543b2fb51bc95799eac20a009f3` |
| 7 | `theorem` | [LinearDisjoint.symm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-symm-of-commute--99a594ea34d4939d1ff84293.md) | 182 | `result-track:99a594ea34d4939d1ff84293d1da47bfe98adf2a6e996b8e0f7672ab7a4935bb` |
| 8 | `theorem` | [linearDisjoint_comm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-comm-of-commute--7cefc865f9caeccfe66d5c71.md) | 188 | `result-track:7cefc865f9caeccfe66d5c7132f7e1f98d50a149b3c9597901a73b2e2771746e` |
| 9 | `theorem` | [map](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/map--e4c87dcb09949c211d2c2f6c.md) | 195 | `result-track:e4c87dcb09949c211d2c2f6cc14531227a64441b4e43f65db3b0c8d551d81bf6` |
| 10 | `theorem` | [of_basis_left'](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-basis-left--61d66e9491aa7a5cea6fd600.md) | 210 | `result-track:61d66e9491aa7a5cea6fd600f6c661d4f176105340fcb1b9f840bad7f858dc54` |
| 11 | `theorem` | [of_basis_right'](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-basis-right--3bcfe068bfe4674b8c1e61b1.md) | 220 | `result-track:3bcfe068bfe4674b8c1e61b18e5b0a6293f2ca595635c1660cf4c4c746f734d2` |
| 12 | `theorem` | [of_basis_mul'](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-basis-mul--23c81c166d2179e5268f5fd4.md) | 231 | `result-track:23c81c166d2179e5268f5fd4e47f47e6d3f60c39ca710217a043f814d539ce30` |
| 13 | `theorem` | [bot_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/bot-left--926a518bffa8fc849f40b076.md) | 244 | `result-track:926a518bffa8fc849f40b0763ee1252836d4009b8c1656dfbb4e9a4efebcb006` |
| 14 | `theorem` | [bot_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/bot-right--53db6d25caff6058f691a42a.md) | 248 | `result-track:53db6d25caff6058f691a42a22800769f5658fe6049452bd01be5deeb20be12c` |
| 15 | `theorem` | [one_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/one-left--bfe770fc6f63142872b8c39d.md) | 252 | `result-track:bfe770fc6f63142872b8c39db6d134e5bb9ac9b6ce9b8a3f9360cef63d1c0fd0` |
| 16 | `theorem` | [one_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/one-right--0a86f9d9418ec058842764f6.md) | 257 | `result-track:0a86f9d9418ec058842764f699700f189ace8b11504d8d839f40fcf6545d1fcf` |
| 17 | `theorem` | [of_linearDisjoint_fg_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-lineardisjoint-fg-left--dcedd950202eb7eae1bfcc09.md) | 263 | `result-track:dcedd950202eb7eae1bfcc09ad36e31d0278b1ef749b0583a99ef3b145bdea74` |
| 18 | `theorem` | [of_linearDisjoint_fg_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-lineardisjoint-fg-right--d50282cad75c92029693785e.md) | 276 | `result-track:d50282cad75c92029693785e82b2c00db497622b23397d4090412080589725a0` |
| 19 | `theorem` | [of_linearDisjoint_fg](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-lineardisjoint-fg--ac2a91c7e2809c3277b150e2.md) | 289 | `result-track:ac2a91c7e2809c3277b150e2b302120bf3de4315887f88b2394dd9c9e637887c` |
| 20 | `theorem` | [LinearDisjoint.symm](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-symm--23f2dcacdcab4c5f429a9021.md) | 306 | `result-track:23f2dcacdcab4c5f429a9021196d4d3edd54558b6570ad567281779f9632d8be` |
| 21 | `theorem` | [linearDisjoint_comm](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/lineardisjoint-comm--e7b2ded1eb339a007e11ca19.md) | 310 | `result-track:e7b2ded1eb339a007e11ca198b8b5cdc0509f1af1d6eb055bedc2f3a5ef55c20` |
| 22 | `theorem` | [linearIndependent_left_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/linearindependent-left-of-flat--6a69850178312d5e15ccbd7d.md) | 328 | `result-track:6a69850178312d5e15ccbd7d8418c6fa45837adcd5225a650a285f66e65141a1` |
| 23 | `theorem` | [of_basis_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-basis-left--157352a4bcbf875b864dff1a.md) | 338 | `result-track:157352a4bcbf875b864dff1a527f90f27db8106ed1b5ba8d4fc90f3b080cecaf` |
| 24 | `theorem` | [linearIndependent_right_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/linearindependent-right-of-flat--3506afb80a1468cfd5bd50e7.md) | 349 | `result-track:3506afb80a1468cfd5bd50e7f26820dc9044d3c029179f59e42c7bd9e2af7a59` |
| 25 | `theorem` | [of_basis_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-basis-right--5ff985d28fff9fb61af94158.md) | 359 | `result-track:5ff985d28fff9fb61af941586e166e926367378a987bb3d16102bc0cae63ec82` |
| 26 | `theorem` | [linearIndependent_mul_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/linearindependent-mul-of-flat-left--efb3a7f0233a5dedcfd72fb3.md) | 370 | `result-track:efb3a7f0233a5dedcfd72fb324328856ba2be2bbc8d988f5a3ccbed46df94c1c` |
| 27 | `theorem` | [linearIndependent_mul_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/linearindependent-mul-of-flat-right--16e01b66d2518a1d790762a7.md) | 391 | `result-track:16e01b66d2518a1d790762a796e2c9ff5e835cae885b2930e242993c16239334` |
| 28 | `theorem` | [linearIndependent_mul_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/linearindependent-mul-of-flat--2eb6f2f3b4f52e10f4958edb.md) | 412 | `result-track:2eb6f2f3b4f52e10f4958edb2f82ff512bc65cc94d7cffdbb5ccbec3e1657973` |
| 29 | `theorem` | [of_basis_mul](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-basis-mul--c45a683f4a094f4f138a7571.md) | 423 | `result-track:c45a683f4a094f4f138a7571950c40f204e7c8a7e079210a09621ed66bbeb389` |
| 30 | `theorem` | [of_le_left_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-le-left-of-flat--5a4438775579255dfd0fc3ae.md) | 431 | `result-track:5a4438775579255dfd0fc3ae8d9cd0655c2a5482885276fb2da41df91a89b8e8` |
| 31 | `theorem` | [of_le_right_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-le-right-of-flat--bef98b93c410ea95e5011cae.md) | 442 | `result-track:bef98b93c410ea95e5011cae85f197c0550048530578a3571f93d1e5b574322c` |
| 32 | `theorem` | [of_le_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-le-of-flat-right--4cea908c5b324939a52b04a5.md) | 453 | `result-track:4cea908c5b324939a52b04a56cd4226b1830ca8864e4d96502371dd58cab0624` |
| 33 | `theorem` | [of_le_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-le-of-flat-left--28985bea0282b3b0f7a57c64.md) | 460 | `result-track:28985bea0282b3b0f7a57c64efdaf9636c9d7fd9f5ea12ec85f80d7b3e347474` |
| 34 | `theorem` | [of_left_le_one_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-left-le-one-of-flat--0b84e3a7bca40aeaefa573de.md) | 466 | `result-track:0b84e3a7bca40aeaefa573deb4f3cae8c3fc19d4fcf40b272a17344ad0fe9553` |
| 35 | `theorem` | [of_right_le_one_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/of-right-le-one-of-flat--d24bc58741fb4d18f34782f2.md) | 471 | `result-track:d24bc58741fb4d18f34782f23953ac2560fd9589edd747886638bfe1c8b83c65` |
| 36 | `theorem` | [not_linearIndependent_pair_of_commute_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/not-linearindependent-pair-of-commute-of-flat-left--a13d3e5cbb292b81a8812cb6.md) | 488 | `result-track:a13d3e5cbb292b81a8812cb6a5ef0ef7b8cc6a0123c630158e633f6086803bc4` |
| 37 | `theorem` | [not_linearIndependent_pair_of_commute_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/not-linearindependent-pair-of-commute-of-flat-right--43bf3e57d9e900497a62958c.md) | 504 | `result-track:43bf3e57d9e900497a62958c91a82a7932df033d14720bd6ce167c84999e4203` |
| 38 | `theorem` | [not_linearIndependent_pair_of_commute_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/not-linearindependent-pair-of-commute-of-flat--c33e04c5174585d18f3940b7.md) | 520 | `result-track:c33e04c5174585d18f3940b7335fa54f8308606dcf5874f264997c14ce0a0035` |
| 39 | `theorem` | [rank_inf_le_one_of_commute_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-inf-le-one-of-commute-of-flat--9ec1b83f99d288704077054b.md) | 530 | `result-track:9ec1b83f99d288704077054bb4128bbfb46c86ed08da399abb6b6ace16e2f621` |
| 40 | `theorem` | [rank_inf_le_one_of_commute_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-inf-le-one-of-commute-of-flat-left--26c76c04ffa2847b6d697691.md) | 550 | `result-track:26c76c04ffa2847b6d6976913ae248381a1289ee341d1813b16986f877a9f6f9` |
| 41 | `theorem` | [rank_inf_le_one_of_commute_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-inf-le-one-of-commute-of-flat-right--f73a06c5f694644d1be9a7c8.md) | 556 | `result-track:f73a06c5f694644d1be9a7c8fc5ab77219738203902721b265a5761e01460909` |
| 42 | `theorem` | [rank_le_one_of_commute_of_flat_of_self](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-le-one-of-commute-of-flat-of-self--884e212322322607dfdcd9d7.md) | 564 | `result-track:884e212322322607dfdcd9d7dbec571ac925801931b4e3a01aed9bd9f332fe5c` |
| 43 | `theorem` | [not_linearIndependent_pair_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/not-linearindependent-pair-of-flat-left--35f4be3f8f45ea9ccd59a301.md) | 597 | `result-track:35f4be3f8f45ea9ccd59a3018831d1287df293182f7bb943975d5f83456c7214` |
| 44 | `theorem` | [not_linearIndependent_pair_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/not-linearindependent-pair-of-flat-right--26c616ea02ba6d4b351b569e.md) | 603 | `result-track:26c616ea02ba6d4b351b569e211f5f4a70244067ccf18c7929cbd98ddbf92b16` |
| 45 | `theorem` | [not_linearIndependent_pair_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/not-linearindependent-pair-of-flat--56b547b76e812da80611d8b1.md) | 609 | `result-track:56b547b76e812da80611d8b181ca187133e951b7f3062704dab864b4ef16531d` |
| 46 | `theorem` | [rank_inf_le_one_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-inf-le-one-of-flat--e1802eaf85f2980eb62bba9b.md) | 617 | `result-track:e1802eaf85f2980eb62bba9bb044e34dc2166aca6c2df039c04531543404fa37` |
| 47 | `theorem` | [rank_inf_le_one_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-inf-le-one-of-flat-left--b97a11ca679b0d63308dad47.md) | 623 | `result-track:b97a11ca679b0d63308dad479dfd7a98bd5648db8e51f443aa9c6d80af9aecca` |
| 48 | `theorem` | [rank_inf_le_one_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-inf-le-one-of-flat-right--2acd7a6f96b6ffe4f8247f61.md) | 628 | `result-track:2acd7a6f96b6ffe4f8247f6130d834daf5117d59f9803c79c1fa3a75ee67425d` |
| 49 | `theorem` | [rank_le_one_of_flat_of_self](../../../../../mathematics/Algebra/LinearAlgebra/LinearDisjoint/Variantf46a895d2523376be2eba02c46e241841ec4876625a8ab7b49be99debfc89cb9.lean/declarations/rank-le-one-of-flat-of-self--b1877c025e97ffd4b93a2154.md) | 635 | `result-track:b1877c025e97ffd4b93a2154775b6becec631f9fed529b477ff899ec1fefb308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
