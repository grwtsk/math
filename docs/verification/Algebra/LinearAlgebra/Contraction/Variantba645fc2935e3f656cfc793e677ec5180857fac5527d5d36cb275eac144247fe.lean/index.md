# Verification target: GRWTSK.Algebra.LinearAlgebra.Contraction.Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb163548c37f9186ce5655076c7a20d9ca3be09",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb163548c37f9186ce5655076c7a20d9ca3be09`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/contractleft--98fdb7683036fffc7326977c.md) | 50 | `declaration-track:98fdb7683036fffc7326977cb00a65ebfd30dc745bb80236f865e100d6316b5d` |
| 2 | `def` | [contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/contractright--010fe14a5aea0723f2bb87da.md) | 56 | `declaration-track:010fe14a5aea0723f2bb87da575038ab4b18069eee99b00d9dca6b22aacd3c6d` |
| 3 | `def` | [dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhom--a58e2b2b982a65cf7ce1e369.md) | 62 | `declaration-track:a58e2b2b982a65cf7ce1e36960a9fbf3f8a8ba61fb30d7589e84e18e4da5a490` |
| 4 | `theorem` | [contractLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/contractleft-apply--b3b62e8229e64f62b42f3cce.md) | 70 | `result-track:b3b62e8229e64f62b42f3ccebd0a3a9087335b5813e7360c08dc702036d6a15f` |
| 5 | `theorem` | [contractRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/contractright-apply--28fc19f34173a801e4fa09d0.md) | 75 | `result-track:28fc19f34173a801e4fa09d07816f7e020dc6cbb9953d3bb186719d73712a389` |
| 6 | `theorem` | [dualTensorHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhom-apply--9e4a679c63a7204024a33c78.md) | 80 | `result-track:9e4a679c63a7204024a33c789422c2bddf8e3041ae4c2d6e8b5272e5a0993ee7` |
| 7 | `theorem` | [transpose_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/transpose-dualtensorhom--94b2dd930d9dba0c964a3ae1.md) | 86 | `result-track:94b2dd930d9dba0c964a3ae1b8033890be4873ec039b6e9391465c0870de8844` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhom-prodmap-zero--0e9b11481cde5531a741d63e.md) | 97 | `result-track:0e9b11481cde5531a741d63e22343b60e40654b4796599d871c38c1c6b42ad20` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/zero-prodmap-dualtensorhom--5275956c975e6613ebcca592.md) | 106 | `result-track:5275956c975e6613ebcca59249d3f3f96764d7a41adfb8308a6bb7f8a2f61c17` |
| 10 | `theorem` | [map_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/map-dualtensorhom--d17091052461173709ea1958.md) | 114 | `result-track:d17091052461173709ea1958576856a4eb3b2e98767bd38e1b629d1198561d0b` |
| 11 | `theorem` | [comp_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/comp-dualtensorhom--60c50c494e057a7e862deb13.md) | 123 | `result-track:60c50c494e057a7e862deb133b05f1ceea0456887b451dbf1a17592578cb0976` |
| 12 | `theorem` | [toMatrix_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/tomatrix-dualtensorhom--6e54ecdeb4ddb8236d403f68.md) | 134 | `result-track:6e54ecdeb4ddb8236d403f6847c5f1f7a9de9ad4a4812bf1184fdac61f7028d0` |
| 13 | `def` | [dualTensorHomEquivOfBasis](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhomequivofbasis--6b36feeb34c74b153a5cd4e5.md) | 161 | `declaration-track:6b36feeb34c74b153a5cd4e5f55cff9044f9a3b06e5ab5ef01df6cba7095b752` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhomequivofbasis-apply--0691c61b6c9ceab7c5c855bf.md) | 177 | `result-track:0691c61b6c9ceab7c5c855bfcbbfed48b9815dba25ed197385b81d4ab961f198` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhomequivofbasis-tolinearmap--79c778e0188899c183d08845.md) | 183 | `result-track:79c778e0188899c183d088457bf98872ac2bf8b0728006b8d5f9ed8b79e70440` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhomequivofbasis-symm-cancel-left--a1c3a54066ee1187e262c967.md) | 191 | `result-track:a1c3a54066ee1187e262c9670f04d0deeda8ababa76d18480e816a6f04d1cd5d` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhomequivofbasis-symm-cancel-right--33a4aa12fbca69c72ffab6cd.md) | 198 | `result-track:33a4aa12fbca69c72ffab6cd82795a43e26a74fb7d9a29dcd07b72efc2182035` |
| 18 | `def` | [dualTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/dualtensorhomequiv--e64dc5b1cc77dddb85d6d121.md) | 210 | `declaration-track:e64dc5b1cc77dddb85d6d121d135d126c27bdf8ab6912ad89828df14f99b6c92` |
| 19 | `def` | [lTensorHomEquivHomLTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/ltensorhomequivhomltensor--58d585b6bc7d793a7745adb6.md) | 238 | `declaration-track:58d585b6bc7d793a7745adb610594de95f31c01e4623781f15f9020d7a2826f3` |
| 20 | `def` | [rTensorHomEquivHomRTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/rtensorhomequivhomrtensor--817e66680b317a29d6ced1dc.md) | 248 | `declaration-track:817e66680b317a29d6ced1dc621fbd1e08da68a1b3a258d00809a95361e7ed55` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/ltensorhomequivhomltensor-tolinearmap--9959a98512bd50aac48282c7.md) | 254 | `result-track:9959a98512bd50aac48282c75dcad35f7a8cf2488d7a40b887fdc4d0390e04e7` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/rtensorhomequivhomrtensor-tolinearmap--4d2a8c4c86669735df091012.md) | 269 | `result-track:4d2a8c4c86669735df09101220f487723bc40636707f3164354a5fd1388b83e3` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/ltensorhomequivhomltensor-apply--40377bc7e2425db6a5e099cc.md) | 286 | `result-track:40377bc7e2425db6a5e099cc33a1ae1cec27aa6d884e0a62cab7464cd0b38c1a` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/rtensorhomequivhomrtensor-apply--ce0005cbbda70cbec98d91ca.md) | 292 | `result-track:ce0005cbbda70cbec98d91ca522b76a852d66faba30661f5a6f1e7cf5d7154c9` |
| 25 | `def` | [homTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/homtensorhomequiv--43acd4fa369a9696e19d181f.md) | 303 | `declaration-track:43acd4fa369a9696e19d181f66c104a434ce07e80eee5769019c3071209e5110` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/homtensorhomequiv-tolinearmap--3240097c6f4adb83dc002fd0.md) | 310 | `result-track:3240097c6f4adb83dc002fd0ea361d655ab078a7ffaf262331666ef4a002d21c` |
| 27 | `theorem` | [homTensorHomEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean/declarations/homtensorhomequiv-apply--3f19583b9cfac460660f70c2.md) | 323 | `result-track:3f19583b9cfac460660f70c2b93c6c1dc43c697426ad8e12735ae2bacec3af4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
