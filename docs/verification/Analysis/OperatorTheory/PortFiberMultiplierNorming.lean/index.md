# Verification target: GRWTSK.Interfaces.PortFiberMultiplierNorming

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d706a44da23cb048713a4942e17cdea5e3bddbf3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberMultiplierNorming.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d706a44da23cb048713a4942e17cdea5e3bddbf3`.

Source path: `GRWTSK/Interfaces/PortFiberMultiplierNorming.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberMultiplierNorming.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberMultiplierComplete`](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierComplete.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorming.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/schemaversion--b6e2c07a63ae84d3f2979290.md) | 32 | `declaration-track:b6e2c07a63ae84d3f29792902710055506f01e8cfb91679d5817b45dce8f2421` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/addedindex--b38f343336845b934300c43a.md) | 34 | `declaration-track:b38f343336845b934300c43a5474cad119dfe8a311e0f3280e60ed2e41d06479` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/addedclaim--6b694921e51ad5445fe436a8.md) | 45 | `declaration-track:6b694921e51ad5445fe436a87d710e23287b27f764f957f3c46b219027c73a0f` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/addedclaim-proof--8958478f3873e010b93166a6.md) | 102 | `result-track:8958478f3873e010b93166a6db18e54bc8623d09df95c1e43cf2b5298624b717` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/portfolio--ede2b6e3f4f252a16a4db3e6.md) | 132 | `declaration-track:ede2b6e3f4f252a16a4db3e6f93a6bc607b32e46ccb677956f8d7d6d62b71b1f` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/architecture--c08f34d79fd8b21f0910ec17.md) | 135 | `declaration-track:c08f34d79fd8b21f0910ec1785ce40d22dc56d12bcf675bb412795edf275a64d` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/previousindex--99d26d5baa7c00944e51d334.md) | 139 | `declaration-track:99d26d5baa7c00944e51d334a733411f32a82b9a1acc62ea2d8fbcfdcc02524b` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/original-branch-unchanged--5b73a613153515bae4764e36.md) | 143 | `result-track:5b73a613153515bae4764e365f04808de057f6dc07b134ccd44e53d81621c529` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/new-branch-proved--49475cb3af86b964dd6ee3d1.md) | 149 | `result-track:49475cb3af86b964dd6ee3d104af6501723050bb3d194e965a9684f426f5865c` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/target-unchanged--dac652bf51374ea206535c5f.md) | 154 | `result-track:dac652bf51374ea206535c5f10cccbec4d876ece49b6d8fdbda17ca778f4fedb` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/OperatorTheory/PortFiberMultiplierNorming.lean/declarations/retarget-preserves-new--e37bfdecb13bc7cb6bfcbe1f.md) | 159 | `result-track:e37bfdecb13bc7cb6bfcbe1f39fedef067768445c226175bf0bb61f9c6ac5a97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
