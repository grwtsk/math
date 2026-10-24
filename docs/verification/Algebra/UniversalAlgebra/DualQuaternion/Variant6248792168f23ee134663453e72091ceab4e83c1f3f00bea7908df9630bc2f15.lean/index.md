# Verification target: GRWTSK.Algebra.UniversalAlgebra.DualQuaternion.Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1178645b683e5a0cf187ca7f6c1825fbc295fd2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1178645b683e5a0cf187ca7f6c1825fbc295fd2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Quaternion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/dualnumberequiv--8498c788df2d57b64417832b.md) | 34 | `declaration-track:8498c788df2d57b64417832b9d39030685ae36d7ab3140aa2d13144becbee197` |
| 2 | `theorem` | [re_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/re-fst-dualnumberequiv--73e95a1e0fa277973330167d.md) | 57 | `result-track:73e95a1e0fa277973330167dad7c3de9837d5f083c06d40a95eea86dae68dd15` |
| 3 | `theorem` | [imI_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/imi-fst-dualnumberequiv--3b094711c6a090211447bba6.md) | 62 | `result-track:3b094711c6a090211447bba615489cf92684a21662755258b312ac36a62a861f` |
| 4 | `theorem` | [imJ_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/imj-fst-dualnumberequiv--151bf797a4400545e4b68eb9.md) | 67 | `result-track:151bf797a4400545e4b68eb92b07435fabad6dca55aff2e368b261c5ed7f97e9` |
| 5 | `theorem` | [imK_fst_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/imk-fst-dualnumberequiv--7231ff78beb3e78a846b4cde.md) | 72 | `result-track:7231ff78beb3e78a846b4cdedad8b59b9233c3473e41f3ddfcf058505c134911` |
| 6 | `theorem` | [re_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/re-snd-dualnumberequiv--afcc9ce1c694aeb3c5891e7a.md) | 77 | `result-track:afcc9ce1c694aeb3c5891e7ade354280fe4951f451a2613bb1484083a1a5cc2c` |
| 7 | `theorem` | [imI_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/imi-snd-dualnumberequiv--e75e8b2ec7d0874f59596dce.md) | 82 | `result-track:e75e8b2ec7d0874f59596dce7ff81a894af0e8891bf45b94cdef50c62c4bdfaa` |
| 8 | `theorem` | [imJ_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/imj-snd-dualnumberequiv--b9390a1051024d6426eb2ce7.md) | 87 | `result-track:b9390a1051024d6426eb2ce7ada10786cfb4fa3f4b9983e53db78c7cb711ef46` |
| 9 | `theorem` | [imK_snd_dualNumberEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/imk-snd-dualnumberequiv--4dd1f3695fae9ccac0d96863.md) | 92 | `result-track:4dd1f3695fae9ccac0d96863e09bfbb1b086d807e7c0f44e7bae9b4cf8255b78` |
| 10 | `theorem` | [fst_re_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/fst-re-dualnumberequiv-symm--b1a26fa78d794664413eee43.md) | 97 | `result-track:b1a26fa78d794664413eee43889939c9354383558f9a621ff57fc735508f843c` |
| 11 | `theorem` | [fst_imI_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/fst-imi-dualnumberequiv-symm--7988e1d712ff5fcb530f132f.md) | 102 | `result-track:7988e1d712ff5fcb530f132fa572b26ddf2f61ced86523baeb16cf88d14e9417` |
| 12 | `theorem` | [fst_imJ_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/fst-imj-dualnumberequiv-symm--7d1ded055687a92c94b19282.md) | 107 | `result-track:7d1ded055687a92c94b19282f8304e91afc9fba8f3934507466b06fdbe89a284` |
| 13 | `theorem` | [fst_imK_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/fst-imk-dualnumberequiv-symm--f8a72f5fb777a72bad7d98e1.md) | 112 | `result-track:f8a72f5fb777a72bad7d98e14df7c222ee2849bf92a482d2048649ffce042f32` |
| 14 | `theorem` | [snd_re_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/snd-re-dualnumberequiv-symm--b15fda276ce1a3bb61ef5042.md) | 117 | `result-track:b15fda276ce1a3bb61ef5042c17132a924cf672efeba8000ca8c6ef6956ebda9` |
| 15 | `theorem` | [snd_imI_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/snd-imi-dualnumberequiv-symm--1641e2f3fcde7f8a6766b72e.md) | 122 | `result-track:1641e2f3fcde7f8a6766b72ec1a242dd09115bc003f4c1126dcd932fd09f1e2e` |
| 16 | `theorem` | [snd_imJ_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/snd-imj-dualnumberequiv-symm--7ea78e683323f3fd82bc9da6.md) | 127 | `result-track:7ea78e683323f3fd82bc9da62010ff8f25686be40de947b1dcbc095b366eaa65` |
| 17 | `theorem` | [snd_imK_dualNumberEquiv_symm](../../../../../mathematics/Algebra/UniversalAlgebra/DualQuaternion/Variant6248792168f23ee134663453e72091ceab4e83c1f3f00bea7908df9630bc2f15.lean/declarations/snd-imk-dualnumberequiv-symm--37936c51d2ee7e609a70d073.md) | 132 | `result-track:37936c51d2ee7e609a70d0731d06dd0e2b51a7ab60c03b1f1f15b1129dfdedaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
