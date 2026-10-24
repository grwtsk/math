# Verification target: GRWTSK.NumberTheory.Chebyshev.QuadraticIntervals

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51c65289af49deadf0a7aa7a72c9895ac76a356d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/QuadraticIntervals.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51c65289af49deadf0a7aa7a72c9895ac76a356d`.

Source path: `GRWTSK/NumberTheory/Chebyshev/QuadraticIntervals.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/QuadraticIntervals.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Floor.Semiring` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.NormCast` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [floor_nat_add_shift](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/floor-nat-add-shift--b756144bd490028f59692771.md) | 29 | `result-track:b756144bd490028f59692771a5c752d36cd99980e37f8f6ac9484147f7e01885` |
| 2 | `theorem` | [nat_add_shift_ne_natCast](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/nat-add-shift-ne-natcast--e21bf96335c0131d3fcee4f7.md) | 35 | `result-track:e21bf96335c0131d3fcee4f7f4e1ae07708ba5f9be1a7fd3d1e5baac5eff7296` |
| 3 | `theorem` | [chebyshevPrimePower_nat_add_shift](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/chebyshevprimepower-nat-add-shift--ab3d2d1295e2c06948fb1beb.md) | 44 | `result-track:ab3d2d1295e2c06948fb1bebd553ab077eec792895c9f9b6e2aebbb99cf298de` |
| 4 | `def` | [squareEndpoint](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareendpoint--509063f9a4ed99376e1e9265.md) | 50 | `declaration-track:509063f9a4ed99376e1e9265e96898a5b21bc19629620ea79e37e9c9233ad0d6` |
| 5 | `theorem` | [squareEndpoint_gt_one](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareendpoint-gt-one--3ca1ad991535787ec038c43b.md) | 53 | `result-track:3ca1ad991535787ec038c43b029f7b205a9d28c5495eec42c8277dc88d854546` |
| 6 | `theorem` | [squareEndpoint_ne_natCast](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareendpoint-ne-natcast--804729c39997cf8851b2f750.md) | 59 | `result-track:804729c39997cf8851b2f7509b741992a037e3d0adebe554e9ece14863358e46` |
| 7 | `theorem` | [chebyshevPrimePower_squareEndpoint](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/chebyshevprimepower-squareendpoint--28a0783245e4ba366a8e3b46.md) | 66 | `result-track:28a0783245e4ba366a8e3b462463b6f3c6962f5f39f5171cf7148b86b700aeef` |
| 8 | `theorem` | [squareEndpoint_width](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareendpoint-width--97b1abcbbe5fd25acb759047.md) | 75 | `result-track:97b1abcbbe5fd25acb75904711a144e95115053659047cf90d9337d2ba7020ab` |
| 9 | `def` | [squareIncrement](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareincrement--c405cefa6856dda95f0b78d8.md) | 81 | `declaration-track:c405cefa6856dda95f0b78d83543a4ab7020de8b3adb25ef4da0517451686999` |
| 10 | `theorem` | [squareIncrement_eq_shifted](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareincrement-eq-shifted--7e8da3b1375374fdc3f016fc.md) | 85 | `result-track:7e8da3b1375374fdc3f016fc23ded49b1894674dedab9519a9e5a6489d7c7811` |
| 11 | `theorem` | [squareIncrement_error](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/squareincrement-error--0b9b27d825d5be2d96c9426e.md) | 92 | `result-track:0b9b27d825d5be2d96c9426eca551153dba6c34c51ff8baaeff4fd891d7ec67f` |
| 12 | `theorem` | [shift_one_control](../../../../mathematics/NumberTheory/Chebyshev/QuadraticIntervals.lean/declarations/shift-one-control--0541696987b03b9a4fcf7f87.md) | 99 | `result-track:0541696987b03b9a4fcf7f874653978635925742a5b4ae1deac4e05e41c6458e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
