# Cyclic translation subadditivity and telescoping

The telescoping supplier is now source-proved generically.

For any cyclic real-valued function, define

\[
T_f(r)=\sum_x |f(x)-f(x-r)|.
\]

The source proves subadditivity

\[
\boxed{
T_f(r+s)\le T_f(r)+T_f(s).
}
\]

Induction therefore gives

\[
T_f(k)\le k\,T_f(1)
\]

for every natural shift \(k\).

For a residue \(r\in\mathbf Z/L\mathbf Z\), the forward representative is
\(r.val\).  The reverse direction is represented by \(L-r.val\), since

\[
(L-r.val)\bmod L=-r.
\]

Using the previously proved symmetry \(T_f(-r)=T_f(r)\), the source obtains

\[
\boxed{
T_f(r)
\le
\min(r.val,L-r.val)\,T_f(1).
}
\]

Applying this to the sharp cyclic interval indicator discharges
\`CyclicSharpTranslationTelescopingClaim\`.

The entire Fejer smoothing route is now reduced to one local universal theorem:

\`CyclicSharpUnitTranslationBoundClaim\`

stating that a one-site shift changes at most the two boundaries of the sharp
cyclic interval.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
TRANSLATION_SUBADDITIVITY_SOURCE_WRITTEN /
NATURAL_SHIFT_TELESCOPING_SOURCE_WRITTEN /
CYCLIC_DISTANCE_TELESCOPING_SOURCE_PROVED /
UNIT_TRANSLATION_BOUND_OPEN\`.
