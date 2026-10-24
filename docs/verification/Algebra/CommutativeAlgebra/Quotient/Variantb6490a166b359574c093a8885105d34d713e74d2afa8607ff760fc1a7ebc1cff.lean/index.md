# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Quotient.Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9708074220c3d12f6598f7e6b126fc3d7f2f4d55",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9708074220c3d12f6598f7e6b126fc3d7f2f4d55`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Div` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Ideal` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanXSubCAlgEquivAux2](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspanxsubcalgequivaux2--3337228ee6fc2cee26325c1f.md) | 33 | `declaration-track:3337228ee6fc2cee26325c1f61c94a04ae24ebf1d039ff34b8ee70024ef73cce` |
| 2 | `def` | [quotientSpanXSubCAlgEquivAux1](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspanxsubcalgequivaux1--2cb49005502372ade4f66be4.md) | 39 | `declaration-track:2cb49005502372ade4f66be42869c33b35c3acb8a0f50d8669592446c2e331e5` |
| 3 | `def` | [quotientSpanXSubCAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspanxsubcalgequiv--4983d8eae360f4f60ae547c3.md) | 46 | `declaration-track:4983d8eae360f4f60ae547c31bed232cd88bcb24da95519d5b22b3ef4da56865` |
| 4 | `theorem` | [quotientSpanXSubCAlgEquiv_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspanxsubcalgequiv-mk--314bfa8700cb0aaebe29c3ca.md) | 51 | `result-track:314bfa8700cb0aaebe29c3ca8457ee9b9f052e3239cb1f242ea8e3eeb8a43d18` |
| 5 | `theorem` | [quotientSpanXSubCAlgEquiv_symm_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspanxsubcalgequiv-symm-apply--1b8068fdfb988317dd0975ab.md) | 56 | `result-track:1b8068fdfb988317dd0975ab5bfabe2cb576ee9442ff60593930fd078632cf84` |
| 6 | `def` | [quotientSpanCXSubCAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspancxsubcalgequiv--7a508eca6cf3303cd3c06e1a.md) | 62 | `declaration-track:7a508eca6cf3303cd3c06e1a7abc3df04406b80889898d3c0237f6f10482b5ff` |
| 7 | `def` | [quotientSpanCXSubCXSubCAlgEquiv](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientspancxsubcxsubcalgequiv--5f638b95e0d556c9612d07d7.md) | 72 | `declaration-track:5f638b95e0d556c9612d07d79d17cbd559f8c93591dc97c42f98a1c3719c7a16` |
| 8 | `lemma` | [modByMonic_eq_zero_iff_quotient_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/modbymonic-eq-zero-iff-quotient-eq-zero--a8b52eb43935dbad782a2f5f.md) | 77 | `result-track:a8b52eb43935dbad782a2f5fba868eddada7dc53eb6b6d819afec0061ae54e62` |
| 9 | `theorem` | [quotient_map_C_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotient-map-c-eq-zero--b475ecb1301d05a480628d3c.md) | 91 | `result-track:b475ecb1301d05a480628d3cd208221e0e136a95fb4e776b85d19720482970b8` |
| 10 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/eval-c-mk-eq-zero--ac67c5c516fe719ae782ba8f.md) | 97 | `result-track:ac67c5c516fe719ae782ba8f5707914e79c21a83c31b3aa07f51ee38d495b6d7` |
| 11 | `def` | [polynomialQuotientEquivQuotientPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/polynomialquotientequivquotientpolynomial--56fc44e11429352be91daf57.md) | 115 | `declaration-track:56fc44e11429352be91daf57d15d2b191be8bcf9cedc65c0237524c2155dbf1f` |
| 12 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_symm_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/polynomialquotientequivquotientpolynomial-symm-mk--a8a373f006be209d8df169e9.md) | 151 | `result-track:a8a373f006be209d8df169e9cb5584395dd44acf600f39a4e5fda1c31512f669` |
| 13 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_map_mk](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/polynomialquotientequivquotientpolynomial-map-mk--b9c06afb5f6ed95fee11a285.md) | 158 | `result-track:b9c06afb5f6ed95fee11a285102402c4fcb4669b06e8c5a860b0f527dc83b9bc` |
| 14 | `theorem` | [isDomain_map_C_quotient](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/isdomain-map-c-quotient--1f95c433984435852ea88666.md) | 165 | `result-track:1f95c433984435852ea88666090a91eb438959d1e4084434d15d7a33d42d4ef7` |
| 15 | `theorem` | [eq_zero_of_polynomial_mem_map_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/eq-zero-of-polynomial-mem-map-range--7fa29ab0c6c08472bee1dcdc.md) | 173 | `result-track:7fa29ab0c6c08472bee1dcdc65f118c82f591a302079fcd5a8b6053f40e31f15` |
| 16 | `theorem` | [quotient_map_C_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotient-map-c-eq-zero--cf315fe50864b12c5b2ab3b3.md) | 202 | `result-track:cf315fe50864b12c5b2ab3b3ed555d033cdddf705142d607f58046f529c0d133` |
| 17 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/eval-c-mk-eq-zero--eb151679c54b02155e4d5d55.md) | 208 | `result-track:eb151679c54b02155e4d5d55d084c70f1336493a982e802d95ad21b548671345` |
| 18 | `lemma` | [quotientEquivQuotientMvPolynomial_rightInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientequivquotientmvpolynomial-rightinverse--7f646273ba8159d3de1a62fb.md) | 221 | `result-track:7f646273ba8159d3de1a62fb51d7f53ff743743dd64f6f84cfccc7c2636b25e8` |
| 19 | `lemma` | [quotientEquivQuotientMvPolynomial_leftInverse](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientequivquotientmvpolynomial-leftinverse--e5129b74f6dba7497b3c89ff.md) | 243 | `result-track:e5129b74f6dba7497b3c89ff9f63eb4836cb3505f5288fcdcdb144d2db4beb21` |
| 20 | `def` | [quotientEquivQuotientMvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Quotient/Variantb6490a166b359574c093a8885105d34d713e74d2afa8607ff760fc1a7ebc1cff.lean/declarations/quotientequivquotientmvpolynomial--41e16d3d465852a716186f04.md) | 270 | `declaration-track:41e16d3d465852a716186f04bc12b91bec52c7b47d97e15f947251b75d1b9a6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
