# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Subring.Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4bb9e8b004cd94e5c06c37418660c98bdce601c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4bb9e8b004cd94e5c06c37418660c98bdce601c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Coeff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_map_rangeS](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean/declarations/mem-map-ranges--9be9d69bf429f1484da40acc.md) | 29 | `result-track:9be9d69bf429f1484da40acc4101995145f2e9fd513bb6c526f61bf57d701e54` |
| 2 | `theorem` | [mem_map_range](../../../../../mathematics/Algebra/CommutativeAlgebra/Subring/Variant14577fcfb444c7020d8d14cfa9a21afd6cd29944a8a88e2f49b1625696c7bfe0.lean/declarations/mem-map-range--fa6cf5920470ae67381d155e.md) | 42 | `result-track:fa6cf5920470ae67381d155efa9f535028354bed1575967b13ce01967a273ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
