# Strict two-translate positivity of the actual zeta Weil form through separation 1900

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26, 42A82, 11N05, 65G30.

## Evidence boundary and source identity

**WRITTEN_ANALYTICAL_ARGUMENT + LOCALLY_EXECUTED_EXACT_RATIONAL_FINITE_CHECK.**
Local Lean elaboration NOT_RUN, kernel replay NOT_RUN, transitive axiom audit NOT_RUN, local zeta-zero isolation NOT_RUN, independent mathematical review NOT_RUN, originality UNASSESSED. The external FLINT ball enclosures for two zeros and the Platt--Trudgian finite-height zero verification are mathematical inputs with the precise published scopes below. The exact rational verifier (see section 5) has actually been run with Python 3.13.5; a passing finite script does not constitute a Lean proof or a universal zero computation.

**Canonical source and consumer:** The complete original zeta Weil distribution W, its Hermitian test domain and one fixed dyadic compact bump phi are those in WeilFixedBumpNegativeDepth.md (WFDG-1/2). The explicit high-zero dyadic tail is WDT-1/2 in WeilDyadicZeroTailFiniteHorizon.md. WPSO-2 in WeilPrimeOscillationResidues.md supplies the certified first-zero dyadic product lower bound. This theorem upgrades WDT-3's tiny-negative-error statement to EXACT strict positivity for *two* distinct translates of this original bump, without assuming RH. It does not assert all-test positivity, arbitrary finite-rank Gram positivity, all-support finiteness of the negative index, RH or primitive Dirichlet GRH. Mathematical consumer: finitely sampled original Weil witness bounds (layers 05--07), with a strict rank-two finite-horizon sign result.

**Pins and publication:** Inspected grwtsk/math/main and root policy, publication instructions and scoped-AGENTS absence before new files. Current root Lean pin leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Existing dependencies and declarations are unchanged; no sorry, admit, research axiom, import, root module or pin change. Coordination issue grwtsk/math#1801; advance scope comment 6842781769. The companion local verifier is WeilTwoTranslateRationalGap.py in this exact directory.

## 1. Precise statement on the ACTUAL pole-inclusive Weil source

For j>=1 let a_j=2^(-j-1) and let phi be the real even nonnegative smooth mass-one probability density of the convergent convolution of uniform measures on [-a_j,a_j]. It has support [-1/2,1/2] and bilateral Laplace transform
\[
\Phi(z)=\int_{\mathbb R}\phi(x)e^{zx}dx
=\prod_{j\ge1}\frac{\sinh(a_jz)}{a_jz}.
\tag{1}
\]
Let h=phi*phi, real even smooth supported [-1,1]. Let W be the COMPLETE pole-inclusive original zeta Weil distribution with both pole orientations, all prime powers, the origin regularization and the complete gamma integral. Define for complex compact smooth functions
\[
Q(f,g)=W(f*\widetilde g),\qquad \widetilde g(x)=\overline{g(-x)},
\quad Q(f)=Q(f,f),\quad
K(t)=W(h(\cdot-t)).
\tag{2}
\]

**Theorem W2TP-1 (finite-horizon unconditional exact sign).** For every real t with 0<|t|<=1900,
\[
\boxed{K(0)-|K(t)|>0.}
\tag{3}
\]
Consequently, for every pair of DIFFERENT real translations s,t with 0<|s-t|<=1900 and every (c_1,c_2) in C²\{(0,0)},
\[
\boxed{Q(c_1\phi(\cdot-s)+c_2\phi(\cdot-t))>0.}
\tag{4}
\]
When s=t, the resulting 2-by-2 Gram matrix is positive SEMIDEFINITE with a rank-one null direction c_1=-c_2, and is not asserted strictly positive. The dimension is EXACTLY two; there is no extension to all finite m without additional arguments.

The theorem is unconditional in the usual mathematical sense: it uses independently PUBLISHED rigorous finite computations of true zeta zeros, but makes no RH or zero-free assertion at unverified heights. Its principal new proof input is the exact rational finite-separation check in section 3.

