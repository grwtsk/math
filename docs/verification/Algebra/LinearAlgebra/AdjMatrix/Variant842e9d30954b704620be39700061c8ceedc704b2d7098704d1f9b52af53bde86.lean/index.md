# Verification target: GRWTSK.Algebra.LinearAlgebra.AdjMatrix.Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "548bbadda9ef2b01da08ca37039db9bb4c78db80",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `548bbadda9ef2b01da08ca37039db9bb4c78db80`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/isadjmatrix--0e4c7a75e7019635200fa834.md) | 61 | `declaration-track:0e4c7a75e7019635200fa8345cb4098a763a58b3809568a9729ba06bbe605f38` |
| 2 | `theorem` | [apply_diag_ne](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/apply-diag-ne--5a3a46f548a813b99bd34eb6.md) | 72 | `result-track:5a3a46f548a813b99bd34eb6d1fd1c620604ff7bf56311f31398f73c911167ea` |
| 3 | `theorem` | [apply_ne_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/apply-ne-one-iff--71954944a27f255cc8efc5ce.md) | 77 | `result-track:71954944a27f255cc8efc5ce1186e9d58f8237d752f29e570de43b28080b485b` |
| 4 | `theorem` | [apply_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/apply-ne-zero-iff--48bef9b7bec906a45ce2fdf7.md) | 82 | `result-track:48bef9b7bec906a45ce2fdf72ef7740a267d671dc1a70b2f242da618d8516817` |
| 5 | `def` | [toGraph](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/tograph--ee4ee38a15928c433ce37cd7.md) | 89 | `declaration-track:ee4ee38a15928c433ce37cd7f625e4d18d2b46198c11324218a6df01f4db8c8b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/instance--977f598ec0971dab494ac7d3.md) | 95 | `declaration-track:977f598ec0971dab494ac7d34e263d3d743efe91c7b1f3c7f92f88161e82637d` |
| 7 | `def` | [compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/compl--82808332a68cde25a0db965e.md) | 104 | `declaration-track:82808332a68cde25a0db965ef98b8cc50a55bf5499d3ade39be19bb7200a86da` |
| 8 | `theorem` | [compl_apply_diag](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/compl-apply-diag--55311b6eb8ba0c729799bd87.md) | 113 | `result-track:55311b6eb8ba0c729799bd87724bf2c8881cab8890c906bb3e143ce8e80f89c5` |
| 9 | `theorem` | [compl_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/compl-apply--115687f9b85ed41a6ccbef42.md) | 117 | `result-track:115687f9b85ed41a6ccbef4238ba9feb38daccb90d92db2219bf215655eb7c19` |
| 10 | `theorem` | [isSymm_compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/issymm-compl--69d529110f961bf0a6d3dd07.md) | 123 | `result-track:69d529110f961bf0a6d3dd0792ffbc0c97ce25f0b90fc9b404407321aff86d36` |
| 11 | `theorem` | [isAdjMatrix_compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/isadjmatrix-compl--03b5c21d7be574c29a3e04c1.md) | 129 | `result-track:03b5c21d7be574c29a3e04c1cc5a1aef372b4348ba1796e65eb8270bfa762320` |
| 12 | `theorem` | [compl](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/compl--281f37ca3ebc6413fa5223f5.md) | 138 | `result-track:281f37ca3ebc6413fa5223f57b066b02ab5ed3709fde7f79c5022f2a53df47fa` |
| 13 | `theorem` | [toGraph_compl_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/tograph-compl-eq--654977f5a1ed1295a0a60418.md) | 142 | `result-track:654977f5a1ed1295a0a604184675d4d4d37345320fb51900fd4dcf7bee6fe5a7` |
| 14 | `def` | [adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix--2c1b557e157e732036691115.md) | 164 | `declaration-track:2c1b557e157e732036691115ded368530a3bb2b1db8e07959abfe3b04d376018` |
| 15 | `theorem` | [adjMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-apply--bcc5204f5ecd99f9a63355f2.md) | 172 | `result-track:bcc5204f5ecd99f9a63355f29c49d842850ed39143a99c363dac01fdd828dd17` |
| 16 | `theorem` | [transpose_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/transpose-adjmatrix--e38af5389a6f407df4fba2b2.md) | 178 | `result-track:e38af5389a6f407df4fba2b24c803807c1efaa49c60c8e1c24ab2af61c3fd204` |
| 17 | `theorem` | [isSymm_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/issymm-adjmatrix--5b096781ffc4d87649d42ad8.md) | 184 | `result-track:5b096781ffc4d87649d42ad87dd7e0808a169a4400f310f07b3b469516002027` |
| 18 | `theorem` | [isAdjMatrix_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/isadjmatrix-adjmatrix--ed8d5c19644e457116b56842.md) | 192 | `result-track:ed8d5c19644e457116b56842389514320f5107a19f62ca4d7a047b7339cfe4e9` |
| 19 | `theorem` | [toGraph_adjMatrix_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/tograph-adjmatrix-eq--c90add30f3a104201299b8db.md) | 197 | `result-track:c90add30f3a104201299b8db6681934272a87770876bc8de4eeea4e98001cb63` |
| 20 | `theorem` | [adjMatrix_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-dotproduct--c3d8d9eb57b7ebb108b48fb6.md) | 207 | `result-track:c3d8d9eb57b7ebb108b48fb649d85319482f10841cceb38edfa815ee1079a92a` |
| 21 | `theorem` | [dotProduct_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/dotproduct-adjmatrix--b984c63937051860cfcfd120.md) | 213 | `result-track:b984c63937051860cfcfd120234e69e43ea51fa658c3a358966b04c9acdacf6e` |
| 22 | `theorem` | [adjMatrix_mulVec_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-mulvec-apply--419db88a820abe3de154b5fc.md) | 219 | `result-track:419db88a820abe3de154b5fc5db53eac09dc1827dc632757ce7da17862043c6b` |
| 23 | `theorem` | [adjMatrix_vecMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-vecmul-apply--b6bc5c216ccd0100293197fc.md) | 225 | `result-track:b6bc5c216ccd0100293197fc3189781678f412ada05c6aeba033fc96a1f556fc` |
| 24 | `theorem` | [adjMatrix_mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-mul-apply--771b504e7794a406ff23eda2.md) | 233 | `result-track:771b504e7794a406ff23eda2714c79a80de5b69bf9ebf5ecbc9282dc2a4f72e7` |
| 25 | `theorem` | [mul_adjMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/mul-adjmatrix-apply--412f938d137375d7a5cb1bf2.md) | 239 | `result-track:412f938d137375d7a5cb1bf237f395dcdf5344fab74c7e717cfaec3216bf76e1` |
| 26 | `theorem` | [trace_adjMatrix](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/trace-adjmatrix--5f9dd0197f1baae615057b54.md) | 247 | `result-track:5f9dd0197f1baae615057b5459ec5eb769a7f7bfb51e5ce64276065dca558cbe` |
| 27 | `theorem` | [adjMatrix_mul_self_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-mul-self-apply-self--69b9f505e4419776793a29e2.md) | 253 | `result-track:69b9f505e4419776793a29e29b4dcb05e3ffa1e9e3e658be91c49685d36bdbd9` |
| 28 | `theorem` | [adjMatrix_mulVec_const_apply](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-mulvec-const-apply--a1e579aca860e173031c7aa4.md) | 260 | `result-track:a1e579aca860e173031c7aa46d45f792be00bd6806f504ebe80ac6ebf94231eb` |
| 29 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-mulvec-const-apply-of-regular--d559c56298dbc3cecc2ba8da.md) | 264 | `result-track:d559c56298dbc3cecc2ba8da795baf7507db4c264d46be2b68c6f33f1c8d03b4` |
| 30 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-pow-apply-eq-card-walk--75ecd6a1bbf3f9fae905c768.md) | 269 | `result-track:75ecd6a1bbf3f9fae905c768615fc48550c32b30f043b3a6ed964ead407e3568` |
| 31 | `theorem` | [adjMatrix_toGraph_eq](../../../../../mathematics/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean/declarations/adjmatrix-tograph-eq--33e907bd8fd3b44c98d0e66b.md) | 300 | `result-track:33e907bd8fd3b44c98d0e66bedaa6527604235eff442389a56e3143e9339f82f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
