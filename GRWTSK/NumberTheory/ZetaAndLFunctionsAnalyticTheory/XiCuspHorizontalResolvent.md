# Horizontal resolvent growth and the essential spectrum of modular time evolution

Let \(1\le Y<4\pi e^{-\gamma_E}\) and \(L=\log Y\). Use the symmetrizing metric of the shifted modular cusp realization, absorb \(\sqrt{Y/2}\) into its boundary vector \(v\), and write
\[
 R=A-i v\otimes v,\qquad H=R^{-1},\qquad U(t)=e^{itH}.
\]
Here \(A\) is compact self-adjoint and injective, both \(R\) and \(R^*\) are injective, and their construction uses the modular Laplacian and its boundary form. The inverse \(H\) on \({\rm ran}\,R\) is closed and densely defined. It has compact resolvent, with eigenvalues \(a=\gamma+i(1-\beta)\) for \(\rho=\beta+i\gamma\) ranging over the nontrivial zeta zeros, respecting algebraic multiplicity. This is the **shifted** realization. Its eigenvalue strip is \(0<\Im a<1\). All norms below refer to the symmetrizing metric. [Modular construction](XiModularCuspSpectra.md) · [Height-one endpoint](XiCuspEndpointResolvent.md) · [Rank-one energy and root quotient](XiCuspTraceNormInfimum.md) · [Boundary vector and characteristic function](XiCuspClarkSpectrum.md)

For every \(t>0\), the Fredholm essential spectrum of \(U(t)\) is the entire closed unit disk, even at \(Y=1\) where the generalized eigenvectors of \(H\) span a dense subspace. Every \(0<|w|<e^{-t}\) is in its continuous spectrum. The proof gives an explicit arithmetic leading term for the norm of the resolvent outside the eigenvalue strip.

## The norm near the level set of the boundary function

Take the inner product linear in its first entry and set \((u\otimes v)x=\langle x,v\rangle u\). For \(z=x+iy\), \(y>0\), put \(F_z=(I-zA)^{-1}\). The characteristic identity and the spectral measure of \(A\) give
\[
 m(z)=z\langle F_zv,v\rangle,\qquad
 q(z)=e^{iLz}\frac{\xi(1+iz)}{\xi(1-iz)}
 =\frac{1+im(z)}{1-im(z)},\qquad
 \|F_zv\|^2=\|F_{\bar z}v\|^2=\frac{\Im m(z)}y .
\]
The last identity follows by taking imaginary parts of \(z/(1-zs)\) for real \(s\). In particular \(|q(z)|<1\). At a regular point the resolvent formula is
\[
 (H-z)^{-1}=(A^{-1}-z)^{-1}
 -i\frac{F_zv\otimes F_{\bar z}v}{1+i m(z)} .
\]
Indeed \(I-zR=I-zA+izv\otimes v\), and the inverse rank-one correction to \(F_z\) has numerator \(-iz F_zv\otimes F_{\bar z}v\). Subtract the identity and divide by \(z\) to obtain the displayed formula. Since \(A^{-1}\) is self-adjoint, its resolvent has norm at most \(1/y\). Taking the norm of the rank-one term and using \(m=i(1-q)/(1+q)\) gives the two-sided bound
\[
 \left|\,\|(H-z)^{-1}\|-\frac{1-|q(z)|^2}{2y|q(z)||1+q(z)|}\,\right|\le\frac1y.                 \tag{1}
\]

Write \(s=y-ix\). The functional equation and the definition of \(\xi\) give
\[
 q(z)=e^{iLz}\sqrt\pi\,\frac{s-1}{s+1}
 \frac{\Gamma(s/2)}{\Gamma((s+1)/2)}
 \frac{\zeta(s)}{\zeta(s+1)} .                                                   \tag{2}
\]
Removable values are understood. At each fixed \(y>0\), Stirling's formula and the absolutely convergent reciprocal Euler product at \(1+y\) give a factor \(O_{L,y}(|x|^{-1/2})\) apart from \(\zeta(s)\). For \(0<y\le1\), the classical convexity estimate on this line is \(\zeta(y-ix)\ll_{y,\epsilon}(1+|x|)^{(1-y)/2+\epsilon}\). One obtains it by applying the strip Phragmén–Lindelöf principle to \((s-1)\zeta(s)/(s+1)\) between \(-\delta\) and \(1+\delta\), for arbitrarily small positive \(\delta\). The Euler series bounds the right boundary and the functional equation and Stirling give growth \(O_\delta((1+|x|)^{1/2+\delta})\) on the left. In particular, \(q(x+iy)\to0\) and \(m(x+iy)\to i\) on **every** positive horizontal line. This approach to \(i\) also occurs outside the zero strip. [Rademacher, *On the Phragmén–Lindelöf theorem and some applications* (1959), pp. 192–204](https://geodesic.mathdoc.fr/item/MZ_1959__72_183607/)

