# `GRWTSK.NumberTheory.MultiplicativeNumberTheory.RelativePrimePairConsumers.distinct_prime_sum_in_relative_window`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [RelativePrimePairConsumers.lean](../RelativePrimePairConsumers.lean), line 49.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/NumberTheory/MultiplicativeNumberTheory/RelativePrimePairConsumers.lean#L49).
- Declaration spelling: `GRWTSK.NumberTheory.MultiplicativeNumberTheory.RelativePrimePairConsumers.distinct_prime_sum_in_relative_window` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/blob/127b50e33f6033e2147921167a117af96d9ba4ea/PrimeNumberTheoremAnd/Consequences.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/consumer-integrations.json",
    "consumer": {
      "provider": "pnt-plus",
      "project_subdir": "adapters/pnt-plus",
      "path": "adapters/pnt-plus/GRWTSK/NumberTheory/MultiplicativeNumberTheory/RelativePrimePairConsumers.lean",
      "declarations": [
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.RelativePrimePairConsumers.two_distinct_primes_in_relative_window",
        "GRWTSK.NumberTheory.MultiplicativeNumberTheory.RelativePrimePairConsumers.distinct_prime_sum_in_relative_window"
      ],
      "upstream": [
        {
          "repository": "AlexKontorovich/PrimeNumberTheoremAnd",
          "commit": "127b50e33f6033e2147921167a117af96d9ba4ea",
          "source": "PrimeNumberTheoremAnd/Consequences.lean",
          "blob": "d9283ccaac007eed83e131577df256bcecdd150f",
          "declarations": [
            "prime_between"
          ]
        }
      ],
      "hypotheses": "epsilon real >0. Eventually x real there exist natural p<q with both prime and x<p<q<(1+epsilon)x; consequently exists natural N=p+q with 2x<N<2(1+epsilon)x. Threshold depends on epsilon.",
      "conclusion": "Compose two eventual relative-prime windows using delta=min(epsilon/4,1), then construct a target N=p+q from two distinct primes. Supplies actual prime-pair/sum witnesses, not arbitrary prescribed Goldbach targets.",
      "use": "Compose two eventual relative-prime windows using delta=min(epsilon/4,1), then construct a target N=p+q from two distinct primes. Supplies actual prime-pair/sum witnesses, not arbitrary prescribed Goldbach targets.",
      "consumer_paths": [
        "GRWTSK.NumberTheory.Primes.GoldbachCenteredFailureMargin.actual_centered_failure_margin at GRWTSK/NumberTheory/MultiplicativeNumberTheory/GoldbachCenteredFailureMargin.lean has the representation proposition exists p q, Prime p and Prime q and p+q=N. New result supplies that shape for a constructed target."
      ],
      "paper_or_source": "Prime Number Theorem and More, Alex Kontorovich and Terence Tao (CITATION.cff version0.1.0; released2024-01-09, ongoing).",
      "stable_reference": "https://github.com/AlexKontorovich/PrimeNumberTheoremAnd/tree/127b50e33f6033e2147921167a117af96d9ba4ea",
      "license": "Apache-2.0",
      "missing_bridges": [
        "Does not represent every supplied even N, prove parity/window hypotheses of that full local margin theorem, provide effective thresholds or shrinking intervals, or import incompatible root GRWTSK modules. No RH consequence."
      ],
      "trust_finding": null,
      "source_blob": "9d8294992c8ca4e5668bac03d33da037a597b361",
      "source_sha256": "88175dceef9609927b5f08e9c34f9811b34cad0ed480b1a12905873bd77a5557",
      "classification": "SOURCE_PROOF_CANDIDATE_ACTUAL_MATHEMATICAL_CONSUMER",
      "verification": {
        "compilation": "NOT_RUN",
        "fresh_kernel_replay": "NOT_RUN",
        "complete_transitive_axiom_audit": "NOT_RUN",
        "expected_interface": "NOT_RUN"
      },
      "independent_checker": "UNSUPPLIED"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Local attribution: grwtsk contributors.
Upstream PNT+ authorship and Apache-2.0 licensing remain in the pinned dependency. -/

/-!
# Two distinct prime witnesses from a relative prime window

The source PNT window is used twice, at x and at the first prime. Choosing a
smaller window controls the composed multiplicative expansion. The resulting
prime-pair and prime-sum witnesses can seed finite Goldbach-channel searches;
this says nothing about representing each prescribed even integer.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and axiom audit NOT_RUN.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
