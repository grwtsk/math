# Least-prime uniqueness by antisymmetry

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

A natural prime q that is no greater than every natural prime equals two. The argument combines the foundational prime lower bound with leastness at the prime two, then applies natural-number order antisymmetry. Exact local replay covers the two GRWTSK declarations under a fingerprinted cached imported context; upstream source was not replayed.

<!-- END GENERATED RESULT ABSTRACT -->

[Prime results](index.md) · [Foundational least-prime article](least-prime.md) ·
[Elementary number theory](../ElementaryNumberTheory/index.md) · [Order theory](../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/index.md)

## 1. Statement and hypotheses

**Theorem 1.1.** Let `q : ℕ`. Suppose

\[
\operatorname{Nat.Prime}(q),\qquad
\forall p\in\mathbb N,\quad \operatorname{Nat.Prime}(p)\Longrightarrow q\le p.
\]

Then `q = 2`.

The fully qualified declaration is
`GRWTSK.NumberTheory.Prime.least_prime_eq_two` in the
[uniqueness source](../../../../GRWTSK/NumberTheory/Primes/LeastPrime.lean).
The theorem assumes primality and leastness. It does not infer them from a
source observation, an experimental result, or a verification receipt.

## 2. Proof

The [foundational article](least-prime.md) supplies the conjunction

\[
\operatorname{Nat.Prime}(2)\quad\text{and}\quad
\forall p\in\mathbb N,\ \operatorname{Nat.Prime}(p)\Longrightarrow 2\le p,
\]

represented by `GRWTSK.NumberTheory.two_is_first_prime` in the
[foundational source](../../../../GRWTSK/NumberTheory/FirstPrime.lean).
Its source argument explicitly reuses `Nat.prime_two` and `Nat.Prime.two_le`.

Apply the leastness hypothesis to the prime `2` to obtain `q ≤ 2`. Apply the
foundational lower bound to the prime `q` to obtain `2 ≤ q`. Natural-number
order antisymmetry gives `q = 2`. This is the complete connecting argument.

The local source proof is:

```lean
exact Nat.le_antisymm (hmin 2 Nat.prime_two)
  (GRWTSK.NumberTheory.two_is_first_prime.2 q hq)
```

This exact local bridge was replayed twice with Lean `--trust=0` under the
fingerprinted cached imported context described below. Its native axiom
closure was observed; cached upstream source was not replayed.

## 3. Composition across subjects

The component article is [`least-prime`](least-prime.md), specifically its
foundational conjunction. The second branch is the imported order theorem
`Nat.le_antisymm`, whose exact premises are `q ≤ 2` and `2 ≤ q`. The local
bridge declaration is `GRWTSK.NumberTheory.Prime.least_prime_eq_two`.

The mathematical hypotheses remain exactly those of Theorem 1.1. The
composition has **SCOPED_EVIDENCE** for its two local declarations under a
fingerprinted cached imported context. This records the replayed local bridge;
it does not remove primality or leastness, replay upstream source, or establish
global dependency completeness.

The composite has one canonical article identity, `least-prime-uniqueness`,
with a primary elementary-number-theory subject and a reviewed order-theory
association. The union of component and bridge roots is deduplicated before
any graph measurement. Reaching the same upstream declaration through both
prime and order branches must not count it twice.

## 4. Verification and trust boundary

Current verification: **SCOPED_EVIDENCE** at math commit
`c288573d1e3cad54979fd95ebf17244f30224d41`.

| Source | Blob | Replayed local declaration |
|---|---|---|
| `GRWTSK/NumberTheory/Prime/LeastPrime.lean` | `79d54a7f0e730f0cd35f64089fdd9b29450e173a` | `GRWTSK.NumberTheory.Prime.least_prime_eq_two` |
| `GRWTSK/NumberTheory/FirstPrime.lean` | `eb8fb85c1d6a7d74aded94f1127cd5af8420dce5` | `GRWTSK.NumberTheory.two_is_first_prime` |

Both exact local sources were replayed twice with Lean `--trust=0`. The native
observer reported direct type/value references and the axiom closure
`[propext, Classical.choice, Quot.sound]` for both declarations. No `sorryAx`
was observed in those closures. The 8,750 imported artifact parts retained
stable fingerprints across the bound replay. These were cached imports;
upstream source was not replayed, and global dependency completeness is false.
This does not claim a source rebuild of Mathlib or a whole-library audit.

