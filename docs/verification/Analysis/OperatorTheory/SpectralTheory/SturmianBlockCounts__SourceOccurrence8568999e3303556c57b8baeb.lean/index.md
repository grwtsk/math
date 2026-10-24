# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianBlockCounts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80854f59fdec0fa8d0bd5503b59e8b8055fb48d8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80854f59fdec0fa8d0bd5503b59e8b8055fb48d8`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bit_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/bit-origin-to-phase--cba410ade77133a3c3831b64.md) | 23 | `result-track:cba410ade77133a3c3831b6477f8e8d19427c66e459505a5888d882383d18a57` |
| 2 | `theorem` | [potential_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/potential-origin-to-phase--510de0a5e377cfb2ed0ceb00.md) | 28 | `result-track:510de0a5e377cfb2ed0ceb004bb18b8c223deff49557c3c90405cea6c84038ce` |
| 3 | `theorem` | [hamiltonian_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/hamiltonian-origin-to-phase--49faa8e123ad185f658c09b1.md) | 33 | `result-track:49faa8e123ad185f658c09b10a3700641e0529751f38016f652ea72a63369639` |
| 4 | `theorem` | [count_origin_to_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/count-origin-to-phase--76006fe68e66413c946eb9f2.md) | 45 | `result-track:76006fe68e66413c946eb9f26b46b0a22286393a3252276ed85f2eb85967810a` |
| 5 | `theorem` | [count_le_volume](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/count-le-volume--5bb26397a7bac56153cf7082.md) | 51 | `result-track:5bb26397a7bac56153cf70826d8012c643780caf0605764cee18f6a0db43b90c` |
| 6 | `def` | [blockCountSum](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/blockcountsum--12d2471d585a1792755aa205.md) | 58 | `declaration-track:12d2471d585a1792755aa205f24c740274268b287efb33e086d4fe1c6b798bc6` |
| 7 | `theorem` | [blockCountSum_phase](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/blockcountsum-phase--e40cd16a0b8c66f3076bb422.md) | 62 | `result-track:e40cd16a0b8c66f3076bb422d0a05491b3453075f552616d186caafe4db8f500` |
| 8 | `theorem` | [blockCountSum_succ](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/blockcountsum-succ--0b032c577f91cdbeae6d6cb9.md) | 73 | `result-track:0b032c577f91cdbeae6d6cb96dd79e0170e9cb0708fdafbe1f560ad043166e7f` |
| 9 | `theorem` | [block_count_error_with_remainder](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/block-count-error-with-remainder--93b16359fc8c491dc41ada9f.md) | 89 | `result-track:93b16359fc8c491dc41ada9f49fbfdf264027457835016d14643b53192dc23ee` |
| 10 | `theorem` | [complete_block_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/complete-block-count-error--10507b69a3b7b4ec48eee6cb.md) | 119 | `result-track:10507b69a3b7b4ec48eee6cb579f7d8f597c3d9509a8191b2862320d7de5d5ed` |
| 11 | `theorem` | [block_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/block-count-error--6eaa7d73089cb5e869596c18.md) | 137 | `result-track:6eaa7d73089cb5e869596c1853faa2e98eed768aa743bbe6322f39aa34b5914a` |
| 12 | `theorem` | [normalized_block_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/normalized-block-count-error--fc32cbe17ea3a701ae8a7605.md) | 157 | `result-track:fc32cbe17ea3a701ae8a76050f0b904a1cc4af9f1947ddb54a0bf475744558f2` |
| 13 | `theorem` | [finite_block_approximation](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence8568999e3303556c57b8baeb.lean/declarations/finite-block-approximation--33cbbcce8d7580a9d0eef341.md) | 169 | `result-track:33cbbcce8d7580a9d0eef3414168dff9484404fd78ea526b761d1945ab964f69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
