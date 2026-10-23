# Coverage and discrete quotas


**Coverage.** With natural batches `b n ≥ 1`, define `S₀=0`, `Sₙ₊₁=Sₙ+bₙ`. Service every pinned obligation index in `[Sₙ,Sₙ₊₁)`. Then every index belongs to a service interval. An unbounded clock alone cannot guarantee that the scheduler selects each obligation.

**Quota service.** For a fixed finite channel set, integer denominator `Q>0` and nonnegative quotas summing to `Q`, add quota to credit, choose a maximal-credit channel, and subtract `Q`. Under the exact hypotheses, the source proves bounded discrepancy and arbitrarily many service slots for channels with positive quotas.

[The exact source](../../../../GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean) retains all conditions, including fixed positive quotas for the no-starvation consequence. [The quota interface](quotas.md) explains tie breaking and quantization.

**Limits.** Dynamic eligibility, fair quantization of arbitrary fractional inputs, machine-integer overflow and successful task completion require separate arguments. Continuing admissible service is assumed. No authorization or acceptance is produced by fairness.

**Evidence.** The earlier waveform receipt (artifact:gitblob:65a87c069a4377b8007f7ec91de73833d500b216) records checks at former source paths. It is historical; current relocated-source replay is not claimed by this page. Proposed scheduling relevance is not an implemented runtime consumer.

**Credit.** Human mathematical direction: grwtsk contributors; OpenAI Codex assistance. Classical scheduling reasoning and Mathlib origins retained; local MIT, Mathlib Apache-2.0; no originality claim.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean`](../../../../GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 22 |
| Theorem/lemma commands | 17 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
