# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DivisibleDensityRow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3678142a7d3053e82e01fc5bb6f2ff899721b7e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3678142a7d3053e82e01fc5bb6f2ff899721b7e`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityMoebius`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityMoebius.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Prime.Infinite` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisible_density_row_at_cutoff](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/declarations/divisible-density-row-at-cutoff--0d3f74efb97459bdc3eead3f.md) | 19 | `result-track:0d3f74efb97459bdc3eead3ffd0c88f8a2d0c14e98ae3d5543c1348f9939fa36` |
| 2 | `theorem` | [prime_divisible_density_row_at_cutoff](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/declarations/prime-divisible-density-row-at-cutoff--7da2e63c071444a25fa61617.md) | 35 | `result-track:7da2e63c071444a25fa61617cd6f6d91aecec08ff576ed180218b022424cb9ae` |
| 3 | `theorem` | [prime_divisible_row_exceeds_inverse_square](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DivisibleDensityRow.lean/declarations/prime-divisible-row-exceeds-inverse-square--b4d405b99a356842ee985dfb.md) | 44 | `result-track:b4d405b99a356842ee985dfb5db4642f3436ff3b00e0bc71dedf88ee15115f72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
