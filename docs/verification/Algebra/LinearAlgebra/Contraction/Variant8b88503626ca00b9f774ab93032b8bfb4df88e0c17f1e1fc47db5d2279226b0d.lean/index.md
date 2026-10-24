# Verification target: GRWTSK.Algebra.LinearAlgebra.Contraction.Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc211468a78270a1b2ffb9273270fd6d8692643a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc211468a78270a1b2ffb9273270fd6d8692643a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/contractleft--59e311ec7fdb8470978ea352.md) | 58 | `declaration-track:59e311ec7fdb8470978ea35219f5c1f47342c14642dd2946b7f9163b3dc4b118` |
| 2 | `def` | [contractRight](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/contractright--0dcb31841baf3460358db866.md) | 64 | `declaration-track:0dcb31841baf3460358db866e6aca6aa9c9e4e4dacae12c31a15375bddaa108c` |
| 3 | `def` | [dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhom--a82049a581c8caa8a6c35bb5.md) | 70 | `declaration-track:a82049a581c8caa8a6c35bb59edeb908fb1581a0f4e99c915da172afede3bf16` |
| 4 | `theorem` | [contractLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/contractleft-apply--7e52a5847e940251e2969341.md) | 78 | `result-track:7e52a5847e940251e29693411160f43a227288f910cb219ceca0ce43bf11df06` |
| 5 | `theorem` | [contractRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/contractright-apply--a1583a2cf6fd40f9a1ba6aa8.md) | 83 | `result-track:a1583a2cf6fd40f9a1ba6aa88bbb4a792e67b94883dd46873e940300a0d12c93` |
| 6 | `theorem` | [dualTensorHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhom-apply--d73f5b9543e4b24a02b20eeb.md) | 88 | `result-track:d73f5b9543e4b24a02b20eeb95a8646d41eeb73ce4343787aeb40007473be296` |
| 7 | `theorem` | [transpose_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/transpose-dualtensorhom--2c2c272dd0cdf8b3a56acade.md) | 94 | `result-track:2c2c272dd0cdf8b3a56acade13f6d75cdf47596f6b0d7996116c8cc9c06aa3f7` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhom-prodmap-zero--3b02db9a1afc555a55ea4280.md) | 105 | `result-track:3b02db9a1afc555a55ea42802a065fb1877b3017f13526f217ef8cdbaeec3d98` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/zero-prodmap-dualtensorhom--eefaac33af48cddeb0d2fbe3.md) | 114 | `result-track:eefaac33af48cddeb0d2fbe363eb18d7064204229d0ea02e887724b932c87504` |
| 10 | `theorem` | [map_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/map-dualtensorhom--80db09554ce1746eda05df95.md) | 122 | `result-track:80db09554ce1746eda05df951e4e93a06c285064fa363f821fa4eb7ea018d7f9` |
| 11 | `theorem` | [comp_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/comp-dualtensorhom--e76bb5afab5df29aef149029.md) | 131 | `result-track:e76bb5afab5df29aef149029fc4988951d503116696c84a3e3dd285bbd45b345` |
| 12 | `theorem` | [toMatrix_dualTensorHom](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/tomatrix-dualtensorhom--9a8c0933b5bbb03e9092f4ac.md) | 142 | `result-track:9a8c0933b5bbb03e9092f4ac6dbadfd46f46328b4aebe2414bc6b2e1f7d7c984` |
| 13 | `def` | [dualTensorHomEquivOfBasis](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhomequivofbasis--6b9f99d8f3b1177542ba6913.md) | 169 | `declaration-track:6b9f99d8f3b1177542ba69132029d47787e5ddce3019fa4e848d4c67b56655b0` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhomequivofbasis-apply--bd91485bd626e23634781347.md) | 185 | `result-track:bd91485bd626e23634781347944744b508297197c8cf9740911eb6ba6fbf98a2` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhomequivofbasis-tolinearmap--fd5e65349988915d763d73b8.md) | 191 | `result-track:fd5e65349988915d763d73b8d251d5209ee269fb1d01a3be3abb5052fd919b12` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhomequivofbasis-symm-cancel-left--1b05ab8cdb096156a9dd319d.md) | 199 | `result-track:1b05ab8cdb096156a9dd319d2cb3b7b34c8df6f59d8ca521647fdce17370fb5e` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhomequivofbasis-symm-cancel-right--9873009e714bc1131c3712d4.md) | 206 | `result-track:9873009e714bc1131c3712d445336906a99f98d19294b8f960322e76e7e98835` |
| 18 | `def` | [dualTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/dualtensorhomequiv--b9a8fd54096dc44c80109ef9.md) | 218 | `declaration-track:b9a8fd54096dc44c80109ef949de2ec090162c36073e054d97706bff4722eb8b` |
| 19 | `def` | [lTensorHomEquivHomLTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/ltensorhomequivhomltensor--c937cb87d216aeb6567201b9.md) | 246 | `declaration-track:c937cb87d216aeb6567201b9ac12436f1522d60b76ef19b3fe231f70623075ea` |
| 20 | `def` | [rTensorHomEquivHomRTensor](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/rtensorhomequivhomrtensor--91cd71a320f4d9ccd9de20ab.md) | 256 | `declaration-track:91cd71a320f4d9ccd9de20abf4287a5e15b3e3396241a4a7a2b06b83148f2cda` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/ltensorhomequivhomltensor-tolinearmap--70a75b5e01e527e0638d271b.md) | 262 | `result-track:70a75b5e01e527e0638d271b1824d0635c5f8d3b2af638279b482566e1466f1e` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/rtensorhomequivhomrtensor-tolinearmap--4ff7bfa088c89d998bcb7518.md) | 277 | `result-track:4ff7bfa088c89d998bcb7518ca1debd61cc5be8d493a04847c1716999145bf2f` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/ltensorhomequivhomltensor-apply--237bc8e7567f2231d132cf8b.md) | 294 | `result-track:237bc8e7567f2231d132cf8bd59c51620aa51faad8ad50074fc319ae78307b15` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/rtensorhomequivhomrtensor-apply--e61d9a3306fb1cee6c9e96c6.md) | 300 | `result-track:e61d9a3306fb1cee6c9e96c6d983c44de223eee5e23095a20545b366b34520c1` |
| 25 | `def` | [homTensorHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/homtensorhomequiv--6fb36b747ae006112937f912.md) | 311 | `declaration-track:6fb36b747ae006112937f912a0bf6be25af00ba1c889bfd1ba72a9a9998274e1` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/homtensorhomequiv-tolinearmap--7590fa3afb71fed026a2bf1f.md) | 318 | `result-track:7590fa3afb71fed026a2bf1f29330d8fce3d7ace410bfeeb6663ac5ed53e1f90` |
| 27 | `theorem` | [homTensorHomEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Contraction/Variant8b88503626ca00b9f774ab93032b8bfb4df88e0c17f1e1fc47db5d2279226b0d.lean/declarations/homtensorhomequiv-apply--3de1064884eec00824bbc031.md) | 331 | `result-track:3de1064884eec00824bbc03167c65270fbdbcfe40ae0a9205a0b836adc6fdcd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
