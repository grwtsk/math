# Least natural prime

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

The natural number two is prime and is a lower bound for every natural prime. This article records the foundational conjunction; a separate composite article derives uniqueness of a prime satisfying the stated leastness condition.

<!-- END GENERATED RESULT ABSTRACT -->

[Results in this area](index.md) · [Results index](../../index.md)

## 1. Statement

**Statement.** Two is prime and every natural prime is at least two. Any natural prime `q` satisfying `∀ p, Nat.Prime p → q ≤ p` is therefore equal to two.

## 2. Proof

**Proof.** Mathlib supplies `Nat.prime_two` and `Nat.Prime.two_le`. The GRWTSK conjunction combines them. The new consumer compares `q ≤ 2` with `2 ≤ q` and applies antisymmetry.

## 3. Consumers and composition

**Use.** [The audit](../../../../GRWTSK/NumberTheory/Primes/Checks/ArchitectureAudit.lean) checks the full type and an actual consumer at two. [The walkthrough](../../../start/least-prime.md) derives the uniqueness statement and shows its Lean consumer.

## 4. Sources and retained evidence

**Sources and evidence.** [Original conjunction](../../../../GRWTSK/NumberTheory/FirstPrime.lean), [uniqueness consumer](../../../../GRWTSK/NumberTheory/Primes/LeastPrime.lean), current selected receipt (artifact:gitblob:4f3b77b45e32c93c9f9b514c776c1d2df5174a9c), retained citation (artifact:gitblob:86ad55c71a905d8dc2b950f7730a7c3a43e5c685). Standard axioms are recorded; no `sorryAx` is accepted. Earlier checker failures remain historical.

## 5. Attribution

**Credit.** Mathlib source authors Leonardo de Moura, Jeremy Avigad and Mario Carneiro; Mathlib community, Apache-2.0. Local composition and consumer: grwtsk contributors, with OpenAI Codex assistance, MIT. No mathematical originality or priority claim; earlier elementary historical lineage is not researched here.

## 6. Current verification and revision

Current verification: **SCOPED_EVIDENCE** at math commit
`c288573d1e3cad54979fd95ebf17244f30224d41`. The foundational conjunction and
uniqueness bridge were each replayed twice with Lean `--trust=0`. A native
observer extracted direct type/value constant references and the axiom closure
`[propext, Classical.choice, Quot.sound]` for both local declarations. No
`sorryAx` was observed in those closures.

The imported context contains 8,750 artifact parts whose fingerprints remained
stable across the bound replay. Cached upstream source was not replayed, and
this evidence does not claim a whole-library rebuild or global dependency
closure. The immutable
[public observation](https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/observation.json) and
[replay projection](https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/replay-projection.json)
retain the exact sources, successful command observations, receipt identity,
producer/compiler identities, and these scope limits. The original receipt is
`public-local-replay:6c87b6bcf2391184e4bcfa3f81a1a73c2c5bde93731758595c74e45382628730`;
the edited public projection does not establish a second replay.

The pre-privacy historical receipt quoted above retains its original bytes and
scope. Its phrase “current selected receipt” belongs to that earlier narrative;
it is not promoted by this newer local replay.

The [uniqueness composite](least-prime-uniqueness.md) states the complete
connecting argument. Default upstream-inclusive **S₃ remains unavailable**
because its upstream support is incomplete. A separately identified
[local-only demonstration](https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/measurements.json) has determinant 1 and log-volume 0;
it excludes upstream edges and is not the default ranking.

Revision 2 records this scoped evidence. Canonical and actual issuance dates
remain null.

<details>
<summary>Historical source-description context: 24 October 2026, source pin 1b31ff873</summary>

The following records the initial article draft before the current scoped
local replay was reconciled. Its absence-of-replay statements describe that
earlier context.

> ## 6. Current verification and revision
>
> Current verification: **NOT_RUN**. The source pins in hidden article metadata describe the
> current mathematical source at the stated commit. They do not refresh the
> historical receipt or its axiom audit. The preserved phrase “current selected
> receipt” above belongs to that earlier evidence narrative; the retained receipt
> does not certify the present source bytes.
>
> The full uniqueness conclusion and its order-theoretic bridge are now stated
> in [Least-prime uniqueness by antisymmetry](least-prime-uniqueness.md).
> No originality or historical-priority claim is added.
>
> **S₃ unavailable:** no public compiler-observed verification dependency graph is
> available for the pinned current source. The article revision is recorded in
> hidden article metadata; canonical and actual issuance dates remain unissued.

