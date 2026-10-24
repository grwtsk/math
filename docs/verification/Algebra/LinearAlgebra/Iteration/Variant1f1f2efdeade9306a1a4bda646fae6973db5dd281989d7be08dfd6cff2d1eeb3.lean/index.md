# Verification target: GRWTSK.Algebra.LinearAlgebra.Iteration.Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a1beba947f391fde33185f3803498b58257959d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a1beba947f391fde33185f3803498b58257959d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Application.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterate](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/declarations/iterate--16155606e65fb7b8e9a92f1b.md) | 11 | `declaration-track:16155606e65fb7b8e9a92f1b2d9911801363b49a65fcaeff01a431ccdb60a9e9` |
| 2 | `theorem` | [iterate_zero](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/declarations/iterate-zero--bc34dc6a389db32b624b2002.md) | 19 | `result-track:bc34dc6a389db32b624b2002d2e07cc7672ec21e96a31dc93cc4a8723d1a3b34` |
| 3 | `theorem` | [iterate_succ](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/declarations/iterate-succ--28e7556da1e1dba385eeaf04.md) | 26 | `result-track:28e7556da1e1dba385eeaf04f6c1226464f9c3c7ae3c6b74ec2b3883f4ea8d39` |
| 4 | `def` | [orbit](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/declarations/orbit--5a8d4966bb5ec4b170c56b54.md) | 35 | `declaration-track:5a8d4966bb5ec4b170c56b540d89e13d09d5d4822d8479e0489add6332388917` |
| 5 | `theorem` | [orbit_zero](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/declarations/orbit-zero--46480591f19f6e20c8e09c3b.md) | 42 | `result-track:46480591f19f6e20c8e09c3b7840314012836ca29c9e88f44b03565b077b7b5d` |
| 6 | `theorem` | [orbit_succ](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean/declarations/orbit-succ--6bd775bd55b278bf239af48b.md) | 49 | `result-track:6bd775bd55b278bf239af48bc96fb84c4fe0c03567b96b463ac796d4d58cd2f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
