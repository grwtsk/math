# Independent-input prime-local Möbius production and the original signed Gram

Local attribution: grwtsk contributors. Research date: 2026-11-01.
Formalization assistance: OpenAI ChatGPT. Source proof candidate only.

## Primary source correspondence

The existing `PhysicalMoebiusBitCodec.recordMoebius` reads
`ArithmeticFunction.moebius n` to select two actual Gödel timelike
polarization states. The new `PhysicalPrimeLocalProduction.producedBits`
instead computes (1) `Squarefree n` and (2) the parity sign
`(-1 : ℤ) ^ Nat.cardFactors n`. Prime-exponent 0 does nothing,
exponent 1 flips sign, and exponent at least 2 kills the live bit.
No μ evaluation occurs in this state's input-generation rule.

The exact recovery theorem is an arithmetic proof, not independent
experimental evidence. When n is nonsquarefree, generated live=0,
and Mathlib μ(n)=0. When n is squarefree, the generated sign is
`(-1)^cardFactors n` and Mathlib μ(n) has precisely that value.
These observations justify `decode_producedBits` for all n,
including the zero index as a harmless zero outside the original
1≤n source inventory. The generator computes essentially the same
factorization information that *defines* classical μ; it is not
a new cancellation mechanism.

Attach original n to two existing future-timelike source states,
measure transverse theta1 polarizations, and transfer them using
the genuine chart shift. The readout agrees with μ(n), which makes
every coefficient-level source-minus-observed discrepancy zero in
the ideal stream. `signedReadoutDefect` still retains all losses
for arbitrary imperfect streams. Exact finite Gram reconstruction
therefore gives `observedPacket = pickupCross`, and the existing
elliptic return preserves original integer indices, zero symbols,
rough, both mixed, and signed trace residuals. The true q*pi
clock normalization affects only the real observation time, not
ZMod q, prime q, valuations or the finite field.

## Independently argued signed dense-sector constraint (prose only)

For every prime q and q∤m, multiplicativity yields
μ(qm) = -μ(m), and μ(q²m)=0. Put V(q,m,u)=r_m(u)-r_(qm)(u).
At each real u, the original waveform satisfies
F(u) = Σ_{m≥1,q∤m} μ(m) V(q,m,u);
all sums are finite on its birth support.

Let K_T(m,n)=∫₀ᵀ r_m(u)r_n(u)du. For T≥0, square the
preceding identity and subtract the original *ungrouped*
diagonal. The exact ordered off-diagonal source is

  X_mu(T) = Σ_{m≠n,q∤mn} μ(m)μ(n) ∫₀ᵀ V(q,m,u)V(q,n,u)du
            - 2 Σ_{m≥1,q∤m} μ(m)² K_T(m,qm).

The second term equals the difference between paired and original
diagonals. Since K_T(m,qm)≥0, it is nonpositive. Such source pairs
have distance (q-1)m, and for q=2, large odd m contributes inside
the Putnam surviving dense long-distance range.

**Critical unresolved premise:** the other grouped off-diagonal
sum is still signed, can be large, and is not bounded at every
positive exponential rate. This exact negative credit is neither
an RH result nor a claim to control all dense surviving sectors.

## Quantitative defects, hostile controls and comparative scope

For arbitrary readings b(n), let e(n)=μ(n)-b(n).
Every original ordered pair has exact discrepancy

  μ(m)μ(n)-b(m)b(n) = e(m)b(n)+b(m)e(n)+e(m)e(n).

No unordered collapse, diagonal replacement or coefficient loss
is permitted in the exact signed defect. Source indices q and q²
share residue 0 mod q but different exponents and μ values; a
residue alone cannot determine the source. A spatial chart transfer
does not implement a time rescaling; clock complements remain
those of the existing window module.

Finite numerical diagnostic: original signed Gram expansion was
checked for N=50 and N=200, q∈{2,3,5}; tested residuals were
≤4e-15 floating-point. This is not an exact symbolic certificate,
native Lean execution or experimental physical confirmation.

Prior art: Mathlib `ArithmeticFunction.moebius` gives the
squarefree/(-1)^cardFactors formula; existing grwtsk/math two-bit
codec and Putnam sparse-gap results are retained. No originality
is claimed for elementary factorization, local prime pairing or
Gram expansion. Independent literature novelty assessment not
performed. The new distinction is a source-specific generator
that avoids reading μ in the producer while preserving its exact
previously declared physical observer and signed Gram interface.

## Trust and return

Parent math source at inspection: current main resolved at the
publication operation, with immutable commit and blob readback
required. Lean 4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
The q-pair dense-sector identity remains mathematical prose,
not an added Lean theorem. For the new producer Lean module:
parsing NOT_RUN; compilation NOT_RUN; expected types NOT_RUN;
fresh independent kernel replay NOT_RUN; transitive axiom audit
NOT_RUN. Experimental hardware NOT_CONSTRUCTED. Independent
all-positive-rate dense signed bound OPEN. RH OPEN. Recheck
new byte identities before accepting later formal evidence.
