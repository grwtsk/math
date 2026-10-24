# Verification target: GRWTSK.Algebra.RingTheory.PolynomialAlgebra.Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c8d584c856a78c0e68a6605def9388a5845288e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c8d584c856a78c0e68a6605def9388a5845288e`.

Source path: `GRWTSK/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MatrixAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunbilinear--0a211bff768872993153b7b7.md) | 54 | `declaration-track:0a211bff768872993153b7b7cf30b3c68779f75dafb7ed0215ab9d99be9927e5` |
| 2 | `theorem` | [toFunBilinear_apply_eq_sum](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunbilinear-apply-eq-sum--a5aaa72623a1738ff6c62005.md) | 58 | `result-track:a5aaa72623a1738ff6c620050cee24424dd4bd7706a47d31c85d107e984c591b` |
| 3 | `def` | [toFunLinear](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunlinear--292461d6ad01c6d4b3c246a2.md) | 70 | `declaration-track:292461d6ad01c6d4b3c246a23fdc15f024bf4c337e55dfd0acab25da3527b47e` |
| 4 | `theorem` | [toFunLinear_tmul_apply](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunlinear-tmul-apply--5632d88c76c2e158f75b022a.md) | 75 | `result-track:5632d88c76c2e158f75b022ad0a4bca688d2c7a6f98b4664c87f3bc73b0f045c` |
| 5 | `theorem` | [toFunLinear_mul_tmul_mul_aux_1](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunlinear-mul-tmul-mul-aux-1--13ce3a31cb8bfea2650b91bf.md) | 82 | `result-track:13ce3a31cb8bfea2650b91bf2799449c6d35d08043a79be3b4514a0df82fca55` |
| 6 | `theorem` | [toFunLinear_mul_tmul_mul_aux_2](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunlinear-mul-tmul-mul-aux-2--9db36af1f4b2e711c9949939.md) | 87 | `result-track:9db36af1f4b2e711c9949939bc158562b061a2f02bb34fbf825aa99e30835aa2` |
| 7 | `theorem` | [toFunLinear_mul_tmul_mul](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunlinear-mul-tmul-mul--f8046fa7201959acd5d16c75.md) | 96 | `result-track:f8046fa7201959acd5d16c7579fe4dcc496b140a5942f7e4bdcdb11f1f22c558` |
| 8 | `theorem` | [toFunLinear_algebraMap_tmul_one](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunlinear-algebramap-tmul-one--c897c2c54adfe574c2c973d9.md) | 111 | `result-track:c897c2c54adfe574c2c973d955019745ee0e55bad8bc073689b8820e3b457a62` |
| 9 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunalghom--6fd52c87e5ed648bece70d48.md) | 121 | `declaration-track:6fd52c87e5ed648bece70d48ed9121eb50d350c25e3f52b4754a96478c98392a` |
| 10 | `theorem` | [toFunAlgHom_apply_tmul](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/tofunalghom-apply-tmul--76f2334bc884963b86d56547.md) | 127 | `result-track:76f2334bc884963b86d565479aeacb4faa49ca9dc607ac87a57b9f6cfa55fe77` |
| 11 | `def` | [invFun](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/invfun--5666b7c4f1fae07029964e78.md) | 137 | `declaration-track:5666b7c4f1fae07029964e78c5edde5837070ef0190356dd230302c6aa1e8c94` |
| 12 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/invfun-add--1237b7b6b049a94342ed66e6.md) | 142 | `result-track:1237b7b6b049a94342ed66e61f57a730e2f9b304b858fc7fadc7d3f3297e6614` |
| 13 | `theorem` | [invFun_monomial](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/invfun-monomial--f8ca99a81e12545b207a6732.md) | 146 | `result-track:f8ca99a81e12545b207a67324d3dc490f7206e36f0103d07d2b4567b0d9e873c` |
| 14 | `theorem` | [left_inv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/left-inv--e9fe39b77329653c3a53667c.md) | 151 | `result-track:e9fe39b77329653c3a53667c0629ba423286ae857b0efc4df7817824e183d61a` |
| 15 | `theorem` | [right_inv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/right-inv--96b5fe7959bb01690d67fa29.md) | 167 | `result-track:96b5fe7959bb01690d67fa293ee412678df4d61491fe186e3f7670597562c39c` |
| 16 | `def` | [equiv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/equiv--24031f9618b750b4d26fc3e6.md) | 182 | `declaration-track:24031f9618b750b4d26fc3e6efb8dd9ee57690e0bd78db90dff14ba34e67a9b4` |
| 17 | `def` | [polyEquivTensor](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/polyequivtensor--9f2d2ec1923770808b5be190.md) | 195 | `declaration-track:9f2d2ec1923770808b5be190d92a91225ab04ce78ffcd3666a522b5e7efdb066` |
| 18 | `theorem` | [polyEquivTensor_apply](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/polyequivtensor-apply--8d15043177181b3fb28962d7.md) | 200 | `result-track:8d15043177181b3fb28962d7650c83538beec308dc5bda48f1b5b42ec251362e` |
| 19 | `theorem` | [polyEquivTensor_symm_apply_tmul](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/polyequivtensor-symm-apply-tmul--933bf93dcd02e82a9c793cdd.md) | 207 | `result-track:933bf93dcd02e82a9c793cdd009fa1e45c874b4690c3a272fc082fbdf0ac2779` |
| 20 | `def` | [matPolyEquiv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/matpolyequiv--c6c07f2a8f12736395c01f05.md) | 225 | `declaration-track:c6c07f2a8f12736395c01f05eea8c0563d9c5b9befd9de391ea353687adc7225` |
| 21 | `theorem` | [matPolyEquiv_coeff_apply_aux_1](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/matpolyequiv-coeff-apply-aux-1--6adcbac192f098f2010e2f05.md) | 232 | `result-track:6adcbac192f098f2010e2f058164d22795878abe9df70daec6c9c3b4e306449c` |
| 22 | `theorem` | [matPolyEquiv_coeff_apply_aux_2](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/matpolyequiv-coeff-apply-aux-2--f90e3725f73d60852ba310f1.md) | 244 | `result-track:f90e3725f73d60852ba310f1d3156f2f901eb813b9a1a357f4a375bbb3b47726` |
| 23 | `theorem` | [matPolyEquiv_coeff_apply](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/matpolyequiv-coeff-apply--dcfdcf080578fa20af11a59b.md) | 258 | `result-track:dcfdcf080578fa20af11a59b9b20fbc3d3ea9fbcfdc7863fc0c120677dc693e8` |
| 24 | `theorem` | [matPolyEquiv_symm_apply_coeff](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/matpolyequiv-symm-apply-coeff--5f8fac395bc001c92ba64bf9.md) | 274 | `result-track:5f8fac395bc001c92ba64bf9eb2480d81146d0cd5344767aec4ee1b8533e77e8` |
| 25 | `theorem` | [matPolyEquiv_smul_one](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/matpolyequiv-smul-one--26bc6260f79814588752852d.md) | 281 | `result-track:26bc6260f79814588752852dce6d6c73b8b55a54092f0e9f4193782b59957b28` |
| 26 | `theorem` | [support_subset_support_matPolyEquiv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1b7bc0aa2f9aa4b6b8395657884aea54f20cfd37ef7d8c0b9c5ea7c13bc423e4.lean/declarations/support-subset-support-matpolyequiv--5c99fb270e0e678ad769618f.md) | 289 | `result-track:5c99fb270e0e678ad769618f925f28313858b8c7dc64a2e00ab7c01645ab5351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
