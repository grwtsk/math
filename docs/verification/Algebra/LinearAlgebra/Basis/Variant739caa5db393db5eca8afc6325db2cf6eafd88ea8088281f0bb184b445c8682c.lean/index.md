# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e2556715045fdba9e2248dd7cbe53dd9d510223",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e2556715045fdba9e2248dd7cbe53dd9d510223`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Reindex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix--26359d5de48e69259cd3db09.md) | 50 | `declaration-track:26359d5de48e69259cd3db09bb04d3c63bcdbf84054802ca2bc035643f93d988` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-apply--e896f6b45723c19947cd72e7.md) | 56 | `result-track:e896f6b45723c19947cd72e70f6010da807fa57efdcd63bec16f48272c07fe5d` |
| 3 | `theorem` | [toMatrix_transpose_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-transpose-apply--8c14ecfe630ec7294a4e874e.md) | 59 | `result-track:8c14ecfe630ec7294a4e874e15e2fb110b5e4cc6875c4985905bd6645b96a0c8` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-eq-tomatrix-constr--cbfa4127a2202daa2a23eec1.md) | 62 | `result-track:cbfa4127a2202daa2a23eec1269ee804782bd96ec97377878a59289d59d384b2` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/coepibasisfun-tomatrix-eq-transpose--2ebb31b5407cb622ebcd6780.md) | 68 | `result-track:2ebb31b5407cb622ebcd678023fc5b45ad67949198bd0a2f22b55dc1121dd028` |
| 6 | `theorem` | [toMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-self--6a1c2f7769e497198a8f150d.md) | 74 | `result-track:6a1c2f7769e497198a8f150d0aa847d2f8e28a37538a708032aaa8f8fd0ab86d` |
| 7 | `theorem` | [toMatrix_update](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-update--f2aea051d457cb85fe2e4cf4.md) | 79 | `result-track:f2aea051d457cb85fe2e4cf435b093247a2d9dd5eda9085758b77fd2a0ea1ac0` |
| 8 | `theorem` | [toMatrix_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-unitssmul--5de01aa9455b631ad7dc2b1a.md) | 89 | `result-track:5de01aa9455b631ad7dc2b1a3288241940ba1a8f0881ba529bb0589897b13820` |
| 9 | `theorem` | [toMatrix_isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-isunitsmul--3d165efcc44c13d4024bdaf1.md) | 98 | `result-track:3d165efcc44c13d4024bdaf1223d9ee2c7e74c45225f7ea4f9c5002383f01833` |
| 10 | `theorem` | [toMatrix_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-smul-left--699082d3fd0a6b4a47718e09.md) | 102 | `result-track:699082d3fd0a6b4a47718e0995abadd57f75aef17be890d81b784c6b9dbd7fb2` |
| 11 | `theorem` | [sum_toMatrix_smul_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/sum-tomatrix-smul-self--d1d20e581eea8687601dc81a.md) | 106 | `result-track:d1d20e581eea8687601dc81a2206899a377f411702d23d19b3a2bff1b39cd401` |
| 12 | `theorem` | [toMatrix_smul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-smul--46b717ab42a11b4c30fd215c.md) | 109 | `result-track:46b717ab42a11b4c30fd215c8e5ad5a7178a09d19d7d796f5db84c4392114eaf` |
| 13 | `theorem` | [toMatrix_map_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrix-map-vecmul--e22408d88972fa08cd764b2a.md) | 116 | `result-track:e22408d88972fa08cd764b2a45bee10e24625b25f9ed2eb1856c8cadf9c11dff` |
| 14 | `theorem` | [toLin_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tolin-tomatrix--30cb53be48f1fde78a66296d.md) | 123 | `result-track:30cb53be48f1fde78a66296db92a994a0de2a0d6983f30646dd40c939d91f9bc` |
| 15 | `def` | [toMatrixEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/tomatrixequiv--b76de803109660079d7155a7.md) | 129 | `declaration-track:b76de803109660079d7155a7d25f690914944168f5945eb0f1c31b2b8aaa9a66` |
| 16 | `theorem` | [restrictScalars_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/restrictscalars-tomatrix--654515d89add396dbe67375a.md) | 153 | `result-track:654515d89add396dbe67375a4d995bb566e2f3e1084b5a40085aa4baf8389ab4` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/linearmap-tomatrix-id-eq-basis-tomatrix--10c739fa861f853fd5dbd535.md) | 176 | `result-track:10c739fa861f853fd5dbd53509b38533a8e2f948cddcc96e799999ee053c3c5f` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix--cae6241655b66b7face59b0d.md) | 184 | `result-track:cae6241655b66b7face59b0da003ea2eca8d068d50d9bb987eecf86816a5b4e1` |
| 19 | `theorem` | [basis_toMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-mul--9c711e25081545ae6abfab46.md) | 190 | `result-track:9c711e25081545ae6abfab468878f5f3742084a196b8fdfca6c304f6df09ab99` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/linearmap-tomatrix-mul-basis-tomatrix--ccbbf965e1da79d1e7e7f281.md) | 199 | `result-track:ccbbf965e1da79d1e7e7f281d9a09031b93f7add5f1215994cbd7e0f596c69b3` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix--a25c14924543e76487586797.md) | 204 | `result-track:a25c14924543e7648758679789279420bb5a26c3f80b821d294a9f680ebb464b` |
| 22 | `theorem` | [mul_basis_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/mul-basis-tomatrix--209bff8bafc9f339c6613575.md) | 210 | `result-track:209bff8bafc9f339c6613575bf3a9810f8a73846dd0c09d39619de6a411ec470` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-basisfun-mul--acb787f9c98e7a82b7ae348a.md) | 217 | `result-track:acb787f9c98e7a82b7ae348aead9e31ee6ebd2a088bd3889eae68dd966887349` |
| 24 | `theorem` | [Basis.toMatrix_reindex'](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-reindex--b7291ed6256a98b1444a456e.md) | 226 | `result-track:b7291ed6256a98b1444a456ea03038d5ae9905ac5a7879f52c0a7ab682e14ded` |
| 25 | `lemma` | [Basis.toMatrix_mulVec_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-mulvec-repr--9ddbcb458cfcfcf56ad5851e.md) | 236 | `result-track:9ddbcb458cfcfcf56ad5851e408e9ee1fec95cba6917e4b6da4dec1b474b16d3` |
| 26 | `theorem` | [Basis.toMatrix_mul_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-mul-tomatrix--060eded25acbfb29ff25e623.md) | 246 | `result-track:060eded25acbfb29ff25e623a7fae878b460ff92ebf7526701017e248e6d3e56` |
| 27 | `theorem` | [Basis.toMatrix_mul_toMatrix_flip](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-mul-tomatrix-flip--7c2d33d015b7cf3f0a40ebbb.md) | 255 | `result-track:7c2d33d015b7cf3f0a40ebbbfd002f780708eac2829afa59f22bddff6f13ad7f` |
| 28 | `def` | [Basis.invertibleToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-invertibletomatrix--fa5174fec5c004a73ee0ea95.md) | 259 | `declaration-track:fa5174fec5c004a73ee0ea954236a0b6c88f82eecfad43e0473f0a18afee9fc7` |
| 29 | `theorem` | [Basis.toMatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-reindex--c51f316c98a573aaa1b4dd44.md) | 264 | `result-track:c51f316c98a573aaa1b4dd4444b86955d324d6303249ca2b5d64e126a96e995f` |
| 30 | `theorem` | [Basis.toMatrix_map](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variant739caa5db393db5eca8afc6325db2cf6eafd88ea8088281f0bb184b445c8682c.lean/declarations/basis-tomatrix-map--2cbbc6d37774e38fb30b41f5.md) | 271 | `result-track:2cbbc6d37774e38fb30b41f58c07ed9a6aa8d45279dd58578f7c21d783bd282b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
