# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f566e29449e96c3be9b0379a07c9ad7cf399ffc5",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f566e29449e96c3be9b0379a07c9ad7cf399ffc5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-tensorproduct--522cbc07cb8499620fe41b43.md) | 32 | `declaration-track:522cbc07cb8499620fe41b431c0acdb4678084207958d586ef50c22e1ec7a04c` |
| 2 | `theorem` | [Basis.tensorProduct_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-tensorproduct-apply--b3d2722166ecbc6c6718ce3b.md) | 40 | `result-track:b3d2722166ecbc6c6718ce3b1cb5b63e0e5191d0ff379a62f91f9619ed764590` |
| 3 | `theorem` | [Basis.tensorProduct_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-tensorproduct-apply--1ef8a9cef937275dfe9bd1e8.md) | 44 | `result-track:1ef8a9cef937275dfe9bd1e868e195ddc8e0c2014e34c8c703c6a8b4e8ad2f05` |
| 4 | `theorem` | [Basis.tensorProduct_repr_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-tensorproduct-repr-tmul-apply--dfe1024baae2fd4999137638.md) | 49 | `result-track:dfe1024baae2fd49991376387f173d9b74c26b8184629addc5dba72e074efc8c` |
| 5 | `def` | [Basis.baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-basechange--6b311cc689cc7454dc38c4fe.md) | 58 | `declaration-track:6b311cc689cc7454dc38c4fe5bb99b90e913cff91cf0956ab21991866a8730d6` |
| 6 | `lemma` | [Basis.baseChange_repr_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-basechange-repr-tmul--8045c5244fb1c31b00e3f86f.md) | 62 | `result-track:8045c5244fb1c31b00e3f86f489f0ed2ce1e060e3eeaeb31fcba7a76fae68719` |
| 7 | `lemma` | [Basis.baseChange_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/basis-basechange-apply--381ff7886e07cdc39cded44b.md) | 67 | `result-track:381ff7886e07cdc39cded44ba48dd3c9d90d2f843e4403aaa42874ff90a4020b` |
| 8 | `def` | [TensorProduct.equivFinsuppOfBasisRight](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisright--b49f694f1c2d994c2ab021dc.md) | 80 | `declaration-track:b49f694f1c2d994c2ab021dcbf23e0296df51679ea63e8d83d65320885fb6352` |
| 9 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul--44a7d188e8f3fe142f76a49a.md) | 84 | `result-track:44a7d188e8f3fe142f76a49ae71aaf03b42e4a15b30a73edf6cb585500f87fa5` |
| 10 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul-apply--11f1730e43def74287c94881.md) | 89 | `result-track:11f1730e43def74287c9488127ff5e2a45ded31491812f7ef1decf036d1706a6` |
| 11 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisright-symm--3582919c53a23836844fa334.md) | 95 | `result-track:3582919c53a23836844fa3347808f03c79dde5a62273296a409101fcaa8cde69` |
| 12 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisright-symm-apply--b82d288c6251a8902397740f.md) | 101 | `result-track:b82d288c6251a8902397740f6a655b1d0debba7dbe1e747e3e89243763c8f2fd` |
| 13 | `lemma` | [TensorProduct.sum_tmul_basis_right_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-sum-tmul-basis-right-injective--a447af2fc0b8755ffe00da12.md) | 106 | `result-track:a447af2fc0b8755ffe00da121a98ccbff0121d48ac963b5f498d381036aed350` |
| 14 | `lemma` | [TensorProduct.sum_tmul_basis_right_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-sum-tmul-basis-right-eq-zero--435a7530b36647499f864b90.md) | 113 | `result-track:435a7530b36647499f864b90e95bdec6eecc49c804362d0880c10f981aa4d70c` |
| 15 | `def` | [TensorProduct.equivFinsuppOfBasisLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisleft--9893b6010bf506a8901a74fc.md) | 122 | `declaration-track:9893b6010bf506a8901a74fc26a15b96c7293139616bb5c86f92f92625b3736d` |
| 16 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul--6b3f809f3ab7ef93a8420d9c.md) | 126 | `result-track:6b3f809f3ab7ef93a8420d9c5a1fcd502b7344780b881aa2f45ab989c92d3ce5` |
| 17 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul-apply--ea6b277ff6ca3c42d2662215.md) | 131 | `result-track:ea6b277ff6ca3c42d2662215c9e0e8ff24352f2ac50111f2f7b7ab212c19996e` |
| 18 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisleft-symm--e019f52c2e42d38d3f986862.md) | 137 | `result-track:e019f52c2e42d38d3f986862a05b220d586eb52a1d00c1f73ca527a6eed58de5` |
| 19 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-equivfinsuppofbasisleft-symm-apply--c50384d499864fd265c420b0.md) | 143 | `result-track:c50384d499864fd265c420b0a912a47537ffff96981d35f329478aa95924e518` |
| 20 | `lemma` | [TensorProduct.eq_repr_basis_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-eq-repr-basis-right--9a8d344798f5c5e208e8dc3a.md) | 150 | `result-track:9a8d344798f5c5e208e8dc3a3e76d70dae0e465bc0c7ac4be0c8a7b4f215f08f` |
| 21 | `lemma` | [TensorProduct.eq_repr_basis_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-eq-repr-basis-left--dbbea243f7f01b0c3b2c2280.md) | 157 | `result-track:dbbea243f7f01b0c3b2c228032163c58ebda44fa786747cb122be1f32673d3de` |
| 22 | `lemma` | [TensorProduct.sum_tmul_basis_left_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-sum-tmul-basis-left-injective--3538595052b0a0ace0b87116.md) | 163 | `result-track:3538595052b0a0ace0b871160bbc7d6f4a3f298edfc3e714622d9ae246d6c5a9` |
| 23 | `lemma` | [TensorProduct.sum_tmul_basis_left_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/tensorproduct-sum-tmul-basis-left-eq-zero--bf455b4331a0a3d75b37dd79.md) | 170 | `result-track:bf455b4331a0a3d75b37dd792952cf76a90cb900b286a6f894fe9259ece1c7b4` |
| 24 | `instance` | [Module.Free.tensor](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant4550616363158f32f9a77def412a397e75f6ac69016eaab8290800f86fa40b23.lean/declarations/module-free-tensor--61df7016bd99289b069465e7.md) | 180 | `declaration-track:61df7016bd99289b069465e77b61744482e54d41c810447b686ec2afb05b48c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