If \(y>1\), both zeta factors and their inverses are bounded. Inserting Stirling's asymptotic into (1) now gives
\[
 \|(H-x-iy)^{-1}\|
 =C_{L,y}\sqrt{|x|}\left|\frac{\zeta(1+y-ix)}{\zeta(y-ix)}\right|+O_{L,y}(1),\qquad
 C_{L,y}=\frac{e^{Ly}}{2y\sqrt{2\pi}}.                                           \tag{3}
\]
The cluster set after division by \(\sqrt{|x|}\) is the entire closed interval with endpoints
\[
 C_{L,y}\frac{\zeta(y+1)}{\zeta(y)},\qquad
 C_{L,y}\frac{\zeta(y)\zeta(2y+2)}{\zeta(2y)\zeta(y+1)} .
\]
To see this, set \(a=p^{-y}, b=a/p\). The squared modulus of each Euler factor is \((1-2au+a^2)/(1-2bu+b^2)\), with \(u=\cos(x\log p)\). Its derivative has sign \(-(a-b)(1-ab)\). The endpoint products therefore come from all phases \(+1\) and all phases \(-1\), respectively. For every finite list of primes their logarithms are rationally independent by unique factorization. Kronecker's theorem for the continuous flow gives simultaneous approximation at arbitrarily large times. The full Euler product converges uniformly on the compact product torus; its image is connected and every value can be approached along this flow.

## Weakly null approximate eigenvectors and the time spectrum

