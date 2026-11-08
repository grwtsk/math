# Signed Möbius Hodge shells, two-adic cohomology, and reciprocal pair compression

Local mathematical attribution: grwtsk contributors.
Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

## Exact requested sources and distinctions

- OEIS A008683, https://oeis.org/A008683, the Möbius function μ(n):
  +1/-1 on squarefree integers by parity of distinct prime factors,
  and 0 on all squareful integers. The exact original source remains
  GRWTSK.RiemannHypothesis.CCC.moebiusReal and its full response.
  This is an independent arithmetic sequence reference, not a proof
  of an asymptotic cancellation bound.
- The actual source in PickupCellQuadratic.lean (blob
  e57f87c19acc0adb45f740dfee8b3e06e4d5b57c):
  crossDensity(T,u)=(Σ μ(n) pickupResponse(n,u))²
                  -Σ (μ(n) pickupResponse(n,u))².
  It is the complete ordered off-diagonal pair inventory, all
  repeated-prime zeros retained, and no diagonal reintroduced.
- PickupDyadicEndpoint.lean (blob
  bf1d3ccbbe7a49033fdff0ab11176d589a1a7f31):
  the geometric sequence is exactly N=2^j, T=j log 2, and
  DyadicBirthBound is STILL an unsupplied arithmetic estimate.
- DyadicModTwoPairLift.lean (blob
  425b5074e96f9aecb459a9aa1270c22da59cf790):
  exact signed integer residue+carry, original response weights,
  curvature return and equivalence to the open dyadic bound.
- DyadicPadicDelta.lean (blob
  53d5f46e7613933bb3a946d540163b8588aedda5):
  actual δ/Frobenius on complete PadicInt 2, the principal ideal (2),
  adic completeness and distinguished generator δ(2)=-1, source
  proof candidate; no prismatic SITE or cohomology comparison.
- DyadicPadicResidueTower.lean (blob
  38428c91dd4624e73c8ab3348e8ed3d4882c38de):
  two INDEPENDENT indices: height j for N=2^j and precision
  k for reductions modulo 2^(k+1). All positive-precision
  shadows are jointly injective in the completed coefficient ring.
  Mod-2 is not an eternal truncation: lift to the next level
  whenever the signed source or a cochain requires it.
- SharedShadowPullback and PrimeSharedShadow remain lossless
  complete-source code examples, not analytic cancellations.

## 1. The complete signed response has an exact centered shell

For a fixed j and real time u, let N=2^j, and for EVERY integer
1≤n≤N put v_n(u)=μ(n)pickupResponse(n,u). Define

    c_j(u) = N^(-1) Σ_{n=1}^N v_n(u)
    r_n(u) = v_n(u)-c_j(u)

Then Σ r_n=0, and the finite variance identity gives

    Σ v_n² = N c_j² + Σ r_n².

Therefore the actual source identity becomes

    crossDensity(j log 2,u)
      = N(N-1)c_j(u)² - Σ r_n(u)².             (H)

This is an INDEFINITE signed source. The two nonnegative pieces give
the exact pointwise range sandwich

    -Σ r_n² ≤ crossDensity ≤ N(N-1)c_j².

The radius/upper and residual/lower structures come from the SAME
original arithmetic source, not an invented positive Gram or an
independent loss. All squareful zeros are still included in the N
positions: their centered residual entries are -c_j, so they are
not simply discarded.

The previously published exact endpoint correction gives, at each j,

    dyadicBirthSum(j)
      = ∫_{0}^{j log 2} [N(N-1)c_j(u)² - Σ r_n(u)²] du
          + dyadicCurvature(j).

The uniform quarter-unit bound on the final curvature is inherited,
not improved. Crucially, BOTH positive and negative terms can grow
polynomially in N; this identity DOES NOT imply an all-positive-rate
estimate on their difference.

Mathematical argument: expand the squared mean, use Σ(v_n-c_j)=0,
and apply the original crossDensity definition before the actual
signed endpoint correction. This is one exact finite variance
identity plus an existing source return, not an independent second
proof of the RH analytic bridge.

## 2. Genuine two-term cohomology on the completed signed source

