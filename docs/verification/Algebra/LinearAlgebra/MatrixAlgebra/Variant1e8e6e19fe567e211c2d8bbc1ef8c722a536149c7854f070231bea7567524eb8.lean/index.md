# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixAlgebra.Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9050b4205444a438fec50197616e75f5c629317",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9050b4205444a438fec50197616e75f5c629317`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Composition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Kronecker` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerTMulLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmullinearequiv--78bd2af7d7f9628715c332c4.md) | 50 | `declaration-track:78bd2af7d7f9628715c332c41ff5727d4a0cd3f5c314565abac025d334c88799` |
| 2 | `theorem` | [kroneckerTMulLinearEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmullinearequiv-tmul--b17ad01daa4bdc6438ada4b2.md) | 67 | `result-track:b17ad01daa4bdc6438ada4b2b4e308944ab1b864ba82f6fdbcac9db7efc92194` |
| 3 | `theorem` | [kroneckerTMulAlgEquiv_symm_single_tmul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmulalgequiv-symm-single-tmul--49a83ebd5b82d28b186d790b.md) | 71 | `result-track:49a83ebd5b82d28b186d790be32e7dcec0f671f7778ef69370e9d161d6027187` |
| 4 | `theorem` | [kroneckerTMulLinearEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmullinearequiv-one--ceddd8889125af3da1b5daaa.md) | 82 | `result-track:ceddd8889125af3da1b5daaa64e53e880da77af8c92fdf71c9bb0b91fb611889` |
| 5 | `theorem` | [kroneckerTMulLinearEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmullinearequiv-mul--31c0ee6ae39e7e13f24b6507.md) | 88 | `result-track:31c0ee6ae39e7e13f24b65077c492ec0715defdf8fb2353fcbfbf3c498bd703f` |
| 6 | `def` | [toFunBilinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/tofunbilinear--93622b42d38d4b546b72aa70.md) | 109 | `declaration-track:93622b42d38d4b546b72aa7045caf12ac11df4ddb113ae9a9d19fbd6fbeeea09` |
| 7 | `theorem` | [toFunBilinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/tofunbilinear-apply--92e00a2343913792ccd72e44.md) | 113 | `result-track:92e00a2343913792ccd72e44db2c5f08f02bcc75c92514389640c2d96421729d` |
| 8 | `def` | [toFunLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/tofunlinear--8c7f549fafe98e73892967fa.md) | 121 | `declaration-track:8c7f549fafe98e73892967fa030dd3ff313a8b3b30752d57b172f646730ae574` |
| 9 | `def` | [toFunAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/tofunalghom--6dc708068731a8a5858bf927.md) | 128 | `declaration-track:6dc708068731a8a5858bf9271acfb9e607ceb0cfe240104a4dd38c01dec1b47e` |
| 10 | `theorem` | [toFunAlgHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/tofunalghom-apply--beb4dac44c3e4dda3b7e3b63.md) | 142 | `result-track:beb4dac44c3e4dda3b7e3b636e0e399efdf062aa7fe3bb55b0a815609c4da1e8` |
| 11 | `def` | [invFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/invfun--b061ab3539ef8fdb1808c439.md) | 150 | `declaration-track:b061ab3539ef8fdb1808c439336c533eaa9540dfc54e89951e09860e3307a0b1` |
| 12 | `theorem` | [invFun_zero](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/invfun-zero--d372df0ad39d46a3079ebe72.md) | 154 | `result-track:d372df0ad39d46a3079ebe7288b4bc2b014b6cb99264c815f6ef730501aae8eb` |
| 13 | `theorem` | [invFun_add](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/invfun-add--9151479a2daac42be7285d79.md) | 157 | `result-track:9151479a2daac42be7285d79ad6ac355889eb2556c6ce97af4da1c101faa566d` |
| 14 | `theorem` | [invFun_smul](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/invfun-smul--cd6542540613904df765ce6c.md) | 162 | `result-track:cd6542540613904df765ce6cdca5370ab1c978857cef3455fee8737ce047f4e0` |
| 15 | `theorem` | [invFun_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/invfun-algebramap--aae97bf4a6b98bb6861a47e7.md) | 167 | `result-track:aae97bf4a6b98bb6861a47e7b8863c44a024412adb5bccda031e09183243d7e2` |
| 16 | `theorem` | [right_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/right-inv--7218a5aea740716aacbf376d.md) | 174 | `result-track:7218a5aea740716aacbf376daecb155383b9d61aee4d2a3f8c5c46baee2cc920` |
| 17 | `theorem` | [left_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/left-inv--5a04a111b1775373fe8ddc36.md) | 182 | `result-track:5a04a111b1775373fe8ddc3682c9356182ee456d499f954e3785c5e524ee821f` |
| 18 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/equiv--d2c64a2bd5d74007d46c2d22.md) | 194 | `declaration-track:d2c64a2bd5d74007d46c2d222e82a5bb9eac97f8d246b5f828c636e77b8d096f` |
| 19 | `def` | [matrixEquivTensor](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/matrixequivtensor--eda9ac5423b8ffc561fb880b.md) | 206 | `declaration-track:eda9ac5423b8ffc561fb880b01c8e9308f8a99ca2d50245b0e33c212aed1ecd8` |
| 20 | `theorem` | [matrixEquivTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/matrixequivtensor-apply--1c2cddb795b8e5fa8f97af7f.md) | 212 | `result-track:1c2cddb795b8e5fa8f97af7fac8802ed89092e3fad565206bffaa43a66712d02` |
| 21 | `theorem` | [matrixEquivTensor_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/matrixequivtensor-apply-single--a541283d0f7e18824f38f09c.md) | 218 | `result-track:a541283d0f7e18824f38f09ce32a536b3168fa41126ca1ed337faa5389ad7d6d` |
| 22 | `theorem` | [matrixEquivTensor_apply_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/matrixequivtensor-apply-symm--4e67baf538d9d3abfdce686d.md) | 227 | `result-track:4e67baf538d9d3abfdce686d52bc66436f601396fd966824fbb4ad364953bb91` |
| 23 | `def` | [kroneckerTMulAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmulalgequiv--457288bd602ddb921f481d79.md) | 237 | `declaration-track:457288bd602ddb921f481d791f081490dbd149cf1c71e8f8e2957bdd1cc2e0c4` |
| 24 | `theorem` | [kroneckerTMulAlgEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmulalgequiv-apply--e927b06666f83c3f54ff3981.md) | 246 | `result-track:e927b06666f83c3f54ff3981d55ebbef46b4c2262b1077aa2989397ae294536e` |
| 25 | `theorem` | [kroneckerTMulAlgEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixAlgebra/Variant1e8e6e19fe567e211c2d8bbc1ef8c722a536149c7854f070231bea7567524eb8.lean/declarations/kroneckertmulalgequiv-symm-apply--8db1e1bc4ebe210035aa552e.md) | 251 | `result-track:8db1e1bc4ebe210035aa552ea8a8f20c00f2641317f6b6c5841fad00e0914874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