The operator \(iH\) generates a strongly continuous contraction semigroup. In fact \(f=Ru\) gives \(\Im\langle Hf,f\rangle=|\langle u,v\rangle|^2\), and \(-ic\) belongs to the resolvent of \(H\) for each \(c>0\), by compact Fredholm theory and the upper-half-plane eigenvalue strip. These facts are the dissipativity and range hypotheses for generation. [Lumer and Phillips, *Dissipative operators in a Banach space* (1961)](https://doi.org/10.2140/pjm.1961.11.679)

Fix \(t>0\) and \(0<|w|<1\). Set \(y=-\log|w|/t\), \(x_n=(\arg w+2\pi n)/t\), and \(z_n=x_n+iy\). By (1) and (2) there exist unit \(u_n\in{\rm Dom}(H)\) with \(\|(H-z_n)u_n\|\to0\). At an eigenvalue use an eigenvector. At regular points choose an approximate norm maximizer for the resolvent and normalize its image. For \(h\in{\rm Dom}(H^*)\), the adjoint identity gives
\[
 |z_n||\langle u_n,h\rangle|\le\|H^*h\|+\|h\|\,\|(H-z_n)u_n\| .
\]
Thus \(u_n\rightharpoonup0\) by density. Integrating the derivative of \(e^{i(t-s)z_n}U(s)u_n\) for \(0\le s\le t\) gives
\[
 \|(U(t)-w)u_n\|\le \frac{1-e^{-ty}}y\,\|(H-z_n)u_n\|\longrightarrow0.
\]
A Fredholm operator is bounded below on its kernel's orthogonal complement, and the projection of a weakly null sequence onto its finite-dimensional kernel tends to zero in norm. These unit vectors therefore put \(w\) in the Fredholm essential spectrum. This spectrum is closed; the contraction bound excludes all \(|w|>1\). Consequently
\[
 \sigma_{\rm ess}(U(t))=\sigma(U(t))=\overline{\mathbb D},\qquad
 \|U(t)\|_{\rm ess}=\|U(t)\|=1 .
\]

The nonzero point spectrum of \(U(t)\) is exactly \(\{e^{ita}:a\in\sigma(H)\}\). One inclusion follows by evolving an eigenvector. Conversely, if \(U(t)u=e^{\lambda t}u\) for nonzero \(u\), the continuous function \(s\mapsto e^{-\lambda s}U(s)u\) is \(t\)-periodic on \(s\ge0\). Some vector-valued Fourier coefficient is nonzero by scalar Fourier uniqueness. Translating its integration interval shows it is a generator eigenvector with eigenvalue \(\lambda+2\pi i k/t\) for some integer \(k\). The adjoint semigroup on Hilbert space is strongly continuous, with generator \((iH)^*\) and conjugate spectrum. The same argument excludes adjoint eigenvectors at the conjugate of every nonzero \(w\) outside the exponential image. Thus every such \(w\) in the closed disk is continuous spectrum: \(U(t)-w\) is injective with dense proper range. This includes \(0<|w|\le e^{-t}\) and the whole boundary circle, since every eigenvalue of \(iH\) has real part strictly between \(-1\) and zero.

## Strong decay and the exact delay

Let \(M\) be the closed span of the generalized eigenvectors of \(R\) for nonzero eigenvalues. Each finite root subspace is invariant for \(H\) and \(U(t)\). On it \(U(t)\) decays as a polynomial times \(e^{-t\Im a}\). Contraction and density give strong decay on \(M\). At \(Y=1\) the modular completeness result says \(M\) is the entire space.

For \(Y>1\), the compact quotient of \(R\) by \(M\) is unitarily equivalent to \(-iV\), where \((Vg)(s)=\int_0^s g(u)du\) on \(L^2(0,L)\). The induced quotient semigroup has generator \(i(-iV)^{-1}=-d/ds\), with domain \(\{g\in W^{1,2}(0,L):g(0)=0\}\). To verify the generator identification, descend the resolvent \(R(I-zR)^{-1}\) at \(z=-ic\), \(c>0\), through the invariant subspace. Its quotient is exactly \((-iV)(I+izV)^{-1}\), the resolvent of the inverse on its range; one resolvent determines a closed generator. The resulting right translation with zero inflow is zero at \(t\ge L\) and nonzero for \(t<L\). Hence \(L\) is exactly the least time at which \(U(t)\) takes the whole space into \(M\). Strong stability follows for every admissible height while uniform norm decay fails at all heights. [Modular root completeness and the Volterra quotient](XiCuspTraceNormInfimum.md)

The behavior at the origin also detects the height. Each finite root subspace is mapped onto itself by \(U(t)\); hence \(M\subset\overline{{\rm ran}\,U(t)}\). Every element of \(\ker U(t)^*\) therefore belongs to \(M^\perp\), on which the adjoint is exactly the adjoint of the quotient semigroup. For \(Y>1\) its kernel consists in the Volterra coordinates of functions supported in \((0,\min(t,L))\); for \(Y=1\) the kernel is zero.

The same characterization applies to \(\ker U(t)\) up to a fixed unitary. Indeed the cyclic spectral measure of \(A\) in \(v\) is symmetric. The Clark phase has odd symmetry, and its masses \(2/(s^2\phi_L'(s))\) at paired frequencies \(\pm s\) coincide. The atom at zero is absent since \(A\) is injective. In the cyclic spectral representation reflection thus defines a unitary \(J\) with \(Jv=v\) and \(JAJ^*=-A\). This gives \(JRJ^*=-R^*\), hence \(JU(t)J^*=U(t)^*\) by uniqueness of the semigroup. At height one the origin is consequently in continuous spectrum; at every larger admissible height both kernel and cokernel in the sense of the orthogonal complement of the range closure are infinite-dimensional for every \(t>0\). [Cyclicity, real spectrum and masses, equations (1)–(3)](XiCuspClarkSpectrum.md)

The conclusions use only the existing shifted modular realization and unconditional estimates. They explain why the limiting value \(m=i\), even at heights well separated from every eigenvalue, does not localize its exact level set to \(y=1/2\). The self-adjoint realization with the central xi determinant remains open.

## Verification scope

The [Lean source](XiCuspHorizontalResolvent.lean) proves the rank-one inverse action, its additive norm error, the adjoint residual inequality, the two Cayley scalar identities and the monotonicity of the squared Euler factor. The modular resolvent asymptotics, cluster interval and time-spectrum theorems above are analytic arguments. An independent 144-bit Arb calculation at \(Y=y=2\) compared the direct xi quotient with (2) and the rank-one norm in the two forms in (1). At \(x=10^6\) the resulting enclosure for the full resolvent norm is \((399.9351,400.9352)\). This finite calculation tests the stated normalization and estimates only.

At source blob `c13f1e0510acbafb21d5823f26667e3b286323f7`, all eight public declarations built and passed explicit fresh kernel replay. Their transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound` with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No independent external review is recorded.
