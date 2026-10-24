# Verification target: GRWTSK.Algebra.LinearAlgebra.CrossProduct.Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3531f268285c626059d052af73be079d482bbc3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3531f268285c626059d052af73be079d482bbc3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [crossProduct](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/crossproduct--875ce98957e1f5a274b6b422.md) | 53 | `declaration-track:875ce98957e1f5a274b6b4226e8caa1e9ecb004c2f2eeccb94b57722ef4ac144` |
| 2 | `theorem` | [cross_apply](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-apply--54803c52578b54902d1e1583.md) | 69 | `result-track:54803c52578b54902d1e1583d46703be3f8de8058f7973170e33bf1a4884ab57` |
| 3 | `theorem` | [cross_anticomm](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-anticomm--a3d159bdf329d0ab277efd2b.md) | 75 | `result-track:a3d159bdf329d0ab277efd2b1e072bbea4f7d117e020a0a3d71027039c275672` |
| 4 | `theorem` | [cross_anticomm'](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-anticomm--6d07485c9a2e0a65cb1c3b59.md) | 81 | `result-track:6d07485c9a2e0a65cb1c3b59e676afc7104313f96221a789d81473b7c5c81694` |
| 5 | `theorem` | [cross_self](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-self--025085f34c0ad4e5abf50de8.md) | 85 | `result-track:025085f34c0ad4e5abf50de8facf233fcd42d338c1a5c1f2f6dc5094aeac0307` |
| 6 | `theorem` | [dot_self_cross](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/dot-self-cross--5b29c56a931a81c25da90def.md) | 90 | `result-track:5b29c56a931a81c25da90def07fa788a9d7cb6cba7d4c7175a93502916c3377d` |
| 7 | `theorem` | [dot_cross_self](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/dot-cross-self--dcc540044f1557fa4ddd9f9c.md) | 97 | `result-track:dcc540044f1557fa4ddd9f9c4813d526e319ff43f9c46c3edbf0038ed7d370a3` |
| 8 | `theorem` | [triple_product_permutation](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/triple-product-permutation--56fea8ee66b5828a93199a65.md) | 101 | `result-track:56fea8ee66b5828a93199a6540b0b5cecae6ef5dcacb289aceef58786af955c0` |
| 9 | `theorem` | [triple_product_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/triple-product-eq-det--41e99e351a34fd627d7730a3.md) | 108 | `result-track:41e99e351a34fd627d7730a39820c97d0efa8c4a49261632011103d667401abb` |
| 10 | `theorem` | [cross_dot_cross](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-dot-cross--577b3531451798798fd4e883.md) | 114 | `result-track:577b3531451798798fd4e883248d23b9d6b78d411ab7536e937bacfaa8064803` |
| 11 | `theorem` | [leibniz_cross](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/leibniz-cross--850d6f516d6f81de7e109f7c.md) | 125 | `result-track:850d6f516d6f81de7e109f7cc2c3a88e8cc098de2f92602c609b33c61e081b0f` |
| 12 | `def` | [Cross.lieRing](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-liering--060e1fd4d02911e03ce6d2e9.md) | 132 | `declaration-track:060e1fd4d02911e03ce6d2e9279fbde609d2ca10efd6a2e6cc3195d55453734f` |
| 13 | `theorem` | [cross_cross](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-cross--e775a998efaf41e40cc81773.md) | 142 | `result-track:e775a998efaf41e40cc81773102638ee26b21f36097ca245ee08b67d508f3b98` |
| 14 | `theorem` | [jacobi_cross](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/jacobi-cross--a4aad289f8053d3993212461.md) | 147 | `result-track:a4aad289f8053d3993212461a9be769c4a46c4c32041c5621a79176f3b7e43e6` |
| 15 | `lemma` | [crossProduct_ne_zero_iff_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/crossproduct-ne-zero-iff-linearindependent--96618d52ff75f319583f9be8.md) | 154 | `result-track:96618d52ff75f319583f9be853c60759d8ec16e3bc7b895a5d439aa83d4c1df3` |
| 16 | `theorem` | [cross_cross_eq_smul_sub_smul](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-cross-eq-smul-sub-smul--0ad03d869584d37a87e44b77.md) | 177 | `result-track:0ad03d869584d37a87e44b77294f54783c1aa696acc2c65b2512ab41d5fd1a61` |
| 17 | `theorem` | [cross_cross_eq_smul_sub_smul'](../../../../../mathematics/Algebra/LinearAlgebra/CrossProduct/Variant10c8c20e611a07a8c3f8d8a12abbc3ae2b26e28addc8bbd07412e1a9b170c56f.lean/declarations/cross-cross-eq-smul-sub-smul--f7cf7883c398711728a20ded.md) | 187 | `result-track:f7cf7883c398711728a20ded6bf3bd68a36c8bae1d7912c3117118c7f2c41250` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
