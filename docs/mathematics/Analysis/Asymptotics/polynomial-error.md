# Polynomial return with a paid error

For every `T≥0`, assume `X(T)=R(T)+e(T)`, `R(T)≤C_R(1+T)^r` and `|e(T)|≤C_e(1+T)^s`, with `C_R,C_e≥0`. Then

`X(T) ≤ (C_R+C_e)(1+T)^(max r s)`.

The generic [source theorem](../../../../GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean) permits real exponents. The P04 interpretation additionally requires nonnegative exponents and the actual uniform arithmetic premises. The proof bounds `e≤|e|`, compares powers using `1+T≥1`, and adds the nonnegative coefficients.

This is a reusable conditional adapter. An exact source/readout identity and both uniform bounds are required. Finite simulation, determinant one, generic Gram positivity or a missing reconstruction correction cannot supply them. Angular Fourier normalization, reconstruction and the actual Möbius-specific P04 bound remain separate obligations.

[The arithmetic growth interface](../../NumberTheory/Moebius/Energy/growth.md) retains these distinctions. [Its prior receipt](../../../../evidence/waveform-checks.json) is historical at former paths; this documentation does not claim relocated-source replay or an actual P04/RH proof.

Human mathematical direction: R.A. Jacob Martone; OpenAI Codex assistance; classical estimates and direct Mathlib origins retained. Local MIT, Mathlib Apache-2.0; no originality claim.
