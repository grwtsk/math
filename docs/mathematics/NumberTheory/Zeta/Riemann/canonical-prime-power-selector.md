# Canonical increasing prime-power selector

The arithmetic event selector no longer depends on detector moments or geometric fitting.

For a threshold N, define nextPrimePowerValue(N) to be the least natural q such that

N < q and IsPrimePow q.

Existence follows from Euclid's theorem: there is always a prime p >= N+1, and every prime is a prime power.

For each selected natural prime power q, recover the event canonically from

prime = minFac(q),
exponent = factorization(q)(minFac(q)).

Mathlib's prime-power factorization theorem proves

minFac(q)^factorization(q)(minFac(q)) = q.

Prime-power uniqueness proves any other representation q=p^k with p prime and k>0 has exactly the same prime and exponent.

Iterating the least-successor map yields a strictly increasing sequence. The minimality theorem proves no natural prime power is skipped between one stage and the next.

The associated packing point is therefore canonical:

P_n = (k_n log p_n, log p_n)

using the pinned von Mangoldt coefficient source.

This selector is intentionally independent of the OpenAI detector. A future theorem may relate detector windows to ranges or groupings of this canonical arithmetic sequence, but the detector does not choose the arithmetic points themselves.

Open obligations are now the analytic comparison and full explicit-formula completion, not arithmetic event selection.
