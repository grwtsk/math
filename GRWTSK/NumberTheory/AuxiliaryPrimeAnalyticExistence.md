# Analytic existence of the auxiliary prime

Local source attribution: grwtsk contributors.

This record supplies the primary mathematical argument behind the analytic
existence work in [issue 1861](https://github.com/grwtsk/math/issues/1861).
Its consumers are the actual ideal-sum cancellation theorem
`GRWTSK.PrimeFieldFactoring.IdealDifference.auxiliary_of_prime_ideal_difference`
and the bounded search
`GRWTSK.PrimeFieldFactoring.discover_complete`. The argument proves a
conditional analytic theorem: a fixed zero-free strip for the two actual
Dedekind zeta functions yields a uniform polynomial bound on the **value** of
the auxiliary prime. It does not establish or independently qualify the
zero-free strip itself.

## Exact sources and change of statement

The source is OpenAI, *Deterministic Polynomial Factorization over Prime
Fields*, October 4, 2026, Lemma 11.2 (`analytic:explicit`) and Proposition
11.3 (`analytic:auxiliary`), at revision
`3344da59991ed94f9ba711217b29c1d760badfa6`. The analytic TeX has Git blob
`21081c288d68760167d2d94a34247ba61240dddf`.
[Pinned primary source](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/10-analytic.tex).

The classical quantitative input is Elchin Hasanalizade, Quanli Shen and
Peng-Jie Wong, *Counting zeros of Dedekind zeta functions*, Mathematics of
Computation 91 (2022), 277–293, Corollary 1.2, equation (1.3).
[Published edition](https://doi.org/10.1090/mcom/3665) ·
[Authors' copy](https://www-math.nsysu.edu.tw/~pjwong/stuff/DedekindZeros.pdf).
Its field-uniform zero count is used below; it does not assert the fixed
zero-free strip.

The source uses the strip of width $10^{-6}$ to obtain
$\ell\le c_0B^{20000000}$. Here the weighted field complexity is bounded
by $72B$, and the nuisance estimate loses only one logarithm. With the
same strip these estimates give $\ell\le c_0B^{1000000}$. This is a
strengthening of the numerical exponent in the source's argument, with
its analytic premise retained. No claim of prior-art novelty is made.

The [Dedekind identification record](DedekindStripIdentification.md)
documents an alternative proposed strip supplier, Dean Cureton and Jesse
Thorner's *A quasi-Riemann hypothesis for Dedekind zeta functions*,
Theorem 1.1, and the declaration `DedekindZetaZeroFree.main` at provider
revision `15f9d0d31f2336fbc38f8c111e8d3b46e337bfe4`.
[Pinned provider statement](https://github.com/AxiomMath/DedekindZetaZeroFree/blob/15f9d0d31f2336fbc38f8c111e8d3b46e337bfe4/Solution/DedekindZetaSolution.lean).
That record retains the provider's own evidence scope and outstanding
qualification. The present argument assumes a strip for the normalized
zeta functions; neither an import name nor agreement of theorem wording
discharges that assumption.

## Uniform conditional theorem

For a prime $p$ and an integer $n\ge2$, set
$$
 L=\lceil\log_2p\rceil,\qquad B=20+(n+1)(L+1).
$$
Suppose $p>B^{200000}$ and $q\le n$ is prime. Form the actual number fields
$$
 K=\mathbf Q(\mu_{12q}),\qquad M=K(p^{1/q}).
$$
Fix an integer $m\ge4$ divisible by four. The analytic premise is that
both meromorphic Dedekind zeta functions, normalized by their full ideal
Dirichlet series on $\Re s>1$, have no zero in $\Re s>1-1/m$; their simple
poles at one are permitted. There is no restriction on imaginary part.

There is an integer $T\ge2$, chosen independently of $m,p,q,n$, such that
whenever these premises hold, an auxiliary rational prime satisfies
$$
 (TB)^m<\ell<2(TB)^m,
 \quad \ell\notin\{2,3,p,q\},\quad
 \ell\equiv1\pmod{12q},\quad
 p^{(\ell-1)/q}\not\equiv1\pmod\ell.
 \tag{1}
$$
In particular, the numerical cap is
$$
 E=2(TB)^m=(2T^m)B^m.
 \tag{2}
$$
The quantifier order is $\exists T\,\forall m\,\forall p,n,q$, with the
displayed hypotheses inside the universal statement. A constant chosen
separately after seeing each input would not establish this theorem.

## 1. A uniform smoothed explicit formula

Fix a nonzero nonnegative $\varphi\in C_c^\infty((1,2))$ and normalize it
by $\int\varphi(t)\,dt=1$. Write $H=\|\varphi\|_\infty$ and
$$
 \Phi(s)=\int_0^\infty\varphi(t)t^{s-1}\,dt,
 \qquad \Phi(1)=1.
$$
For a number field $F$, let $d_F=[F:\mathbf Q]$, let $D_F$ be its absolute
discriminant, and write $A_F=\log D_F+d_F$. Define
$$
 \Psi_F(x)=\sum_{\mathfrak p}\sum_{j\ge1}
 \log N\mathfrak p\,
 \varphi\bigl((N\mathfrak p)^j/x\bigr).
 \tag{3}
$$
The prime ideals are the actual nonzero prime ideals of $\mathcal O_F$.
Compact support makes this sum equal to the finite window in
`AuxiliaryPrimeIdealDifference.lean`; its `mem_window` theorem checks
that the norm and exponent cutoffs omit no term in the open window.

There is a constant $C>0$, depending only on $\varphi$, such that for
every $F$, every $x\ge2$ and every $0<\delta\le1/2$, a zero-free strip
$\Re s>1-\delta$ implies
$$
 |\Psi_F(x)-x|\le Cx^{1-\delta}A_F.
 \tag{4}
$$
In particular, $C$ is independent of the field and of $\delta$.

To prove this, Mellin inversion and the absolutely convergent Euler
product on $\Re s=2$ give
$$
 \Psi_F(x)=\frac1{2\pi i}\int_{(2)}
 -\frac{\zeta_F'}{\zeta_F}(s)\Phi(s)x^s\,ds.
$$
Shift to $\Re s=-1/2$. The residue theorem gives
$$
 \Psi_F(x)=x-\sum_\rho x^\rho\Phi(\rho)
 -(r_1+r_2-1)\Phi(0)+I_F(x),
 \tag{5}
$$
where the sum includes multiplicities of all nontrivial zeros, and
$I_F$ is the integral on the new vertical line. The simple pole of
$\zeta_F$ makes the residue of $-\zeta_F'/\zeta_F$ at one equal to one.
The positive class-number residue does not multiply the main term.
The only trivial zero crossed is the possible zero at zero, of order
$r_1+r_2-1\le d_F$.

HSW's Corollary 1.2 bounds the total count $N_F(U)$ of nontrivial zeros
with $|\Im\rho|\le U$, including multiplicities. It implies, with an
absolute constant,
$$
 N_F(U)\ll(1+U)\bigl(\log D_F+d_F\log(U+2)\bigr),\qquad U\ge0.
$$
Use the stated estimate for $U\ge1$ and monotonicity below one. Three
integrations by parts in the Mellin transform give
$|\Phi(\sigma+it)|\ll_\varphi(1+|t|)^{-3}$ uniformly on any fixed compact
interval of real parts. Tonelli's theorem then gives
$$
 \sum_\rho(1+|\Im\rho|)^{-3}
 =3\int_0^\infty\frac{N_F(t)}{(1+t)^4}\,dt
 \ll A_F,
 \qquad
 \sum_\rho|\Phi(\rho)|\ll_\varphi A_F.
 \tag{6}
$$
The second estimate uses $0\le\Re\rho\le1$. The strip assumption gives
$\Re\rho\le1-\delta$, including possible zeros on its boundary. Thus
the absolute value of the zero sum in (5) is at most a fixed multiple
of $x^{1-\delta}A_F$.

On the line $s=-1/2+it$, the functional equation expresses the logarithmic
derivative using $\log D_F$, $r_1$ and $r_2$ gamma logarithmic derivatives,
and the absolutely convergent logarithmic derivative at $1-s=3/2-it$.
The gamma arguments stay away from their poles and satisfy the usual
$O(\log(|t|+2))$ bound. The Euler product at $3/2$ is bounded by a fixed
multiple of $d_F$. Consequently
$$
 \left|\frac{\zeta_F'}{\zeta_F}(-1/2+it)\right|
 \ll\log D_F+d_F\log(|t|+2),
 \qquad |I_F(x)|\ll_\varphi x^{-1/2}A_F.
$$
These constants are absolute apart from the fixed test function.
For the contour justification, the zero sum's absolute convergence alone
does not dispose of the horizontal sides. Subtract HSW's counts at $j-1$
and $j+2$ to bound nearby zero ordinates by
$O(\log D_F+d_F\log(j+2))$; the count at height three covers small $j$.
In each sufficiently high unit interval choose a height separated from
these ordinates by at least a constant times
$(\log D_F+d_F\log(j+2))^{-1}$. The local partial-fraction formula for
the logarithmic derivative then bounds it by
$O((\log D_F+d_F\log(j+2))^2)$ across the horizontal segment. For each
fixed $F,x$, the Mellin transform's cubic decay makes these sides tend
to zero. Equation (6) permits the limit of the zero sums. The height
sequence may depend on $F$, since its bounds disappear before estimating
the surviving terms. All surviving bounds are linear in $A_F$.
Absorbing the zero-at-zero term and the new-line integral proves (4).

## 2. Weighted field height is linear in the input size

The large branch implies $p\nmid12q$. The prime $p$ is unramified in
$K$, so at each prime of $K$ above $p$ its valuation is one. The
polynomial $X^q-p$ is Eisenstein there; hence $[M:K]=q$. Since
$\mu_q\subset K$, this is a cyclic Kummer extension. The cyclotomic
degree and discriminant formulas give
$$
 d_K\le12q,\quad d_M=qd_K,\quad
 \log D_K\le d_K\log(12q).
$$
The relative field discriminant divides the discriminant ideal of the
integral order $\mathcal O_K[p^{1/q}]$, whose power-basis discriminant
is $\pm q^qp^{q-1}$. Taking norms in the relative discriminant formula,
$$
 \log D_M\le q\log D_K+
 d_K\bigl(q\log q+(q-1)\log p\bigr).
 \tag{7}
$$
Normalize before estimating:
$$
 A_K+\frac{A_M}{q}
 \le d_K\bigl(2\log12+3\log q+\log p+2\bigr).
$$
Here $p\ge144$ and $q<p$, so
$2\log12\le\log p$, $2\le\log p$ and $\log q\le\log p$. Therefore
$$
 A_K+\frac{A_M}{q}\le6d_K\log p
 \le72q\log p\le72B.
 \tag{8}
$$
The last step retains the product in the input size:
$q\log p\le nL\le B$, because $\log p\le L\log2\le L$.
Applying (4) to the two fields yields
$$
 \left|\Psi_K(x)-x\right|+
 \frac{\left|\Psi_M(x)-x\right|}{q}
 \le72CBx^{1-\delta}.
 \tag{9}
$$

## 3. Bound every nuisance term in the actual sum

Let $N_K(x)$ denote the repository's `nuisance`: all terms except first
powers at prime absolute norm $\ell\notin\{2,3,p,q\}$. A nonzero prime
ideal above a rational prime $a$ has norm $a^f$, where $f\ge1$ is its
residue degree. If either $j\ge2$ or $f\ge2$, then $fj\ge2$; a term in
the support therefore has $a\le\sqrt{2x}$.

For each fixed ideal above $a$, all its relevant exponents contribute at
most
$$
 Hf\log a\left\lfloor\frac{\log(2x)}{f\log a}\right\rfloor
 \le H\log(2x).
$$
There are at most $d_K$ ideals above each rational prime, by
$\sum e_if_i=d_K$. At most $\lfloor\sqrt{2x}\rfloor$ rational primes
can occur in this part. The remaining nuisance consists of first powers
of degree-one ideals above the four listed exceptions, contributing at
most another $4Hd_K\log(2x)$. Thus
$$
 N_K(x)\le Hd_K\bigl(\lfloor\sqrt{2x}\rfloor+4\bigr)\log(2x).
 \tag{10}
$$
Repeated exceptions only make this upper bound looser. It requires no
asymptotic distribution theorem for rational primes and remains valid
at ramified primes.

For $x\ge2$, one has $\sqrt{2x}+4\le5\sqrt x$ and
$\log(2x)\le4x^{1/4}$. The latter follows from
$\log x=4\log(x^{1/4})\le4(x^{1/4}-1)$ and $\log2<1$.
Since $d_K\le12B$,
$$
 N_K(x)\le240HBx^{3/4}.
 \tag{11}
$$

## 4. Fix the scale and obtain strict surplus

Choose an integer $T\ge\max\{2,576C,1920H\}$ once, and let
$x=(TB)^m$, $\delta=1/m$. Then $x^\delta=TB$, so (9) is at most $x/8$.
Also $x^{1/4}\ge TB$, since $m\ge4$; hence (11) is at most $x/8$.
As $q\ge2$,
$$
 \Psi_K(x)-\frac{\Psi_M(x)}q
 \ge\left(1-\frac1q\right)x-\frac x8
 \ge\frac{3x}{8}>\frac x8\ge N_K(x).
 \tag{12}
$$
This is the precise strict surplus required by the existing cancellation
theorem. The integer $T$ exists by the Archimedean property. The proof
gives its sufficient inequalities; it does not assert that a fully
evaluated minimal numerical value of $C$ or $T$ has been computed.
Upward search needs no knowledge of $T$ to find the first witness;
(2) proves its uniform termination bound.

## 5. Splitting laws and return to the rational prime

Every ordinary prime ideal of $K$ in the window has norm a rational prime
$\ell\notin\{2,3,p,q\}$. Thus $\ell\nmid12q$. A primitive $12q$-th
root in $K$ is integral and retains its exact order in the residue field:
reduction on these roots of unity is injective when the ideal norm is
coprime to $12q$. Its order therefore divides the multiplicative group
order $\ell-1$, giving $\ell\equiv1\pmod{12q}$. The local
`cyclotomic_ordinary_norm_congruent_one` theorem proves this directly
from the actual `IsCyclotomicExtension` instance; it no longer takes a
cyclotomic splitting or Frobenius statement as a premise.
Suppose its modular power test succeeds:
$p^{(\ell-1)/q}=1$ in $\mathbf F_\ell$. Since $q\mid\ell-1$, cyclicity
of $\mathbf F_\ell^\times$ implies that $p$ is a $q$-th power. Therefore
$X^q-p$ splits into $q$ distinct linear factors in that residue field.

This polynomial factorization must be transferred to the actual maximal
order. The exclusions $\ell\ne p,q$ make $q^qp^{q-1}$ a unit at the
prime of $K$. Thus the power-basis order has unit discriminant locally;
equivalently, the index obstruction to Dedekind's factorization theorem
vanishes. The prime splits into exactly $q$ distinct primes of
$\mathcal O_M$, each with unchanged absolute norm $\ell$.

Their first-power contributions to $q^{-1}\Psi_M$ cancel the original
contribution to $\Psi_K$. Distinct base ideals have disjoint fibers,
since contraction is unique. Every other contribution on the $M$ side
is nonnegative and is subtracted. If every ordinary prime failed the
auxiliary nonresidue condition, the difference could therefore be at
most $N_K(x)$, contradicting (12). This proves (1), and the existing
finite search returns the least auxiliary prime using at most $E+1$
predicate calls. Predicate calls alone are not a complete machine-level
bit-cost analysis.

For $m=1000000$, (2) gives the strengthened bound under the original
source strip. For $m=32$, it gives the corresponding degree-32 bound
**if** the stronger actual-field strip has been supplied and qualified
at the desired evidence level. This optional specialization is not
unconditional acceptance of the alternative provider.

## Counterexamples, comparison and evidence scope

Dropping the arithmetic hypotheses is false: when $p=q=2$, every prime
$\ell\equiv1\pmod{24}$ is $1$ modulo eight, so the supplementary
quadratic reciprocity law makes $2$ a square modulo $\ell$. Euler's
criterion then makes the auxiliary power test equal one. Consequently
there is no `AuxiliaryPrime 2 2 l`, at any cap. The local declaration
`GRWTSK.PrimeFieldFactoring.no_auxiliary_prime_two_two` expresses this
obstruction. This example also explains why an arbitrary named Kummer
field cannot be assumed to have relative degree $q$.

A zero test function would make both sums vanish, so normalization and
strict surplus cannot be replaced by a non-strict comparison. A strip
whose width deteriorates with the input does not supply a fixed exponent.
Deleting finite Euler factors changes the analytic function; its relation
to the full ideal sum must be proved. The identification record treats
that normalization and the pole separately.

The argument shares the source's smoothed explicit formula and
split-prime cancellation. The direct Dedekind-strip route differs from
its Hecke-character route in how the two strips are supplied; it is not
an independent proof of their common analytic ingredients. The linear
weighted height and sharper nuisance count explain exactly where the
stronger cap comes from.

| Maintained local file and declaration scope | Mathematical content and retained premises |
| --- | --- |
| [AuxiliaryPrimeScale.lean](AuxiliaryPrimeScale.lean), `GRWTSK.PrimeFieldFactoring.AnalyticScale.*` | Exact scale powers, polynomial cap identity and strict surplus from the displayed error inequalities. |
| [AuxiliaryPrimeFieldHeight.lean](AuxiliaryPrimeFieldHeight.lean), `GRWTSK.PrimeFieldFactoring.FieldHeight.inputSize` and `weighted_height_large_branch` | Uses the exact dense input size and large-branch test to prove the logarithmic conditions and linear height budget; the two degree statements and two cyclotomic/Kummer discriminant inequalities remain explicit. |
| [AuxiliaryPrimeNuisance.lean](AuxiliaryPrimeNuisance.lean), `GRWTSK.PrimeFieldFactoring.IdealDifference.nuisance_le_nat_sqrt` and `nuisance_le_sqrt` | Bounds the actual finite exceptional ideal sum by rational-prime fibers and the ramification/inertia identity. |
| [AuxiliaryPrimeCyclotomic.lean](AuxiliaryPrimeCyclotomic.lean), `GRWTSK.PrimeFieldFactoring.IdealDifference.cyclotomic_ordinary_norm_congruent_one` | Proves the ordinary-prime congruence from genuine cyclotomic root containment and the actual residue field, with no congruence or Frobenius supplier. |
| [AuxiliaryPrimeAnalyticExistence.lean](AuxiliaryPrimeAnalyticExistence.lean), `GRWTSK.PrimeFieldFactoring.AnalyticExistence.uniform_large_branch_discovery` | Returns the least prime and the actual predicate-call bound on the source's large branch. Nuisance, cyclotomic congruence, logarithmic budgets and scale dominance are proved; the explicit formula, field degree/discriminant and Kummer splitting inputs remain formal premises. |
| [AuxiliaryPrimeObstruction.lean](AuxiliaryPrimeObstruction.lean), `GRWTSK.PrimeFieldFactoring.no_auxiliary_prime_two_two` | An unconditional obstruction to removing the arithmetic input restrictions. |

The complete argument above is ordinary mathematics conditional on the
fixed zero-free input. The new Lean layer does **not** formalize Mellin
inversion, the Dedekind explicit formula, the HSW zero count, or a
zero-free theorem. It also does not automatically instantiate the
cyclotomic/Kummer degree and discriminant facts or the Kummer splitting
fact for concrete field models. The cyclotomic congruence and the full
nuisance estimate are now formally proved. These distinctions remain
even if every local module compiles.
Neither the complete prime-field factorization algorithm nor integer
factorization in FP follows from the local declarations alone.

### Declaration-level correspondence for the existence module

All names in this table have prefix
`GRWTSK.PrimeFieldFactoring.AnalyticExistence`. They are local consequences
of the method in the pinned Proposition 11.3, not imported upstream Lean
proofs. The changed field-height estimate gives exponent $m$ in place of
the source's deliberately loose exponent $20m$ at $m=1000000$.

| Declaration | Exact role and unresolved premises |
| --- | --- |
| `SmoothedEstimate` | A named proposition about the actual finite ideal sum, normalized main term and actual discriminant/degree. It is not an axiom or a proof from zero-freeness. |
| `scale` | The numerical natural-number scale $(TB)^m$. |
| `exists_scale_constant` | Chooses an integer $T$ satisfying all three sufficient inequalities before the field/input parameters. |
| `weighted_error_le` | Combines the two supplied estimates with the actual coefficient $1/q$ and the linear weighted height budget. |
| `surplus_at_scale` | Proves strict surplus from the displayed error and nuisance bounds at $m=4r$, $r\ge1$. |
| `auxiliary_at_scale` | Discharges the nuisance bound using its actual-field theorem and extracts a rational prime in the open scale interval; its general-field version exposes both algebraic splitting premises. |
| `uniform_auxiliary_cap` | A single coefficient precedes all fields and input integers; the numerical cap is $cB^{4r}$. |
| `uniform_large_branch_discovery` | Uses the genuine cyclotomic extension to discharge congruence, the large-branch field-height theorem to discharge the input budget, and `discover_complete` to return the least witness with at most $E+1$ tests. Retains only the smoothed estimates, specified field degree/discriminant data and Kummer splitting. |

### Exact-source verification, 2026-11-27

All six new modules elaborated and compiled with exit zero under Lean
4.34.1, build `5045d0056413266e57c625dcd7c365b10e377c52`, and root Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The sole source diagnostic was
that numerical evaluation of the symbolic exponent $200000$ in the
field-height module exceeded the evaluator threshold. The proof compiled;
the threshold and dependency pins were not changed.

| Module | Exact Git blob | Public declarations replayed |
| --- | --- | ---: |
| `AuxiliaryPrimeScale.lean` | `13b2201421cac7c4f72079657cda1d26b3bb6c8a` | 6 |
| `AuxiliaryPrimeFieldHeight.lean` | `b6f4aa684c9fea5b28cd6a1a9bbb3f58dff5541e` | 10 |
| `AuxiliaryPrimeNuisance.lean` | `a82d9d4b14b2ce498df4e3c03ca4938d8f5ba5e3` | 15 |
| `AuxiliaryPrimeCyclotomic.lean` | `0839be9a1bec097fb20bb99ba749600db0aaa440` | 6 |
| `AuxiliaryPrimeObstruction.lean` | `18f51b4ba3a2ad7c2c50b584af84f90aaf33bd00` | 1 |
| `AuxiliaryPrimeAnalyticExistence.lean` | `57f23fd980c7b33bf5d9c2dd3955c84900c7b770` | 8 |

A fresh empty-kernel replay imported the final existence and obstruction
modules and replayed the dependency closure of all **46** public source
declarations in these six files. It checked **45,786** transitive constants,
rejected unsafe or partial dependencies, and passed with exit zero. The
entire transitive axiom set was exactly `Classical.choice`, `Quot.sound`
and `propext`. The three private helper theorems are included through
their consumers' dependency closures. No `sorryAx` or added axiom occurred.
These observations concern the explicit statements and hypotheses above;
they do not provide formal proofs of those hypotheses.

Separate agent reviews checked the input-size improvement, the strict
margin, the actual ideal-fiber argument and the contour-height limit.
They are not external independent review or an independent toolchain.
External mathematical review, independent-toolchain replay and upstream
zero-free-provider qualification were not performed in this work.
Provider qualification retains the separate status recorded in
`DedekindStripIdentification.md`. The unresolved formal suppliers are
tracked in issue 1861; the issue is not closed by this conditional result.
