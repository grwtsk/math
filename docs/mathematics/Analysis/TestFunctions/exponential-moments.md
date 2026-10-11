# Exponential moments and second-derivative variation

For a smooth compactly supported profile `h`, two integrations by parts give

```text
integral exp(c*t) * h''(t) = c^2 * integral exp(c*t) * h(t).
```

Thus `k = h'' - h/4` has zero exponentially weighted moments at both `c = 1/2`
and `c = -1/2`, with product integrability proved. These are necessary constraints
for the native profile variation. They also explain a checked obstruction:
the even, continuous function `exp(t/2) + exp(-t/2)` is nonzero but annihilates
every differential-image test `k`. Ordinary even-test separation cannot by
itself establish nonstationarity on that constrained space.

A source-bound native prototype separately checks continuity and evenness of the
complete compensated Mangoldt translation and gives an even smooth separator
for every real scalar compensation when `A > log(2)/2`. That preparation uses
the captured original project objects and checks their source bindings;
canonical dependency migration remains pending. The public generic modules do
not instantiate the native operator. The manuscript's profile variation requires
`k = h'' - h/4` for an even smooth interior profile `h`; an arbitrary even test
`g` need not have that form. Existence of a separating differential-image test,
identification of the first-variation coefficient and the normalized admissible
profile path remain separate obligations. No uniform signed arithmetic price, Möbius pickup
identification, P04, P05 or unconditional RH result is claimed.


## Source and verification scope

[Source](../../../../GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
