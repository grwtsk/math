# Exact safe-shift prime-term factorization

For one actual prime-power label q and one actual nontrivial zero, write

a = Re(s)-1/2,
t = Im(s).

The safe source terms factor exactly relative to the a=0 center term:

T_plus(q,s)  = T_center(q,t) q^(-a),
T_minus(q,s) = T_center(q,t) q^( a),

where T_center is the same von Mangoldt L-series term evaluated at 2+i t.

Therefore

E_q = T_center * (q^(-a)+q^a)/2,
O_q = T_center * (q^(-a)-q^a)/2.

All horizontal-defect dependence is now isolated in real powers of the actual arithmetic label q. Height dependence remains in the common complex center term.

This is the correct place to derive any stage normalization. An admissible scale must be built from source quantities such as the center amplitudes, dyadic/window geometry, or an exact test-function frame. It must not divide by the desired quartic witness or choose a scale after seeing its sign.

The factorization also explains why a stable local coefficient is difficult: consecutive prime powers carry different center amplitudes and different height phases. A windowed/dyadic source is therefore a natural next candidate.