The pinned dependencies are Lean `4.33.0` and configured Mathlib commit
`db584cd6d46c92f209a44c0f1c829460d327499d`, as recorded in the
[toolchain](../../../../lean-toolchain) and
[dependency manifest](../../../../lake-manifest.json). Configured source
revisions do not certify cached imports as fresh source builds.

The immutable [public observation](https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/observation.json) and
[replay projection](https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/replay-projection.json)
retain the source bindings, successful commands, native-reference scope,
compiler/producer identities, and cached-context binding. The origin receipt is
`public-local-replay:6c87b6bcf2391184e4bcfa3f81a1a73c2c5bde93731758595c74e45382628730`.
Public redaction does not itself establish fresh replay.

The earlier pre-privacy selected receipt
`artifact:gitblob:4f3b77b45e32c93c9f9b514c776c1d2df5174a9c` retains its original
bytes and scope; it is not promoted by this separate local replay.

Default upstream-inclusive **S₃ remains unavailable** because upstream support
is incomplete. The supplemental [local-only measurement](https://github.com/grwtsk/noeaaeue/blob/6ea61287018a774e36783995daa126da7700b1c8/verification/math/result-publication/least-prime-local-source-replay-v1/measurements.json)
uses the explicit two-local-root union, excludes all upstream edges, and has
determinant 3 and log-volume approximately `0.5493061443340549`. Its full profile,
source pin, graph digest, and excluded-edge coverage are separately recorded.
It is a narrower demonstration, not the default ranking or a measure of the
complete mathematical support. The
[publication contract](../../../reference/result-publication-contract.md)
retains the default graph and evidence requirements.

## 5. Sources, attribution, and missing bridges

The prime facts are explicit upstream reuse from
[Mathlib's prime definitions](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Data/Nat/Prime/Defs.lean).
That source retains Microsoft Corporation's copyright, its public author
byline Leonardo de Moura, Jeremy Avigad and Mario Carneiro, and Apache-2.0
licensing. The imported order step is
[Lean's `Nat.le_antisymm`](https://github.com/leanprover/lean4/blob/d8b18978322de05a8f3dba51ef03cf5461676c17/src/Init/Prelude.lean),
whose source retains Microsoft Corporation's copyright, the public author
byline Leonardo de Moura and Mario Carneiro, and Apache-2.0 licensing.

Local composition and exposition: grwtsk contributors, MIT. No mathematical
originality, priority, historical influence, or journal-publication claim is
made. This article is library-source reuse, not a newly asserted paper-derived
formalization.

There is no additional mathematical premise beyond Theorem 1.1 in the stated
argument. Local replay, native-reference extraction, and the observed local
axiom closures are now recorded within their exact cached-context scope.
Upstream source replay and complete upstream support remain outside that
scope and are still required for the default upstream-inclusive ranking.

## 6. Revision and issuance

This is revision 2 of the article. The canonical mathematical date and actual
issuance timestamp are null in hidden article metadata; no issuance event is asserted.
Its stable identity, slug, component references, and source-description pins
are authoritative there. Future source changes require new scoped observations
and cannot silently extend historical evidence.

<details>
<summary>Historical source-description context: 24 October 2026, source pin 1b31ff873</summary>

These passages preserve the initial article draft before the present scoped
local evidence was reconciled. Their absence-of-replay statements apply to
that earlier context, not to the current local observation.

> This code is displayed as an inspected source proof candidate. No fresh kernel
> verification of its present bytes is claimed by this article.

> The mathematical hypotheses are exactly those of Theorem 1.1. The composition
> record marks this implication `CONDITIONAL` to retain those hypotheses; that
> label does not claim current kernel acceptance. The explicit source argument
> is present, while current replay and the axiom closure audit remain open
> verification obligations.

> ## 4. Verification and trust boundary
>
> Current verification: **NOT_RUN**. Local source-description pins are at math
> commit `1b31ff873827ecf9acdf41b501b21a12b242a504`:
>
> | Source | Blob | Scope |
> |---|---|---|
> | `GRWTSK/NumberTheory/Prime/LeastPrime.lean` | `79d54a7f0e730f0cd35f64089fdd9b29450e173a` | Exact uniqueness statement and source proof candidate. |
> | `GRWTSK/NumberTheory/FirstPrime.lean` | `eb8fb85c1d6a7d74aded94f1127cd5af8420dce5` | Foundational prime conjunction. |
>
> The pinned dependency descriptions are Lean `4.33.0` and Mathlib commit
> `db584cd6d46c92f209a44c0f1c829460d327499d`, as recorded in the repository's
> [toolchain](../../../../lean-toolchain) and
> [dependency manifest](../../../../lake-manifest.json). Their source descriptions
> appear in hidden article metadata. They do not replace a current replay or permitted-axiom
> audit. No `sorryAx` is permitted by the intended acceptance policy; no current
> complete axiom closure is asserted here.
>
> The earlier selected receipt
> `artifact:gitblob:4f3b77b45e32c93c9f9b514c776c1d2df5174a9c` retains its original
> source bytes and scope. The current privacy-redacted source differs from that
> historical catalog binding. Recording a new commit and blob does not refresh
> the receipt, verify this composite, or establish a stronger theorem.
>
> **S₃ unavailable:** no public compiler-observed verification dependency graph
> bound to these current source bytes is available. No spectral score or measured
> ranking is assigned. The
> [publication contract](../../../reference/result-publication-contract.md)
> retains the graph and evidence requirements.

> There is no additional mathematical premise beyond Theorem 1.1 in the stated
> argument. Fresh source replay, the complete axiom audit, and a current public
> verification dependency graph remain unfulfilled verification obligations.

</details>

<!-- BEGIN RESULT ARTICLE METADATA
{
  "result_article": {
    "schema": "grwtsk.result-article/1",
    "id": "least-prime-uniqueness",
    "slug": "least-prime-uniqueness",
    "aliases": [],
    "kind": "composite",
    "title": "Least-prime uniqueness by antisymmetry",
    "author": "grwtsk contributors",
    "abstract": "A natural prime q that is no greater than every natural prime equals two. The argument combines the foundational prime lower bound with leastness at the prime two, then applies natural-number order antisymmetry. Exact local replay covers the two GRWTSK declarations under a fingerprinted cached imported context; upstream source was not replayed.",
    "subjects": {
      "primary": "urn:uuid:f0916dc0-8e7b-4a8f-9aa7-a0cdd6651fa0",
      "associations": [
        {
          "id": "urn:uuid:c4f54bfa-058b-52ee-8611-9795fe7f7a0c",
          "review_status": "reviewed",
          "rationale": "The connecting step is the exact natural-number order antisymmetry declaration Nat.le_antisymm, applied to q ≤ 2 and 2 ≤ q."
        }
      ]
    },
    "statements": [
      {
        "id": "1.1",
        "classification": "source-proof-candidate",
        "hypotheses": [
          "q : ℕ",
          "hq : Nat.Prime q",
          "hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p"
        ],
        "conclusion": "q = 2",
        "declarations": [
          "GRWTSK.NumberTheory.Prime.least_prime_eq_two"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
            "path": "GRWTSK/NumberTheory/Prime/LeastPrime.lean",
            "blob": "79d54a7f0e730f0cd35f64089fdd9b29450e173a"
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
    "composition": {
      "roots": [
        "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
        "GRWTSK.NumberTheory.two_is_first_prime"
      ],
      "components": [
        "least-prime"
      ],
      "conclusion": "For q : ℕ, Nat.Prime q and (∀ p : ℕ, Nat.Prime p → q ≤ p) imply q = 2.",
      "bridge_status": "SCOPED_EVIDENCE",
      "bridge_declarations": [
        "GRWTSK.NumberTheory.Prime.least_prime_eq_two"
      ],
      "unresolved_premises": [],
      "bridge_scope": "The exact local bridge and foundational conjunction were replayed twice under the bound cached imported context. Primality and leastness remain the theorem hypotheses; upstream source replay and global dependency closure are not claimed."
    },
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
        "value": 0.5493061443340549,
        "method": "exact_rational_determinant_then_float_log.v1",
        "version": "1",
        "coverage": "Supplemental local_only demonstration over 2 local declaration vertices and 1 local typed edges; all upstream edges deliberately excluded.",
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
          "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
          "GRWTSK.NumberTheory.two_is_first_prime"
        ],
        "exact_determinant": "3",
        "decimal_value": "0.54930614433405484569762261846126285232374527891135",
        "decimal_precision": 50,
        "coverage_details": {
          "vertices": [
            "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
            "GRWTSK.NumberTheory.two_is_first_prime"
          ],
          "distances": {
            "GRWTSK.NumberTheory.Prime.least_prime_eq_two": 0,
            "GRWTSK.NumberTheory.two_is_first_prime": 0
          },
          "dependency_complete": true,
          "completeness_scope": "local_only",
          "excluded_upstream_edges": [
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "And.right",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Eq",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "LE.le",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "LE.le",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Nat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Nat",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Nat.Prime",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Nat.Prime",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Nat.le_antisymm",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "Nat.prime_two",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "OfNat.ofNat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "OfNat.ofNat",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "instLENat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "instLENat",
              "statement_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "instOfNatNat",
              "proof_reference"
            ],
            [
              "GRWTSK.NumberTheory.Prime.least_prime_eq_two",
              "instOfNatNat",
              "statement_reference"
            ],
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
    "upstream_dependencies": [
      {
        "declarations": [
          "Nat.prime_two",
          "Nat.Prime.two_le"
        ],
        "classification": "imported-mathematics",
        "source_pin": {
          "repository": "https://github.com/leanprover-community/mathlib4",
          "commit": "db584cd6d46c92f209a44c0f1c829460d327499d",
          "path": "Mathlib/Data/Nat/Prime/Defs.lean",
          "blob": "5a4bb9cd22784d65a0ade53b88c3641f38c19f85"
        },
        "scope": "Inspected source declarations in the pinned local Mathlib checkout; not fresh compilation."
      },
      {
        "declarations": [
          "Nat.le_antisymm"
        ],
        "classification": "imported-mathematics",
        "source_pin": {
          "repository": "https://github.com/leanprover/lean4",
          "commit": "d8b18978322de05a8f3dba51ef03cf5461676c17",
          "path": "src/Init/Prelude.lean",
          "blob": "11abbc2c3c4fe6ade835ad3ab6c241385f25f918"
        },
        "scope": "Inspected source declaration shipped with Lean 4.33.0; toolchain commit identifies the release source description, not a new audit."
      }
    ],
    "component_statement_sources": [
      {
        "repository": "https://github.com/grwtsk/math",
        "commit": "c288573d1e3cad54979fd95ebf17244f30224d41",
        "path": "GRWTSK/NumberTheory/FirstPrime.lean",
        "blob": "eb8fb85c1d6a7d74aded94f1127cd5af8420dce5"
      }
    ],
    "historical_evidence": [
      {
        "reference": "artifact:gitblob:4f3b77b45e32c93c9f9b514c776c1d2df5174a9c",
        "scope": "Retained selected receipt for original source bytes; not acceptance of this new article or present privacy-redacted source.",
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
          "path": "GRWTSK/NumberTheory/Prime/LeastPrime.lean",
          "blob": "79d54a7f0e730f0cd35f64089fdd9b29450e173a"
        }
      ],
      "verification": {
        "status": "NOT_RUN",
        "scope": "Current mathematical source descriptions at math commit 1b31ff873827ecf9acdf41b501b21a12b242a504. No current kernel replay or complete transitive axiom audit is asserted; upstream source descriptions and the displayed argument are not replay evidence.",
        "evidence": [],
        "axiom_policy": "Fresh transitive axiom audit NOT_RUN. Intended acceptance forbids sorryAx and requires an explicit current permitted-axiom scope.",
        "unresolved_premises": [],
        "open_obligations": [
          "Replay the exact current local declarations with the pinned Lean and Mathlib dependencies.",
          "Audit the complete owned-declaration and transitive axiom closure.",
          "Produce a public compiler-observed verification dependency graph for the pinned current bytes."
        ]
      },
      "metrics": [
        {
          "id": "spectral-log-volume-3",
          "value": null,
          "method": "Three-degree weighted Laplacian over the union of unique declaration roots; see result-publication-contract.md and ranking-profile.json.",
          "version": "1",
          "coverage": "Current public compiler-observed verification graph unavailable.",
          "provenance": "No graph extraction, score evaluation, or measured ranking was run.",
          "unavailable_reason": "verification_dependency_graph_unavailable"
        }
      ],
      "abstract": "A natural prime q that is no greater than every natural prime equals two. The argument combines the foundational prime lower bound with leastness at the prime two, then applies natural-number order antisymmetry. This is explicit reuse of upstream prime facts and order structure; current-source kernel replay has not been run.",
      "scope": "Historical article descriptions only; these fields do not certify replay at the earlier commit."
    }
  }
}
END RESULT ARTICLE METADATA -->
