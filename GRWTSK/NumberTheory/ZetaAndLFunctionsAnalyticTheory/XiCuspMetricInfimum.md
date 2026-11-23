# Finite changes of metric for the modular transverse energy

Let \(B=B_Y\) be the Hilbert–Schmidt modular Green operator linearization
with \(\det_2(I-zB)=\xi(1/2+iz)/\xi(1/2)\). Let \(E_m\) be the
projection on the first \(m\) noncuspidal pseudo-Laplacian modes in
**both** copies of the surface space. These are geometric cutoffs and
increase strongly to the identity. Write \(\Im L=(L-L^*)/(2i)\).
The transverse energy of the angular modular operator has the exact
variational expression
\[
 \boxed{\quad D_\perp=\lim_{m\to\infty}
    \inf_{S_m>0}\|\Im((S_m\oplus I)B(S_m\oplus I)^{-1})\|_2^2 .\quad} \tag{1}
\]
The optimization variables are ordinary invertible positive matrices
on \(E_m\mathcal H\); the norms in (1) include the full tails of the
surface operator. The infima decrease. They have a limit independently
of any assumption on xi zeros. Self-adjointness of the angular
realization is equivalent to a zero limit. The following results give
obstructions and an improving direction for this specific optimization.
[Geometric operator and determinant](XiModularCuspSpectra.md) ·
[Angular realization and its transverse trace](XiCuspFredholmDeficit.md)

## Proof of the exact infimum