## 2. Verified low zeros and an explicit upper bound on ALL unknown zeros

Let Z be the set of DISTINCT nontrivial zeros rho of the analytically continued zeta function, each with its actual positive integer multiplicity m_rho; z_rho=rho-1/2=delta_rho+i gamma_rho. In the full original Weil explicit formula,
\[
K(t)=\sum_{\rho\in Z}m_\rho\Phi(z_\rho)^2e^{z_\rho t}.
\tag{5}
\]
The complex square on the right MUST NOT be changed into an absolute square off the critical line. Zeta functional equation and conjugation preserve this divisor with multiplicities and imply K(t) is a REAL EVEN function. Rapid transform decay and the classical zero count justify absolute termwise differentiation on compact real t intervals.

**Finite certified input.** Platt and Trudgian (2021) established with rigorous interval arithmetic that EVERY nontrivial zeta zero with |Im rho|<=3*10^12 lies on Re rho=1/2. Define
\[
H_0=2^{41}=2\,199\,023\,255\,552<3\cdot10^{12}.
\tag{6}
\]
Then the low-zero kernel
\[
K_{\rm low}(t)=\sum_{|\Im\rho|<H_0}m_\rho|\Phi(i\Im\rho)|^2e^{i(\Im\rho)t}
=2\sum_{\substack{0<\gamma_\rho<H_0}}m_\rho|\Phi(i\gamma_\rho)|^2\cos(\gamma_\rho t)
\tag{7}
\]
is a REAL EVEN positive-definite Fourier kernel. Its zero coefficients are all TRUE zeta zeros on the line (not a synthetic model). Define R(t)=K(t)-K_low(t); R contains ALL unknown higher zeros at their actual complex locations.

WDT-1/2 proves the unconditional aggregate tail estimate
\[
\mathcal T_N:=
\sum_{|\gamma_\rho|\ge2^N}m_\rho|\Phi(z_\rho)|^2
<2^{-N^2+5N+4}\qquad(N\ge6).
\tag{8}
\]
Thus \(\mathcal T_{41}<2^{-1472}\). Since |Re z_rho|<=1/2, for real |t|<=1900,
\[
|R(t)|\le e^{|t|/2}\mathcal T_{41}
<2^{1377}2^{-1472}=2^{-95},
\tag{9}
\]
where we use the elementary rational estimate log 2>69/100 and
\(950<1377\cdot69/100\).
In particular, for every |t|<=1900,
\[
\boxed{|R(0)|+|R(t)|<2^{-94}.}
\tag{10}
\]
All high zeros, including any hypothetical off-line zeros and multiplicities, remain in this explicit error budget. A finite RH verification has NOT been extrapolated to the entire divisor.

**Sharper even-error control near zero.** The function R is real even, hence R'(0)=0. From WDT-2 the dyadic block of its absolute zero coefficient in 2^n<=|Im rho|<2^(n+1) is less than \(2^{-n^2+5n+3}\). On this block
\(|z_\rho|^2<2^{2n+4}\), so
\[
\begin{aligned}
\sum_{|\gamma_\rho|\ge2^{41}}m_\rho|\Phi(z_\rho)|^2|z_\rho|^2
&<\sum_{n\ge41}2^{-n^2+7n+7}\\
&<2^{-41^2+7\cdot41+8}=2^{-1386}.
\end{aligned}
\tag{11}
\]
Successive summands have ratio at most \(2^{-76}\). For |t|<=10^-4, \(e^{|t|/2}<2\), so \(\sup|R''(t)|<2^{-1385}\). Taylor's theorem together with R'(0)=0 gives
\[
\boxed{|R(0)-R(t)|<2^{-1386}t^2\qquad(|t|\le10^{-4}).}
\tag{12}
\]
This refinement is necessary: a fixed error bound at t=0 cannot establish a strict positive gap tending to zero as t approaches zero.

## 3. Two independently certified frequencies cannot resonate together on this horizon

