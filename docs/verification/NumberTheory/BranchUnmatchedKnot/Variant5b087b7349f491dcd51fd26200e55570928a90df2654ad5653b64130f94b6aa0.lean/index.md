# Verification target: GRWTSK.NumberTheory.BranchUnmatchedKnot.Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a7c3ae55ff1bb89e9100564337f170edd412908",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a7c3ae55ff1bb89e9100564337f170edd412908`.

Source path: `GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Push` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_three_partners_eq_six](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/two-three-partners-eq-six--1994908f586c992e977231d7.md) | 31 | `result-track:1994908f586c992e977231d743bc47130fd7a1a66436edde605584baf1157efe` |
| 2 | `def` | [interiorInventory](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/interiorinventory--88a19c8bfa0edffa94700dd5.md) | 62 | `declaration-track:88a19c8bfa0edffa94700dd559ed03db3e018d04428b383faecd47cd8f44edad` |
| 3 | `theorem` | [mem_interiorInventory](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/mem-interiorinventory--f69eff0528951fd1b7a63e53.md) | 66 | `result-track:f69eff0528951fd1b7a63e5345d0d4f352304aae3341834e1234b6dd6aa68a59` |
| 4 | `theorem` | [interiorInventory_mem_closed_cutoff](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/interiorinventory-mem-closed-cutoff--9bc9791ca35f1008729ff382.md) | 71 | `result-track:9bc9791ca35f1008729ff382476557118e6447ea375bd8967909ac1d31296a61` |
| 5 | `theorem` | [exists_unmatched_index](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/exists-unmatched-index--cfe3ed5e54fe8099c694195c.md) | 77 | `result-track:cfe3ed5e54fe8099c694195c905ec77315edf14328b85b820703f99f107673f6` |
| 6 | `theorem` | [unmatched_no_opposite_endpoint](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/unmatched-no-opposite-endpoint--d3044d0d85ed0cd0bc48d737.md) | 105 | `result-track:d3044d0d85ed0cd0bc48d737ddb9a957d3d9215ceb139c524ddcccd708f9b05d` |
| 7 | `theorem` | [unmatched_knot_ne_zero](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/unmatched-knot-ne-zero--1e3d93f2b2b41ead6e9cd334.md) | 121 | `result-track:1e3d93f2b2b41ead6e9cd3348860d5f2460885cfcf61505a94d57cd64ffe54ec` |
| 8 | `theorem` | [exists_unmatched_knot](../../../../mathematics/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/declarations/exists-unmatched-knot--5896d2e5e788da6c9e2ca2c1.md) | 131 | `result-track:5896d2e5e788da6c9e2ca2c1f2ee40e0a8ebc118440109814b37a1c078733560` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
