# Integer quota allocation and discrepancy

Use integer quotas with denominator `Q>0`, nonnegative quotas summing to `Q`, and a positive floor for each required channel. Add quotas to accumulated credit, serve a channel with maximal credit, and subtract `Q` from its credit. Any maximal choice satisfies the proof; an executable implementation must pin stable-ID tie breaking. `debt_invariant` and `upper_from_lower` establish `-Q ≤ D_c ≤ (m-1)Q`. `service_bound` proves `N*q_c ≤ Q*count_c(N)+(m-1)Q`; `no_starvation` gives arbitrarily many slots. Independent flooring of positive fractions fails.

The theorem concerns quantized quotas, not an unproved softmax quantizer. Changing the eligible set requires an epoch/credit-transfer policy. A finite machine adapter must additionally prove that intermediate credits, counts and products fit its integer representation; these mathematical integer proofs are not machine-overflow proofs.


## Source and verification scope

[Source](../../../../GRWTSK/Combinatorics/Sequences/QuotaDiscrepancy.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
