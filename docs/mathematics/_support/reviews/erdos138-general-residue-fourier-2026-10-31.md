# Erdős 138 to generalized residue-filtered physics: source comparison

Local attribution: grwtsk contributors. 2026-10-31.

## Research basis and exact dated sources

* Problem 138: multicolor van der Waerden numbers W_r(k), forcing a
  monochromatic length-k arithmetic progression in every r-coloring of
  a sufficiently long integer interval. Original Erdős references include
  Erdős (1980), "A survey of problems in combinatorial number theory",
  Annals of Discrete Mathematics, and Erdős (1981), "On the combinatorial
  problems which I would most like to see solved", Combinatorica 1, 25--42.
  Historical page https://www.erdosproblems.com/138 was last edited
  2026-06-02 and therefore predates the current result.
* OpenAI (2026-09-23), "Quantitative Superexponential Bounds for van der
  Waerden Numbers",
  https://github.com/openai/math/tree/main/preprints/Quantitative-Superexponential-Bounds-for-van-der-Waerden-Numbers-September-23-2026.
  The paper reports absolute c>0, K with W_r(k)>k^(c*k*floor(log2 r))
  for all k>=K and r>=2. This is a reported original mathematical and Lean
  result; GRWTSK's separate source-specific acceptance is not inferred.
* GRWTSK prior exact source port: source main pinned upstream
  openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a,
  root subject file
  GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/Erdos138.lean
  blob 71dda3267dcd71f16759060c41ae3f3349df33e8, with interval
  convention bridge. ProgressionColoringDefinitions.lean blob
  1df02ca884c27bef9ba470951786846d8f620716; DigitProduct.lean
  blob 33910cf8140e610a0c3dd91a618ee98d6dbf9101; CyclicWitness.lean
  blob 8ffa2c15149afdfea30490e5232ea66c2819ab64;
  source activity/accepted facet ledger grwtsk/math#1433.
* GRWTSK earlier rotor/sofic finite model:
  GRWTSK/NumericalAnalysis/ResidueBandedFourierSoficPath.lean
  blob 00833d87cd5624bf50ec195f60e24fe3bdeea79e.
  ExactSoficLanguageCover.lean blob f50489eaf6c7277993a08925a58b7765f9e10ec9.

## Why the #138 method is more than coloring by n modulo seven

The published construction has an ACTUAL progression-avoiding cyclic coloring
C:ZMod N -> Bool for every sufficiently large target length k at a suitable
scale N, established via geometric keys, sparse perturbation and an event
budget. For m base-N digits it forms a vector color
  digitColor(C,m)(n)(i) = C((floor(n/N^i)):ZMod N).
The first base-N digit with a nonzero common-difference component is the
place where a prospective monochromatic AP contradicts CyclicAvoids.
It is NOT a coordinatewise additive map, because carries cross digits.
DigitProduct derives an avoiding coloring of [0,N^m) using 2^m colors,
and UniformTransfer obtains a bound uniform over color counts via
m=floor(log2 r). This is the source-specific mechanism, not a
proof that each residue class contributes a small nonlinear interaction.

Hostile carry check: in base 2, 1+1 has digit-one value 1 while each
summand has digit-one value 0. It is invalid to treat the digit-product
code as a group homomorphism on all Fourier modes. In addition, ANY
periodic recoloring c(n)=C(n mod m) has monochromatic progressions
a,a+m,...,a+(k-1)m. Thus a cyclic avoider for NONZERO steps in ZMod m
cannot simply be periodically extended to avoid arbitrary integer APs;
the digit-product carry argument is indispensable.

## Generalized physics source model and its exact return

Let Mode be a discrete additive wavevector lattice, normally Z^d; G an
arbitrary finite abelian group; and rho:Mode ->+ G a homomorphism.
The previous seven-color case is G=Z/7Z and
rho(k)=sum_i k_i (mod 7), with a specified spatial assignment.
Every quadratic frequency interaction p+q=k then satisfies the exact
group-grade selection rho(k)=rho(p)+rho(q).

For a finite spectral box S, a *source-specific, signed* kernel K(k,p,q)
that includes all multipliers/projections for a physical observation,
and an arbitrary Boolean mask B:GxG->Bool, define

 Q(k)  = sum_{p,q in S; p+q=k} K(k,p,q);
 Q_B(k)= sum_{p,q in S; p+q=k; B(rho(p),rho(q))} K(k,p,q);
 R_B(k)= sum_{p,q in S; p+q=k; not B(rho(p),rho(q))} K(k,p,q).

