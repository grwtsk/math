# Verification target: GRWTSK.LinearAlgebra.BoundedGaugeHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff2c5ac6814b8175e971826dca08894ab0c009cd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff2c5ac6814b8175e971826dca08894ab0c009cd`.

Source path: `GRWTSK/LinearAlgebra/BoundedGaugeHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/BoundedGaugeHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.CocycleProduct`](../../../../mathematics/Algebra/LinearAlgebra/CocycleProduct__SourceOccurrenceee4f1613d9e3f472b7ae66c4.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [height_triple_le](../../../../mathematics/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/declarations/height-triple-le--9ae45053a4684208b1199240.md) | 40 | `result-track:9ae45053a4684208b119924060abb1ebc7bf1bc6492de67a858bd464d1939a25` |
| 2 | `theorem` | [height_triple_of_bounded_ends](../../../../mathematics/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/declarations/height-triple-of-bounded-ends--989d29e7ad72ae033ea9ef46.md) | 54 | `result-track:989d29e7ad72ae033ea9ef4665e35bb81b5f698d345b143b8d7407353c109bdc` |
| 3 | `theorem` | [cocycle_gauge_height_sandwich](../../../../mathematics/Algebra/LinearAlgebra/BoundedGaugeHeight.lean/declarations/cocycle-gauge-height-sandwich--2235a7a131974bc21cf1c892.md) | 81 | `result-track:2235a7a131974bc21cf1c8927ddef5e15c32791dbc5ee58331d76e5a2145c598` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
