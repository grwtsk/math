# Verification target: GRWTSK.Algebra.LinearAlgebra.Order.Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "945e9b211cb510f26e81a84734f78a399563eb19",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `945e9b211cb510f26e81a84734f78a399563eb19`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instPreOrder](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/instpreorder--5b1efba5a604a214bb81f51d.md) | 57 | `declaration-track:5b1efba5a604a214bb81f51dde3bec91ba132a28c1e6d35af37ebf3a764997b5` |
| 2 | `lemma` | [le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/le-iff--79d0ade24f74827e648b68fe.md) | 66 | `result-track:79d0ade24f74827e648b68feed9c3be8d142ef7b13d7193f6a66e415c21490b5` |
| 3 | `lemma` | [nonneg_iff_posSemidef](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/nonneg-iff-possemidef--3e657e94da3aad3e9ea5c9b3.md) | 68 | `result-track:3e657e94da3aad3e9ea5c9b3ea7fab0221462080d68e014beb23b2b3a0aa22ad` |
| 4 | `lemma` | [le_antisymm_aux](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/le-antisymm-aux--575dee2f47519d7f7fae3b63.md) | 74 | `result-track:575dee2f47519d7f7fae3b635fe234f69c1a6cacea8ab2d22403b5c7d6e7567a` |
| 5 | `abbrev` | [instPartialOrder](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/instpartialorder--02a17851fb3dc117be0df2bb.md) | 87 | `declaration-track:02a17851fb3dc117be0df2bbfd17b1645642d525f13379a2c3856b43f312e414` |
| 6 | `lemma` | [instIsOrderedAddMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/instisorderedaddmonoid--d536674da89c76455fda1b55.md) | 94 | `result-track:d536674da89c76455fda1b55f9dbb16d2a4be73f101c573294702991230afe4a` |
| 7 | `lemma` | [posSemidef_is_closed](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-is-closed--cfa823319725e7e126dc7e22.md) | 99 | `result-track:cfa823319725e7e126dc7e22420c85c9c1a9a5ca02e3db6cda3c96b82d79ade4` |
| 8 | `lemma` | [instOrderClosedTopology](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/instorderclosedtopology--c917a32bbb1df78b1f5bee76.md) | 108 | `result-track:c917a32bbb1df78b1f5bee7619930e317be328b7b04963938b905b2fef53b1c4` |
| 9 | `lemma` | [instNonnegSpectrumClass](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/instnonnegspectrumclass--19d301439989e6388ef932ab.md) | 116 | `result-track:19d301439989e6388ef932abf87a58a8ebe033401a6e23c42281f334f9181e62` |
| 10 | `lemma` | [instStarOrderedRing](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/inststarorderedring--7de40adcade0fb23d15e12d1.md) | 128 | `result-track:7de40adcade0fb23d15e12d1f203ea66413b65bf227c7677905788d218bd2a49` |
| 11 | `lemma` | [inv_sqrt](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/inv-sqrt--bd9b9978d3d8c59951d28659.md) | 154 | `result-track:bd9b9978d3d8c59951d286591b9c67930e1710f8b25ce2ac259c876c8ab13667` |
| 12 | `theorem` | [det_sqrt](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/det-sqrt--3a42c40f3211de48a3752783.md) | 160 | `result-track:3a42c40f3211de48a37527836f589c55c0219f63c959a2d1fdb2acd12ce53ebf` |
| 13 | `theorem` | [IsHermitian.det_abs](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/ishermitian-det-abs--d66fa43c5df22ea114a20c8f.md) | 170 | `result-track:d66fa43c5df22ea114a20c8f60c48ebdb150df5d4278626dd0e50a4bb092fa87` |
| 14 | `theorem` | [posSemidef_iff_isHermitian_and_spectrum_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-iff-ishermitian-and-spectrum-nonneg--64c2033c489c05b7ccf7e1f1.md) | 175 | `result-track:64c2033c489c05b7ccf7e1f1bf8dd4400f50053936fb220ba2434fe5665ac305` |
| 15 | `theorem` | [PosSemidef.posDef_iff_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-posdef-iff-isunit--15d8cc74550fe159cdad4937.md) | 188 | `result-track:15d8cc74550fe159cdad4937df9a1a6745e5d6f2245bda2f79c001f909f0711c` |
| 16 | `theorem` | [isStrictlyPositive_iff_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/isstrictlypositive-iff-posdef--c224ab6e610c57d5075016bc.md) | 198 | `result-track:c224ab6e610c57d5075016bcd07af93933a0a904c0c14336d525cd61d26f39ab` |
| 17 | `lemma` | [PosSemidef.posDef_iff_det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-posdef-iff-det-ne-zero--be5d18e40b464074904e956d.md) | 207 | `result-track:be5d18e40b464074904e956d03c2dafe3819e064e74f003108ec4a65d205dae1` |
| 18 | `theorem` | [PosSemidef.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-kronecker--0a81ffcd9c90144bdcc721df.md) | 220 | `result-track:0a81ffcd9c90144bdcc721df3daac70b0fc71f5b815ad24da41954af7a9484d5` |
| 19 | `theorem` | [PosDef.kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/posdef-kronecker--2ca05fcc86ddbba17071e502.md) | 231 | `result-track:2ca05fcc86ddbba17071e50270c6704185013fdf3a2c0483a6676be7573fc360` |
| 20 | `theorem` | [PosSemidef.hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-hadamard--91204113a81bc127e1314094.md) | 246 | `result-track:91204113a81bc127e13140941439980de90e2a050d335c2bc86ff993b80d8d31` |
| 21 | `theorem` | [PosDef.hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/posdef-hadamard--825274d6d781bbbfbf6fae6e.md) | 262 | `result-track:825274d6d781bbbfbf6fae6ed315989c8052ee8ab6abd8f20f978a346c4ece18` |
| 22 | `def` | [tracePositiveLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/tracepositivelinearmap--a1aa54e371a4abba0e7a105c.md) | 287 | `declaration-track:a1aa54e371a4abba0e7a105c0e9016284740ec2bc87e54d98fbea1e01c91e7ff` |
| 23 | `lemma` | [toLinearMap_tracePositiveLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/tolinearmap-tracepositivelinearmap--24b45615b2fbe2d1a518e4e6.md) | 290 | `result-track:24b45615b2fbe2d1a518e4e65245077625447fde8680ad9ee0dab239f573ff41` |
| 24 | `lemma` | [tracePositiveLinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/tracepositivelinearmap-apply--5c735231c0d9710cc23cc4d2.md) | 293 | `result-track:5c735231c0d9710cc23cc4d20e08fdef7e368bd0416f01d26de0cc6b5ba1c4a3` |
| 25 | `abbrev` | [PosSemidef.matrixPreInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/possemidef-matrixpreinnerproductspace--fbf7c3d39768df95d4af3aa6.md) | 301 | `declaration-track:fbf7c3d39768df95d4af3aa65805a001f8a7f5dc209b4e021393c048fe826218` |
| 26 | `def` | [toMatrixSeminormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/tomatrixseminormedaddcommgroup--29d9e2a261cf14e8e7d74b15.md) | 316 | `declaration-track:29d9e2a261cf14e8e7d74b153a04b48ffcac09993a5f1ac7b83694c9a2598827` |
| 27 | `def` | [toMatrixNormedAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/tomatrixnormedaddcommgroup--f89f5b566810a0cbc6013b73.md) | 325 | `declaration-track:f89f5b566810a0cbc6013b73d148fdfa404fa7328e4d60f31c35f8d221f96fa5` |
| 28 | `def` | [toMatrixInnerProductSpace](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/tomatrixinnerproductspace--587b62e4dadd08907d14501c.md) | 343 | `declaration-track:587b62e4dadd08907d14501cc7ec31f6abfcd507049e0ae42b8252316e131f88` |
| 29 | `instance` | [instIsometricContinuousFunctionalCalculus](../../../../../mathematics/Algebra/LinearAlgebra/Order/Variantbde4e8ca858359a1871b412a8d613f7963705de85f2ec9584d6989b1ce64eff9.lean/declarations/instisometriccontinuousfunctionalcalculus--5f41c20bc060d8aba6784094.md) | 351 | `declaration-track:5f41c20bc060d8aba67840940301f66d4141bfc9ad069668807a80d1d60b9654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
