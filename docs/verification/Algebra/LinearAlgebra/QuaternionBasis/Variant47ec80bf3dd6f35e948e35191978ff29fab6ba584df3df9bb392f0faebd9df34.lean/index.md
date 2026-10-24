# Verification target: GRWTSK.Algebra.LinearAlgebra.QuaternionBasis.Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943687a44f840f6987469d9614859fd0bda03533",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943687a44f840f6987469d9614859fd0bda03533`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean.json)

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
| 1 | `structure` | [Basis](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/basis--22ea46ae20615018ee9ab473.md) | 35 | `declaration-track:22ea46ae20615018ee9ab47351719ea34804c057dd87dfba098ad4926f74ea3f` |
| 2 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/ext--0e58a42de3e1fe065be99669.md) | 54 | `result-track:0e58a42de3e1fe065be996694999a7e2ee307213e15b80b1597d0693b78d77e6` |
| 3 | `def` | [self](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/self--8853939813c925bf1a9e1210.md) | 65 | `declaration-track:8853939813c925bf1a9e12105358c953b717c1ccbb1aa31d1a262fb3d4674328` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/instance--e0534a972112d2ec75638766.md) | 74 | `declaration-track:e0534a972112d2ec7563876651f2f87fbea165e895aa398b74ec5814de036325` |
| 5 | `theorem` | [i_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/i-mul-k--657261e22f73f16f534aca0d.md) | 82 | `result-track:657261e22f73f16f534aca0d66e9150c2382692fb063eb2877fbb4dec1e9d5e5` |
| 6 | `theorem` | [k_mul_i](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/k-mul-i--90190512c94610cdc81cc95c.md) | 86 | `result-track:90190512c94610cdc81cc95ce0cc1615590e84f23d678611f554267d6c744634` |
| 7 | `theorem` | [k_mul_j](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/k-mul-j--a097d6ed9bb852699c244035.md) | 91 | `result-track:a097d6ed9bb852699c24403570cb074ced6f9a56c36ca389c8f1452550cada05` |
| 8 | `theorem` | [j_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/j-mul-k--2efe489fb53d61b3e76e5125.md) | 95 | `result-track:2efe489fb53d61b3e76e5125b2c5ef2b59ee2ba84f1847151bf484afd325ebbe` |
| 9 | `theorem` | [k_mul_k](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/k-mul-k--10b5cd928a17a9fdfbc49461.md) | 100 | `result-track:10b5cd928a17a9fdfbc4946192073e82efa9f004f9cb7ec918216276143d0227` |
| 10 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift--d5bda19788cbec232077b2ef.md) | 109 | `declaration-track:d5bda19788cbec232077b2ef34fcd4a0bda2d958f533e7fac51b657334ffff9e` |
| 11 | `theorem` | [lift_zero](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift-zero--dcf98e2684ed961a1e2bb955.md) | 112 | `result-track:dcf98e2684ed961a1e2bb955fb0adea992161449e929fdd37acf9be937c5b2ba` |
| 12 | `theorem` | [lift_one](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift-one--8719925d0b893f3cdf5127d4.md) | 114 | `result-track:8719925d0b893f3cdf5127d41ecf55d445d5ca851b69b49edfb676f06670f8d5` |
| 13 | `theorem` | [lift_add](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift-add--50691fb4e3cb56bc9707fc37.md) | 116 | `result-track:50691fb4e3cb56bc9707fc37cdf32f8ecf2f0b58ea20a458c5a74439d62a40ab` |
| 14 | `theorem` | [lift_mul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift-mul--82e8d58537061fc0abeb2140.md) | 120 | `result-track:82e8d58537061fc0abeb2140e8debdb3e84c716ebb732317d9b16c2568c390dc` |
| 15 | `theorem` | [lift_smul](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift-smul--535aeede7a6ffb005d7ab0a3.md) | 132 | `result-track:535aeede7a6ffb005d7ab0a3a41b0473a9e30986778d952253c3768efe1947d8` |
| 16 | `def` | [liftHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lifthom--3931cd547f61b038af40d639.md) | 137 | `declaration-track:3931cd547f61b038af40d639be20a1f97815f00660091eb2d05daaf98288e305` |
| 17 | `def` | [compHom](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/comphom--7bcff24d06fc7fd74e8cfd74.md) | 147 | `declaration-track:7bcff24d06fc7fd74e8cfd74858bfa79b7b50f05fbcf1197e874ca020fe62738` |
| 18 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/lift--acd1e525cfb7b492ef884f52.md) | 160 | `declaration-track:acd1e525cfb7b492ef884f5292176e65fd816e11e16d4712407c73bbaf1b9f35` |
| 19 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/hom-ext--83737379a1d119e282f5df2f.md) | 174 | `result-track:83737379a1d119e282f5df2f55dbcc7f53fb150884e632478bd568d2b29b0d34` |
| 20 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/QuaternionBasis/Variant47ec80bf3dd6f35e948e35191978ff29fab6ba584df3df9bb392f0faebd9df34.lean/declarations/hom-ext--5fce5a9b1da39b02b8d764a4.md) | 188 | `result-track:5fce5a9b1da39b02b8d764a4c08ac7d5c320c1bed5e95e692a274ba4671788b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
