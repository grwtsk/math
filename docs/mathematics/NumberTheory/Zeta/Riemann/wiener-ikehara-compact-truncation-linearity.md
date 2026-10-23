# Wiener–Ikehara: actual compact Schwartz truncations and remainder linearity

**Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.**
Mathematical repository: grwtsk/math, authored directly on main.
Effectful source-bound replay and axiom custody: grwtsk/noeaaeue.
No feature branch, worktree, or duplicate runner proposal was created.

## Exact maintained mathematical source and pinned API

Maintained formal source: AlexKontorovich/PrimeNumberTheoremAnd,
commit 127b50e33f6033e2147921167a117af96d9ba4ea;
PrimeNumberTheoremAnd/Wiener.lean,
blob 59fd5069a7eca51a8bc5005b5c43e31a5cbb38ac;
PrimeNumberTheoremAnd/Sobolev.lean,
blob 1f98bcbccc7ba3b9c9ee02ec95404731085368f9.

Historical lemmas: exists_trunc and W21_approximation, followed by
bound_main, limiting_cor_W21 and limiting_cor_schwartz.

Historical Lean v4.35.0 is distinct from the local math pin,
Lean 4.33.0, Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.
The pinned APIs actually inspected were:
- Mathlib/Geometry/Manifold/PartitionOfUnity.lean, blob
  e9d0243283efab7d65cd7144ef21bf1b717e5eb0:
  exists_contMDiff_support_eq_eq_one_iff;
- Mathlib/Analysis/Distribution/TemperateGrowth.lean:
  HasCompactSupport.hasTemperateGrowth;
- Mathlib/Analysis/Distribution/SchwartzSpace/Basic.lean, blob
  3662f5e0037dafdaa62d8661e27c4dac33ed4858:
  SchwartzMap.smulLeftCLM, smulLeftCLM_apply_apply and
  tsupport_smulLeftCLM_subset;
- Mathlib/Analysis/Distribution/SchwartzSpace/Fourier.lean, blob
  29b759c53de55f6eee6359d7603e7a12c94d70e1:
  Fourier transform on Schwartz and its additivity.

The local source does not import old-version proof terms as axioms.

## 1. Actually constructed smooth Schwartz cutoff

Source:
GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaCompactSchwartzCutoff.lean.

The pinned smooth Urysohn theorem constructs a REAL smooth function
c with:
  c=1 on the closed interval [-1,1];
  0<=c<=1 on the whole real line;
  support(c)=(-2,2);
  closure(support(c)) contained in compact [-2,2].

There is an actual proof witness, not a structure field assuming an
approximation theorem. The chosen witness c is defined directly by
Classical.choose of the locally proved existence result.

For every natural R>=0 define the ACTUAL rescaled cutoff
  c_R(x)=c(x/(R+1)).

This avoids division by zero even at R=0. The source constructs proofs
that c_R is C-infinity and compactly supported; the pinned theorem
HasCompactSupport.hasTemperateGrowth supplies actual temperate
polynomial derivative-growth data for c_R at every fixed R.

For an arbitrary genuine Schwartz g:S(R,C) define

  g_R := SchwartzMap.smulLeftCLM C c_R g.

The pinned continuous linear multiplier ensures g_R is a genuine
Schwartz map with the literal value
  g_R(x)=c_R(x)*g(x).

Because c_R is compactly supported, the source proves the compact
support of g_R as a Schwartz map, using the actual
HasCompactSupport.smul_right theorem rather than postulating that
a pointwise product is compact.

The source proves for all R>=0 and all x with |x|<=R+1:

  c_R(x)=1,   g_R(x)=g(x),
  (g-g_R)(x)=0.

Thus the support of the error is contained in the exterior region

  support(g-g_R) subset {x | R+1 < |x|}.

This is a precise global support-separation theorem, not merely a
pointwise convergence statement. In particular, for every FIXED x
the sequence g_R(x) eventually equals g(x) and therefore converges
pointwise as R->infinity.

**Critical limitation:** none of these statements alone proves
g_R->g in the full Schwartz topology. Pointwise eventual agreement
does not control derivatives or arbitrarily high polynomial weights.

## 2. Actual remainder additivity and cutoff decomposition

Source:
GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean.

Use the previous quantitative source's ACTUAL arithmetic and pole
expressions:

  S_T(g)=tsum_n LSeries.term(Lambda_C,1,n)
               * Fourier(g)(log(n/T)/(2*pi)),
  J_T(g)=integral_{u>=-log T} Fourier(g)(u/(2*pi))du,
  E_T(g)=S_T(g)-J_T(g).

