# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Checks.Positive.TraceRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26f509909a9c4bcbc62eff2a098eea6d0e6aace9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26f509909a9c4bcbc62eff2a098eea6d0e6aace9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence65258207def83ae64533fa4c.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--dc19a9f3928ab10ec8f9ac45.md) | 12 | `declaration-track:dc19a9f3928ab10ec8f9ac45389adce109b5d73d98c20de32d302aa4acbb8580` |
| 2 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--bf44612a6a5b4a90a352ee4e.md) | 16 | `declaration-track:bf44612a6a5b4a90a352ee4ede71dd93ac5aba1e923c76628163e3e92ae7eef3` |
| 3 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--33d7f68b132f29226e6ab8a7.md) | 22 | `declaration-track:33d7f68b132f29226e6ab8a7c6be4efef594048243645e9a3f021568d56b5622` |
| 4 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--5ae293813815323e0c1432f9.md) | 27 | `declaration-track:5ae293813815323e0c1432f9a9809edfe94bf3b649f20bb33ee67fc00262517a` |
| 5 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--558c8af648dc7ba658bc012c.md) | 35 | `declaration-track:558c8af648dc7ba658bc012c0959d9fda4e34f12a919dd70e41addf248ce0e9b` |
| 6 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--64936ef6abeda3d3f74a52d7.md) | 39 | `declaration-track:64936ef6abeda3d3f74a52d759195b0dcbf994b915fe992c56bbda8700c077a1` |
| 7 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrence72e5178038c89bafbf511bd2.lean/declarations/example--cefacc54fb4d801679f0896f.md) | 42 | `declaration-track:cefacc54fb4d801679f0896fd7063d5f5fd106a050b8c7ac922d199ad9986c72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