The complete, exact relation Q=Q_B+R_B is proved in the new Lean
candidate, including ordered pair orientations and complex signs;
||Q|| <= ||Q_B||+||R_B||. A bound on the retained term and a *separate*
bound on the actual R_B give the only licensed source upper certificate.
A short residue bandwidth is a computational choice, NOT a theorem of
energy cancellation. G need not be cyclic, and quotient phase labels do
not require seven fixed colors.

For the usual divergence-free spatial Fourier Navier--Stokes bilinear
operator, the intended actual physical kernel is
  K_NS(k,p,q) = i P_k[(q dot uhat(p))*uhat(q)],
where P_k is the Leray projector and uhat is a vector of Fourier
coefficients. The new Lean file keeps its kernel arbitrary; a separate
typed C^d-valued instantiation, divergence-free data, pressure/Leray
identity and analytic return are still needed before claiming a formal
NS-specific theorem. The rotor's 64-point *temporal* DFT is not the
spatial Fourier transform without a source-identified map between them.

Hostile omitted-physics example, with d=3 and rho=sum coordinates mod7:
  p=(1,1,0), q=(0,5,0), k=p+q=(1,6,0).
  rho(p)=2, rho(q)=5, rho(k)=0, cyclic distance(2,5)=3.
  uhat(p)=(1,-1,0), uhat(q)=(0,0,1), both divergence-free.
Then q dot uhat(p)=-5, and P_k(uhat(q))=uhat(q).
The ordered interaction gives -5i e_z and is OMITTED by band<=2.
The other orientation contributes zero for this pair. Therefore
off-band terms cannot be zeroed on the basis of the color separation.
This is an exact algebraic model example, not a constructed NS solution.

For a real field, rho(-k)=-rho(k); a real-preserving mask should be
invariant under simultaneous sign reversal of its two residue inputs.
Even this does not guarantee energy cancellation: the full triad
skew-symmetry must be checked or the signed residual energy work retained.

## Erdős/Ramsey interface to sofic finite words

For a fixed finite color count r>0 and progression length k, W_r(k)
is the existing exact Ramsey infimum. The new bridge proves:

1. If N>0 and N<W_r(k), some actual finite r-color word of length N
   avoids a monochromatic k-AP. This is an existential witness from
   the exact definition and W_le_of_isRamsey, NOT a construction from
   the quantitative September bound.
2. Given an actual finite-Ramsey witness (W is attained), every word
   of length N>=W_r(k) has a monochromatic k-AP.
3. Consequently, if EVERY admitted finite word of a graph language
   avoids a monochromatic k-AP, each admitted word has length <W_r(k).

The third point is a real obstruction to claiming an infinite sofic
language of AP-free color words for fixed r and k. The graph's accepted
finite word must still match the desired source language exactly;
a single trajectory through a graph is not source-language soficity.
The #138 lower bound guarantees very long *finite* avoiders and does
not say every physical orbit avoids progression resonances.

## Consumer, comparison, and remaining mathematical work

Proposed solver hierarchy:
  spatial Fourier lattice -> finite abelian quotient G -> complete
  grade-conserving NS interaction -> tunable mask B -> exact signed R_B
  -> certified residual/energy budget -> digit-product/carry-aware
  finite-word constraints -> genuinely exact sofic graph language
  -> optimal finite path solver.

This is a general architecture, not a chain of established equivalences.
The actual progress from this increment is the general source-exact
quadratic interaction partition and the finite Ramsey graph-language
obstruction. The existing seven-color browser is only a specialization
of the first and last layers, not a completed physical solver.

Potential independent check: compare K from explicit spectral convolution
directly, rather than inferring it from the drape energy update; use the
full triad/skew-adjoint form to audit missing high-high-to-low pairs.
No second independent proof of a new general NS theorem is claimed.
Originality of the algebraic partition is not asserted: the purpose is
a source-preserving formal interface and a concrete obstruction.

## Verification ledger

New source candidates (precise commit/blobs to be supplied by Git):
  GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueGradedConvolution.lean
  GRWTSK/Combinatorics/ExtremalCombinatorics/RamseyTheory/
    ResidueFourierRamseyBridge.lean
Pinned local toolchain observed: leanprover/lean4:v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Lean build NOT_RUN; fresh kernel check NOT_RUN; transitive axiom
audit NOT_RUN; browser/physical PDE refinement NOT_PROVED;
independent analytic peer review NOT_RUN. No managed native execution
or new conjecture import. Existing eight local #138 analytic controls
have a separately recorded native acceptance receipt at their earlier
source pin in #1433; acceptance does not transfer to new source bytes.

Exact finite diagnostic, not formal assurance: integer/complex
double-sum partition checked on 15 outputs of a 9-mode window; 
periodic residue APs checked for moduli 1..9 and 50 index steps;
the nonzero omitted incompressible pair above was checked directly.