The Fourier frequency is the positive log(n/T)/(2*pi), with Fourier
character exp(-2*pi*i*t*xi), and the original n=0 arithmetic term
remains exactly zero.

For T>=1 the prior source actually proves norm summability of the
arithmetic series. The new source consumes it before invoking
Summable.tsum_add, rather than distributing an unconditionally
potentially divergent series. It proves the pointwise identity for
LSeries.term times Fourier(g+h), and also the negation identity.

Separately, pinned Schwartz Fourier integrability and its invariance
under u/(2*pi) scaling prove both pole integrands integrable on the
actual half-line [-log(T),infinity). The new source invokes the genuine
integral_add and integral_neg. Thus for all g,h in Schwartz and T>=1:

  S_T(g+h)=S_T(g)+S_T(h),
  J_T(g+h)=J_T(g)+J_T(h),
  E_T(g+h)=E_T(g)+E_T(h),
  E_T(g-h)=E_T(g)-E_T(h).

Combining this additivity with the ACTUALLY CONSTRUCTED compact
truncation gives, for every R and every T>=1:

  E_T(g)=E_T(g_R)+E_T(g-g_R).

This is not a conditional structure postulating linearity or a
vacant wrapper: it proves the finite-sigma-independent algebraic
identity from the actual summable L-series and Lebesgue integrals.

Hostile/source-consuming controls:
GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean.
They reconsume the real Urysohn witness, scaling at R=0, compactness,
temperate growth, pointwise eventual equality, arithmetic/tail
additivity, and exact generated cutoff decomposition.

## 3. The exact remaining quantitative Schwartz estimate

The next genuine mathematical theorem is the missing Schwartz
TOPOLOGY convergence of the explicit, already-constructed g_R.

For EVERY pair k,n of natural weighted-derivative orders, one must
prove from the rapid decay of g and the product/chain rules that

  lim_{R->infinity}
     SchwartzMap.seminorm_R(k,n)(g-g_R)=0.

One can prove the necessary pointwise weighted-derivative estimate
via Leibniz's formula:

  D^n[(1-c(x/(R+1)))g(x)]
    = sum_{j=0}^n choose(n,j)
      (R+1)^(-j)
      D^j(1-c)(x/(R+1)) D^(n-j)g(x).

For j=0, the multiplier (1-c_R) vanishes on |x|<=R+1 and is
bounded by one outside. Therefore rapidly decreasing g and its
derivatives make every |x|^k-weighted j=0 term tend uniformly to 0.

For j>=1, derivatives D^j c_R are supported in the annulus
R+1<|x|<2(R+1), where rapid decay of D^(n-j)g combines with the
factor (R+1)^(-j). Since each D^j c is smooth with compact support,
each has a finite supremum norm.

The resulting quantitative estimate must hold simultaneously for
each fixed (k,n). Use the actual pinned seminorm topology
schwartz_withSeminorms to conclude g_R->g as a SCHWARTZ map, rather
than merely pointwise.

This exact step has NOT been Lean-proved here. It is not represented
by a Prop-valued interface and does not inherit the old human-reported
19-header Mellin/Fourier acceptance.

The historical W21_approximation theorem proves a weaker but sufficient
two-derivative integrability result in its own old-version Sobolev
space. A direct full Schwartz-seminorm proof, as above, reuses the
present actual source cutoff and is appropriate for the stronger
pinned Schwartz topology used by the quantitative error module.

## 4. Remaining analytic composition and trust

Once g_R->g is ACTUALLY proved, the already-authored continuous
Fourier-Schwartz error estimate will make E_T(g-g_R) arbitrarily
small UNIFORMLY for all T>=1, and exact remainder linearity supplies
the needed decomposition. This still does not close
limiting_cor_schwartz until the compact-test Wiener limit
E_T(g_R)->0 is source-exactly derived and independently kernel-audited
from the first/second Fourier-Fubini, q=1 boundary, and sigma↓1
summation sources.

The downstream smooth-to-interval PR #965 remains independently
unverified. It cannot be used to establish the analytic limit.

The two new Lean files are SOURCE_DRAFT / NOT_RUN /
NOT_KERNEL_AUDITED. Their static absence of sorry, admit and axioms
is not a kernel receipt; the exact pinned Lean4.33 --wfail and
--trust=0 replay, complete generated theorem types and transitive
axiom closure are Noe-owned pending effects.

No new background runner proposal was submitted. No PNT, RH, Chowla,
Goldbach, or revival of the mathematically rejected uniform integer
psi capacity is claimed.
