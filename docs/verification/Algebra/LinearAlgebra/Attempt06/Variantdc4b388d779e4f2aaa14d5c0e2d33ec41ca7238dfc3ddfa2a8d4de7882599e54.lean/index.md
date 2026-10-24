# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt06.Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a35a54a1d2f2f056196440253393f50f1ab03db",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a35a54a1d2f2f056196440253393f50f1ab03db`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/cartanmatrix--e848f701f4fc479cf16a1cc4.md) | 22 | `declaration-track:e848f701f4fc479cf16a1cc4b188f549a9747de58044cd5ae8c07f8008d9e74b` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/mutationmatrix-cartan--4543dc9089244a56f734205f.md) | 25 | `result-track:4543dc9089244a56f734205fd047319995c150f920da780a48e38792ea9b1d99` |
| 3 | `theorem` | [mutation_form_entry](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/mutation-form-entry--b41ff54649325889efb3fdbd.md) | 41 | `result-track:b41ff54649325889efb3fdbd0721dcbf8b5e4a8b32ff56f8348625207a8f80d2` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/weightedcartan-symmetric--7b0073121ca9effee7bd8dd2.md) | 57 | `result-track:7b0073121ca9effee7bd8dd2efdfaad1fc6d77d0d1fdb2717b788a4c81ced34d` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/mutationmatrix-weighted-metric--31519570f67331bb0ec58629.md) | 71 | `result-track:31519570f67331bb0ec586295f87763492ec1907f4d8fa9e7b88cb85459e6be9` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/mutationmatrix-symmetric-metric--6927a5c39f27387a9c6a74c0.md) | 89 | `result-track:6927a5c39f27387a9c6a74c029218d2b0608d8489643229776cd2de30d9f2c59` |
| 7 | `theorem` | [mutationMatrix_nonadjacent_commute](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/mutationmatrix-nonadjacent-commute--02b22c1faaafd5f4ad484d77.md) | 97 | `result-track:02b22c1faaafd5f4ad484d7791fbbad92c94a4fd98f92bef64f7330017916f3a` |
| 8 | `theorem` | [cartan_row_square](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/cartan-row-square--25e42b807575747d8b5d3508.md) | 120 | `result-track:25e42b807575747d8b5d35081e32029befb380fb4f61f4940110714ba4847c8d` |
| 9 | `theorem` | [cartan_row_triple](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/cartan-row-triple--6d312ebb975c77c6dc1c03b3.md) | 133 | `result-track:6d312ebb975c77c6dc1c03b3fe5c9c800152acf221b8280954332f8d0705875e` |
| 10 | `theorem` | [mutationMatrix_adjacent_braid](../../../../../mathematics/Algebra/LinearAlgebra/Attempt06/Variantdc4b388d779e4f2aaa14d5c0e2d33ec41ca7238dfc3ddfa2a8d4de7882599e54.lean/declarations/mutationmatrix-adjacent-braid--b0b0dc848d159798069e76f3.md) | 147 | `result-track:b0b0dc848d159798069e76f36c29c2e3dcd6ca2185c5e8aa06fd0de4a91979a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
