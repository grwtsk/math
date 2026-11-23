# Recovering xi from two self-adjoint modular cusp spectra

grwtsk contributors

One geometric operator on the modular surface and one prescribed indicator function determine the entire function \(X(z)=\xi(1/2+iz)\), including the multiplicity of each zero. Equation (8) realizes xi as the Fredholm determinant of a quadratic pencil. Its block linearization gives the exact normalized regularized determinant in (9), for a closed densely defined operator whose self-adjointness fails. The proof first reconstructs xi from two truncation heights and then varies the upper height. Cutting between the heights gives a positive rank-one difference of Green operators. At heights two and three its sole nonzero eigenvalue is \(2+\pi/3-6\log(3/2)\). The argument gives this value independently from the zeta function and from a piecewise linear function on the surface.

## Geometric input and normalization at zero energy

Use \(M=\mathrm{PSL}_2(\mathbb Z)\backslash\mathbb H\), the measure \(dx\,dy/y^2\), and heights \(1<Y<4\pi e^{-\gamma}\), where \(\gamma\) is Euler's constant. Above height one the cusp is a cylinder of width one. Let \(f_0(y)=\int_0^1 f(x+iy)\,dx\). On the closed subspace of \(L^2(M)\) with \(f_0(y)=0\) for almost every \(y\ge Y\), take the closed Dirichlet energy form on its intersection with \(H^1(M)\). Remove the common reducing subspace spanned by the ordinary cuspidal Laplace eigenfunctions. Write \(\Delta_Y\) for the self-adjoint operator of the resulting form. This construction specifies the space and operator without any zeta ordinates. Keeping the cuspidal space would introduce a different and much larger eigenvalue count. [Colin de Verdière, *Pseudo-laplaciens II*, §§1–3, Theorems 2 and 5](https://www.numdam.org/article/AIF_1983__33_2_87_0.pdf)

