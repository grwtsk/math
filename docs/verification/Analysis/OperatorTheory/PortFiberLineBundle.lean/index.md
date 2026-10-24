# Verification target: GRWTSK.Interfaces.PortFiberLineBundle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "913e2c3fddd3feddc0ad69d1d5b3b1bb7a18674f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberLineBundle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `913e2c3fddd3feddc0ad69d1d5b3b1bb7a18674f`.

Source path: `GRWTSK/Interfaces/PortFiberLineBundle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberLineBundle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberIndexedCoverDescent`](../../../../mathematics/Geometry/AlgebraicGeometry/PortFiberIndexedCoverDescent.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLinePort`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/addedindex--044dafda476d9e54b80ae5e4.md) | 23 | `declaration-track:044dafda476d9e54b80ae5e44807818019942231d8fbd2002fb87ddca68c7f1a` |
| 2 | `def` | [AddedClaim](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/addedclaim--da2b6431282ea924b9269669.md) | 33 | `declaration-track:da2b6431282ea924b9269669abd9e6b18753b8e3e06a8874e0dcfea1c5cccf9d` |
| 3 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/addedclaim-proof--17864531aa7d759d3d570a7b.md) | 61 | `result-track:17864531aa7d759d3d570a7be088738af65c5e7acbc781c3ff3c1b419b7a0d15` |
| 4 | `def` | [portfolio](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/portfolio--d4642d68fecc83e35f8bf3c6.md) | 82 | `declaration-track:d4642d68fecc83e35f8bf3c6030d0dde52894a953b08f02bc3ed7b5090174c24` |
| 5 | `def` | [architecture](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/architecture--16805400c9e257c2a33ce1b0.md) | 85 | `declaration-track:16805400c9e257c2a33ce1b08d6d395d7a98bdcc3007c40f4dc1bf559a30bfe6` |
| 6 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/previousindex--f55777524f45068c981d9995.md) | 89 | `declaration-track:f55777524f45068c981d999504b81bac26e20088efbba33626455f3a765af543` |
| 7 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/original-branch-unchanged--39f023cede9464737930ab91.md) | 96 | `result-track:39f023cede9464737930ab911a7980347f15c3ca6898aca63fda4685e24ab895` |
| 8 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/target-unchanged--158c36c150fcf9881b17f38f.md) | 102 | `result-track:158c36c150fcf9881b17f38fd6524e0f6c9fa2cb86f2a39e53b92ce3ca850e64` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/new-branch-proved--ae11dd7401715728f6539c24.md) | 107 | `result-track:ae11dd7401715728f6539c24b2b47f1d0aef00412c1e3aee99b53a032ce0592e` |
| 10 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/OperatorTheory/PortFiberLineBundle.lean/declarations/retarget-preserves-new--402c15b48f7ea3ea80462846.md) | 112 | `result-track:402c15b48f7ea3ea80462846ffb56de933afdfcd46d032aba8d8314d2f2f39ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
