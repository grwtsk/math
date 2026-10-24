# Verification target: GRWTSK.Algebra.LinearAlgebra.Contraction.Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "965eb182c752b89837bcef4648c0ad893ffd2bae",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `965eb182c752b89837bcef4648c0ad893ffd2bae`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/contractleft--2cc69002be0ac45a6d56f62e.md) | 42 | `declaration-track:2cc69002be0ac45a6d56f62e3a06bee6013367a74a1bdf2966f8560375692bcf` |
| 2 | `def` | [contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/contractright--046d6f3536fa1c58c0dac8e9.md) | 46 | `declaration-track:046d6f3536fa1c58c0dac8e91f421ea52e3b9e86640494b4c6435b7e269c0249` |
| 3 | `def` | [dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhom--59f7d97564940306ec1b5c07.md) | 50 | `declaration-track:59f7d97564940306ec1b5c075873e9d0c15152f3a96586d64fc7bba519a2d5ab` |
| 4 | `theorem` | [contractLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/contractleft-apply--f446f38237d2bb79db59347d.md) | 57 | `result-track:f446f38237d2bb79db59347d482aeee8e4fe5f009d966bdd87d8f5f441f6e6f4` |
| 5 | `theorem` | [contractRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/contractright-apply--4c0dc3bc1bea6a65ed3b4a3f.md) | 61 | `result-track:4c0dc3bc1bea6a65ed3b4a3f1865a481409d42cf798a57a14f507af05784d4d4` |
| 6 | `theorem` | [dualTensorHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhom-apply--baae0ad985a440c98b614726.md) | 65 | `result-track:baae0ad985a440c98b614726d4e6aff1250c84c588897d8ae179890342bb5078` |
| 7 | `theorem` | [transpose_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/transpose-dualtensorhom--d294e3768fe5887b6dada8fe.md) | 70 | `result-track:d294e3768fe5887b6dada8fe8a775830430e3c6318f473b15bd602d5cfaa58fc` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhom-prodmap-zero--6d588bf21d2b3d3809425983.md) | 80 | `result-track:6d588bf21d2b3d3809425983b650746e9e5a33bc306600577e9d748045d62a42` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/zero-prodmap-dualtensorhom--f8bdad3d57dc4352b110f9da.md) | 88 | `result-track:f8bdad3d57dc4352b110f9da0a37c8a855db75af8320ab9ab1c6ff05b6e47ae4` |
| 10 | `theorem` | [map_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/map-dualtensorhom--6d040247b8e63941405ba1e4.md) | 95 | `result-track:6d040247b8e63941405ba1e4b39329aa074c494826d7aeb0a22517880720e11f` |
| 11 | `theorem` | [comp_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/comp-dualtensorhom--7f8afca196e598033f34e2b0.md) | 103 | `result-track:7f8afca196e598033f34e2b0ddbaa5e2eed286f9f1e396fc7260e23fd609788d` |
| 12 | `theorem` | [toMatrix_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/tomatrix-dualtensorhom--87de72d35433a19d5a2facef.md) | 113 | `result-track:87de72d35433a19d5a2faceff99adb503bae3bb4e824ff2f738a11186264b6c6` |
| 13 | `def` | [dualTensorHomEquivOfBasis](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhomequivofbasis--db22010db73bd6eedf2a2e4a.md) | 135 | `declaration-track:db22010db73bd6eedf2a2e4a963b9c912ac8e6141ad0ce3020173e0ca03dd339` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhomequivofbasis-apply--c51956cb575828d364e3d3c7.md) | 150 | `result-track:c51956cb575828d364e3d3c71b0cc734a55391cb06ca8dbfa6e912bf34c25af4` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhomequivofbasis-tolinearmap--9caa11b32e0953c964cbf354.md) | 155 | `result-track:9caa11b32e0953c964cbf354b43672ef0d688ec6513ebfc957b07d323f2e98f9` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhomequivofbasis-symm-cancel-left--b3eaa46227ce1879fb4877fc.md) | 160 | `result-track:b3eaa46227ce1879fb4877fc60214bd851313024999a760a752eb203de503a66` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhomequivofbasis-symm-cancel-right--67a8a1227b2aca6f64e89a04.md) | 166 | `result-track:67a8a1227b2aca6f64e89a040cd058456b5d4ad077bbcb9cefe4dcd91984ae6b` |
| 18 | `def` | [dualTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/dualtensorhomequiv--761a46fe92c606d5458fa64d.md) | 176 | `declaration-track:761a46fe92c606d5458fa64d48525e057854be2ba98d098cdb3a7dcd0fcbff23` |
| 19 | `def` | [lTensorHomEquivHomLTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/ltensorhomequivhomltensor--77a91119f8b1732e1671015b.md) | 200 | `declaration-track:77a91119f8b1732e1671015bf555d5a15a3308fc6e38a91fbea4e63498488e43` |
| 20 | `def` | [rTensorHomEquivHomRTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/rtensorhomequivhomrtensor--37d573b432a3c9501b68f2da.md) | 209 | `declaration-track:37d573b432a3c9501b68f2dabe573d8d3ce8d6851a1532a6c6eca4fef00ef04a` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/ltensorhomequivhomltensor-tolinearmap--c73a3f4093cbaf7a4766d6bd.md) | 214 | `result-track:c73a3f4093cbaf7a4766d6bdee84b85b1df4a251e2fbf77bb77403eaaa282aa0` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/rtensorhomequivhomrtensor-tolinearmap--9e5944e89c612edf9c3b11f3.md) | 226 | `result-track:9e5944e89c612edf9c3b11f32ebcddc9f415e9edaf6192db2af21ba47f107a94` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/ltensorhomequivhomltensor-apply--c88e56f0aa93a74ac7fdddcb.md) | 241 | `result-track:c88e56f0aa93a74ac7fdddcb2f3a7606e033d17ee62c2f4939cd93bb20871850` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/rtensorhomequivhomrtensor-apply--1e369c4f29c2c6948bc963dd.md) | 246 | `result-track:1e369c4f29c2c6948bc963dd8e1b2e144425390aaa3b9b22dbd5eb06a768992b` |
| 25 | `def` | [homTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/homtensorhomequiv--b56a7d36f799087d4691dbd5.md) | 256 | `declaration-track:b56a7d36f799087d4691dbd539c3c2a5d75a7e5b902c85b1d3b99f9f2858c6d2` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/homtensorhomequiv-tolinearmap--93acb0a12774bc7f7d6e556b.md) | 262 | `result-track:93acb0a12774bc7f7d6e556b30f0804b849ed660533d8dc2c0ed220a1cd5be1c` |
| 27 | `theorem` | [homTensorHomEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean/declarations/homtensorhomequiv-apply--6e90b2e3fc2aa78264b6995e.md) | 274 | `result-track:6e90b2e3fc2aa78264b6995ec7e26709ae0a591a29bb9a73dd564a1a539a8726` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
