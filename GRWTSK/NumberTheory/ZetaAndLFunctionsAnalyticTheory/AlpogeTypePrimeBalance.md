# Place-degree normalization and cancellation at the two type primes

Work with an actual row, its coefficient number field \(K=D.\mathrm{what}_2.\mathrm{LL}\), one lift \(1\le j\le m\) and one column word \(u\). Use the source's \(F\)-definition and, when subtracting errors, its \(E\)-definition and chosen \(\pi_G,\pi_T\). There are two distinct normalizations in the archive. The scalar **NumDatum.Fo** sums \(F_j(p)\log p\), whereas the lattice size **SizeData₂.Fo** uses twice this amount. For a place \(w\mid p\), put \(e_w=e(w/p), f_w=f(w/p), d_K=[K:\mathbb Q]\). Then
\[
 \mathrm{sz}_w(y)=2\frac{\log Nw}{d_K}e_w y
    =2\frac{e_w f_w}{d_K}\,y\log p .
\]
Since \(\sum_{w\mid p}e_w f_w=d_K\), a constant prime-fiber valuation \(y\) contributes exactly \(2y\log p\), even at ramified primes. This follows directly by factoring \(p\mathcal O_K\) and taking ideal norms. Finite support permits the interchange of the lift and place sums. A fiber on which the forced value is nonzero is present in full by **F_supp**; extending the sum by zero covers all other fibers. The auxiliary field need not be Galois for this norm calculation. A count of places without the \(e_wf_w\) factors would, for instance, fail at a totally ramified prime. [Source weights and support](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams₂.lean#L95-L105) · [Lattice size definitions](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams₂.lean#L203-L222) · [Underlying number-field identity](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/RankBoundMonotoneInDimension.lean#L1069-L1106) · [Scalar sum convention](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/Divisibility/Numbers.lean#L193-L209)

Thus the [chosen prime-window estimate](AlpogeChosenPrimeWindow.md) gives the following full-place contribution to **Fo** for one lift, with the same hypotheses on the prime count, the host and the lifted weights:
\[
  2S_j(5,X'')+2\mathrm{FRamD}_j\log d
      -\mathrm{fockDeg}_j(\log g_0+\log g_1).
\]
Here \(S_j\) is the nonsplit gain; the ramified term retains its negative sign. This places the previous histogram, including its quantified error, in the source's lattice normalization. The raw scalar type-prime term can be large. In the actual signed budget \(\mathrm{Ga}+\mathrm{Fo}-\mathrm{Ee}\) its Fock-degree part cancels exactly.

To see the cancellation let \(p=g_i\) and write \(A=c.g\,D.R.f\,((\mathrm{Nm}\,D)^2+m^2L.\mathrm{etaSz})\), \(b_p=v_p(\mathrm{DGam}_u)\). The norm equation for \(\pi_T\) and its congruence \(\pi_T\equiv1\pmod{g_i}\) force \(T(u)\ne g_i\): reducing the norm equation modulo a prime over \(g_i\) would otherwise give \(0=1\). The two type primes are distinct. The branch **Eval** therefore gives precisely
\[
 F_j(w)=-\mathrm{fockDeg}_j/2,\qquad
 E_{uj}(w)=b_p-\mathrm{fockDeg}_j/2+\mathrm{vNN}_{iuj}(w)+A .
\]
The per-lift gain **gainD** at these primes vanishes by **gain_g**. The global subtraction involving \(\tau(w)\) in **Ga** is a separate term. [Generators and unitary norms](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataErr.lean#L20-L37) · [Type-prime error](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataErr.lean#L81-L95) · [Order of the signed branches](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataErr.lean#L159-L174)

For completeness, the remaining nonconstant valuation can also be summed. Put \(\alpha_\tau=\tau_{LL}(\overline{\pi_{G,i}})\) as in the source. It is an algebraic integer. Every complex embedding has \(|\alpha_\tau|=\sqrt p\), because the involution is CM conjugation and \(\pi_{G,i}\overline{\pi_{G,i}}=p\). Its principal ideal is supported above \(p\) since it divides \(p\); its absolute norm is \(p^{d_K/2}\). Hence
\[
 \sum_{w\mid p}2(\log Nw/d_K)v_w(\alpha_\tau)=\log p .
\]
The denominator \(e_w\) in **vNN** cancels the factor \(e_w\) in **sz** before this identity is applied. Interchanging finite sums proves the source's **NormDecompositionCond** including its factor of two. There is no need to decide which one of the two CM directions is selected at each place. Summing over a full fiber, extending \(F,E\) by their stipulated zeros outside the support, now gives the exact residual
\[
 \sum_{w\mid g_i}\mathrm{sz}_w(F_j(w)-E_{uj}(w))
   =-\left(\sum_\tau \mathrm{nuAbs}_{uj\tau}+2b_{g_i}+2A\right)\log g_i .
\]
In particular neither discarding the raw Fock loss nor counting it a second time in this residual is valid. Bounding the remaining row sums, the stabilizer denominators and the other error branches at the precision of (M) is a further obligation. [Norm decomposition and original degree and size predicates](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/WeightDegreeSizes.lean#L402-L429)

As a finite check take \(p=5\), \(\pi=2+i\) in \(\mathbb Q(i)\), and its conjugate direction. With two direction weights 3 and 7, Fock degree 19, stabilizer valuation 2 and error 11, the two places give a combined \(-36\log 5\). This remains the sum after extension by \(\sqrt2\) (both residue degrees double) or by \(\sqrt6\) (both places split). These splitting claims follow by quadratic reduction modulo 5. Across these three fields 432 exact rational comparisons varied the weights and losses, including negative direction weights. This checks normalization and signs in a small CM example.

The [Lean source](AlpogeTypePrimeBalance.lean) proves the prime-fiber identity directly with the prime ideals of the ring of integers and Mathlib's ramification–inertia degree theorem. It also verifies the exact algebra of the type-prime cancellation and the half-norm identity. The comparison with the actual lift records and the class-by-class integral norm argument above are manuscript results.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for AlpogeTypePrimeBalance at fc68afe772c43af82fe1c1d70c1ad0ba83c0a604. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
