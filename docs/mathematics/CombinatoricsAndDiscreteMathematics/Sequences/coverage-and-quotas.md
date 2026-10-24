# Coverage and discrete quotas

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

Positive natural batches cover every obligation index through their exact half-open service intervals. For a fixed finite channel set, maximal-credit service with nonnegative integer quotas of fixed total has bounded debt; a positive quota floor gives arbitrarily many service slots. These are mathematical scheduling implications with explicit continuation and quota hypotheses.

<!-- END GENERATED RESULT ABSTRACT -->

[Results in this area](index.md) · [Results index](../../index.md)


## 1. Coverage

**Coverage.** With natural batches `b n ≥ 1`, define `S₀=0`, `Sₙ₊₁=Sₙ+bₙ`. Service every pinned obligation index in `[Sₙ,Sₙ₊₁)`. Then every index belongs to a service interval. An unbounded clock alone cannot guarantee that the scheduler selects each obligation.

## 2. Quota service

**Quota service.** For a fixed finite channel set, integer denominator `Q>0` and nonnegative quotas summing to `Q`, add quota to credit, choose a maximal-credit channel, and subtract `Q`. Under the exact hypotheses, the source proves bounded discrepancy and arbitrarily many service slots for channels with positive quotas.

[The exact source](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean) retains all conditions, including fixed positive quotas for the no-starvation consequence. [The quota interface](quotas.md) explains tie breaking and quantization.

## 3. Application limits

**Limits.** Dynamic eligibility, fair quantization of arbitrary fractional inputs, machine-integer overflow and successful task completion require separate arguments. Continuing admissible service is assumed. No authorization or acceptance is produced by fairness.

## 4. Historical evidence

**Evidence.** The earlier waveform receipt (artifact:gitblob:65a87c069a4377b8007f7ec91de73833d500b216) records checks at former source paths. It is historical; current relocated-source replay is not claimed by this page. Proposed scheduling relevance is not an implemented runtime consumer.

## 5. Attribution

**Credit.** Human mathematical direction: grwtsk contributors; OpenAI Codex assistance. Classical scheduling reasoning and Mathlib origins retained; local MIT, Mathlib Apache-2.0; no originality claim.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

## 6. Current statements, verification, and revision

The structured statements in hidden article metadata name the exact declarations and
hypotheses at the pinned source. In particular, the current source permits
quota functions depending on the step, provided their total remains the fixed
positive denominator, every quota is nonnegative, each chosen channel has
maximal updated credit, and the no-starvation channel has the stated uniform
positive floor. The preceding fixed-quota exposition is a special case.
The channel set is fixed throughout.

The source proof of coverage chooses the first clock value greater than the
index and places it in the preceding service interval. Debt starts at zero;
the one-step sum and lower-bound invariants, the complementary upper bound,
and exact cumulative-quota accounting yield the service bound. Applying that
bound at `n = Q*K + (m-1)*Q + 1` gives the no-starvation conclusion. These are
source argument descriptions; current kernel verification is **NOT_RUN**.

No operational consumer, runtime authorization, task completion, dynamic
eligibility, quantization theorem, or overflow bound follows from the article.
The historical receipt retains its original scope.

