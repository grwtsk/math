# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PolynomialAlgebra.Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd69b09056803b3d6e7cbdc8a3c093297c53e6a6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd69b09056803b3d6e7cbdc8a3c093297c53e6a6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunbilinear--b012986c61fdb6b706ca2861.md) | 36 | `declaration-track:b012986c61fdb6b706ca28617afe01a112b02b3181124851df8a7c97196efe13` |
| 2 | `theorem` | [toFunBilinear_apply_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunbilinear-apply-apply--b41d772c0eb0a6fa44af2414.md) | 39 | `result-track:b41d772c0eb0a6fa44af24143029fe0ef2b3caccb659f08aa6c83b4223e1eeaf` |
| 3 | `theorem` | [toFunBilinear_apply_eq_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunbilinear-apply-eq-smul--3b2b953e9816132690310f1b.md) | 42 | `result-track:3b2b953e9816132690310f1b5d9d747887872f143521c5a9aead8352c05a6085` |
| 4 | `theorem` | [toFunBilinear_apply_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunbilinear-apply-eq-sum--11955de514a09209986fb222.md) | 45 | `result-track:11955de514a09209986fb2228008e60059d187999a579b5d6fe268cfdb991883` |
| 5 | `def` | [toFunLinear](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunlinear--62d825a286522ff8587a4d30.md) | 54 | `declaration-track:62d825a286522ff8587a4d30034c9b7df6937a19cae47b2b69bbe889bcd35d97` |
| 6 | `theorem` | [toFunLinear_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunlinear-tmul-apply--056626bc9877086343422ea8.md) | 58 | `result-track:056626bc9877086343422ea88aba745d51b482085eb6cb76bff05c538dfa9af7` |
| 7 | `theorem` | [toFunLinear_mul_tmul_mul_aux_1](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunlinear-mul-tmul-mul-aux-1--4e6b9a4eeeb45b78b43fac7a.md) | 64 | `result-track:4e6b9a4eeeb45b78b43fac7aed51cf1761ad954a38294bd15b0d0e5169094b5d` |
| 8 | `theorem` | [toFunLinear_mul_tmul_mul_aux_2](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunlinear-mul-tmul-mul-aux-2--f68eb233f5952ccbeffce6f3.md) | 68 | `result-track:f68eb233f5952ccbeffce6f316ec0d87038a8d1dec196ef8ea5c13fb34f087db` |
| 9 | `theorem` | [toFunLinear_mul_tmul_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunlinear-mul-tmul-mul--f4986b7822922b4120277118.md) | 76 | `result-track:f4986b7822922b4120277118c7bf81434814b0b83f6c79630e21acdf56951e12` |
| 10 | `theorem` | [toFunLinear_one_tmul_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunlinear-one-tmul-one--fd4fe70e6288f128b707631b.md) | 90 | `result-track:fd4fe70e6288f128b707631bfe83ec4c677ecc5d35b521aa5db5e4888b871334` |
| 11 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunalghom--90ec1cc812a320153d91e327.md) | 97 | `declaration-track:90ec1cc812a320153d91e32767d1ed3ed62ce8edc6a874d8d8e80c5c00abca48` |
| 12 | `theorem` | [toFunAlgHom_apply_tmul_eq_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunalghom-apply-tmul-eq-smul--8c43a1d3c87a733ae8b4349b.md) | 101 | `result-track:8c43a1d3c87a733ae8b4349b5fa5f4a234a28ec8f5f457b3cb20bf5cb6ce195b` |
| 13 | `theorem` | [toFunAlgHom_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/tofunalghom-apply-tmul--4ce906be4a70b2807d85963f.md) | 104 | `result-track:4ce906be4a70b2807d85963f88151e414bff6f69dd7da5332bc1cb2b6199687d` |
| 14 | `def` | [invFun](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/invfun--197bacdb57b2244c0bea7438.md) | 113 | `declaration-track:197bacdb57b2244c0bea74382d630023dce62ed69ff7c0eede798b19ee4306d0` |
| 15 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/invfun-add--f7b38ffc4abb8734423dc679.md) | 117 | `result-track:f7b38ffc4abb8734423dc679b1e1f04ca2696072c0ab7b0967177b075acd9018` |
| 16 | `theorem` | [invFun_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/invfun-monomial--6a664420dce847185f2194bf.md) | 120 | `result-track:6a664420dce847185f2194bfeee444ed392fef2a382ca88de27c2f74bece133b` |
| 17 | `theorem` | [left_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/left-inv--98cfd90c5e3f8a27c974c327.md) | 124 | `result-track:98cfd90c5e3f8a27c974c32727a08f7a99a6d5ae95a81359734f47dcbf461ed2` |
| 18 | `theorem` | [right_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/right-inv--0a46d36defb7658810f27125.md) | 139 | `result-track:0a46d36defb7658810f271258e696a2119dca26fafe6aae801e99baf126a5b21` |
| 19 | `def` | [equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/equiv--bd72a94533638e99b9e87dba.md) | 153 | `declaration-track:bd72a94533638e99b9e87dba4e68c60df7d6d722a463b944ca04bc29d5bcea2e` |
| 20 | `def` | [polyEquivTensor](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polyequivtensor--87fc300df420ddd00b47ef63.md) | 165 | `declaration-track:87fc300df420ddd00b47ef6369791ba28666a9b14a6e3fbec6bc85dc1666698a` |
| 21 | `theorem` | [polyEquivTensor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polyequivtensor-apply--23d67ae4ed1cd4cc60356ddb.md) | 169 | `result-track:23d67ae4ed1cd4cc60356ddb2ce6d14c6321d511bb31cf1adced31a5bac0d575` |
| 22 | `theorem` | [polyEquivTensor_symm_apply_tmul_eq_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polyequivtensor-symm-apply-tmul-eq-smul--fd4fd774127c7b0be8e9c192.md) | 175 | `result-track:fd4fd774127c7b0be8e9c192358481a34771b2208c5334c1a2f3999e695c096e` |
| 23 | `theorem` | [polyEquivTensor_symm_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polyequivtensor-symm-apply-tmul--62a7d7655fd15b53827c2c64.md) | 178 | `result-track:62a7d7655fd15b53827c2c6460f1bbe696060a92e0b9984cd6984d5cc157bd36` |
| 24 | `def` | [polyEquivTensor'](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polyequivtensor--0a81dd31336f6a51f2b97710.md) | 187 | `declaration-track:0a81dd31336f6a51f2b97710e2e74881e2f4aed0d2a1e5ac5d7269fe6ca9142a` |
| 25 | `theorem` | [coe_polyEquivTensor'](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/coe-polyequivtensor--14d53da4b7d29b0bf506dcf1.md) | 192 | `result-track:14d53da4b7d29b0bf506dcf1848af889577fa052abeece75040e1d50d7f933fb` |
| 26 | `theorem` | [coe_polyEquivTensor'_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/coe-polyequivtensor-symm--94e9b2a604113392a7ecdcb3.md) | 194 | `result-track:94e9b2a604113392a7ecdcb3a10c28716547d315ce2db4f5256a226056dbca80` |
| 27 | `def` | [Polynomial.algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polynomial-algebra--af5349dd8e081ec7a82bfe98.md) | 201 | `declaration-track:af5349dd8e081ec7a82bfe9858a2b55e170deac3533ee3670d9cc88575ca9fca` |
| 28 | `theorem` | [Polynomial.algebraMap_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/polynomial-algebramap-def--efaeeafede449674b27a840c.md) | 208 | `result-track:efaeeafede449674b27a840c24ca3f979db56e6d2afe540fc1ce2592d701a67b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/instance--548e288a30f94ecac4b91524.md) | 210 | `declaration-track:548e288a30f94ecac4b9152406714e3fb23c147e2db903b2a14d4f455d01ef42` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/instance--b66c987ab84750dcbcfff1d2.md) | 212 | `declaration-track:b66c987ab84750dcbcfff1d2b06790f9a9352afe4409a5a459932b532ff126c0` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/instance--ec3cfec9045964abf0bc2a89.md) | 218 | `declaration-track:ec3cfec9045964abf0bc2a897a6cc08c6f5cd6a297cb7afff374e38634293834` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variant61d4003e2ccf9a6d8412b35ce3b7862750bf43397b9b4645b6bd6acfb597e052.lean/declarations/instance--f2eb4778ad26767bb7b74cf7.md) | 222 | `declaration-track:f2eb4778ad26767bb7b74cf7790768f3aa4b3737432037ec38cb0848b8a3ea96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
