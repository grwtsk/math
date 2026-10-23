# Reflection-even/odd safe-shift packing

The safe plus/minus Dirichlet terms are now decomposed before positivity:

E_q(s) = (T_+(q,s)+T_-(q,s))/2,
O_q(s) = (T_+(q,s)-T_-(q,s))/2.

Critical reflection sends a=Re(s)-1/2 to -a and swaps T_+ with T_-. Therefore

E_q(reflect(s)) = E_q(s),
O_q(reflect(s)) = -O_q(s).

The concrete planar point is

P_q(s) = (Re E_q(s), Re O_q(s)).

Under critical reflection this becomes reflection across the horizontal axis. Oriented area changes sign, while squared area / Gram volume is invariant.

On the critical line a=0, the safe shifts coincide exactly. Hence every O_q is zero. Every arithmetic point lies on the horizontal axis, and every three-point Gram volume is exactly zero.

This is structurally closer to the signed quartic witness than a plus-only or fully odd packing. One coordinate remains reflection-even while the second is reflection-odd, so the oriented area can vanish linearly in a and its square can carry the required a^2 factor.

No claim is made yet that the remaining factor equals a^2+3t^2 or that a positive limiting coefficient exists. Those are now the precise analytic/algebraic comparison obligations.