</details>

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Prime/LeastPrime.lean`](../../../../GRWTSK/NumberTheory/Primes/LeastPrime.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- BEGIN RESULT ARTICLE METADATA
{
  "result_article": {
    "schema": "grwtsk.result-article/1",
    "id": "least-prime",
    "slug": "least-prime",
    "aliases": [],
    "kind": "leaf",
    "title": "Least natural prime",
    "author": "grwtsk contributors",
    "abstract": "The natural number two is prime and is a lower bound for every natural prime. This article records the foundational conjunction; a separate composite article derives uniqueness of a prime satisfying the stated leastness condition.",
    "subjects": {
      "primary": "urn:uuid:f0916dc0-8e7b-4a8f-9aa7-a0cdd6651fa0",
      "associations": []
    },
    "statements": [
      {
        "id": "1.1",
        "classification": "source-proof-candidate",
        "hypotheses": [],
        "conclusion": "Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p",
        "declarations": [
          "GRWTSK.NumberTheory.two_is_first_prime"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
            "path": "GRWTSK/NumberTheory/FirstPrime.lean",
            "blob": "eb8fb85c1d6a7d74aded94f1127cd5af8420dce5"
          }
        ]
      }
    ],
    "verification": {
      "status": "SCOPED_EVIDENCE",
      "scope": "Exact replay twice with Lean --trust=0 of GRWTSK.NumberTheory.two_is_first_prime and GRWTSK.NumberTheory.Prime.least_prime_eq_two at math commit c288573d1e3cad54979fd95ebf17244f30224d41, with native direct type/value references and observed axiom closures under 8,750 stable fingerprinted imported artifact parts. Cached upstream source was not replayed; global dependency completeness is false.",
      "evidence": [
        {
          "reference": "https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/observation.json",
          "scope": "Exact replay twice with Lean --trust=0 of GRWTSK.NumberTheory.two_is_first_prime and GRWTSK.NumberTheory.Prime.least_prime_eq_two at math commit c288573d1e3cad54979fd95ebf17244f30224d41, with native direct type/value references and observed axiom closures under 8,750 stable fingerprinted imported artifact parts. Cached upstream source was not replayed; global dependency completeness is false.",
          "source_pins": [
            {
              "repository": "https://github.com/grwtsk/math",
              "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
              "path": "GRWTSK/NumberTheory/FirstPrime.lean",
              "blob": "eb8fb85c1d6a7d74aded94f1127cd5af8420dce5"
            },
            {
              "repository": "https://github.com/grwtsk/math",
              "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
              "path": "GRWTSK/NumberTheory/Prime/LeastPrime.lean",
              "blob": "79d54a7f0e730f0cd35f64089fdd9b29450e173a"
            }
          ],
          "receipt_id": "public-local-replay:6c87b6bcf2391184e4bcfa3f81a1a73c2c5bde93731758595c74e45382628730",
          "replay_projection": "https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/replay-projection.json",
          "public_artifact_commit": "6ea61287018a774e36783995daa126da7700b1c8"
        }
      ],
      "axiom_policy": "Native observer reported the axiom closure [propext, Classical.choice, Quot.sound] for each of the two local declarations under the fingerprinted cached imported context. No sorryAx was observed in those closures. Cached upstream source and the whole library were not rebuilt or independently replayed.",
      "observed_axioms": [
        "propext",
        "Classical.choice",
        "Quot.sound"
      ],
      "unresolved_premises": [],
      "open_obligations": [
        "Upstream source replay and upstream dependency closure remain outside this evidence.",
        "Default upstream-inclusive spectral ranking requires complete verified upstream support."
      ],
      "dependency_complete": false,
      "completeness_scope": "local_only",
      "upstream_source_replay": "NOT_RUN",
      "imported_artifact_parts": 8750
    },
    "composition": null,
    "issue": {
      "revision": 2,
      "canonical_date": null,
      "issued_at": null
    },
    "metrics": [
      {
        "id": "spectral_log_volume",
        "value": null,
        "method": "exact_rational_determinant_then_float_log.v1",
        "version": "1",
        "coverage": "Default upstream-inclusive radius-three graph support is incomplete; no default ranking score is assigned.",
        "provenance": "https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/measurements.json",
        "profile_id": "spectral-volume-radius3-v1",
        "profile_digest": "sha256:72d348b5be89dd5aad88aeaac60d482693913193e74bf5bb87d0c156d5e876fa",
        "graph_digest": "sha256:74e91f264408a42574c506a804362f4a466b91ab4b5993596bc9134776f06ed2",
        "source_pin": {
          "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
          "repository": "https://github.com/grwtsk/math"
        },
        "upstream_policy": "include",
        "unavailable_reason": "incomplete_or_unverified_graph_evidence"
      },
      {
        "id": "spectral_log_volume",
        "value": 0.0,
        "method": "exact_rational_determinant_then_float_log.v1",
        "version": "1",
        "coverage": "Supplemental local_only demonstration over 1 local declaration vertices and 0 local typed edges; all upstream edges deliberately excluded.",
        "provenance": "https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/measurements.json",
        "profile": {
          "distance_decay": "1",
          "edge_weights": {
            "proof_reference": "1",
            "statement_reference": "1"
          },
          "eligible_verification_statuses": [
            "kernel_verified"
          ],
          "max_exact_vertices": 128,
          "metric_id": "spectral_log_volume",
          "missing_data_policy": "unavailable_with_reason",
          "normalization": "none",
          "other_metrics": [],
          "profile_id": "spectral-volume-radius3-local-source-replay-v1",
          "qualitative_rubrics": [],
          "radius": 3,
          "schema": "grwtsk.result-ranking-profile.v1",
          "tau": "1",
          "tie_break": "persistent_result_id_ascending",
          "top_k": 5,
          "trust_policy": {
            "id": "lean-standard-axioms-v1",
            "permitted_axioms": [
              "propext",
              "Classical.choice",
              "Quot.sound"
            ]
          },
          "upstream_policy": "local_only"
        },
        "profile_digest": "sha256:3a0ded17e0a932f80fe2203de570c7bded326d608c38124485a716d04f622ab5",
        "graph_digest": "sha256:74e91f264408a42574c506a804362f4a466b91ab4b5993596bc9134776f06ed2",
        "source_pin": {
          "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
          "repository": "https://github.com/grwtsk/math"
        },
        "roots": [
          "GRWTSK.NumberTheory.two_is_first_prime"
        ],
        "exact_determinant": "1",
        "decimal_value": "0",
        "decimal_precision": 50,
        "coverage_details": {
          "vertices": [
            "GRWTSK.NumberTheory.two_is_first_prime"
          ],
          "distances": {
            "GRWTSK.NumberTheory.two_is_first_prime": 0
          },
          "dependency_complete": true,
          "completeness_scope": "local_only",
          "excluded_upstream_edges": [
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "And",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "And.intro",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "LE.le",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "LE.le",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "Nat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "Nat",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "Nat.Prime",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "Nat.Prime",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "Nat.Prime.two_le",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "Nat.prime_two",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "OfNat.ofNat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "OfNat.ofNat",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "instLENat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "instLENat",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "instOfNatNat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.two_is_first_prime",
              "instOfNatNat",
              "statement_reference"
            ]
          ],
          "radius_boundary_vertices": []
        },
        "ranking_default": false
      }
    ],
    "source_description_context": {
      "selected_catalog_primary_source": {
        "repository": "https://github.com/grwtsk/math",
        "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
        "path": "GRWTSK/NumberTheory/Prime/LeastPrime.lean",
        "blob": "79d54a7f0e730f0cd35f64089fdd9b29450e173a"
      },
      "scope": "The selected catalog and preserved exposition also reference the uniqueness consumer; this article root is the foundational conjunction."
    },
    "historical_evidence": [
      {
        "reference": "artifact:gitblob:4f3b77b45e32c93c9f9b514c776c1d2df5174a9c",
        "scope": "Retained selected receipt for its historical source binding; current privacy-redacted bytes differ.",
        "certifies_current_source": false
      },
      {
        "reference": "artifact:gitblob:86ad55c71a905d8dc2b950f7730a7c3a43e5c685",
        "scope": "Retained historical citation; not current-source replay.",
        "certifies_current_source": false
      }
    ],
    "previous_source_binding": {
      "recorded_context": "Initial source-description draft, 2026-10-24; no fresh replay was then recorded.",
      "source_commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
      "statement_source_pins": [
        {
          "repository": "https://github.com/grwtsk/math",
          "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
          "path": "GRWTSK/NumberTheory/FirstPrime.lean",
          "blob": "eb8fb85c1d6a7d74aded94f1127cd5af8420dce5"
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
      "abstract": "The natural number two is prime and is a lower bound for every natural prime. This article records the foundational conjunction; a separate composite article derives uniqueness of a prime satisfying the stated leastness condition.",
      "scope": "Historical article descriptions only; these fields do not certify replay at the earlier commit."
    }
  }
}
END RESULT ARTICLE METADATA -->
