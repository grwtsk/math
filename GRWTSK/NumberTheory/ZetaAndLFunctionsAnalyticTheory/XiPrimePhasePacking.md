# Lattice certificates for the third exterior Taylor coefficient

Let \(s=3/2+it\), \(P(t)=\Re(\xi'/\xi)(s)\) and \(a_3(t)=(\xi'/\xi)^{(3)}(s)/3!\). The actual prime phases give the global bound
\[
 |a_3(t)|/P(t)<1.291468\qquad (t\in\mathbb R).
\]
The earlier absolute Euler envelope gave 1.339258. The gain comes from ruling out simultaneous prime alignment throughout continuous intervals of heights, with an integer lattice for each block of primes. Heights are never rounded to a test grid. The bound 1 required for the [fixed-center Taylor criterion](XiTranslatedTaylorRadii.md) remains open at this order.

## The arithmetic cost of alignment

Let \(T_0=3\cdot10^{12}-2\). Write \(B_j=\sum_{m\ge2} \Lambda(m)(\log m)^j m^{-3/2}/j!\). The [exterior envelope calculation](XiExteriorTaylorScale.md) proves the desired order-three bound up to \(T_0\), using the published verified height. For \(t\ge T_0\), the rational and gamma parts have third Taylor coefficient of modulus at most \(t^{-3}\) and real logarithmic derivative at least \(\tfrac12\log(t/(2\pi))-1/t\). The remaining functions are absolutely convergent Euler series. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

Partition the first 9,576 primes into 266 disjoint blocks of size \(d=36\). Choose any common phase \(\phi\) in turns. At any \(t\) write
\[
 t u_i-\phi=k_i+e_i,\qquad u_i=\log p_i/(2\pi),\quad k_i\in\mathbb Z,\quad |e_i|\le1/2.
\]
For order three use weights \(w_i=(\log p_i)^4/(6p_i^{3/2})\). Choosing \(\phi\) for the argument of the **full** Euler sum gives its unsigned mass minus its modulus as the sum of all weighted phase defects. Every term omitted from the blocks has nonnegative defect. For the zeroth-order lower bound use \(w_i=\log p_i/p_i^{3/2}\), \(\phi=0\). A uniform lower bound \(S\) for \(\sum_i e_i^2\) in each block yields a cost of at least \(8S\min_i w_i\) by Jordan's sine inequality.

