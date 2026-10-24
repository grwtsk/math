# Verification target: GRWTSK.Algebra.Algebra.Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93740b0d08f3b1156eb6c604fb5799e55786e076",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93740b0d08f3b1156eb6c604fb5799e55786e076`.

Source path: `GRWTSK/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [transitionMap_ideal_mk](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/transitionmap-ideal-mk--1ad7ab55ffd6f3a40358552b.md) | 37 | `result-track:1ad7ab55ffd6f3a40358552bf90966d9e7194dcfef3e065a4898f60f4652193c` |
| 2 | `theorem` | [transitionMap_map_one](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/transitionmap-map-one--10021443e0096615d5d18d87.md) | 43 | `result-track:10021443e0096615d5d18d8764fd6ec529a9b23b3e05b823c40c66b769d6dfe6` |
| 3 | `theorem` | [transitionMap_map_mul](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/transitionmap-map-mul--ca31b35e995333adfc9507a1.md) | 47 | `result-track:ca31b35e995333adfc9507a16f89df3eced6f157c676791b2c2346abf7cece44` |
| 4 | `theorem` | [transitionMap_map_pow](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/transitionmap-map-pow--519b45dcfbd5eb1c8d250312.md) | 52 | `result-track:519b45dcfbd5eb1c8d2503123e20887139f1b5797678af1ceda71a222df5c443` |
| 5 | `def` | [transitionMapₐ](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/transitionmap--d17ee3fe963e0f79ba88eb90.md) | 57 | `declaration-track:d17ee3fe963e0f79ba88eb90f0cbe22da9bb2710391bce773e5d15bb37c05701` |
| 6 | `def` | [subalgebra](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/subalgebra--cf66897989bb7fa4b7e656d4.md) | 62 | `declaration-track:cf66897989bb7fa4b7e656d4526694ec339eebc302ca7e6c9372aebac90d85fd` |
| 7 | `def` | [subring](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/subring--0ff41c14c973b9bc967b46c0.md) | 67 | `declaration-track:0ff41c14c973b9bc967b46c0047312fffc68e805646ca619756073c0e1d8aca4` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--d46f27ad5d53cff14414e367.md) | 70 | `declaration-track:d46f27ad5d53cff14414e367c894c994609b5f64432e755e0f15ef181eb1d07c` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--0fe29fc7c7dfb1ea8bb2a125.md) | 74 | `declaration-track:0fe29fc7c7dfb1ea8bb2a125a639253341411bbcbcdd8a8c13cf419f390323bc` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--ecd30ea40af44b9c0361530d.md) | 77 | `declaration-track:ecd30ea40af44b9c0361530d9c53fa48f9cce0e0fdcdb6bdacee08f6cfbc418a` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--9e53ed81b10c2fa7f38a7ee8.md) | 80 | `declaration-track:9e53ed81b10c2fa7f38a7ee8febabd06a11b15804a2cba3c85e06ccc8975b40a` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--1636bf12ddf29fd1b95764b3.md) | 83 | `declaration-track:1636bf12ddf29fd1b95764b3d8716ec17b9c47af805a32f02bce1ff745d90973` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--c490ac77a7e16e77fafdf77a.md) | 86 | `declaration-track:c490ac77a7e16e77fafdf77a49a3af4ab27103b68d0d4d45e1011a8ecc931c66` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--06cfae08626f639dc20724fd.md) | 92 | `declaration-track:06cfae08626f639dc20724fd7d2e072a996539b1e30b1eaed3508aeadeb6bca4` |
| 15 | `theorem` | [val_one](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/val-one--c29ae7fa7881345171f42e1a.md) | 107 | `result-track:c29ae7fa7881345171f42e1ac882c3c4ca24ba542a89abebb488ad039ab910ab` |
| 16 | `theorem` | [val_mul](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/val-mul--d8833eb9fe1fcdf33275d926.md) | 111 | `result-track:d8833eb9fe1fcdf33275d9269340dc0a0e01786a583595f0d347036d4f9448f9` |
| 17 | `def` | [evalₐ](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/eval--d439da647e987c356642f846.md) | 118 | `declaration-track:d439da647e987c356642f846b2394b8639cb7df11e2cb58910d27ad3e77249b0` |
| 18 | `theorem` | [evalₐ_mk](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/eval-mk--202c7b9773e95f78698e976a.md) | 125 | `result-track:202c7b9773e95f78698e976a8f517efd5ec71650cfaf328e9cad54354862839e` |
| 19 | `def` | [AdicCauchySequence.subalgebra](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/adiccauchysequence-subalgebra--5a65672df9ee3dd167cd4b8a.md) | 130 | `declaration-track:5a65672df9ee3dd167cd4b8ad6c8e927791eb5049f3b49ce806b30c68764a850` |
| 20 | `def` | [AdicCauchySequence.subring](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/adiccauchysequence-subring--280503ad616390a7e87b8fc7.md) | 138 | `declaration-track:280503ad616390a7e87b8fc7cfeb90b22fa70cf88228434c0389a4d3b6958832` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--f2f57bfb6b1fd19d827b807a.md) | 141 | `declaration-track:f2f57bfb6b1fd19d827b807a0e2dbdf942f6975a3913734be6efa02ce439932d` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--5789627caccc5d735de46911.md) | 144 | `declaration-track:5789627caccc5d735de469110e630f01b11e8470d1707817df4e3420da948d86` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--cfb722716b4e19b547c0c117.md) | 147 | `declaration-track:cfb722716b4e19b547c0c1177b4603b5ee5f4f04c1af4ae8a36b3a00cb18436d` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--dc7d417018d7e27dd728339d.md) | 150 | `declaration-track:dc7d417018d7e27dd728339d16656806af2ef7724ac9baa6b1f9617d382a04b0` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--4be7313f27264166a071e22b.md) | 153 | `declaration-track:4be7313f27264166a071e22b55c32d724ae502126b488bd2d96e1fda697770e6` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--80b9ee6894d046003f1920e2.md) | 156 | `declaration-track:80b9ee6894d046003f1920e2c0b62a44fb5651fa62231a54795b1598ed3c6e56` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--1b9883e984d9f1fb55b4aca4.md) | 162 | `declaration-track:1b9883e984d9f1fb55b4aca496d17a79e74714a31ef649a7b233d33eef618302` |
| 28 | `theorem` | [one_apply](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/one-apply--0b686c1fa4b07c54792a2d82.md) | 173 | `result-track:0b686c1fa4b07c54792a2d823b3d1109d07a716682c542d3f00e935b965e09e1` |
| 29 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/mul-apply--eb5b4baccff332b96f2aa304.md) | 177 | `result-track:eb5b4baccff332b96f2aa304399e811247bdf450a9cf57702d62dc86a7d3f1fc` |
| 30 | `def` | [mkₐ](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/mk--c3e87f42b0d3c25ff963e27d.md) | 182 | `declaration-track:c3e87f42b0d3c25ff963e27d61c26852e96542a1b4e31d6b43615bc73f96c690` |
| 31 | `theorem` | [evalₐ_mkₐ](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/eval-mk--e20664dd712d8dcf56da67e8.md) | 186 | `result-track:e20664dd712d8dcf56da67e80b866c5b86f7de8c5c124bf6654103a107ee543d` |
| 32 | `theorem` | [Ideal.mk_eq_mk](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/ideal-mk-eq-mk--4ef3a2301b27e6951f99b261.md) | 190 | `result-track:4ef3a2301b27e6951f99b2612a51f28307f1454af2934934dd61d49d0a0b0621` |
| 33 | `theorem` | [smul_mk](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/smul-mk--ad4af25e1c7191b7cb0ecb27.md) | 196 | `result-track:ad4af25e1c7191b7cb0ecb270aeec9019b9b5f7673714061ceb9a1115c85da08` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--ba70555fe10aa8dbaf84740d.md) | 206 | `declaration-track:ba70555fe10aa8dbaf84740dbefe527dfaae17c860c6a1bfb2e57d6953e373a7` |
| 35 | `theorem` | [mk_smul_mk](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/mk-smul-mk--8eb5a0b4220a7a03f6d17d6e.md) | 217 | `result-track:8eb5a0b4220a7a03f6d17d6e57c170194dc172aa169bc9b1d884742110e18ab4` |
| 36 | `theorem` | [val_smul_eq_evalₐ_smul](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/val-smul-eq-eval-smul--38f2fb3ebea5f9baae221925.md) | 222 | `result-track:38f2fb3ebea5f9baae22192522676b97308123cfbec2d9af0321933fab6fb38a` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--76a2f53742bfdd2dbdb8dacb.md) | 227 | `declaration-track:76a2f53742bfdd2dbdb8dacbf5a09232f5cd24c8e329652520d26c21fcc974c3` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--56a6b3d9ad157fb46f8cafe6.md) | 231 | `declaration-track:56a6b3d9ad157fb46f8cafe693e111d184ead8bb459cd4a58b717818158ea37d` |
| 39 | `instance` | [smul](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/smul--79fb6c80a9f24d5480398ad0.md) | 239 | `declaration-track:79fb6c80a9f24d5480398ad0508ca3fd1cec9a253efe6960d0f08ea1b2de47dc` |
| 40 | `theorem` | [smul_eval](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/smul-eval--9b05196dacada3b4f7ad2bc2.md) | 251 | `result-track:9b05196dacada3b4f7ad2bc2db10a8700ce7b19aeacf9dff8a387c09e9650b22` |
| 41 | `instance` | [module](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/module--e7a60fa4c09797b2d0d06ee0.md) | 256 | `declaration-track:e7a60fa4c09797b2d0d06ee0496b1c22187d184a95510fd1a41e872aac18f5ab` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/instance--e57ebd1d133cc6721debf8d1.md) | 268 | `declaration-track:e57ebd1d133cc6721debf8d1948e320bef2e73544c07d962388b5d47489dafeb` |
| 43 | `example` | [(anonymous)](../../../../mathematics/Algebra/Algebra/Variant75c6102a50784a6dd2ce7f063a14cdd006d4b115f63f98d83da411f5a98b4cc1.lean/declarations/example--9d0ebb19ba6286678a9b6fa9.md) | 275 | `declaration-track:9d0ebb19ba6286678a9b6fa956861a01501c77c4f7f646b1152334517776d5fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