We first show that for a Hilbert–Schmidt operator \(B\) on a separable
complex Hilbert space the infimum of \(\|SBS^{-1}\|_2^2\) over bounded
positive invertibles is \(\sum_\lambda m_\lambda|\lambda|^2\),
with nonzero eigenvalues counted with algebraic multiplicity.
Ringrose supplies a maximal invariant nest (a complete totally ordered
family of closed invariant spaces) with gaps of dimension one, whose
nonzero diagonal entries have exactly these multiplicities. This
theorem also covers operators with no complete set of root vectors.
[Ringrose, *Super-Diagonal Forms for Compact Linear Operators*,
Theorems 1–2](https://doi.org/10.1112/plms/s3-12.1.367)

For a finite partition from that nest, let \(Q_j=P_j-P_{j-1}\),
with \(P_0=0,\ P_k=I\), and let \(\Pi(B)=\sum_jQ_jBQ_j\). As the
partition is refined, these are orthogonal projections on the
Hilbert space of Hilbert–Schmidt operators, onto decreasing subspaces.
They converge in Hilbert–Schmidt norm for fixed \(B\) to the orthogonal
projection onto the common intersection. Indeed the squared norms
decrease and the squared norm of the difference at nested partitions
equals their difference; using a common refinement proves convergence
of the net. Its limit commutes with every nest projection. Conversely
every Hilbert–Schmidt operator commuting with all projections belongs
to the intersection.

Such a commuting compact operator \(C\) is supported on the
one-dimensional gaps. Each positive eigenspace of \(|C|\) is finite
dimensional and invariant under all the commuting nest projections.
Simultaneous diagonalization there gives common eigenvectors with
eigenvalues zero or one for every projection. Each such vector belongs
to a gap: take the join of the projections killing it and the meet
of those fixing it; completeness puts both in the nest and there is
no member strictly between them. Apply the same observation to
\(|C^*|\) to control the range. Commutation forces diagonal action
on every one-dimensional gap. Hence the intersection projection of
\(B\) has exactly its atomic diagonal coefficients; their squared
sum gives the limit of \(\|\Pi(B)\|_2^2\). In particular the same
argument for any operator similar to \(B\) bounds its Hilbert–Schmidt
norm below by the eigenvalue sum.

For a fixed finite partition order the blocks from smaller to larger
invariant spaces. The entries \(Q_i B Q_j\) vanish for \(i>j\).
Set \(S=\sum_j u^j Q_j\), \(u>1\). The \(i,j\) entry of \(SBS^{-1}\)
is \(u^{i-j}Q_i B Q_j\). Orthogonality of the finitely many blocks in
Hilbert–Schmidt norm gives convergence to \(\Pi(B)\) as \(u\to\infty\).
First choose the partition, then choose \(u\); this proves the upper
bound even for a continuous part of the nest. The nest is used to
prove the infimum, and supplies no input to the geometric cutoffs in
(1).

For any fixed positive invertible \(S\), replace it by
\(T_m=E_m S E_m+I-E_m\). These positive invertibles and their inverses
are uniformly bounded above, with a common positive lower bound.
Strong convergence to \(S\) implies strong convergence of the inverses
by the resolvent identity. Since these operators are self-adjoint,
multiplication on either side of any fixed Hilbert–Schmidt operator
converges in its ideal norm (approximate first by finite rank).
Thus \(T_m B T_m^{-1}\to SBS^{-1}\) in this norm. Conversely every
finite change belongs to the full class, proving equality of the two
infima. For any Hilbert–Schmidt \(L\),
\(2\|\Im L\|_2^2=\|L\|_2^2-\Re{\rm Tr}(L^2)\); the trace term is
unchanged by similarity. In the modular case the eigenvalue sum minus
this trace is exactly \(2D_\perp\), by the angular realization. This
proves (1).

An explicit evaluation uses \(B_{ij}\) in the two blocks \(E_m,I-E_m\).
The full squared norm to minimize, before subtracting
\(\xi''(1/2)/\xi(1/2)\) and dividing by two, is
\[
 \|S_m B_{11}S_m^{-1}\|_{\rm F}^2
 +{\rm Tr}(S_m^2 B_{12}B_{12}^*)
 +{\rm Tr}(S_m^{-2}B_{21}^*B_{21})
 +\|B_{22}\|_2^2 .
\]
All matrix products inside the two traces act on the finite corner.
Dropping the last three terms would compute a different optimization.
A nilpotent two-by-two Jordan block illustrates why a limiting
infimum can vanish despite the impossibility of a self-adjoint
similarity at any finite condition number.

## Which geometric metrics can improve the bound

Put \(c=1/4,\ Q=G^{1/2}\) and \(P=I+c(c-1)G+cYh\otimes h\),
using the positive Green operator \(G\) and its truncation vector \(h\).
For \(1\le Y<4\pi e^{-\gamma_E}\) the pseudo-Laplacian spectrum is
above \(1/4\), hence \(P\ge I-3G/16\ge I/4\). Schur elimination gives
\[
 B=\frac{i}{2c}
 \begin{pmatrix}
   P^{-1}-I & -cP^{-1}Q\\ cQP^{-1} & -c^2 QP^{-1}Q
 \end{pmatrix}.
\]
Write its diagonal as \(iC_1,iC_2\), with \(C_j\) self-adjoint.
The off-diagonal part of \(B\) is self-adjoint. Consequently
\(\|\Im B\|_2^2=\|C_1\|_2^2+\|C_2\|_2^2>0\), since the lower block
is nonzero. Every block-preserving change \(S=S_1\oplus S_2\)
satisfies
\[
                 \|\Im(SBS^{-1})\|_2^2\ge\|\Im B\|_2^2 .
\]
Indeed its diagonal imaginary parts are
\(\Re(S_j C_j S_j^{-1})\). Their squared norms are
\({\rm Tr}(C_j^2)+\|\Im(S_j C_j S_j^{-1})\|_2^2\), and the remaining
off-diagonal squared norms are nonnegative. Thus independently
reweighting complete surface modes within each copy cannot improve
the original upper bound, even when Sobolev cutoffs are varied among
bounded invertibles.

In contrast, a finite matrix mixing the two copies always improves the
bound for sufficiently large \(m\). Let \(K=[B,B^*]\), self-adjoint
and trace class. Differentiation along \(S(t)=e^{-tE_m K E_m}\) at
zero gives
\[
 \left.\frac{d}{dt}\|S(t)BS(t)^{-1}\|_2^2\right|_{0}
       = -2\|E_m K E_m\|_2^2 .
\]
This follows by trace cyclicity and the commutator derivative in the
Hilbert–Schmidt ideal. Here \(K\ne0\) by the known resolvent growth
obstruction, and \(E_m K E_m\to K\) in ideal norm. More generally a
minimizing bounded invertible similarity would give a normal operator:
all first variations at its image would vanish, including that in the
direction of its self-commutator. Positive changes suffice since a
left unitary factor preserves both objective norms. The previous
resolvent obstruction excludes even normal similarity. Hence the
full infimum is **never attained** in this model, regardless of RH.
[Endpoint resolvent proof](XiCuspEndpointResolvent.md)

## Conditioning required for approximate symmetry

Write \(L=SBS^{-1}=A+D\), \(A=\Re L,\ D=i\Im L\),
\(\delta=\|D\|_{\rm op}\), and
\(\kappa=\|S\|\|S^{-1}\|\). For \(y>0,\ y\delta<1\), symmetry of
\(A\) gives \(\|(I-iyA)x\|^2=\|x\|^2+y^2\|Ax\|^2\). Thus
\[
         (1-y\delta)\|(I-iyB)^{-1}\|\le\kappa
\]
whenever the inverse exists. It exists on the whole sufficiently
large imaginary half-axis for the modular \(B\). If any sequence of
metrics has \(\delta\to0\), then at \(Y>1\)
\[
            \liminf \delta\log\kappa\ \ge\ \log Y .
\]
In fact use \(y=(1-\epsilon)/\delta\) at fixed \(0<\epsilon<1\),
the established asymptotic
\(\|(I-iyB_Y)^{-1}\|\sim Y^{y+1/2}\sqrt{(y+1/2)/2}/(2\sqrt\pi)\),
and then let \(\epsilon\downarrow0\). At \(Y=1\), using
\(y=1/(3\delta)\) gives
\(\liminf \sqrt{\delta}\,\kappa\ge1/(3\sqrt{6\pi})\).
The same lower bounds hold with a Hilbert–Schmidt error substituted
for the operator norm if that error tends to zero. A proof of RH by
(1) requires upper bounds for a specific sequence of genuinely mixed
geometric metrics, with control of the full tails. The single
strict descent direction does not establish a zero limit.

The Lean module proves the symmetric imaginary-axis coercivity, its
exact perturbation loss, and the condition-number inequality on every
right-inverse vector for continuous linear changes on complex
inner-product spaces. The infimum theorem, modular specialization,
nonattainment and asymptotics are manuscript proofs. [Lean source](XiCuspMetricInfimum.lean)

## A nonzero trace invisible to the regularized determinant

There is a strict obstruction to strengthening (1) to trace-norm
convergence to self-adjointness. For \(1\le Y<4\pi e^{-\gamma_E}\)
one has the exact height-dependent trace
\[
                   {\rm Tr}(\Im B_Y)=-\tfrac12\log Y .
\]
Indeed \(B=(i/2)(T+cT^2(I-cT)^{-1})\).
The Hermitian part of \(T\) has diagonal \(C=G-Yh\otimes h,0\)
and zero off-diagonal, with \({\rm Tr}C=k-\log Y\) for
\(k=2+\gamma_E-\log(4\pi)\). The correction is trace class. At
\(v=c\) the logarithmic derivative of
\(\det_2(I-vT)=2e^{kv}\xi(2v)\) is \(k\), since \(\xi'(1/2)=0\).
The regularized derivative is also
\(-c\,{\rm Tr}(T^2(I-cT)^{-1})\), by the trace series at zero and
analytic continuation through the resolvent set. Taking real parts
gives the claimed trace. A direct check, valid at every regular real
center, follows by taking the trace of the two Schur diagonal blocks.
The identity \(P(c)^{-1}-I=-P(c)^{-1}(P(c)-I)\) and trace cyclicity
give \(2{\rm Tr}(\Im B(c))=-{\rm Tr}(P(c)^{-1}P'(c))\), where
\(P(v)=I+v(v-1)G+Yv h\otimes h\) and
\(B(c)=(i/2)T(I-cT)^{-1}\). Its determinant
\(2Y^c\xi(2c)\) gives the full trace
\(-\tfrac12\log Y-\xi'(2c)/\xi(2c)\), including the value at the
center by the functional equation. Meanwhile \(\Im N_Y\) is trace class, since
\(|\Im\lambda|\le|\lambda|^2/2\) for the full reciprocal spectrum,
and its trace is zero by conjugate symmetry.

Let \(L=SBS^{-1}\) with \(S-I\) Hilbert–Schmidt. Then \(L-B\) is
trace class with trace zero. To see this write it as
\((S-I)B S^{-1}-B S^{-1}(S-I)\); both factors in each product
are Hilbert–Schmidt. Hence \(D=\Im L\) has the same trace as \(\Im B\).
For any finite conjugation-symmetric collection of generalized real
root spaces of \(L\), let \(P\) be the orthogonal projection on their
sum and \(Q=I-P\). Invariance and finite-dimensional Schur
triangularization give \({\rm Tr}(PDP)=0\).
The quotient \(QL|_{Q\mathcal H}\) retains every eigenvalue in the
open upper half-plane with full algebraic multiplicity by the block
triangular resolvent. For a finite selection of those eigenvalues,
compressing to the corresponding invariant root space shows that the
trace of the positive part of \(QDQ\) is at least the sum of their
imaginary parts. This follows from the variational definition of
the positive trace, and applies also when a root has a Jordan block.
Exhaust these finite selections. Since \(QD_+Q\ge QDQ,0\),
\[
 \|D\|_1=2{\rm Tr}(D_+)-{\rm Tr}D\ \ge\
     \|\Im N_Y\|_1+\tfrac12\log Y+{\rm Tr}(P|D|P).
\]
The inequality persists for \(P\) the projection onto the closed
span of all real root spaces by monotone convergence of the traces.
For every fixed admissible \(S\), the last term is positive: otherwise
\(D\) kills every real eigenvector, so each is also an adjoint
eigenvector at the same real eigenvalue. Every simple real Riesz
projection would be orthogonal. The original projections along simple
real eigenvalues have unbounded norms; a bounded similarity cannot
make that family uniformly bounded. Sharpness of the trace-norm
bound as an infimum remains open. [Projection norm theorem](XiCuspResonanceProjections.md)

For the finite corners in (1), the trace of the corner imaginary part
equals \({\rm Tr}(E_m\Im B E_m)\) exactly, by finite similarity.
Writing \(d_m={\rm rank}(E_m)\), the Hilbert–Schmidt
Cauchy–Schwarz inequality therefore gives the uniform bound
\[
 \sqrt{d_m}\,\|\Im((S_m\oplus I)B(S_m\oplus I)^{-1})\|_2
 \ \ge\ |{\rm Tr}(E_m\Im B E_m)|\longrightarrow \tfrac12\log Y .
\]
The full Hilbert–Schmidt objective may still tend to zero as the
dimension increases. The trace-norm obstruction and the condition
number lower bounds constrain how such a proof could work.

The [conditional Mathlib bridge](XiCuspApproximateSymmetry.lean)
uses two explicit hypotheses. Every nontrivial zero away from the
center must give an eigenvector of the same arithmetic operator at
\(i/(s-1/2)\), and bounded geometric changes of metric must approximate
symmetry with arbitrarily small operator-norm error. A direct
inner-product calculation bounds the imaginary part of every such
eigenvalue by the error. Under those two hypotheses the conclusion is
exactly Mathlib's RiemannHypothesis. The manuscript determinant gives
the mathematical source of the first input. The second input remains
unproved for the modular operator.

The three metric estimates at blob **357d87aa02dc06befaabb85db9c9ac7b5919d9ff** and the two approximate-symmetry declarations at **96c77e7ae00ddc4dcac6dbe298452f6f2e8be629** passed compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Only propext, Classical.choice and Quot.sound occurred. Twelve exact rational block pencils separately checked the Schur blocks, trace derivative, within-copy metric bound and negative commutator derivative.