Put \(L=\log Y\), \(w=s-1/2\), and \(\Lambda(v)=\pi^{-v/2}\Gamma(v/2)\zeta(v)\). The completed Eisenstein constant term, divided by \(\sqrt Y\) and multiplied by \(w^2-1/4\), is the even entire function
\[
 F_L(w)=(w^2-1/4)\left[e^{Lw}\Lambda(1+2w)+e^{-Lw}\Lambda(1-2w)\right].          \tag{1}
\]
At \(w=0\) the two simple poles cancel. At \(w=\pm1/2\) the prefactor removes the remaining pole. At the permitted heights, the zeros are simple pairs \(\pm it_j\), \(t_j>0\), and the eigenvalues of \(\Delta_Y\) are precisely \(1/4+t_j^2\), with multiplicity one on this subspace. The choice \(Y<4\pi e^{-\gamma}\) excludes both the threshold eigenvalue and eigenvalues below it. Müller identifies this exact completed constant term with the spectrum, including simplicity. Lagarias and Suzuki give the threshold and the formula \(F_L(0)=(\log(4\pi)-\gamma-L)/4\). [Müller, *A spectral interpretation of the zeros of the constant term of certain Eisenstein series*, Theorem 0.1 and §2](https://arxiv.org/pdf/math/0703340) · [Lagarias and Suzuki, *The Riemann hypothesis for certain integrals of Eisenstein series*, Theorem 3 and (44)–(45)](https://arxiv.org/pdf/math/0412039v4)

Since \(2wF_L(w)\) is a sum of two degree-one polynomial multiples of shifted \(\xi\)'s times exponentials, \(F_L\) has order at most one. Its zero counting bound from finite order implies \(\sum_j t_j^{-2}<\infty\). The inverse \(G_Y=\Delta_Y^{-1}\) is positive trace class. The even Hadamard product for \(F_L\) has a constant exponential prefactor once opposite zeros are paired. The functional equation and the residue of \(\Lambda\) at one give \(F_L(1/2)=e^{-L/2}/2\). Hence the normalization at spectral energy zero gives the exact Fredholm determinant
\[
 F_L(w)=\frac1{2\sqrt Y}\det\!\left(I+(w^2-1/4)G_Y\right).                         \tag{2}
\]
The factor for eigenvalue \(1/4+t_j^2\) is \((w^2+t_j^2)/(1/4+t_j^2)\). Equivalently the signed operator with branches \(\pm(\Delta_Y-1/4)^{1/2}\) is self-adjoint with Hilbert–Schmidt inverse on the doubled space. Its regularized determinant at \(iw\) is \(F_L(w)/F_L(0)\).

## The exact xi value and its multiplicity

Take \(Y_1=2\), \(Y_2=3\), \(L_j=\log Y_j\), \(\ell=L_2-L_1\). Eliminating the \(\Lambda(1-2w)\) terms in (1) gives
\[
 w\left[e^{-L_1w}F_{L_2}(w)-e^{-L_2w}F_{L_1}(w)\right]
   =(w-1/2)\sinh(\ell w)\,\xi(1+2w).                                 \tag{3}
\]
Initially this is ordinary linear algebra at regular arguments. Both sides extend to entire functions, so the identity holds at the previously removed poles as well. Set \(w=-1/4+iz/2\) to recover \(X(z)\) from the determinants (2). Division by the right prefactor uses its analytic removable value if it vanishes. Dividing the reconstructed function by its value at \(z=0\) gives the requested normalization. In the open strip \(-1/2<\Re w<0\) containing all nontrivial zeta zeros after transformation, none of \(w\), \(w-1/2\), or \(\sinh(\ell w)\) vanishes. Thus the determinant difference preserves the exact analytic multiplicity of every original xi zero.

Infinitesimal variation of **one** geometric height also suffices. Formula (1) gives the entire identity
\[
 (\partial_L+w)F_L(w)=(w-1/2)e^{Lw}\xi(1+2w).                           \tag{4}
\]
In the open resonance strip \(F_L(w)\ne0\), so the exact equation for the zeta divisor there is \(\partial_L\log F_L(w)=-w\), with the same zero orders. The derivative here uses the family of geometric forms, including the variation of the prefactor in (2). A single determinant value without its height derivative provides a single equation in the two amplitudes in (1).

In scattering language the modular scattering coefficient is \(\Lambda(2s-1)/\Lambda(2s)\). At \(2s=\rho\) a nontrivial zeta zero, its numerator is \(\Lambda(2-\rho)\ne0\) by the functional equation and absolute Euler convergence. The order of the scattering pole is therefore the multiplicity of \(\rho\). The self-adjoint eigenvalues in (2) belong to \(\Re w=0\), whereas these poles belong to \(-1/2<\Re w<0\), even if RH holds. The exact two-determinant reconstruction supplies no single self-adjoint operator with the original xi spectrum. The earlier shifted de Branges construction starts from the xi function itself. Here the spectral data in (2) start from a surface and a form boundary condition. [Colin de Verdière, §2](https://www.numdam.org/article/AIF_1983__33_2_87_0.pdf) · [Shifted de Branges construction](XiShiftedDeBranges.md)

## Cutting the surface and the relative trace

In the space for the upper height, impose the extra form-domain condition \(f_0(Y_1)=0\). The horocycle trace is continuous in the form norm. The orthogonal complement of the lower-height Hilbert space consists exactly of functions supported on \(Y_1<y<Y_2\) that are constant in \(x\). These are orthogonal to all cusp forms. With the extra boundary condition imposed, the constant mode can be cut off at \(Y_1\) without a jump, so the form is the direct sum of the lower-height form and the Dirichlet interval form on this mode. The unitary substitution \(f(y)=y^{1/2}g(\log(y/Y_1))\) carries the latter to \(-d^2/dv^2+1/4\) with both endpoints Dirichlet on \((0,\ell)\). Its product normalized at \(w=0\) is \(\sinh(\ell w)/(\ell w)\), by the sine product. This accounts geometrically for the divisor introduced when inverting (3).

Write \(N_j(t)\) for the number of upper or lower noncuspidal eigenvalues \(\le1/4+t^2\), and set \(t\ge0\). The min–max principle for a codimension-one form restriction proves
\[
 0\le N_2(t)-N_1(t)-\lfloor\ell t/\pi\rfloor\le1.                     \tag{5}
\]
This includes shared eigenvalues with multiplicity. In particular the upper and lower counting functions **without** the interval correction have unbounded difference, which rules out modeling their positive compact inverse operators as a fixed finite-rank self-adjoint perturbation of one another after unitary identification.

Let \(a=w^2>0\), \(E(t)=N_2(\sqrt t)-N_1(\sqrt t)-\lfloor\ell\sqrt t/\pi\rfloor\). Logarithmic differentiation of the products and integration by parts give the completely monotone arithmetic function
\[
 \frac{d}{da}\log\left(\frac{F_{L_2}(\sqrt a)}
 {F_{L_1}(\sqrt a)\,\sinh(\ell\sqrt a)/(\ell\sqrt a)}\right)
    =\int_0^\infty\frac{E(t)}{(t+a)^2}\,dt .                           \tag{6}
\]
The identity counts the inverse resolvents of all three positive operators after subtracting the threshold \(1/4\). Each trace converges. Equation (5) bounds the right side by \(1/a\), and permits differentiation of every order under the integral on compact subintervals of \(a>0\). This positivity applies to a compensated relative trace of geometric spectra.

## An arithmetic trace and a direct Green operator check

Near \(w=1/2\), write \(w=1/2+h\). Then \(\Lambda(1-2w)=\Lambda(1+2h)=1/(2h)+c+O(h)\), with \(2c=\gamma-\log(4\pi)\), while \(\Lambda(1+2w)=\pi/6+O(h)\). Substituting into (1) and logarithmically differentiating (2) at \(w=1/2\) yields
\[
 \operatorname{Tr} G_Y
  =\frac{F_L'(1/2)}{F_L(1/2)}
  =\frac{\pi Y}{3}+1+\gamma-\log(4\pi Y).                               \tag{7}
\]
Here \(\Lambda(2)=\pi/6\) uses \(\zeta(2)=\pi^2/6\). The inverse interval trace is \(\ell\coth(\ell/2)-2\), from its product. Therefore (6) at \(a=1/4\), for the two indicated heights, is \(2+\pi/3-6\log(3/2)\).

There is a direct geometric verification. The following function represents the cut trace in the energy inner product:
\[
 g=\begin{cases}
 Y_2-Y_1,&\text{below }Y_1,\\
 Y_2-y,&Y_1<y<Y_2,\\
 0,&y>Y_2.
 \end{cases}
\]
It is an \(H^1\) function on the modular surface. It is orthogonal to cusp forms since their constant modes and their integrals against the constant function vanish. Integration on the cusp gives \(q(g,f)=f_0(Y_1)\) and \(q(g,g)=Y_2-Y_1\). The inverse operator of the cut problem is the energy-orthogonal projection of the unconstrained Green solution onto \(q(g,\cdot)=0\). Consequently, after the direct-sum identification,
\[
 G_{Y_2}-(G_{Y_1}\oplus G_{\rm interval})=
      \frac{g\otimes g}{Y_2-Y_1}.
\]
Its sole nonzero eigenvalue is \(\|g\|_{L^2}^2/(Y_2-Y_1)\). The modular surface has area \(\pi/3\), obtained by integrating \(y^{-2}\) over the standard fundamental domain. The part below \(Y_1\) has area \(\pi/3-1/Y_1\), and the remaining norm contribution is \(\int_{Y_1}^{Y_2}(Y_2-y)^2\,dy/y^2\). Evaluating gives
\[
 (Y_2-Y_1)\pi/3+2-\frac{2Y_2}{Y_2-Y_1}\log(Y_2/Y_1),
\]
in agreement with (7) and the interval trace. At \((2,3)\) the result lies between \(0.614406902547611454286135\) and \(0.614406902547611454286136\). These endpoints follow by bounding the alternating arctangent series in Machin's formula for \(\pi\) and using the first 18 terms of the positive series for \(2\operatorname{arctanh}(1/5)=\log(3/2)\), with its tail bounded by \(2(1/5)^{37}/(37(1-1/25))\).

## One geometric operator and one vector

The explicit Green operator at the cut eliminates the need for two spectra. Fix one permitted \(Y\). On the noncuspidal Hilbert space put \(h=\mathbf1_{\{\text{below }Y\}}\) and \(G=G_Y\). The indicator is orthogonal to cusp forms by the same constant-mode argument as for \(g\). For every \(v\in\mathbb C\),
\[
 \boxed{\det\!\left(I+v(v-1)G+Yv\,h\otimes h\right)=2Y^v\xi(2v).}       \tag{8}
\]
Both operator coefficients on the left are self-adjoint. They are defined entirely by the modular geometry.

To prove (8), take \(Y_1=Y\), \(Y_2=Y+\delta\) in the Green formula. In the split Hilbert space \(g=\delta h\oplus k\) where \(k(y)=Y+\delta-y\). For fixed real \(w>1/2\) let \(t=w^2-1/4>0\). Apply the rank-one determinant identity to \(I+tG_{Y+\delta}\). The resulting product is
\[
 \det(I+tG)\det(I+tG_{\rm interval})\!
 \left[1+t\delta\langle(I+tG)^{-1}h,h\rangle
 +\frac{t}{\delta}\langle(I+tG_{\rm interval})^{-1}k,k\rangle\right],
\]
where the scalar quadratic forms have their usual real values. The length of the logarithmic interval is \(O_Y(\delta)\). Its eigenvalue formula gives \(\operatorname{Tr}G_{\rm interval}=O_Y(\delta^2)\), so its determinant is \(1+O_{Y,t}(\delta^2)\). Also \(\|k\|^2=O_Y(\delta^3)\) and the resolvent factor is a contraction. Thus (2) yields
\[
 \partial_Y\log F_{\log Y}(w)=-\frac1{2Y}
      +t\langle(I+tG)^{-1}h,h\rangle .
\]
The right derivative equals the derivative since (1) is analytic in \(L\). Substitute this formula in (4), set \(v=w+1/2\), and use the rank-one determinant identity once more. This proves (8) for real \(v>1\). Both sides are entire, which proves it on the plane including all possible singularities of the intermediate resolvent. At \(v=1\), (8) reads \(2Y\xi(2)=1+Y\|h\|^2=Y\pi/3\).

The pencil also identifies precisely which boundary data would force RH. At a nontrivial zeta zero \(2v\) the Fredholm operator in (8) has nonzero kernel. For every nonzero kernel vector \(f\), taking imaginary and real parts of its quadratic form gives
\[
 \|f\|^2=|v|^2\langle Gf,f\rangle,\qquad
 \Re(2v)=1-\frac{Y|\langle h,f\rangle|^2}{\langle Gf,f\rangle}.
\]
Here \(v\) is nonreal, since \(\xi\) has no real zeros. The positive denominator follows from injectivity of \(G\). In the critical strip \(v(v-1)\) is nonreal since \(0<\Re v<1/2\). Consequently \(I+v(v-1)G\) is invertible and the kernel is one-dimensional, even for a potential multiple zero. The Fredholm determinant records algebraic multiplicity. Exact boundary ratio \(1/2\) for every such vector remains unproved.

### A densely defined exact realization and its failed self-adjointness

On the doubled noncuspidal space define \(C=G-Yh\otimes h\), \(Q=G^{1/2}\), and
\[
 T=\begin{pmatrix}C&-Q\\Q&0\end{pmatrix},\quad
 c=1/4,\quad B=(i/2)T(I-cT)^{-1}.
\]
The diagonal block is trace class and both off-diagonal blocks are Hilbert–Schmidt. In finite dimensions the Schur complement gives \(\det(I-vT)=\det(I-vC+v^2G)\). For the infinite-dimensional identity, use increasing finite spectral projections of \(G\), converging strongly to the identity, on both copies. The diagonal and quadratic terms converge in trace norm and the off-diagonal terms converge in Hilbert–Schmidt norm. Continuity of the two determinants therefore yields
\[
 \det{}_2(I-vT)=\det(I-vC+v^2G)e^{v\operatorname{Tr}C}
   =2\xi(2v)e^{(2+\gamma-\log(4\pi))v}.
\]
The last equality uses (7) and \(Y\|h\|^2=Y\pi/3-1\). This determinant is nonzero at \(v=c\) by the positive theta integral for \(\xi(1/2)\), so \(B\) is well defined.

Writing \(v=c+iz/2\) gives \((I-zB)(I-cT)=I-vT\). The Hilbert–Schmidt product identity \(\det_2((I+U)(I+V))=\det_2(I+U)\det_2(I+V)e^{-\operatorname{Tr}(UV)}\) shows that \(\det_2(I-zB)\) equals \(X(z)/X(0)\) times the exponential of a linear function vanishing at zero. Both normalized factors have derivative zero at the origin, by the defining regularization and the evenness of \(X\), so the linear coefficient vanishes. Hence
\[
                    \det{}_2(I-zB)=X(z)/X(0)\qquad(z\in\mathbb C).       \tag{9}
\]
Both \(T\) and \(T^*\) are injective because \(Q\) is injective, as seen first from the lower row, then the upper row. The same holds for \(B,B^*\). Thus \(B^{-1}\) is closed and densely defined and its spectral parameters have the algebraic multiplicities specified by (9).

Self-adjointness fails for this exact operator. If \(B=B^*\), multiplication on the left by \(I-cT^*\) and on the right by \(I-cT\) would give \(T+T^*=2cT^*T\). Testing \((0,f)\) gives zero on the left and \(2c\|Qf\|^2>0\) on the right for any nonzero \(f\). Thus the independently specified surface supplies the exact determinant and its multiplicities, with an explicit obstruction to the remaining Hilbert–Pólya requirement in this realization.

The [Lean companion](XiModularCuspSpectra.lean) proves the arithmetic constant-term identification at regular arguments, the entire two-height and first-variation identities for Mathlib's actual completed xi, the zero equivalence in the left half-plane, the logarithmic derivative used in (7), and positivity of the numerical example in closed form. Its pole-cleared function is \(2wF_L(w)\), which accounts for the subtraction of two in the logarithmic derivative at \(w=1/2\). The [pencil module](XiModularCuspPencil.lean) verifies the finite Schur determinant and the two scalar energy identities for nonreal modes. The surface operators, their spectral identification, the Fredholm limits, interlacing, the Green vector, and the infinite-dimensional steps in (7)–(9) are analytic results above and in the cited sources. The location of all poles on the central resonance line \(\Re w=-1/4\) remains open.
