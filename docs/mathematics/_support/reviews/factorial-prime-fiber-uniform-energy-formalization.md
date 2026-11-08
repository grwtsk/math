# Formalizing factorial prime-length uniform energy without promoting the RH premise

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition:** SOURCE_PROOF_CANDIDATE. This increment provides actual Lean declarations and proof scripts for the finite original-source infrastructure and conditional uniform-energy return. It does **not** claim Lean compilation, fresh kernel checking, expected-type agreement, transitive axiom acceptance, a proved factorial-tail arithmetic lemma, Problem P, or RH.

## Original statement and preserved source

The unchanged RH-facing target is `GRWTSK.NumberTheory.SignedWaveformEnergy.UniformSignedWaveformEnergyBudget` in `SignedWaveformEnergyTarget.lean` (historical blob `daafa00030fe8bc95720486aab93ef7a4463155e`). Its proposition quantifies *every* positive exponential rate and *every* dyadic height for the **complete** original real Möbius waveform. It is open and is not instantiated here.

The new module `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/FactorialPrimeFiberUniformEnergy.lean` directly imports the original source and the earlier birth-continuity/physical-Gram integrability module. The source coefficients are literally `moebiusReal n`, the responses are `pickupResponse n u`, and the original cutoff is `⌊Real.exp u⌋₊` at dynamic time. The signed square is expanded only after the complete source is assembled. All finite sum transports use the original numerical integer as the payload; there is no sign-free surrogate or a prime-character-only projection.

## The proved-in-source finite theorem layer (pending Lean replay)

`blockIndex p a = (p+1)! + (a.val+2)` is injective for `a : Fin p`. For `2≤p`, every such index has the explicit proper divisor `a.val+2`, since it divides `(p+1)!` and its sum with that divisor. `blockIndex_composite` and `not_prime_of_mem_block` are the exact composite-point certificates; they do not confuse a consecutive block containing **no prime integers** with the moving-sieve predicate for integers with no small prime divisor.

`activeBlock N` uses the complete true union membership predicate restricted to the original closed inventory `1..N`, retaining squareful zeros. `finiteWave` is the original coefficient-weighted sum on an arbitrary finite set S. `pickupResponse_bounds` establishes the unchanged causal response is nonnegative and at most `2/sqrt n` at positive indices, reusing the exact continuous birth identity. The finite mass is

\[
W(S)=\sum_{n\in S}|\mu(n)|\frac{2}{\sqrt n}.
\]

`finiteWave_abs_le_weightBudget` gives \(|F_S(u)|≤W(S)\) with all actual signs first retained; `finiteWave_continuous` and `finiteEnergy_le_weightBudget_sq` give, for `0≤T`,

\[
\int_0^T|F_S(u)|^2\,du≤T W(S)^2.
\]

`finiteEnergy_eq_full_signedGram` uses the imported literal response-product integrability and finite double-sum interchange. The entire signed Gram \(\sum_{m,n\in S}\mu(m)\mu(n)K_T(m,n)\) is recovered with both ordered orientations, diagonal, squareful zeros, and all mixed sectors. `blockWave_eq_fixed_of_le`, `blockEnergy_eq_frozen` and `blockEnergy_eq_full_signedGram` transport from the genuinely changing birth inventory to the fixed cutoff at the outer integration horizon, without introducing a new kernel.

`waveform_eq_block_add_dense`, `waveform_sq_eq_complete_mixed` and `energy_eq_complete_mixed_integral` preserve the exact complete source:

\[
F_\mu=F_B+F_C,\qquad
H=\int_0^T(|F_B|^2+2F_B F_C+|F_C|^2)\,du.
\]

`waveform_sq_le_two_component_squares` pays the full mixed term, using the universal algebraic inequality \((a+b)^2≤2a^2+2b^2\); it does not call the two sectors independent. The auxiliary `evenPhase`, `oddPhase`, `even_add_odd`, `odd_reflect_neg` and `signed_pair_defect` encode exact phase reflection and arithmetic sign defects, not a claimed automorphic source symmetry.

## The genuine arithmetical missing lemma

The prior independent analytic calculation proves, in ordinary mathematics, a sharper source-specific bound from the Möbius values at the prime-length factorial blocks `I_2={8,9}`, `I_3={26,27,28}`, and `I_5={722,...,726}`, plus a geometric factorial tail. It shows

\[
\sup_N W(\text{activeBlock }N)≤3/5.
\]

The **Lean** module names this exact obligation `FactorialBlockArithmeticWeightBound`. This is an explicitly **unsupplied Prop**, not an axiom, proof claim, or a hidden structure field. `blockEnergy_le_nine_twentyfifths_of_weightBound` consumes it to deduce \(H_B(T)≤9T/25\) for all `T≥0`. `block_allRate_of_weightBound` derives the dyadic every-positive-rate upper bound and pays its \(\delta^{-1}\) constant. These conditional implications are the formalized return; they must not be confused with a kernel-accepted proof that the premise holds.

The exact outstanding arithmetic Lean increment is: prove `FactorialBlockArithmeticWeightBound` using literal Möbius zeros at the first three blocks, uniqueness or disjointness as needed for enumeration, and the uniform rational bound on the factorial tail \(\sum_{p\ge7,\ p\ \mathrm{prime}}p/\sqrt{(p+1)!}<7/120\). No finite computer test may be substituted for this infinite inequality. The already published analytic derivation is in [uniform-energy-reflected-factorial-fibers-and-dense-matching-gate.md](uniform-energy-reflected-factorial-fibers-and-dense-matching-gate.md).

The separate `DenseUniformEnergyBudget` is explicitly still open and RH-strength. Its mathematical equivalence with the original complete source, via a fully paid mixed-energy comparison and the historical quarter-unit endpoint allowance, is not silently claimed as a compiled Lean theorem. The named alias `OriginalUniformEnergyResearchTarget` refers to the original open budget, not a proof.

## Hostile comparisons and verification boundaries

The factorial block union is sparse; the dense complement retains index 1, all primes and other composites. The prime-length address `Fin p`, the arithmetic parity / additive square-modulus residue, the coefficient-precision tower and the geometric dyadic cutoff are different axes. A reflection of auxiliary phase coordinates does not change the actual source; reflection of numerical indices without transporting the causal kernel requires a defect. An odd-length Liouville ±1 word has a nonvanishing principal sum. A control sequence with all positive dense coefficients has exponential energy even with the same frame, refuting a sign-blind global energy theorem **at its arbitrary-coefficient scope**, not RH.

Source proof scripts were authored against the pinned current root Lean `v4.34.1` and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The installed environment has no `lean`, `lake` or `elan` executable. The module was not compiled or kernel checked and its exact elaborated theorem types / transitive axioms remain unchecked. Static source review detected no `sorry`, `admit`, added `axiom` or `native_decide`; that lexical observation is not a trust audit. Importing this module is not added to the aggregate root. The accompanying static verification target records the exact files, pins and NOT_RUN statuses; no CI, native verifier, controller or scheduler is dispatched.

Follow-on: independently prove the arithmetic weight Prop and check it at the exact committed bytes, then separately address dense signed matching or other uniform arithmetic dispersion. No implication to RH is asserted without the complete every-rate dense supplier and the previously unrun dependency closure.
