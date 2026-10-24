# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CompletionEquivariance.Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26946b2fa85ab788b309ef5c4badc4436d924d59",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26946b2fa85ab788b309ef5c4badc4436d924d59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.Symmetry.Canonical` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletionEquivariance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean/declarations/completionequivariance--7598212c983dd6809f31b367.md) | 14 | `declaration-track:7598212c983dd6809f31b36777594e10fbf827846c61b116c286b32b3f43b847` |
| 2 | `theorem` | [completion_equivariance_preserves_feasibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean/declarations/completion-equivariance-preserves-feasibility--6b84c82943013a0ca98f45c1.md) | 71 | `result-track:6b84c82943013a0ca98f45c11998a21e013a0cd0f5b5ab9c209a286ef7349ba0` |
| 3 | `theorem` | [completion_equivariance_preserves_infeasibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant2ba3ab888cf0050c4795f0f111b6d30da530e066c988271d6f6113cc73f81d1f.lean/declarations/completion-equivariance-preserves-infeasibility--5405f318484a354ad41c0c00.md) | 89 | `result-track:5405f318484a354ad41c0c004c55058f4a59237a1fece32727e79fea7d0d8636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
