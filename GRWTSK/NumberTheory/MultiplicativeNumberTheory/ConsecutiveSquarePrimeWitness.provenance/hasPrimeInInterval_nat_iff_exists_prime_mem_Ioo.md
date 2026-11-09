# `GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness.hasPrimeInInterval_nat_iff_exists_prime_mem_Ioo`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [ConsecutiveSquarePrimeWitness.lean](../ConsecutiveSquarePrimeWitness.lean), line 48.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/MultiplicativeNumberTheory/ConsecutiveSquarePrimeWitness.lean#L48).
- Declaration spelling: `GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness.hasPrimeInInterval_nat_iff_exists_prime_mem_Ioo` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/Solution.lean)

- [Pinned upstream source](https://github.com/teorth/IEANTN/blob/ec66e388e6e117c6881367f38665f310edf7cacf/Solutions/PrimeInterval.v1/Solution.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "ieantn",
      "project_subdir": "adapters/ieantn/Solutions/PrimeInterval.v1",
      "path": "adapters/ieantn/Solutions/PrimeInterval.v1/GRWTSK/NumberTheory/MultiplicativeNumberTheory/ConsecutiveSquarePrimeWitness.lean",
      "source_commit": "8f22d35114a5325e7a75520bbe1ee4abe9e6c447",
      "source_blob": "dd2e210934a81fbb16ad1480bd958859933671e9",
      "source_sha256": "57c5f22f103decfe499770ea9ab809a2fd01d52a8e3425bb86c05f338590b16d",
      "declarations": [
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness.hasPrimeInInterval_nat_iff_exists_prime_mem_Ioo",
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness.prime_in_consecutive_square_interval_of_numerical_bound",
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.ConsecutiveSquarePrimeWitness.consecutive_square_prime_filter_card_pos_of_numerical_bound"
      ],
      "upstream": [
        {
          "repository": "teorth/IEANTN",
          "commit": "ec66e388e6e117c6881367f38665f310edf7cacf",
          "source": "Solutions/PrimeInterval.v1/Solution.lean",
          "blob": "e1a89e5f31e5263353b0bc63a68ff99e020b7710",
          "declarations": [
            "PrimeInterval.v1.Dev.numericalBound_hasPrimeInInterval"
          ]
        }
      ],
      "native_pins": {
        "Lean": "leanprover/lean4:v4.34.0-rc2",
        "Mathlib": "71a80585ee495fc24472fd0eaffc89d94e4fd8d6"
      },
      "hypotheses": [
        "n : Nat; 1 <= n",
        "x0 epsilon : Real",
        "IEANTN.HasNumericalBound IEANTN.Etheta epsilon x0 (uniform for all real x >= x0)",
        "x0 <= (n : Real)^2",
        "(2*(n : Real)^2 + (2*(n : Real)+1))*epsilon < 2*(n : Real)+1"
      ],
      "conclusion": "There exists a Nat.Prime p in Finset.Ioo (n^2) ((n+1)^2), and this finset filtered by Nat.Prime has positive Nat cardinality.",
      "use": "Supply the open consecutive-square prime witness and positive finite count observed by ConfigurationCounts.squareCount_pos_iff, preserving the closed-right to open-right endpoint comparison. No root import or version-port.",
      "consumer_paths": [
        "GRWTSK/NumberTheory/MultiplicativeNumberTheory/ConfigurationCounts.lean"
      ],
      "root_consumer_blob": "ce58a314fcc4fa5c535377fc419cea864dbdf7d1",
      "root_consumer_source_commit": "4e0b0dec8c24a5a5a79af34b71efd58b3753cdca",
      "root_version_comparison": "UNSUPPLIED; isolated IEANTN4.34.0-rc2 versus root4.34.1",
      "paper_or_source": "No paper-specific result imported. Upstream node is a pipeline argument inspired by PrimeNumberTheoremAnd/IEANTN/PrimeInInterval.lean; no title-to-theorem inference.",
      "upstream_authors": [
        "Terence Tao",
        "IEANTN contributors"
      ],
      "license": "Apache-2.0; actual upstream bylines preserved through dependency",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "missing_bridges": [
        "Supply actual IEANTN.Etheta uniform numerical bound and margin for any intended stage or range.",
        "No Legendre conjecture or unconditional consecutive-square theorem.",
        "No root package version-port; isolated adapter mathematical observation only.",
        "Compilation, independent fresh replay and complete transitive axiom audit NOT_RUN."
      ],
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/-
Copyright (c) 2026 grwtsk contributors.
Released under Apache 2.0 license as described in the upstream file LICENSE.
Authors: grwtsk contributors
-/

/-!
# Consecutive-square prime witnesses from an explicit theta-error bound

IEANTN's proved numerical criterion returns a prime in the real interval
`(x, x + h]`. For consecutive natural squares, the right endpoint is composite,
so this is an actual prime in the open natural interval. Its prime-filtered
cardinality is therefore positive. This is the same mathematical observation as
the root `ConfigurationCounts.squareCount`, without importing or duplicating
that root definition across incompatible versions.

The joint analytic premises remain explicit: a uniform bound on `IEANTN.Eθ`
above `x₀`, applicability at `n²`, and the strict error-margin inequality. No
numerical error bound is supplied here, and no global assertion about primes
between consecutive squares is made.

Upstream: `teorth/IEANTN` commit
`ec66e388e6e117c6881367f38665f310edf7cacf`, Apache 2.0.
The proof endpoint is
`PrimeInterval.v1.Dev.numericalBound_hasPrimeInInterval` in
`Solutions/PrimeInterval.v1/Solution.lean`, Git blob
`e1a89e5f31e5263353b0bc63a68ff99e020b7710`; its source byline is
IEANTN contributors. The interval and error vocabulary preserve the upstream
Terence Tao byline. The solution cites the PrimeNumberTheoremAnd prime-interval
argument as its source; no paper-specific bound is imported by this consumer.

This file imports the proved `Solution` module, never the challenge module.
Source inspection found explicit proofs and no admitted declarations in this
IEANTN project import closure. Compilation, fresh kernel replay and complete
transitive axiom auditing are NOT_RUN. The isolated package retains upstream
Lean 4.34.0-rc2 and Mathlib `71a80585ee495fc24472fd0eaffc89d94e4fd8d6`;
this source is not a port into the root package.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