FLINT's rigorously isolated first two positive zeta ordinates have published ball enclosures
\[
\gamma_1=14.1347251417346937904572519836\pm3.76\cdot10^{-29},
\quad
\gamma_2=21.0220396387715549926284795939\pm3.10\cdot10^{-30}.
\tag{13}
\]
These imply the COARSE but rigorously contained rational intervals
\[
14.134725141734<\gamma_1<14.134725141736,\qquad
21.022039638771<\gamma_2<21.022039638773.
\tag{14}
\]
In particular, 14<gamma_1<15, 21<gamma_2<22, and r=gamma_2/gamma_1 satisfies
\[
\frac{21022039638771}{14134725141736}
<r<
\frac{21022039638773}{14134725141734}
<\frac32.
\tag{15}
\]

**W2TP-2 (executed exact finite rational certificate).** For EVERY integer m from 1 through 10000,
\[
\boxed{\operatorname{dist}(mr,\mathbb Z)>10^{-5}.}
\tag{16}
\]
A small pure Python Fraction verifier checks the exact rational interval [m R_MIN,m R_MAX] against both neighboring integers. The minimum guaranteed gap is the exact rational
\[
\boxed{\frac{176909203}{14134725141736}>10^{-5},}
\tag{17}
\]
at m=3729 and nearby integer 5546. These are ACTUAL rational inequalities with no floating-point ambiguity. The source script and execution receipt are in section 5; the external certified zero enclosures, rather than this checker, establish that true zeros lie in (14).

**Trigonometric separation lemma.** Put eta=10^-6. For every 10^-4<=|t|<=1900,
\[
\boxed{
\max\left(
\operatorname{dist}\left(\frac{\gamma_1t}{\pi},\mathbb Z\right),
\operatorname{dist}\left(\frac{\gamma_2t}{\pi},\mathbb Z\right)
\right)\ge\eta.
}
\tag{18}
\]

**Proof.** By real evenness assume t>=0 and write y=gamma_1t/pi. Using 3.14<pi<22/7 and the bounds 14<gamma_1<15, we have eta<y<10000 throughout 10^-4<=t<=1900. If dist(y,Z)>=eta, done. Otherwise choose the nearest integer m; it satisfies 1<=m<=10000 and |y-m|<eta. By (16) and r<3/2,
\[
\operatorname{dist}(ry,\mathbb Z)
\ge\operatorname{dist}(rm,\mathbb Z)-r|y-m|
>10^{-5}-\tfrac32\cdot10^{-6}>\eta.
\]
Thus (18) holds with every quantifier shown. QED.

For any real theta, let d(theta)=dist(theta,pi Z) in [0,pi/2]. The elementary sine inequality gives
\[
1-|\cos\theta|
=1-\cos d(\theta)\ge 2d(\theta)^2/\pi^2.
\tag{19}
\]
By (18), for every 10^-4<=|t|<=1900 at least one of j=1,2 satisfies
\[
\boxed{1-|\cos(\gamma_jt)|\ge2\cdot10^{-12}.}
\tag{20}
\]

## 4. Lower bounds for the two TRUE critical-zero weights and the Gram eigenvalues

Let \(w_j=m_{\rho_j}|\Phi(i\gamma_j)|^2\), with m_rho>=1. WPSO-2 proves from the first-zero interval that
\[
w_1>(608/16875)^2>1/1000.
\tag{21}
\]
For gamma_2 in (21,22), the dyadic sinc product (1) has a separate elementary lower bound. The j=1 argument gamma_2/4 belongs to (21/4,22/4); put x=2pi-gamma_2/4, so \(39/50<x<\pi/2\), and \(\sin x>\sin(39/50)>2/3\), using sin x>=x-x^3/6. Hence
\[
\left|\frac{\sin(\gamma_2/4)}{\gamma_2/4}\right|>\frac4{33}.
\]
The j=2 argument gamma_2/8 has pi-gamma_2/8>39/100 and less than pi/2, giving \(\sin(\gamma_2/8)>3/8\) and its sinc factor >3/22. For j=3, sin x/x>=1-x²/6 with x<=11/8 yields a factor >2/3. Finally
\[
\prod_{j\ge4}\frac{\sin(a_j\gamma_2)}{a_j\gamma_2}
\ge 1-\frac{\gamma_2^2}{6}\sum_{j\ge4}a_j^2
>1-\frac{484}{6\cdot768}
=1-\frac{121}{1152}>\frac89.
\]
Multiplication gives
\[
\boxed{w_2>
\left(\frac4{33}\frac3{22}\frac23\frac89\right)^2
=\left(\frac{32}{3267}\right)^2>\frac1{20000}.}
\tag{22}
\]
The exact rational checker also verifies these coefficient inequalities. No claim of zero simplicity is needed here (though the external finite-height study establishes simplicity below its cutoff).

