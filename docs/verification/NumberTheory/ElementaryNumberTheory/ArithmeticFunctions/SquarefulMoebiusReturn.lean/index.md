# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.SquarefulMoebiusReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c87aec058ab6ac87d894b33ce8944e59f78ca61b",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c87aec058ab6ac87d894b33ce8944e59f78ca61b`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Real.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [low_high_eq_iff_not_squarefree](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/declarations/low-high-eq-iff-not-squarefree--0c2546ea737c4454e7bd4ee7.md) | 20 | `result-track:0c2546ea737c4454e7bd4ee7c686452432c1cda553965dec1a6117f7ec0eb19f` |
| 2 | `theorem` | [weighted_squareful_low_high_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefulMoebiusReturn.lean/declarations/weighted-squareful-low-high-cancel--c739649e8729fbc54d016a99.md) | 36 | `result-track:c739649e8729fbc54d016a994e5c1d743f13b2924200f58f12d08f0ae715ddd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
