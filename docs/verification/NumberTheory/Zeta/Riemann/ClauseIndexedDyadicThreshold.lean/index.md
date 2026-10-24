# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedDyadicThreshold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5838ae5600b90dc2fbe7e175ea5713b63f8f753e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5838ae5600b90dc2fbe7e175ea5713b63f8f753e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Satisfiability.BooleanClauseCounting`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Satisfiability/BooleanClauseCounting.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicThresholdDuality`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaRecurrenceSupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countedSuccessFraction_eq_dyadicThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/countedsuccessfraction-eq-dyadicthreshold--37a1989f18f7887b1327b444.md) | 41 | `result-track:37a1989f18f7887b1327b444beb4e1951f0bd903c62d1f0aae35a88277c374cc` |
| 2 | `abbrev` | [ClauseIndexedThetaRecurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/clauseindexedthetarecurrence--753ae2fa17cc35c8dd6a5c89.md) | 49 | `declaration-track:753ae2fa17cc35c8dd6a5c89a23e459a4fb89188c46c3fc9bb76649e252140e8` |
| 3 | `theorem` | [oneLiteralClauseThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/oneliteralclausethreshold--38dbe09a83703f14df597db4.md) | 55 | `result-track:38dbe09a83703f14df597db42f7b2002cf8124e037d82f9739067b3af8736115` |
| 4 | `theorem` | [twoLiteralClauseThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/twoliteralclausethreshold--3bb0db05c0ac48dd0e73cf72.md) | 62 | `result-track:3bb0db05c0ac48dd0e73cf725362fab72db4339d4788ae95eb4f6834dc68df55` |
| 5 | `theorem` | [threeLiteralClauseThreshold](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/threeliteralclausethreshold--71ce81ddf25799862c7aa3f3.md) | 69 | `result-track:71ce81ddf25799862c7aa3f3376f89c579fc778c2a5afe65ba650169aa3afa45` |
| 6 | `theorem` | [clauseIndexedRecurrence_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/clauseindexedrecurrence-to-previous--6358059d5b937257da108608.md) | 78 | `result-track:6358059d5b937257da108608fd8deece770613915ff907a3fc29f55e5a7d6d95` |
| 7 | `theorem` | [threeClauseIndexedRecurrence_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/threeclauseindexedrecurrence-iff--15e277780e696b82069e442d.md) | 101 | `result-track:15e277780e696b82069e442dc76e6d7480d1d1fb6a7e1ca02b495ea9a0ce3780` |
| 8 | `theorem` | [twoClauseIndexedRecurrence_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/twoclauseindexedrecurrence-iff--33da2ba81f80c1e69674fbe9.md) | 109 | `result-track:33da2ba81f80c1e69674fbe9c8ae8fa067a68be353b5519ef75f7f6b966a1485` |
| 9 | `theorem` | [threeLiteralRecurrence_to_twoLiteral](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/threeliteralrecurrence-to-twoliteral--7f093693a85a14d32b4a8cb7.md) | 117 | `result-track:7f093693a85a14d32b4a8cb7a961eacf7ef1eb6b8177e651ce6b555771f6fffa` |
| 10 | `theorem` | [twoLiteralRecurrence_to_oneLiteral](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/twoliteralrecurrence-to-oneliteral--01d5487f8185927935a6efc0.md) | 135 | `result-track:01d5487f8185927935a6efc03718752c43f0c5001d970bb118856df7c2ca7ebd` |
| 11 | `theorem` | [clauseIndexedThreeTwoRecurrences_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/declarations/clauseindexedthreetworecurrences-to-rh--649716015089830023de8ae6.md) | 153 | `result-track:649716015089830023de8ae61deb6f7ca29e5f978258ed4dc7ac34bd5c9dcd5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
