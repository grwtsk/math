# Polynomial return with a paid error


For every `T≥0`, assume `X(T)=R(T)+e(T)`, `R(T)≤C_R(1+T)^r` and `|e(T)|≤C_e(1+T)^s`, with `C_R,C_e≥0`. Then

`X(T) ≤ (C_R+C_e)(1+T)^(max r s)`.

The generic [source theorem](../../../../GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean) permits real exponents. The P04 interpretation additionally requires nonnegative exponents and the actual uniform arithmetic premises. The proof bounds `e≤|e|`, compares powers using `1+T≥1`, and adds the nonnegative coefficients.

This is a reusable conditional adapter. An exact source/readout identity and both uniform bounds are required. Finite simulation, determinant one, generic Gram positivity or a missing reconstruction correction cannot supply them. Angular Fourier normalization, reconstruction and the actual Möbius-specific P04 bound remain separate obligations.

[The arithmetic growth interface](../../NumberTheory/Moebius/Energy/growth.md) retains these distinctions. Its prior receipt (artifact:gitblob:65a87c069a4377b8007f7ec91de73833d500b216) is historical at former paths; this documentation does not claim relocated-source replay or an actual P04/RH proof.

The [catalog record](../../../reference/results.json) retains its earlier source
hash separately from the observed current hash. The present source differs from
that binding, and current verification is not run. The historical predecessor
receipt does not certify the present split module.

Human mathematical direction: grwtsk contributors; OpenAI Codex assistance; classical estimates and direct Mathlib origins retained. Local MIT, Mathlib Apache-2.0; no originality claim.

The source binding was updated after history integration. Earlier proof receipts retain their original bytes; this page does not assert fresh acceptance of the updated source.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

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
