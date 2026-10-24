# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PolynomialAlgebra.Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e1b457dc058fa774e745bbfd19f4ed43be53b6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e1b457dc058fa774e745bbfd19f4ed43be53b6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunbilinear--5301bad6609973d80f4e55d3.md) | 44 | `declaration-track:5301bad6609973d80f4e55d3dd725db64c72c338993b165a8e5b3840fc245c99` |
| 2 | `theorem` | [toFunBilinear_apply_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunbilinear-apply-apply--093a5aa997ee436484daa0fc.md) | 47 | `result-track:093a5aa997ee436484daa0fcfcce7ab40b0e1b4f965394bbd868ca62c3b39cda` |
| 3 | `theorem` | [toFunBilinear_apply_eq_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunbilinear-apply-eq-smul--57e12a4d00881ad8b74348c9.md) | 50 | `result-track:57e12a4d00881ad8b74348c90bccad79f211c60478c723b28d64f79dd6220ef9` |
| 4 | `theorem` | [toFunBilinear_apply_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunbilinear-apply-eq-sum--af1779eaa45f663a6d4ed3df.md) | 53 | `result-track:af1779eaa45f663a6d4ed3df90149d46eced36534823a02b439d79c3bcd60533` |
| 5 | `def` | [toFunLinear](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunlinear--d262388dcd79a1d70abb449c.md) | 62 | `declaration-track:d262388dcd79a1d70abb449c60df65bf96f0a917b15a56a179400e294332af57` |
| 6 | `theorem` | [toFunLinear_tmul_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunlinear-tmul-apply--cbb636616e24dd48c900ca66.md) | 66 | `result-track:cbb636616e24dd48c900ca66644c1bc978a4cf44a17947a73de46c397911bcd8` |
| 7 | `theorem` | [toFunLinear_mul_tmul_mul_aux_1](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunlinear-mul-tmul-mul-aux-1--24b71760d022da73a8ad6997.md) | 72 | `result-track:24b71760d022da73a8ad699716273136e8fb3ac8593b300feb947b7f023b9784` |
| 8 | `theorem` | [toFunLinear_mul_tmul_mul_aux_2](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunlinear-mul-tmul-mul-aux-2--0c66368d5ab42722b35ea26a.md) | 76 | `result-track:0c66368d5ab42722b35ea26aaa10f54725830af414009501c7251ba365ee0559` |
| 9 | `theorem` | [toFunLinear_mul_tmul_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunlinear-mul-tmul-mul--692c32c72861219ca78118a2.md) | 84 | `result-track:692c32c72861219ca78118a253e067152668d60bd0b13c3e91c008e31939e752` |
| 10 | `theorem` | [toFunLinear_one_tmul_one](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunlinear-one-tmul-one--ff8b32eb086c4288c35d7ad3.md) | 98 | `result-track:ff8b32eb086c4288c35d7ad3652d6a92aaf736fec9d1c9481b080f7c7d5fc344` |
| 11 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunalghom--227abf1aee4c10aecb0ed30b.md) | 105 | `declaration-track:227abf1aee4c10aecb0ed30b3e39b934dfd4da5cde53b17ac71688910d9ba177` |
| 12 | `theorem` | [toFunAlgHom_apply_tmul_eq_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunalghom-apply-tmul-eq-smul--72333ff14d84892857145c0d.md) | 109 | `result-track:72333ff14d84892857145c0deeb6f28da11206289e65ce166a3118f8dedd4f68` |
| 13 | `theorem` | [toFunAlgHom_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/tofunalghom-apply-tmul--b156a567040a696b21be11f8.md) | 112 | `result-track:b156a567040a696b21be11f8c872777cc12e0123866534b7d1968ec2075218d7` |
| 14 | `def` | [invFun](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/invfun--228240344c155320079b5699.md) | 121 | `declaration-track:228240344c155320079b56996e39240d3ad0a9cbce13c4f44d1958182eaad630` |
| 15 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/invfun-add--9807e1e614697a5403ca95b3.md) | 125 | `result-track:9807e1e614697a5403ca95b376c56b448bddf40d7b1d250898218ec17dc1b32a` |
| 16 | `theorem` | [invFun_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/invfun-monomial--c5d91c0e6c51ca26ece76fcf.md) | 128 | `result-track:c5d91c0e6c51ca26ece76fcfed9d94267a947282fd043e915081b6d0a35e7af8` |
| 17 | `theorem` | [left_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/left-inv--ac2b603bc2857ad5fd0f85c0.md) | 132 | `result-track:ac2b603bc2857ad5fd0f85c035bb371745f720048525efd938fd27e3502e0589` |
| 18 | `theorem` | [right_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/right-inv--4072a034b34351dd7878ea8c.md) | 147 | `result-track:4072a034b34351dd7878ea8ca26014670d81192545bd9dc16139a6b83bb000b2` |
| 19 | `def` | [equiv](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/equiv--9ca7a63e380d3331146d1668.md) | 161 | `declaration-track:9ca7a63e380d3331146d1668713f90278b0050f985465d5c179854a1fc332b35` |
| 20 | `def` | [polyEquivTensor](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polyequivtensor--ae29ea44a8ad62ef2b6f93ac.md) | 173 | `declaration-track:ae29ea44a8ad62ef2b6f93ac0aef96f0ce0f0d7f223db56bae911ea0c8d49063` |
| 21 | `theorem` | [polyEquivTensor_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polyequivtensor-apply--e681cbe42e9110912064c8e8.md) | 177 | `result-track:e681cbe42e9110912064c8e8d6c55a0ef3158d5ca82356633cf6baa8f04db0d7` |
| 22 | `theorem` | [polyEquivTensor_symm_apply_tmul_eq_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polyequivtensor-symm-apply-tmul-eq-smul--98a3a6514f25fef71a52466f.md) | 183 | `result-track:98a3a6514f25fef71a52466f2947753a62fc2c16436463fe57e84daf87963662` |
| 23 | `theorem` | [polyEquivTensor_symm_apply_tmul](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polyequivtensor-symm-apply-tmul--9dc1a5ef8937fc453a475b59.md) | 186 | `result-track:9dc1a5ef8937fc453a475b5994d2dd333104ee202c768dc0544a75f60843ec87` |
| 24 | `def` | [polyEquivTensor'](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polyequivtensor--6dde383b7949ebbc949a0ee4.md) | 195 | `declaration-track:6dde383b7949ebbc949a0ee4e4a2f4a0ed50e40fa3d60d17a473a76a1462686c` |
| 25 | `theorem` | [coe_polyEquivTensor'](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/coe-polyequivtensor--22e89b073c83c52e5b973364.md) | 200 | `result-track:22e89b073c83c52e5b973364de6531357043454e0caf4a6f006dc53c5082ac4d` |
| 26 | `theorem` | [coe_polyEquivTensor'_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/coe-polyequivtensor-symm--4586c47ae1cf6ec2e234d637.md) | 202 | `result-track:4586c47ae1cf6ec2e234d637064f69617def6c3d5129fdbfd111e04d81c0e244` |
| 27 | `def` | [Polynomial.algebra](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polynomial-algebra--041b46427d5595de22d9a71f.md) | 209 | `declaration-track:041b46427d5595de22d9a71f163d7121cfc537b073ac199ae5b6c385e9d274da` |
| 28 | `theorem` | [Polynomial.algebraMap_def](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/polynomial-algebramap-def--d2b97d65717a93fceb5a0645.md) | 216 | `result-track:d2b97d65717a93fceb5a0645c5ac3c08d4736db96220651f48ad2bd21526710c` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/instance--36f9f1450706d7377e1708ce.md) | 218 | `declaration-track:36f9f1450706d7377e1708ce76c95f3dd60539fdd21b74d5713bddac6e0ff994` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/instance--3541211ea455a8243a0d3896.md) | 220 | `declaration-track:3541211ea455a8243a0d38965e9085d5a40645799191c10769813c8e77831e51` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/instance--59be3811d2e7dbbbead090c1.md) | 226 | `declaration-track:59be3811d2e7dbbbead090c1856e13b26868216e01672147b4624b6fe452426c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PolynomialAlgebra/Variantad09f6bdefedeea1c600922fd879ac43619935cd9ee5ca77d701fee7a372aeaa.lean/declarations/instance--2b74fad3a89f03a83661d3c3.md) | 230 | `declaration-track:2b74fad3a89f03a83661d3c3c0f326767be1b08aa1c4eeea994e9ae9e203394a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
