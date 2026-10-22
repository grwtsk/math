# Dirichlet-damped canonical prime-power packing

The raw coordinate (log q, Lambda(q)) remains the arithmetic provenance layer. It is not the best analytic packing coordinate because its volume decay can depend on prime-gap behavior.

The pinned Dirichlet-series source supplies a natural PNT-free damping. At s=2 define

P_2(q) = (log q / q^2, Lambda(q) / q^2).

This is the same canonical prime-power schedule and the same von Mangoldt coefficient, multiplied by the exact convergent Dirichlet scale q^-2.

The canonical natural prime-power values are strictly increasing and therefore tend to infinity. Mathlib's log-versus-power asymptotic proves

log q / q^2 -> 0.

Since 0 <= Lambda(q) <= log q on prime powers,

Lambda(q) / q^2 -> 0

by squeezing.

Thus every point P_2(q_n) tends to the origin. Its two consecutive edge vectors tend to zero, hence the oriented area tends to zero and the squared Gram area satisfies

V_n^(2)^2 -> 0.

This proves the necessary packing-decay condition without the prime number theorem, without a prime-gap theorem, and without RH.

The remaining hard theorem is no longer packing decay. It is a source-faithful comparison between this Dirichlet-damped positive Gram sequence (or the correct test-function generalization of it) and the signed quartic zero witness with a positive limiting coefficient and complete residual control.