**Separation bounded away from t=0.** Because K_low is the positive sum (7), for either sign sigma=+1 or -1,
\[
K_{\rm low}(0)+\sigma K_{\rm low}(t)
=2\sum_{\gamma_\rho>0}w_\rho(1+\sigma\cos(\gamma_\rho t)).
\]
All terms are nonnegative. For 10^-4<=|t|<=1900 choose j in {1,2} from (20). Then
\[
\boxed{
K_{\rm low}(0)+\sigma K_{\rm low}(t)
\ge2w_j(1-|\cos(\gamma_jt)|)
>4(1/20000)10^{-12}
=\frac1{5\cdot10^{15}}.
}
\tag{23}
\]
The entire unknown high-zero correction to either quantity is less than 2^-94 by (10). The exact rational check proves \(2^{-94}<1/(5\cdot10^{15})\). Therefore
\[
\boxed{
K(0)\pm K(t)>\frac1{5\cdot10^{15}}-2^{-94}>0
\quad(10^{-4}\le|t|\le1900).
}
\tag{24}
\]

**The arbitrarily-close-translation regime.** For 0<|t|<=10^-4, one has |gamma_1t|<=15/10000<1. The elementary bound \(1-\cos x\ge x^2/4\) for |x|<=1 and (21) give
\[
K_{\rm low}(0)-K_{\rm low}(t)
\ge2w_1(1-\cos(\gamma_1t))
>\frac12(1/1000)\cdot14^2 t^2
=\frac{49}{500}t^2.
\]
Now apply the SHARP even-tail Taylor estimate (12):
\[
\boxed{K(0)-K(t)>
\left(\frac{49}{500}-2^{-1386}\right)t^2>0
\quad(0<|t|\le10^{-4}).}
\tag{25}
\]
For the other eigenvalue, since cos(gamma_1t)>0 on this interval,
\(K_{\rm low}(0)+K_{\rm low}(t)>2w_1>1/500\).
The high-zero error is smaller than 2^-1471 here, giving
\[
\boxed{K(0)+K(t)>1/500-2^{-1471}>0.}
\tag{26}
\]
Together with (24), (25)--(26) establish \(K(0)\pm K(t)>0\) whenever 0<|t|<=1900. Since K is REAL, this is equivalent to (3).

**Exact original Hermitian return.** The two-translate Gram matrix is
\[
\mathcal G_{s,t}=
\begin{pmatrix}K(0)&K(t-s)\\K(t-s)&K(0)\end{pmatrix},
\]
whose eigenvalues are \(K(0)\pm K(t-s)\). Strict positivity of both gives the exact all-complex-coefficients statement (4). No sampling approximation is used in this source identity; the approximate part is isolated in the high-zero error. QED.

## 5. Reproducible exact finite-check receipt

**Script:** WeilTwoTranslateRationalGap.py, adjacent to this mathematical exposition, a 3044-byte UTF-8 Python 3 file. It only uses Python's standard fractions.Fraction and integer arithmetic; NO floating-point is involved in any assertion. Exact source SHA-256 (local): e349cf869336a4e1d63bc00a1331bddca0f58e2450b44f9623a7b6c1d1fd3c6c. For the two inputs (14) the script checks (16) for m=1..10000, evaluates the exact coefficient comparisons (21)--(23), and verifies the relevant dyadic exponent inequalities.