For each j, let I_j=Fin(2^j) and A=PadicInt 2, the ACTUAL complete
coefficient ring with the existing δ structure. Set

    C⁰_j=A^{I_j}, C¹_j=A^{I_j},
    (d_j x)_m=Σ_{n∈I_j} K_j(m,n)x_n,
    K_j(m,n) = 0 if m=n,
               μ(m+1)μ(n+1) otherwise,
    C²_j=0.

Then dⁱ∘dⁱ⁻¹=0 at degree one by the actual next differential 0,
and the genuine finite two-term cohomology modules are

    H⁰_j=ker(d_j),  H¹_j=coker(d_j).

No dimension, vanishing, or quasi-isomorphism is assumed.
The source-specific rank-one decomposition reads

    (d_jx)_m = μ(m+1)Σ_n μ(n+1)x_n
                         - μ(m+1)²x_m.

In particular, every squareful original integer n yields a zero
column and hence a nonzero coordinate cocycle at index n-1.
For j≥2, n=4 is always present, so H⁰_j is NOT zero.
Any proposed blanket vanishing of this finite source cohomology
would be false; a genuine prismatic comparison must explicitly
account for this degree-zero source kernel rather than assuming
it vanishes.

The completed Frobenius already established in DyadicPadicDelta
fixes all signed integer incidence coefficients, and therefore
commutes with d_j. This is an ACTUAL finite cochain theorem,
not proof of completed prismatic cohomology of a scheme.

### Rank and torsion arithmetic, mathematically analyzed (not Lean-promoted)

Write r_j = Σ_{n≤2^j} μ(n)² for the number of squarefree original
indices. Restriction of K_j to that support is diagonally conjugate
by ±1 units to the matrix J-I of size r_j. For r_j≥2 its integer
Smith invariant factors are 1 repeated r_j-1 times, followed by
r_j-1; squareful entries supply zero blocks.

Therefore over the complete 2-adic ring the predicted explicit
classification is:

    H⁰_j ≅ Z₂^(N-r_j)
    H¹_j ≅ Z₂^(N-r_j) ⊕ Z₂/(r_j-1),

for r_j≥2. The last quotient is zero when r_j-1 is a 2-adic unit.
For r_j=1, the entire one-dimensional squarefree block is zero
instead. This classification has an elementary Smith-normal-form
argument but is NOT among the published Lean kernel-checked
theorems; it is a further exact formalization target.

Modulo 2, for r_j≥1, the actual dimension is

    dim_F2 H⁰_j = (N-r_j) + (r_j mod 2),

and H¹_j has the same dimension because the incidence is square.
The dimension count cannot be lifted unchanged to Z₂: torsion
and the exact precision 2^k matter. This is precisely WHY the
compatible residue tower must be lifted when information demands
it, not frozen at mod2.

Independent finite exact elimination agrees through N=128, with
(j,N,r_j,dim mod2 H⁰):
(0,1,1,1), (1,2,2,0), (2,4,3,2), (3,8,6,2),
(4,16,11,6), (5,32,20,12), (6,64,39,26), (7,128,78,50).

## 3. Prime-pair compression and Bogoliubov-type polarization

For the ACTUAL signed two-point response a_(m,n)(u) from the
full source, define λ_(m,n)(u)=1/(1+|a_(m,n)(u)|).
This is always strictly positive and at most 1.

On an auxiliary canonical real phase plane, use

    S_λ(q,p)=(λq,λ⁻¹p).

It preserves the exact alternating area ω(x,y)=q_x p_y-p_x q_y;
it also induces the nonnegative quadratic ellipsoid shell
Q_λ(q,p)=(λq)²+(λ⁻¹p)².

A diagonal map contracting BOTH coordinates by λ has determinant
λ², so it cannot be symplectic unless λ²=1.
Any proper compression must retain reciprocal expansion or a
separately preserved conjugate channel.

The physical history has two distinct referents:
Yakov Zel'dovich and Alexander Starobinsky discussed rotating
black-hole quantum emission with Hawking in 1973; the
Bogoliubov transformation (associated with Nikolay Bogoliubov)
is the canonical-mode mixing technique used in Hawking
particle-creation analyses. These names are historical context,
not a claim that this simple finite source squeeze proves
a Hawking spectrum.

