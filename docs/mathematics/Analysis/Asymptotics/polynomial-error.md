# Polynomial return with a paid error

grwtsk contributors

<!-- BEGIN GENERATED RESULT ABSTRACT -->

## Abstract

An exact decomposition X(T)=R(T)+e(T), together with uniform polynomial bounds on the readout and absolute error and nonnegative coefficients, gives X(T) ≤ (C_R+C_e)(1+T)^(max r s) for every T≥0. Exponents are real. Applying this conditional adapter to an arithmetic target requires the actual decomposition and both uniform bounds.

<!-- END GENERATED RESULT ABSTRACT -->

[Results in this area](index.md) · [Results index](../../index.md)


## 1. Statement and hypotheses

For every `T≥0`, assume `X(T)=R(T)+e(T)`, `R(T)≤C_R(1+T)^r` and `|e(T)|≤C_e(1+T)^s`, with `C_R,C_e≥0`. Then

`X(T) ≤ (C_R+C_e)(1+T)^(max r s)`.

## 2. Proof and exponent scope

The generic [source theorem](../../../../GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean) permits real exponents. The P04 interpretation additionally requires nonnegative exponents and the actual uniform arithmetic premises. The proof bounds `e≤|e|`, compares powers using `1+T≥1`, and adds the nonnegative coefficients.

## 3. Missing arithmetic bridges

This is a reusable conditional adapter. An exact source/readout identity and both uniform bounds are required. Finite simulation, determinant one, generic Gram positivity or a missing reconstruction correction cannot supply them. Angular Fourier normalization, reconstruction and the actual Möbius-specific P04 bound remain separate obligations.

## 4. Historical evidence and source scope

[The arithmetic growth interface](../../NumberTheory/Moebius/Energy/growth.md) retains these distinctions. Its prior receipt (artifact:gitblob:65a87c069a4377b8007f7ec91de73833d500b216) is historical at former paths; this documentation does not claim relocated-source replay or an actual P04/RH proof.

The [catalog record](../../../reference/results.json) retains its earlier source
hash separately from the observed current hash. The present source differs from
that binding, and current verification is not run. The historical predecessor
receipt does not certify the present split module.

## 5. Attribution

Human mathematical direction: grwtsk contributors; OpenAI Codex assistance; classical estimates and direct Mathlib origins retained. Local MIT, Mathlib Apache-2.0; no originality claim.

The source binding was updated after history integration. Earlier proof receipts retain their original bytes; this page does not assert fresh acceptance of the updated source.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

## 6. Current verification and revision

Current verification: **NOT_RUN**. The hidden article metadata records the present source
commit and blob for the exact conditional theorem. Earlier source digests,
receipt references, and relocation notes above remain historical descriptions;
these new source-description pins do not replay or strengthen them.

The generic theorem requires no nonnegativity hypothesis on the real exponents
`r` and `s`. Its proof uses `1 ≤ 1+T`, exponent monotonicity for that base,
nonnegative coefficient multiplication, and `e(T) ≤ |e(T)|`. The uniform bounds
and exact identity remain premises; no P04 or Riemann-hypothesis conclusion is
asserted.

**S₃ unavailable:** no public compiler-observed verification dependency graph is
available for the pinned current source. Revision metadata is recorded without
an actual issuance event.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean`](../../../../GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean).

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
    "id": "polynomial-error",
    "slug": "polynomial-error",
    "aliases": [],
    "kind": "leaf",
    "title": "Polynomial return with a paid error",
    "author": "grwtsk contributors",
    "abstract": "An exact decomposition X(T)=R(T)+e(T), together with uniform polynomial bounds on the readout and absolute error and nonnegative coefficients, gives X(T) ≤ (C_R+C_e)(1+T)^(max r s) for every T≥0. Exponents are real. Applying this conditional adapter to an arithmetic target requires the actual decomposition and both uniform bounds.",
    "subjects": {
      "primary": "urn:uuid:08e5fed0-7528-4d4c-aa1f-01c11c97eb49",
      "associations": []
    },
    "statements": [
      {
        "id": "1.1",
        "classification": "conditional-interface",
        "hypotheses": [
          "X R e : ℝ → ℝ; CR Ce r s : ℝ",
          "0 ≤ CR",
          "0 ≤ Ce",
          "∀ T : ℝ, 0 ≤ T → X T = R T + e T",
          "∀ T : ℝ, 0 ≤ T → R T ≤ CR * (1+T)^r",
          "∀ T : ℝ, 0 ≤ T → |e T| ≤ Ce * (1+T)^s"
        ],
        "conclusion": "∀ T : ℝ, 0 ≤ T → X T ≤ (CR+Ce)*(1+T)^(max r s)",
        "declarations": [
          "GRWTSK.Analysis.Waveform.polynomial_return"
        ],
        "source_pins": [
          {
            "repository": "https://github.com/grwtsk/math",
            "commit": "1b31ff873827ecf9acdf41b501b21a12b242a504",
            "path": "GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean",
            "blob": "408a212e1afc64104fdd09e08e4f95a9fecb551b"
          }
        ]
      }
    ],
    "verification": {
      "status": "NOT_RUN",
      "scope": "Current source-description pins only at math commit 1b31ff873827ecf9acdf41b501b21a12b242a504. No fresh kernel replay, transitive axiom audit, or public compiler-observed verification graph has been produced for these bytes. Historical references retain their original paths, bytes and scope.",
      "evidence": [],
      "axiom_policy": "Fresh transitive axiom audit NOT_RUN. No sorryAx is permitted by the intended acceptance policy; any actual permitted-axiom claim requires a current scoped audit.",
      "unresolved_premises": [
        "A P04 application requires its actual exact reconstruction identity and both uniform arithmetic bounds; this adapter does not supply them."
      ],
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
        "scope": "Historical predecessor waveform evidence; does not certify the present split, relocated, or privacy-redacted module.",
        "certifies_current_source": false
      }
    ]
  }
}
END RESULT ARTICLE METADATA -->
