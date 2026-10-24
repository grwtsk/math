# Verification target: GRWTSK.Algebra.LinearAlgebra.Vandermonde.Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93d7a0d0453c8bd268025ec25a2390ec96a36091",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93d7a0d0453c8bd268025ec25a2390ec96a36091`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean.json)

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
| 1 | `def` | [rectVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/rectvandermonde--fa24ed8f2e4b5cc24027746b.md) | 76 | `declaration-track:fa24ed8f2e4b5cc24027746b58ed4072b79625202d1c38891f33401602713127` |
| 2 | `def` | [projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/projvandermonde--274fca95e4ed0694677b8641.md) | 80 | `declaration-track:274fca95e4ed0694677b86417f79b2307ec455f2e2ec60eb0c11b080e2ccd98e` |
| 3 | `def` | [vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde--4a4c7268e4f8a9861fe90189.md) | 84 | `declaration-track:4a4c7268e4f8a9861fe90189881fef8a1d69f79cb017e76ed0de31bdd860293e` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde-eq-projvandermonde--1e1788f62be64aea4ecd72c7.md) | 86 | `result-track:1e1788f62be64aea4ecd72c7dc1f97bbfdc3896707ab477eaaef5b25b5904000` |
| 5 | `theorem` | [projVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/projvandermonde-apply--baeebaa09182d39db21fa6da.md) | 91 | `result-track:baeebaa09182d39db21fa6da465b8b53c502261f96f46eb5106b367809f9676e` |
| 6 | `theorem` | [rectVandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/rectvandermonde-apply--51188f71589c8b51aacce6c6.md) | 94 | `result-track:51188f71589c8b51aacce6c64b4ac2ef7bdd06072e34d5cdb872884bf0cd641d` |
| 7 | `theorem` | [vandermonde_apply](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde-apply--aa617e6606b19e529cd2df1d.md) | 98 | `result-track:aa617e6606b19e529cd2df1ddec42a89672c6fa37fc2082d2d66a322ea3dc359` |
| 8 | `theorem` | [vandermonde_cons](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde-cons--7cc1f0d1568a87890e46b6e5.md) | 101 | `result-track:7cc1f0d1568a87890e46b6e5d9a2669315bafbb936d196c29c7b11fd74fb93e7` |
| 9 | `theorem` | [vandermonde_succ](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde-succ--a52c05b9b2fe7c44a3224515.md) | 110 | `result-track:a52c05b9b2fe7c44a32245154628621f6712afa91349fdcd760db28aad7371ee` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde-mul-vandermonde-transpose--eac35c3112cdb81a2a9b4067.md) | 117 | `result-track:eac35c3112cdb81a2a9b40671e963a3b83bd3567940e88f44f7c04e8b0b6084b` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/vandermonde-transpose-mul-vandermonde--4b73f9a81960ce7496ee8faa.md) | 121 | `result-track:4b73f9a81960ce7496ee8faa3dc677d34c3b22d1db78a6c0da9018059db5cb1d` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/rectvandermonde-apply-zero-right--3b36825521be5eb129482ee8.md) | 125 | `result-track:3b36825521be5eb129482ee8c6d5db996a1b628e1dd08574adeb203bf84f7b09` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/projvandermonde-apply-of-ne-zero--718ec159ccf0461be632fb73.md) | 133 | `result-track:718ec159ccf0461be632fb73a548e2b5a2ac71a22eef6d6dd019a2e4782d18c2` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/projvandermonde-apply-zero-right--6ab297aa6beccf212054e3b9.md) | 138 | `result-track:6ab297aa6beccf212054e3b9fb91617939a7dabcf25f90a62255711a6314ecc2` |
| 15 | `theorem` | [projVandermonde_comp](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/projvandermonde-comp--044d735ac45a8cd434c358d6.md) | 146 | `result-track:044d735ac45a8cd434c358d6dfadbbf699ceaa79aaf657046f417d34f959a8e6` |
| 16 | `theorem` | [projVandermonde_map](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/projvandermonde-map--2c031a367a56c5a480fd75b7.md) | 149 | `result-track:2c031a367a56c5a480fd75b70e64a2439905c6bba4d93e741fe9461be9b0a9f3` |
| 17 | `theorem` | [det_projVandermonde_of_field](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-projvandermonde-of-field--6d6efb245866fbc8046efcff.md) | 154 | `result-track:6d6efb245866fbc8046efcffe7e61634023400da46d1f61248f336ba2eb46951` |
| 18 | `theorem` | [det_projVandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-projvandermonde--7fcd718662f4e0db4b27e084.md) | 205 | `result-track:7fcd718662f4e0db4b27e0841aea39bf35a99dbe797d792459c795a08c3f236f` |
| 19 | `theorem` | [det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-vandermonde--ef59a4a586a8e2a5b008a0d1.md) | 219 | `result-track:ef59a4a586a8e2a5b008a0d11eacbded61811fb76244e37c6bf7283345d2690d` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-vandermonde-eq-zero-iff--8606cf0aabb4f77e8e4b66e0.md) | 223 | `result-track:8606cf0aabb4f77e8e4b66e0c6c632313bacdcfcd42203751e8f8c37ca8b3de8` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-vandermonde-ne-zero-iff--bb79372aa9d07dd890c2b3d1.md) | 233 | `result-track:bb79372aa9d07dd890c2b3d12b0a6a173f482ffc765adcc8c920ca172b68f40f` |
| 22 | `theorem` | [det_vandermonde_add](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-vandermonde-add--3dc59f4bb51df77fde1bd038.md) | 239 | `result-track:3dc59f4bb51df77fde1bd0387957bc0070e12c67db9a06512bafbe83971bbb05` |
| 23 | `theorem` | [det_vandermonde_sub](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-vandermonde-sub--ddacb642d908640a09e64d3a.md) | 244 | `result-track:ddacb642d908640a09e64d3af93cc3eae4e6b7596e82cbfa24c0425eba31f314` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero--2e9140e4bca6abe121f1047f.md) | 249 | `result-track:2e9140e4bca6abe121f1047fd9ad55667ea828aff26416b3defa3a8b7469da9f` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero--b591d1a5c479c4ab7dd69d53.md) | 253 | `result-track:b591d1a5c479c4ab7dd69d53b2c405f6ab0c302c6881dd501fae5439f80a8bd4` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero--09df616589dcb79f5ac24e03.md) | 259 | `result-track:09df616589dcb79f5ac24e03355d682eb702ad891255eb1051b4ac0576463ee9` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials--53bb57381713f7de1e7f186b.md) | 266 | `result-track:53bb57381713f7de1e7f186bf80780f9eddacaa7e79ee273dfad95eb874a9f6f` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-eval-matrixofpolynomials-eq-det-vandermonde--46306b0896eec85afbe64f01.md) | 280 | `result-track:46306b0896eec85afbe64f01a53ce0e61e2edee9772a24eb0e7d3d6e9b5cfed8` |
| 29 | `lemma` | [det_vandermonde_id_eq_superFactorial](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/det-vandermonde-id-eq-superfactorial--0ed97b223fb37816e485c9c0.md) | 287 | `result-track:0ed97b223fb37816e485c9c0006c1c2759433a6ca86a63c61f02fce5b0fdac9f` |
| 30 | `lemma` | [of_eval_descPochhammer_eq_mul_of_choose](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/of-eval-descpochhammer-eq-mul-of-choose--a3b406d551bfbdfe0d9d21ba.md) | 301 | `result-track:a3b406d551bfbdfe0d9d21ba862ef2996431042654298282a882d0f04e3d7f86` |
| 31 | `lemma` | [superFactorial_dvd_vandermonde_det](../../../../../mathematics/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean/declarations/superfactorial-dvd-vandermonde-det--fa72c9ab06f14126ff04d1f1.md) | 311 | `result-track:fa72c9ab06f14126ff04d1f1aaca3184ad8fd6ebc51ab38b591c891410b9f2fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
