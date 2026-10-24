# Verification target: GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ba17d242bb49071bd71996f149ef7c9c4a74773",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ba17d242bb49071bd71996f149ef7c9c4a74773`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy`](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixDiscrepancy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachProgressionArcBoundary.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachPrefixArcLoss](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachprefixarcloss--41ff37fcde29655bf1d992da.md) | 36 | `declaration-track:41ff37fcde29655bf1d992da9bcdf57ca4c2f69e680c72d49f2f85d59a63342f` |
| 2 | `theorem` | [goldbachPrefixArcLoss_nonneg](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachprefixarcloss-nonneg--0f818ce0298486094141dbe0.md) | 39 | `result-track:0f818ce0298486094141dbe0004fb3a9faa69b8b1f8cd2bf219e003c9f06c26c` |
| 3 | `def` | [goldbachPrefixResidueBudget](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachprefixresiduebudget--17291b7173a3622816fd9878.md) | 46 | `declaration-track:17291b7173a3622816fd9878944a5c3974bba8e37a03f31e7caf0032a5946070` |
| 4 | `def` | [GoldbachReducedPrefixSupplier](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachreducedprefixsupplier--0f9a66f2305a64e3e8cf1c7d.md) | 55 | `declaration-track:0f9a66f2305a64e3e8cf1c7dc0809a9bf2025e57d207507308c71a416f429f4e` |
| 5 | `theorem` | [exists_small_goldbachArcOffset](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/exists-small-goldbacharcoffset--e56534dbd7bc1c3144aec38c.md) | 65 | `result-track:e56534dbd7bc1c3144aec38c31d456cb88fad774a01ac1245658546995598474` |
| 6 | `theorem` | [norm_goldbachResidueProgressionDiscrepancy_on_arc_of_prefix](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/norm-goldbachresidueprogressiondiscrepancy-on-arc-of-prefix--9b095fe538879c643d138b01.md) | 91 | `result-track:9b095fe538879c643d138b01e67dba4987889d24615f54f8d85132c58cccd2b0` |
| 7 | `theorem` | [goldbachPrefixResidueBudget_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachprefixresiduebudget-bounds--ce0cae58900c59e05545277d.md) | 103 | `result-track:ce0cae58900c59e05545277da68d592cbc0c68ff2739b72e3d063c8f71e9fccd` |
| 8 | `def` | [goldbachPrefixMajorErrorBudget](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachprefixmajorerrorbudget--f95dfd28d2d45ebfb955bcd5.md) | 128 | `declaration-track:f95dfd28d2d45ebfb955bcd5f6adecab909a0ff7ae5ca10228c6f16770588a97` |
| 9 | `theorem` | [goldbachCount_pos_of_prefix_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachcount-pos-of-prefix-bounds--757575f298ecf0a10a32d123.md) | 134 | `result-track:757575f298ecf0a10a32d123c3b8f214019ea60fd2eddd72719b6729b244b71a` |
| 10 | `theorem` | [goldbachCount_pos_above_of_prefix_supplier](../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/declarations/goldbachcount-pos-above-of-prefix-supplier--bbed84c855df06aea9784d5e.md) | 154 | `result-track:bbed84c855df06aea9784d5e97e519405d420bc5cfeaf93995dce66775f5918e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
