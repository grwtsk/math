# Verification target: GRWTSK.Algebra.RingTheory.PolynomialAlgebra.Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3d4a66f2edfe2f9667a038a532559d8bb98e31",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3d4a66f2edfe2f9667a038a532559d8bb98e31`.

Source path: `GRWTSK/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MatrixAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.DMatrix` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunbilinear--4dafce8e6b7fa3729a798591.md) | 62 | `declaration-track:4dafce8e6b7fa3729a798591a6fbc9cd89358876c85e868b0b23be7547d5bbcc` |
| 2 | `theorem` | [toFunBilinear_apply_eq_sum](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunbilinear-apply-eq-sum--b3b804eb962ea6cafad2e740.md) | 66 | `result-track:b3b804eb962ea6cafad2e7407f3d535723bba1c831895738818d885e3463d8ba` |
| 3 | `def` | [toFunLinear](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunlinear--f6cd81f557ee51e381f19014.md) | 78 | `declaration-track:f6cd81f557ee51e381f190147b9207692c3dd617588605eb21276a1e34f6c2d4` |
| 4 | `theorem` | [toFunLinear_tmul_apply](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunlinear-tmul-apply--0c015ddffde183db7ddbc1a0.md) | 83 | `result-track:0c015ddffde183db7ddbc1a025a428aec876680e08deca1288a74af7e4a94827` |
| 5 | `theorem` | [toFunLinear_mul_tmul_mul_aux_1](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunlinear-mul-tmul-mul-aux-1--a05d0030b4760687ada8a846.md) | 90 | `result-track:a05d0030b4760687ada8a846ceb35cff7af89c7bb8b29d6e52d1b806de0fd166` |
| 6 | `theorem` | [toFunLinear_mul_tmul_mul_aux_2](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunlinear-mul-tmul-mul-aux-2--99bec56bd0deb9f77f30746f.md) | 95 | `result-track:99bec56bd0deb9f77f30746fbb3f68c8187ca78f47f173b5fe2f9b519ab96eac` |
| 7 | `theorem` | [toFunLinear_mul_tmul_mul](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunlinear-mul-tmul-mul--52ab421588dd5fee726f1165.md) | 104 | `result-track:52ab421588dd5fee726f116561fded41e07ca07830ed7af9b0c357b955506bbc` |
| 8 | `theorem` | [toFunLinear_algebraMap_tmul_one](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunlinear-algebramap-tmul-one--bfc80be9d65f0ccac2e7d776.md) | 119 | `result-track:bfc80be9d65f0ccac2e7d7767b0b198d55015828094f46b2dccae4e2507a05ca` |
| 9 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunalghom--52043fc0e7836a354503a68c.md) | 129 | `declaration-track:52043fc0e7836a354503a68c763e377aa20315ba8afff22987d7c1c6bc891a04` |
| 10 | `theorem` | [toFunAlgHom_apply_tmul](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/tofunalghom-apply-tmul--1824096d8dff9857bf15396e.md) | 135 | `result-track:1824096d8dff9857bf15396e42aba5cec29313e5069a1d8e485c6d715ad5cbc4` |
| 11 | `def` | [invFun](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/invfun--d9ca2f0dc12e4a209d7b0006.md) | 145 | `declaration-track:d9ca2f0dc12e4a209d7b00064fea7c96f636db1092875650ed682f31ba0237eb` |
| 12 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/invfun-add--ee4ccd5dd0dbc72ba0f173ec.md) | 150 | `result-track:ee4ccd5dd0dbc72ba0f173eca9002e47b893a09974060292c43fa263e68ab443` |
| 13 | `theorem` | [invFun_monomial](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/invfun-monomial--a696d622e8d9800af041cf72.md) | 154 | `result-track:a696d622e8d9800af041cf72c06bd743920aa8b8cd911f3647f97eac982da0da` |
| 14 | `theorem` | [left_inv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/left-inv--77c83d16992bf1fddf13af1b.md) | 159 | `result-track:77c83d16992bf1fddf13af1b6553d638292765bd83762e3574eb73b1435a1c4f` |
| 15 | `theorem` | [right_inv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/right-inv--c3e62fe31405ee65876bd213.md) | 175 | `result-track:c3e62fe31405ee65876bd213a8bca167b7116c0a869ae1e3121586992b0b4ba7` |
| 16 | `def` | [equiv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/equiv--5e6c8fc3c703e25fe3072769.md) | 190 | `declaration-track:5e6c8fc3c703e25fe3072769ef7cd5fe0e80e37daa045cfec88deaa40dfb30d6` |
| 17 | `def` | [polyEquivTensor](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/polyequivtensor--ff3611a7617a87546c4af262.md) | 203 | `declaration-track:ff3611a7617a87546c4af2626ed28dd7d252527f57dc93890aa08dd03235e641` |
| 18 | `theorem` | [polyEquivTensor_apply](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/polyequivtensor-apply--2ffd6e752e7d9bd14aaa6fc6.md) | 208 | `result-track:2ffd6e752e7d9bd14aaa6fc680dde8671b32332b7ecf19ddb9697a3bcc417034` |
| 19 | `theorem` | [polyEquivTensor_symm_apply_tmul](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/polyequivtensor-symm-apply-tmul--e3fffff8e9b619ba34bc05ca.md) | 215 | `result-track:e3fffff8e9b619ba34bc05ca1083ab0351eea94e5af85230555a01e6e7a44fbc` |
| 20 | `def` | [matPolyEquiv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/matpolyequiv--1a351d1a2450d17ed3aa87f9.md) | 233 | `declaration-track:1a351d1a2450d17ed3aa87f9d2df5a82639e076b3cd5e751a028865c488595e9` |
| 21 | `theorem` | [matPolyEquiv_coeff_apply_aux_1](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/matpolyequiv-coeff-apply-aux-1--da6fbc7cabf3b3fbd6028b86.md) | 240 | `result-track:da6fbc7cabf3b3fbd6028b8623c68ed6df2cf1d1617738f7e779cfad4b2d515b` |
| 22 | `theorem` | [matPolyEquiv_coeff_apply_aux_2](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/matpolyequiv-coeff-apply-aux-2--5d512eb0b759304498940bc9.md) | 252 | `result-track:5d512eb0b759304498940bc9f7e7c2cdefbc54246473bfc768819dce1e71cad3` |
| 23 | `theorem` | [matPolyEquiv_coeff_apply](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/matpolyequiv-coeff-apply--85cbd2bc6f315508fef08203.md) | 266 | `result-track:85cbd2bc6f315508fef082031c5958a9b206c9ca3e754f9ea113ac2dd00c09d0` |
| 24 | `theorem` | [matPolyEquiv_symm_apply_coeff](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/matpolyequiv-symm-apply-coeff--bfaf94f91306336e8694c97f.md) | 282 | `result-track:bfaf94f91306336e8694c97f7f0ed03e792e38fcb89a7500f35485bd3b3f50c1` |
| 25 | `theorem` | [matPolyEquiv_smul_one](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/matpolyequiv-smul-one--788366e32a514d6ea5496184.md) | 289 | `result-track:788366e32a514d6ea54961840cf334dc2136303c436189b0df4bda500b2a3411` |
| 26 | `theorem` | [support_subset_support_matPolyEquiv](../../../../../mathematics/Algebra/RingTheory/PolynomialAlgebra/Variant1652c62cf211a88f60909aa466c5e4dc318f8d40840026120bba58a80d36285c.lean/declarations/support-subset-support-matpolyequiv--9ea6e33aecd829877a0d4cdf.md) | 297 | `result-track:9ea6e33aecd829877a0d4cdf460e66099b1502eaf1d0b662837aad25a4ea2bd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