For the stronger computed cost set \(g(x)=1-\cos(2\pi\sqrt x)\), \(0\le x\le1/4\). It is increasing and concave, since \(g'(x)=2\pi^2\sin(2\pi\sqrt x)/(2\pi\sqrt x)\) is decreasing (integrate \(u\sin u\ge0\) to obtain \(\sin v-v\cos v\ge0\) on \([0,\pi]\)). Among coordinates of given total square mass with cap \(1/4\), shifting mass to the larger coordinate can only decrease the sum of the \(g\)'s. Thus the cost is at least
\[
 (\min_i w_i)\left(2\lfloor4S\rfloor+g(S-\lfloor4S\rfloor/4)\right).
\]
The script rounds \(S\) and the resulting cost down before adding the disjoint blocks.

## Projecting out both the height and the common phase

Fix \(T_0\le t\le H\). Let \(K=10^{28}\), \(b_i\) be the certified nearest integer to \(K u_i\), and put \(v_i=d b_i-\sum b_j\), \(V=\sum v_i^2\), \(C=d\lfloor K/(30H)\rfloor\). The vector \(v\) is orthogonal to \(\boldsymbol 1\). Let \(A\) denote orthogonal projection onto the complement of their span. For the integer vector \(w=(k_1-k_d,\ldots,k_{d-1}-k_d,0)\) use the normalized lattice image
\[
 (Aw,C(v\cdot w)/V).
\]
Multiplication by \(dV\) makes every matrix entry integral, with the final source coordinate omitted. Centering the frequency vector gives the Euclidean error bound \(E=H\sqrt d/(2K)\) between the centered \(tu\) and \(t v/(dK)\). Hence
\[
 \|Aw\|\le\|e\|+E,\qquad
 \left|\frac{C(v\cdot w)}V-\frac{Ct}{dK}\right|
     \le C(\sqrt d/2+E)/\sqrt V .
\]
In particular the last, time-dependent coordinate has an explicit closed interval of possible values, with positive lower endpoint, and a positive upper bound \(\tau\). This rules out \(w=0\). If every relevant lattice vector has squared normalized length at least \(R\), then
\[
 S=(\sqrt{R-\tau^2}-E)^2
\]
is available whenever the expression inside the final square is positive. The projection discards a common phase even when it varies with \(t\). Including the time interval avoids ruling out a physical alignment on the basis of an unrelated short vector.

The [reproducible calculation](../../../scripts/verify_xi_prime_phase_packing.py) checks an exact unimodular change of basis returned by LLL. No quality estimate for LLL is assumed. From the exact integer Gram matrix it computes interval enclosures for the normalized Gram–Schmidt coefficients \(\mu_{ji}\) and squared lengths \(h_i>0\). The least Gram–Schmidt length bounds all nonzero integer combinations below, by the last nonzero coefficient. To strengthen it the script enumerates a relaxed ellipsoid using only integers after rounding. Put \(Q=2^{40}\), \(m_{ji}=\operatorname{round}(Q\mu_{ji})\), \(n_i=\lfloor Qh_i\rfloor\) with interval-certified downward rounding. For an integer coefficient vector \(z\) the \(i\)-th term in \(Q^3\) times its squared normalized length is at least
\[
 n_i\max\big(0,\,|Qz_i+\sum_{j>i}m_{ji}z_j|-\sum_{j>i}|z_j|\big)^2 .
\]
Thus any vector up to the specified squared radius appears in the backward recursion. At each level integer square roots with tolerance \(\sum_{j>i}|z_j|\) enclose the full coefficient interval. At leaves the integer last coordinate is compared with the outward-rounded physical range. Only exhaustive exclusion for that radius raises the lower bound. A search limit or a possible vector retains the previous proved radius. The fixture also compares 360 two-dimensional searches with direct exact enumeration, including signed off-diagonal terms and the time restriction. This is a finite-dimensional use of reduction followed by ellipsoid enumeration. [Fincke and Pohst, *Mathematics of Computation* 44 (1985), 463–471](https://doi.org/10.1090/S0025-5718-1985-0777278-8)

## Returning to the actual zeta coefficients

If \(D_3,D_0\) are the accumulated block costs, then on \([T_0,H]\)
\[
 \frac{|a_3(t)|}{P(t)}
 \le\frac{B_3-D_3+t^{-3}}{\tfrac12\log(t/(2\pi))-B_0+D_0-t^{-1}} .
\]
The denominator is positive and the ratio on the right decreases with height. At \(H=10^{13}\) the costs exceed 0.55522905703 and 0.01193354579, respectively. Evaluation at \(T_0\) gives the upper bound 1.291468. At all heights beyond \(10^{13}\) the unsubtracted bound at the left endpoint is already below 1.274980. Low heights were treated by the verified strip and negative heights follow by conjugation. This proves the global claim.

At \(H=10^{16}\) the losses exceed 0.43738558399 and 0.01020285457. The bound is at most 1 as soon as
\[
 t\ge 2\pi\exp\{2(B_3+B_0-D_3-D_0+2/T_0)\}.
\]
The right side is below \(4.046\cdot10^{15}\). This suffices through the chosen horizon; after it the original unsubtracted Euler estimate is already below 1. The smaller horizon \(10^{13}\) alone cannot certify a cutoff above its own horizon.

Using the reduced endpoint in the [finite-interval moment argument](XiExteriorTaylorScale.md) leaves at most 2,067,844 positive integer unit cells containing a possible violation, of total positive exceptional **set** length less than 21,696.119. The length bound refers to the bad points themselves. In this re-evaluation the degree-zero loss improves the lower threshold for the prime polynomial. No degree-three loss is subtracted from the polynomial's arithmetic tail, as the packing calculation and the mean-value polynomial use overlapping primes. The endpoint adjustment alone accounts for the degree-three gain. An arbitrarily short exceptional interval could still obstruct an all-height proof.

For a centered horizontal radius \(r\) write \(P_r=\Re L(1/2+r+it)\), \(a_{3,r}=L^{(3)}(1/2+r+it)/3!\), \(L=\xi'/\xi\). The scaled bound \(r^3|a_{3,r}|\le P_r\) holds at every height for **every \(r\ge1.0525\)**. The preceding [radius certificate](XiExteriorTaylorScale.md) covers \(r\ge1.06\). For the intermediate strip, retain the very same phase certificates at \(H=10^{13}\). Each block's third-order cost scales by at least \(1.05^3(\max p_i)^{-0.06}\); the degree-zero cost scales by at least \((\max p_i)^{-0.06}\). This uses the actual coefficients at real part \(1/2+r\). On 75 consecutive radius bins of width \(10^{-4}\), bound \(B_j(r)\) at the left endpoint and \(r^3\) at the right. At \(T_0\le |t|\le10^{13}\) use the block savings, and above that horizon use the raw bounds. The least of the certified Euler margins exceeds 0.01855. Below \(T_0\) a zero on the line pays each absolute order-three contribution. Every unverified zero has distance at least 2 and horizontal distance at least \(r-1/2\); here \(4(r-1/2)>r^3\), so it also pays this contribution. The resulting bound is strictly stronger than the old radius range and still leaves the interval down to radius 1 unresolved.

The [Lean companion](XiPrimePhasePacking.lean) proves the per-phase quadratic charge, its weighted block version, the regularization error comparison and the last-coordinate charge. The Euler comparison and the integer/interval lattice replay are separate mathematical and computational evidence. No independent external analytic review is recorded.

This Lean source elaborated on Lean 4.34.1 with Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612: XiPrimePhasePacking at 4fdc65d61e29726133a7e5cb792b446236d3ee95. The transitive audit reported only axioms among propext, Classical.choice and Quot.sound. The source-bound fresh kernel results are tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850).
