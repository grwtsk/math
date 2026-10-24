# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightDeficit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cb3af4bc83a564c667db222b5b48285cc3d9e7f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cb3af4bc83a564c667db222b5b48285cc3d9e7f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalDeficit`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalDeficit.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeight`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeight.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPinnedPrimeWeightDeficitCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/clauseindexedpinnedprimeweightdeficitcriterion--881f1f2aba17b93c1ea18207.md) | 31 | `declaration-track:881f1f2aba17b93c1ea18207c30bab0132a5c3425d94103adbf88b2a0d1bcb3a` |
| 2 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_pinnedCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-pinnedcriterion--710dc37145bb97aaec2ed1e8.md) | 39 | `result-track:710dc37145bb97aaec2ed1e85e3a6c99df16f64c618b1463087fc67c69cf6ed2` |
| 3 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-recurrence--66f4048638178f80c7532d91.md) | 48 | `result-track:66f4048638178f80c7532d914c9e970395018687ee18a885300a6f0a2466d9ce` |
| 4 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-previous--64f23844e4eaee8f64b028a7.md) | 59 | `result-track:64f23844e4eaee8f64b028a70403e8ecb50ee620477e7a23364675b2c3f46961` |
| 5 | `theorem` | [threeClauseIndexedPinnedPrimeWeightDeficitCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/threeclauseindexedpinnedprimeweightdeficitcriterion-iff--33c70b893f2445e7275d28c6.md) | 80 | `result-track:33c70b893f2445e7275d28c6d8be170524ef0061bcc5f278ba63f15f25341e64` |
| 6 | `theorem` | [twoClauseIndexedPinnedPrimeWeightDeficitCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/twoclauseindexedpinnedprimeweightdeficitcriterion-iff--8404aa0b95149f822e4f2684.md) | 89 | `result-track:8404aa0b95149f822e4f2684fa562882c387f1b45db43e45cfd64cbf3f849dfe` |
| 7 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficitCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightDeficit.lean/declarations/clauseindexedpinnedprimeweightdeficitcriteria-to-rh--6572cec622a44299cd1a3e20.md) | 100 | `result-track:6572cec622a44299cd1a3e206441a68614ff71f26d40a89c679ef0ad401d1331` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
