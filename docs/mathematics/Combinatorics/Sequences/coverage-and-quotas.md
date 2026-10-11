# Coverage and discrete quotas

**Coverage.** With natural batches `b n ≥ 1`, define `S₀=0`, `Sₙ₊₁=Sₙ+bₙ`. Service every pinned obligation index in `[Sₙ,Sₙ₊₁)`. Then every index belongs to a service interval. An unbounded clock alone cannot guarantee that the scheduler selects each obligation.

**Quota service.** For a fixed finite channel set, integer denominator `Q>0` and nonnegative quotas summing to `Q`, add quota to credit, choose a maximal-credit channel, and subtract `Q`. Under the exact hypotheses, the source proves bounded discrepancy and arbitrarily many service slots for channels with positive quotas.

[The exact source](../../../../GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean) retains all conditions, including fixed positive quotas for the no-starvation consequence. [The fuller interface](../../../waveform-interfaces.md) explains tie breaking and quantization.

**Limits.** Dynamic eligibility, fair quantization of arbitrary fractional inputs, machine-integer overflow and successful task completion require separate arguments. Continuing admissible service is assumed. No authorization or acceptance is produced by fairness.

**Evidence.** [The earlier waveform receipt](../../../../evidence/waveform-checks.json) records checks at former source paths. It is historical; current relocated-source replay is not claimed by this page. Proposed scheduling relevance is not an implemented runtime consumer.

**Credit.** Human mathematical direction: R.A. Jacob Martone; OpenAI Codex assistance. Classical scheduling reasoning and Mathlib origins retained; local MIT, Mathlib Apache-2.0; no originality claim.