**Command actually executed locally:**
\[
\texttt{python /mnt/data/wtwo/WeilTwoTranslateRationalGap.py}
\]
Python 3.13.5; exit status 0, output:
\[
\begin{array}{ll}
\mathrm{EXACT\_RATIONAL\_CHECK:}&\mathrm{PASS}\\
\text{minimum gap:}&176909203/14134725141736\\
\text{witness:}&m=3729,\ n=5546\\
\text{first coefficient lower:}&369664/284765625\\
\text{second coefficient lower:}&1024/10673289\\
\text{low Gram margin:}&1/5000000000000000\\
\text{tail exponents:}&-1472,\ -95,\ -1386.
\end{array}
\]
For clean-checkout reproduction run the same Python interpreter on the adjacent tracked script; any recent Python 3 with fractions.Fraction suffices. The original externally certified FLINT zero ordinates are mathematical inputs, not generated or independently certified by the script. All transcendental inequalities and infinite-height tail arguments are in the written proof above, not claims about what the script checks.

**Companion Git blob** for the script was read back from main after publication (verify its actual SHA in the publication receipt); SHA-256 is a source-integrity observation, not a formal proof of the analytic theorem. No proof automation using Noe was run.

## 6. Scope, literature and falsification

1. **Source scope:** The underlying W is the COMPLETE pole-inclusive original zeta Weil form of Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, p. 1. WFDG-1/2 gives the source-exact Fourier/Laplace identity. Prime powers and gamma are still present in W; only the ZERO-SIDE representation is split using the already-proved explicit formula. No positive model is substituted.
2. **Finite-zero verification:** Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to \(3\cdot10^{12}\)*, Bull. Lond. Math. Soc. 53 (2021), 792--797, DOI 10.1112/blms.12460. This certifies low zeros only; every unknown higher zero is still included in R.
3. **Two exact zero enclosures:** FLINT documentation *Zeros of the Riemann zeta function*, https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html, published rigorous 128-bit enclosures for the first three ordinates, which justify the very coarse rational brackets (14). The finite rational loop cannot certify its own external input.
4. **Analytic high-zero bound:** WDT-1/2 in the existing canonical WeilDyadicZeroTailFiniteHorizon.md. Its total multiplicity-weighted bound uses unconditional effective Riemann--von Mangoldt zero counting (Trudgian 2014 / Hasanalizade--Shen--Wong 2022), NOT RH above the cutoff.
5. **Known local positivity:** Yoshida's early localized Weil positivity and Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), Theorem 8, concern different all-test/local operator problems. The present two-translate rank-two statement relies on previously verified zeros and is not claimed to settle those global questions. Independent literature comparison remains incomplete, so novelty UNASSESSED.
6. **Adversarial near-coincidence:** The high-zero bound (10) alone would NOT prove strict positivity as t->0, because the low two-by-two Gram gap also vanishes. The separate even-tail derivative estimate (12) is indispensable and prevents an unjustified passage from almost-positive to strictly positive.
7. **Adversarial larger matrices:** The two-translate proof does NOT imply three-translate positivity or any matrix-size-independent negative-index bound. Simultaneous resonances among more translations can create near-null vectors not controlled by the simple 2-frequency argument; the full Weil form retains all unknown high zeros.
8. **Finite horizon:** The explicit high-zero envelope grows like e^{|t|/2}. No fixed verified height can prove all t; the theorem asserts 0<|t|<=1900 and does not extrapolate. It makes no statement about all primitive Dirichlet characters or broader L-function families.

**First unresolved mathematical premise:** Establish positivity or uniformly bounded negative index for the ORIGINAL Weil form on its entire compact-smooth test domain, at ALL support diameters and with conductor-uniform primitive Dirichlet source return. Strict two-translate positivity on one finite horizon does not establish RH, finite off-line zeros or primitive GRH. Formal kernel replay, Lean elaboration, axiom audit and independent mathematical review remain NOT_RUN; no novelty claim is made.
