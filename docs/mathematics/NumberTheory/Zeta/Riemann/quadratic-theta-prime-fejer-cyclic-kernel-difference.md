# Cyclic kernel-difference identification

The cyclic/arithmetic kernel bridge is now source-proved.

For an arbitrary positive lattice period \(L\), the signed sample

\[
r\longmapsto
\frac1L\operatorname{Re}K_N(r/L)
\]

is periodic with integer period \(L\).

The source upgrades this to congruence invariance:

\[
a\equiv b\pmod L
\quad\Longrightarrow\quad
\kappa_{L,N}(a)=\kappa_{L,N}(b).
\]

For arithmetic octave points \(n,q\), the cyclic difference

\[
(n\bmod4X)-(q\bmod4X)
\]

has canonical residue value congruent to the ordinary integer difference
\(n-q\) modulo \(4X\). Therefore

\[
\boxed{
K_{\rm cyc}((n-q)\bmod4X)
=
\kappa_{4X,N}(n-q).
}
\]

This discharges
\`ArithmeticCyclicKernelDifferenceClaim\`.

The full arithmetic/cyclic prefix-weight bridge is now reduced to a single
finite-indexing theorem:
\`ArithmeticCyclicPrefixReindexingClaim\`.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARBITRARY_PERIOD_SAMPLE_PERIODICITY_SOURCE_WRITTEN /
MOD_CONGRUENCE_INVARIANCE_SOURCE_WRITTEN /
CYCLIC_KERNEL_DIFFERENCE_SOURCE_PROVED /
CYCLIC_PREFIX_REINDEXING_OPEN\`.
