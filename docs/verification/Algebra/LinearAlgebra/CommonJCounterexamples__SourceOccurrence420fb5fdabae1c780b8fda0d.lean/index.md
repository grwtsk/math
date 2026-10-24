# Verification target: GRWTSK.LinearAlgebra.CommonJCounterexamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f509533c901778e25ca8e4bc6b42e33bd3232a96",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/CommonJCounterexamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f509533c901778e25ca8e4bc6b42e33bd3232a96`.

Source path: `GRWTSK/LinearAlgebra/CommonJCounterexamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/CommonJCounterexamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Diagonal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hostileUpper](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/hostileupper--f4019d38cabc9974e25540f1.md) | 27 | `declaration-track:f4019d38cabc9974e25540f115f32de59f9ac45899ab5fc8fcf2002abac2eefc` |
| 2 | `def` | [hostileLower](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/hostilelower--2a2fab31bbb7224132d88806.md) | 40 | `declaration-track:2a2fab31bbb7224132d888065f033293ac733eae8a8cdb40694c51494c08786f` |
| 3 | `def` | [hostileSign](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/hostilesign--57bf8511ebf2b73130375245.md) | 53 | `declaration-track:57bf8511ebf2b731303752450b33c1e54ce7e4733ec1e26b50fa71abaa4208dd` |
| 4 | `theorem` | [hostileUpper_sign_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/hostileupper-sign-inverse--c0f26d7a787e96b1de014ac6.md) | 66 | `result-track:c0f26d7a787e96b1de014ac6858f95cd713de8907d6da2b9c9331b3b0208103f` |
| 5 | `theorem` | [hostileLower_sign_inverse](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/hostilelower-sign-inverse--7f4399c552277cd025818efb.md) | 76 | `result-track:7f4399c552277cd025818efb57fa9df01e9eac8ffd8216b8a10022c0c74b00b3` |
| 6 | `theorem` | [noncommuting_sign_loop_fails](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/noncommuting-sign-loop-fails--a3d924f53c4eb20c3917f4d9.md) | 86 | `result-track:a3d924f53c4eb20c3917f4d9ce15b7a69eb33d7188c56f007ee061f01ab72cbb` |
| 7 | `theorem` | [hostile_edges_noncommute](../../../../mathematics/Algebra/LinearAlgebra/CommonJCounterexamples__SourceOccurrence420fb5fdabae1c780b8fda0d.lean/declarations/hostile-edges-noncommute--ae3948d77ab1275a3e0bff9c.md) | 97 | `result-track:ae3948d77ab1275a3e0bff9c5b30bb6fbea757d5d3640fa88d4e6d862229df38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