Actual sources: S. W. Hawking, Particle creation by black holes,
Communications in Mathematical Physics 43 (1975) 199–220,
DOI https://doi.org/10.1007/BF02345020; L. Parker and D. Toms,
Quantum Field Theory in Curved Spacetime (Cambridge, 2009),
Chapter 4 DOI https://doi.org/10.1017/CBO9780511813924.006.
Hawking's historical identification of Zel'dovich and
Starobinsky is also independently documented.

## 4. Shell closures are NOT two simultaneous set memberships

For a real indefinite shell, positive and negative response
sectors can both approach the null cone. Already in the
two-coordinate model v=(t,t) gives source cross +2t²,
while v=(t,-t) gives -2t². As t→0, the origin belongs to
the closure of both sign sectors. It does not belong to both
strictly positive and strictly negative sectors.

This is a quadratic null-cone boundary. It does NOT, by
itself, prove a mathematical cusp singularity, a
cusp of an automorphic modular surface, or a projection
to a critical-line zero. The smooth positive-definite
Q_λ ellipse for fixed λ>0 has no cusp.

A true cusp/limit theorem would need:
- a declared scaling/cutoff sequence and convergence topology;
- degeneration, or a separately proved singular quotient;
- matching upper/lower/inside/outside boundary data;
- uniform shell, center-of-mass and PDE operator estimates;
- source-label completeness and a continuous return map
  at every scale, not just pointwise geometric sketches.

## 5. The arithmetic obstacle hidden by prime-only shells

For distinct primes p and q, the SOURCE values satisfy
μ(p)=μ(q)=-1, hence μ(p)μ(q)=+1. Thus the prime-prime
coefficient sector alone cannot supply negative coefficient
cancellation. All distinct squarefree composite patterns,
proper cofactors, repeated-prime zeros, unsifted channels,
the full ordered orientations, and the signed curvature
must remain in the final arithmetic budget.

The existing MobiusDilationPairSplit and MobiusDoublingCredit
already derive negative pairing credit with their exact
complements. Neither positive prime-pair shell energy nor
Bogoliubov area preservation bounds that complete complement.
No claimed RH arithmetic improvement is hidden in a new norm.

## 6. Assurance, literature and next return

New Lean SOURCE_PROOF_CANDIDATES:
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/
  DyadicSignedHodgeShell.lean
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/
  DyadicSignedTwoTermCohomology.lean
- GRWTSK/ConvexAndDiscreteGeometry/GeneralConvexity/
  PrimePairSymplecticShell.lean

Exact integer/rational finite reference evidence (NOT Lean):
349,892 assertions at dyadic cutoffs 1,2,4,8,16,32,64,128,
including ordered mod 2^k reduction at k=1,...,8, source
square-minus-diagonal and centered Hodge identity,
finite F2 H0 rank, source-coefficient signs, and
area-preserving pairwise squeeze.
Script SHA-256:
47a4f72054b3511703789c949433985027657a0bd52c6328b79bf0ca75e894ce.
Further small Smith normal form controls at squarefree
block sizes 2,3,4,6,11,20 matched the predicted invariants.
All tests are finite model evidence, not proof of the
source's continuum analytic dynamics or full prismatic
cohomology.

Imported upstream theory: Bhargav Bhatt and Peter Scholze,
Prisms and prismatic cohomology, Annals of Mathematics 196
(2022), 1135–1275, DOI
https://doi.org/10.4007/annals.2022.196.3.5.
No genuine source-to-prismatic site/cohomology comparison
has been constructed. The existing complete Z₂ delta ring
and finite two-term complex are different mathematical layers.

The decisive remaining supplier is still the all-positive-rate
ONE-SIDED estimate on the original
PickupDyadicEndpoint.DyadicBirthBound, now expressible as a
bound on the integrated coherent-minus-residual shell plus
the original signed curvature term. Any PDE, automorphic
cusp, spectral or prismatic route must pay that bound through
a source-exact comparison and prove the required global
boundary stability before claiming RH.

No Lean compilation, new fresh kernel replay or
transitive axiom audit has been run for these files.
