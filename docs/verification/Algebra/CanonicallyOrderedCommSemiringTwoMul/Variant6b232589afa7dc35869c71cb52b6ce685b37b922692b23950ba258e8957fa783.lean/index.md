# Verification target: GRWTSK.Algebra.CanonicallyOrderedCommSemiringTwoMul.Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0638ac5b7d7919f6f64b0bcce5e495b8bcf79a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/index.md) · [Full source](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0638ac5b7d7919f6f64b0bcce5e495b8bcf79a`.

Source path: `GRWTSK/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [K](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/k--e187addd5cc902e7686ef698.md) | 47 | `declaration-track:e187addd5cc902e7686ef698f24e80b1f18e6d1232d0a487286bf2bccb834e45` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/instance--b2a76a574bfa10ea34aff9d1.md) | 52 | `declaration-track:b2a76a574bfa10ea34aff9d1e8bccf71b667b04725f2758098d3bf1925c919ef` |
| 3 | `instance` | [inhabitedK](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/inhabitedk--86c0db1c2000696b105ad410.md) | 55 | `declaration-track:86c0db1c2000696b105ad410ce07e29e62f0fb4ba706fbd6fa78a66f60f13687` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/instance--cfc6209eb0301b6075d6cb19.md) | 59 | `declaration-track:cfc6209eb0301b6075d6cb19127622f72f57c74dc60772cba7d15649576281d3` |
| 5 | `theorem` | [mem_zmod_2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/mem-zmod-2--c065d0b4c049645916a09a5d.md) | 70 | `result-track:c065d0b4c049645916a09a5d311a6fdd727747422969388697dac53f5433ea2e` |
| 6 | `theorem` | [add_self_zmod_2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/add-self-zmod-2--c0e87cc6e317d35e2e0fced4.md) | 76 | `result-track:c0e87cc6e317d35e2e0fced4608234d3c6c67715a84eb3df6013fb1544661e4c` |
| 7 | `instance` | [preN2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/pren2--24aac6141a42d47ba8b928cf.md) | 87 | `declaration-track:24aac6141a42d47ba8b928cf7b90de4ac69daeb3a067b96dead05b6860947c2d` |
| 8 | `instance` | [csrN2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/csrn2--7a46b994839e34a59e89cd20.md) | 105 | `declaration-track:7a46b994839e34a59e89cd20f0ca98c099638b875052725acd2f46bc96aa6752` |
| 9 | `instance` | [csrN21](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/csrn21--1c31990f4e369662e6536576.md) | 108 | `declaration-track:1c31990f4e369662e6536576d4283e8b95f98ecd017069baab1c3863a010fc34` |
| 10 | `theorem` | [lt_def](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/lt-def--07ddf014380d78c9a47ce502.md) | 114 | `result-track:07ddf014380d78c9a47ce502b57dc5a2e2560a217e22c6873f5523b56def1fb3` |
| 11 | `theorem` | [add_left_cancel](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/add-left-cancel--5f667a78e1115e891bf60243.md) | 124 | `result-track:5f667a78e1115e891bf60243a9d5e1e99eb2ea1ebe9c14212c1c67ce5e011eb4` |
| 12 | `theorem` | [add_le_add_left](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/add-le-add-left--7dffbf945ec44a53a1473e3b.md) | 128 | `result-track:7dffbf945ec44a53a1473e3beff210ede48765f6117d1a3ba5d2fff3a31b61b7` |
| 13 | `theorem` | [le_of_add_le_add_left](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/le-of-add-le-add-left--c496420fc6ef22ee4a734d95.md) | 134 | `result-track:c496420fc6ef22ee4a734d955dcfb7cd3d77668ed95b23f93cfc365b0fe599b5` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/instance--5f909b144a5c163fc626d8d2.md) | 140 | `declaration-track:5f909b144a5c163fc626d8d2c168ba9113739183632f4381b563f801e51d13c3` |
| 15 | `theorem` | [mul_lt_mul_of_pos_left](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/mul-lt-mul-of-pos-left--a4f8b4980cd494f462c794cf.md) | 143 | `result-track:a4f8b4980cd494f462c794cf6d53f8cc142abf2a168aadf6fc307a88a959a24c` |
| 16 | `theorem` | [mul_lt_mul_of_pos_right](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/mul-lt-mul-of-pos-right--1bfa27ca114efc58fcb2cdb6.md) | 147 | `result-track:1bfa27ca114efc58fcb2cdb685f1272a8e6aeb6e12e9d2956872372e3f62c18b` |
| 17 | `instance` | [socsN2](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/socsn2--a99e8166209adf814a56bef2.md) | 151 | `declaration-track:a99e8166209adf814a56bef2645c1cba2b5b79086cb4264b646ae6ccc186069c` |
| 18 | `def` | [L](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/l--67db069693387f1792c52836.md) | 170 | `declaration-track:67db069693387f1792c52836fc3cc33eae1b8a4ee2476f30bc500ee9a278d9b5` |
| 19 | `theorem` | [add_L](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/add-l--a048e98f4b73c9db8d43ca51.md) | 174 | `result-track:a048e98f4b73c9db8d43ca518af519ebac841f673fcd6eb51303a7f4a23ed6c5` |
| 20 | `theorem` | [mul_L](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/mul-l--469d92c0cccf3264fd8b4eab.md) | 186 | `result-track:469d92c0cccf3264fd8b4eaba8753cf787e3466808b15b51a62f5cf2f1b8ea5d` |
| 21 | `def` | [lSubsemiring](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/lsubsemiring--c3f9130f05e7bf336b88fa60.md) | 203 | `declaration-track:c3f9130f05e7bf336b88fa60f04a989a5d591702e9ab7cdeb91fc9e1639c2913` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/instance--1807bcbf6ae30bdab3fac31b.md) | 211 | `declaration-track:1807bcbf6ae30bdab3fac31b0242957bb4886aa472bac801556eed88e8408ce9` |
| 23 | `instance` | [inhabited](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/inhabited--8d9ee6ec9ae610d0a6473759.md) | 214 | `declaration-track:8d9ee6ec9ae610d0a647375906631d30c47facc12dfbc24d364280f6abe79429` |
| 24 | `theorem` | [bot_le](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/bot-le--987c05d9ba36e826c79697f6.md) | 218 | `result-track:987c05d9ba36e826c79697f6f7973674abe3c9df38a6ae3100807cdfcdd413ec` |
| 25 | `instance` | [orderBot](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/orderbot--2285a774a1cb862b7e3468a1.md) | 228 | `declaration-track:2285a774a1cb862b7e3468a196cfb5c3504bd950acd69db92b93aed06a62d59e` |
| 26 | `theorem` | [exists_add_of_le](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/exists-add-of-le--8f3387fcc6dcad38d3c7d26c.md) | 233 | `result-track:8f3387fcc6dcad38d3c7d26cc3a5b147b3add590c0b66d39651ac6146fec5f89` |
| 27 | `theorem` | [le_self_add](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/le-self-add--bfdf335f7bb4107e57e877fe.md) | 241 | `result-track:bfdf335f7bb4107e57e877fe61601b9a8ff03d23cf8b0e19948c5a0c8984fcf7` |
| 28 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--9e0d07a3bd04b207983b93e4.md) | 250 | `result-track:9e0d07a3bd04b207983b93e4e82517b7f2e9648b8cd7290b7a8e8d821f996069` |
| 29 | `instance` | [can](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/can--5079a1db919b3fe5716e4692.md) | 266 | `declaration-track:5079a1db919b3fe5716e4692071a70d57d790404f88ee210bd6ed8cabf0b7d71` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/CanonicallyOrderedCommSemiringTwoMul/Variant6b232589afa7dc35869c71cb52b6ce685b37b922692b23950ba258e8957fa783.lean/declarations/example--35bcf11482316bdf2b5b6fb5.md) | 277 | `declaration-track:35bcf11482316bdf2b5b6fb5cd14cd41e9a6b5d2035940b5ddd6e0e0fc26eaf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