**S₃ unavailable:** no public compiler-observed verification dependency graph is
available for the pinned current source. Revision metadata is recorded without
an actual issuance event.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean`](../../../../GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/QuotaDiscrepancy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 22 |
| Theorem/lemma commands | 17 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- BEGIN RESULT ARTICLE METADATA
{
  "result_article": {
    "schema": "grwtsk.result-article/1",
    "id": "quota-coverage",
    "slug": "coverage-and-quotas",
    "aliases": [],
    "kind": "leaf",
    "title": "Coverage and discrete quotas",
    "author": "grwtsk contributors",
    "abstract": "Positive natural batches cover every obligation index through their exact half-open service intervals. For a fixed finite channel set, maximal-credit service with nonnegative integer quotas of fixed total has bounded debt; a positive quota floor gives arbitrarily many service slots. These are mathematical scheduling implications with explicit continuation and quota hypotheses.",
    "subjects": {
      "primary": "urn:uuid:e107e8a9-0356-4c51-8080-494471f9eb4b",
      "associations": []
    },
    "statements": [
      {
        "id": "1.1",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "b : ℕ → ℕ",
          "∀ n : ℕ, 1 ≤ b n",
          "j : ℕ"
        ],
        "conclusion": "∃ n : ℕ, clock b n ≤ j ∧ j < clock b (n+1)",
        "declarations": [
          "GRWTSK.Analysis.Waveform.Scheduling.coverage"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
            "path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
            "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd"
          }
        ]
      },
      {
        "id": "1.2",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "m : ℕ; Q : ℤ; 0 < Q",
          "p : ℕ → Fin m → ℤ; w : ℕ → Fin m",
          "∀ n, ∑ i, p n i = Q",
          "∀ n i, 0 ≤ p n i",
          "∀ n i, debt Q p w n i + p n i ≤ debt Q p w n (w n) + p n (w n)"
        ],
        "conclusion": "∀ n, (∑ i, debt Q p w n i = 0) ∧ ∀ i, -Q ≤ debt Q p w n i",
        "declarations": [
          "GRWTSK.Analysis.Waveform.Scheduling.debt_invariant"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
            "path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
            "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd"
          }
        ]
      },
      {
        "id": "1.3",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "m : ℕ; 0 < m; Q : ℤ",
          "d : Fin m → ℤ; ∑ i, d i = 0",
          "∀ i, -Q ≤ d i",
          "i : Fin m"
        ],
        "conclusion": "d i ≤ ((m : ℤ)-1)*Q",
        "declarations": [
          "GRWTSK.Analysis.Waveform.Scheduling.upper_from_lower"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
            "path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
            "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd"
          }
        ]
      },
      {
        "id": "1.4",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "m : ℕ; 0 < m; Q : ℤ; 0 < Q",
          "p : ℕ → Fin m → ℤ; w : ℕ → Fin m; i : Fin m; q : ℤ; 0 < q",
          "∀ n, ∑ j, p n j = Q",
          "∀ n j, 0 ≤ p n j",
          "∀ n, q ≤ p n i",
          "∀ n j, debt Q p w n j + p n j ≤ debt Q p w n (w n) + p n (w n)",
          "n : ℕ"
        ],
        "conclusion": "(n : ℤ)*q ≤ Q*(count w i n : ℤ) + ((m : ℤ)-1)*Q",
        "declarations": [
          "GRWTSK.Analysis.Waveform.Scheduling.service_bound"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
            "path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
            "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd"
          }
        ]
      },
      {
        "id": "1.5",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "m : ℕ; 0 < m; Q : ℕ; 0 < Q",
          "p : ℕ → Fin m → ℤ; w : ℕ → Fin m; i : Fin m",
          "∀ n, ∑ j, p n j = (Q : ℤ)",
          "∀ n j, 0 ≤ p n j",
          "∀ n, 1 ≤ p n i",
          "∀ n j, debt (Q : ℤ) p w n j + p n j ≤ debt (Q : ℤ) p w n (w n) + p n (w n)",
          "K : ℕ"
        ],
        "conclusion": "∃ n : ℕ, K < count w i n",
        "declarations": [
          "GRWTSK.Analysis.Waveform.Scheduling.no_starvation"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
            "path": "GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean",
            "blob": "082f7a14cea422527f4ff132e2fb00cefd9e75cd"
          }
        ]
      }
    ],
    "verification": {
      "status": "NOT_RUN",
      "scope": "Current source-description pins only at math commit 1b31ff873827ecf9acdf41b501b21a12b242a504. No fresh kernel replay, transitive axiom audit, or public compiler-observed verification graph has been produced for these bytes. Historical references retain their original paths, bytes and scope.",
      "evidence": [],
      "axiom_policy": "Fresh transitive axiom audit NOT_RUN. No sorryAx is permitted by the intended acceptance policy; any actual permitted-axiom claim requires a current scoped audit.",
      "unresolved_premises": [],
      "open_obligations": [
        "Fresh selected-source replay and complete permitted-axiom audit.",
        "Public compiler-observed verification dependency graph bound to these source bytes."
      ]
    },
    "composition": null,
    "issue": {
      "revision": 1,
      "canonical_date": null,
      "issued_at": null
    },
    "metrics": [
      {
        "id": "spectral-log-volume-3",
        "value": null,
        "method": "Three-degree weighted verification dependency Laplacian; see result-publication-contract.md and ranking-profile.json.",
        "version": "1",
        "coverage": "No current public verification dependency graph is available for this article.",
        "provenance": "Unavailable; no graph extraction or numerical ranking was run.",
        "unavailable_reason": "verification_dependency_graph_unavailable"
      }
    ],
    "historical_evidence": [
      {
        "reference": "artifact:gitblob:65a87c069a4377b8007f7ec91de73833d500b216",
        "scope": "Historical waveform receipt at former source paths and bytes; current relocated and privacy-redacted source has not been replayed.",
        "certifies_current_source": false
      }
    ]
  }
}
END RESULT ARTICLE METADATA -->
