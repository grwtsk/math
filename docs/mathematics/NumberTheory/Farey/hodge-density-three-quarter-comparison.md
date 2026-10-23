# Farey, Ramanujan, Hodge and the three meanings of 3/4: exact formalization boundary

**All newly written Lean files in this record: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.**
Their declarations are source proof candidates, not claimed kernel theorems. Keep the
new files outside the public GRWTSK.lean root until a pinned build, independent
fresh kernel replay and complete transitive axiom/unsafe review succeed. No
external zero-free, density, CM reduction or algebraic-cycle theorem was
admitted by this work.

## The five mathematical source files

| Subject | File and exact source-binding commit | Git blob |
|---|---|---|
| Cyclic Hodge energy and unit/nonunit obstruction | GRWTSK/NumberTheory/Farey/CyclicResidueHodge.lean @ [7c966ff78bc79530d15c4410a1d7c8c5b726b35a](https://github.com/grwtsk/math/commit/7c966ff78bc79530d15c4410a1d7c8c5b726b35a) | 449c566c6366b9732ba719d6485ad299b29473c2 |
| CM ordinary/supersingular prime density transport | GRWTSK/NumberTheory/ArithmeticGeometry/QuadraticCMPrimeDensity.lean @ [16336be883567229fff9ebc64be555d21ed6d403](https://github.com/grwtsk/math/commit/16336be883567229fff9ebc64be555d21ed6d403) | 6178e018686b0e329479cfae8293b343fbd2b42e |
| Guth–Maynard canonical zeta-zero counts and OpenAI comparison | GRWTSK/NumberTheory/Zeta/Riemann/ThreeQuarterDensityHodgeComparison.lean @ [d1d14de848aa84bcd3ed9cd8bb74a03627b9f362](https://github.com/grwtsk/math/commit/d1d14de848aa84bcd3ed9cd8bb74a03627b9f362) | 319552d047092d7e13e96e950ea7e26263898482 |
| Goldfeld signed-twist counts and weighted tail | GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/GoldfeldTwistDensityComparison.lean @ [cd4f6d91aca5be0c95baa55be1149b6b7014bb58](https://github.com/grwtsk/math/commit/cd4f6d91aca5be0c95baa55be1149b6b7014bb58) | 9fd9e6663bda0adba4bfd887045604e05adcaded |
| Ramanujan primitive-frequency plus finite cyclic Fourier-Hodge model | GRWTSK/NumberTheory/Farey/RamanujanFourierHodge.lean, **latest repaired source** @ [8460baa69c35110348dcb3498f7051cc49762aa4](https://github.com/grwtsk/math/commit/8460baa69c35110348dcb3498f7051cc49762aa4) | 9d85c0b82c5643e14ee48df4b3becd7a873a680d |

The original Ramanujan source was added at 1ab31fa01f13ba5c720f460302a6d599e466efa8;
its proof-script rewrite at 8460baa is the revised, unverified validation target.
Do not transfer a hypothetical receipt from the original blob.

## Exact finite Farey, Ramanujan, and Hodge mathematics

Imports are from the actual existing Farey residue stack and the repository
finite-graph Hodge operator. For ZMod q, q != 0, let
D f(x) = f(x+1)-f(x) and L f(x)=2 f(x)-f(x+1)-f(x-1).
The new source-level statements include:

- CyclicResidueHodge.cyclic_laplacian_nonneg and cyclic_laplacian_kernel,
  using the actual finite incidence matrix and L=delta*delta in its real graph
  carrier. No signed Weil/Hodge functional is assumed positive.
- CyclicResidueHodge.unit_add_nonunit, unitPart_idempotent,
  nonunitPart_idempotent, unit_nonunit_counting_orthogonal.
  These are exact finite coordinate identities, NOT a claimed representation
  of an infinite zeta spectral decomposition.
- CyclicResidueHodge.farey_unit_projector_not_translation_equivariant:
  the additive point mass at the actual Farey 1/2 < 2/3 cell's right numerator
  2 modulo 4 is a nonunit; translating by one takes the mass into coordinate 1.
  Thus the unit projector fails to commute with cyclic shift. Orthogonal
  support decomposition alone does not provide an invariant Hodge sector.
- RamanujanFourierHodge.additiveMode_laplacian_eigen and
  cyclicDifferenceStar_difference_eq_laplacian give exact coordinate
  cyclic-Fourier eigenvector/eigenvalue and second-difference formulas.
  Formal identification of this complex operator with the real
  FiniteMatrixHodge matrix after scalar extension remains a separate
  comparison obligation.
- RamanujanFourierHodge.primitiveRamanujanSum sums the canonical additive
  character over unit frequencies ONLY. fullFrequency_eq_primitive_add_nonprimitive
  and characterAverage_primitive_nonprimitive retain **all** frequencies
  and the factor 1/q; they do not equate primitive Ramanujan sums with
  the full additive delta. The deeper divisor reconstruction
  sum_(d|q) c_d(n) = q * indicator(q|n) remains an unproved supplier.
- The earlier FareyResidueChannelDecomposition.lean (blob
  a44f3cf92d0d3c05ff09ac66b43b3d078918982b) split UNIT TARGETS from
  NONUNIT TARGETS. The new Ramanujan decomposition instead splits UNIT
  FREQUENCIES from NONUNIT FREQUENCIES. Those different axes must not
  be conflated or exchanged without a proved duality.

No spectral concentration estimate, sub-square-root effective bandwidth,
Dirichlet-polynomial large-value theorem or asymptotic cancellation is
obtained from these finite identities.

## Quadratic CM primes: actual finite counting, conditional asymptotic density

QuadraticCMPrimeDensity defines finite counters of natural primes p with
3 <= p <= X and p mod 4 = 1 or 3, and uses the **same** denominator
oddPrimeCount X throughout. A QuadraticCMReductionProfile stores predicates
ordinary/supersingular and the geometric equivalences, for these actual primes,

  ordinary(p) <-> p mod 4 = 1,
  supersingular(p) <-> p mod 4 = 3.

The intended source identity is E/Q: y^2=x^3-x, CM by Q(i), at good odd
primes. Deuring's ordinary/supersingular classification is NOT proved or
imported: it is the exact geometric supplier for the profile.

The genuinely analytic input QuadraticPrimeDensitySupplier requires two
separate prime-relative density-one-half limits for p = 1 mod 4 and
p = 3 mod 4. These are classical Dirichlet/Chebotarev consequences, not
derived from the finite Farey determinant or an additive selector.
The code proves that the supplied geometric equivalences give literally
equal finite counters (ordinaryPrimeCount_eq_splitPrimeCount and
supersingularPrimeCount_eq_inertPrimeCount) and consequently transport
both density-one-half limits. The ramified p=2 coordinate is excluded
from both windows. None of these counts is a count of zeta zeros.

The abstract CM type sign/Hodge statements in CMFourBalance,
CMCoordinateHodge, CMTypeSlope, ComplementaryWeakAdmissibility and
CMFourFactorAlgebraicity belong to a DIFFERENT geometric layer.
An odd CM-type sign or a (2,2)-balance identity is not the Deuring
reduction theorem. In particular the ordinary slopes 0,1 and the
supersingular slopes 1/2,1/2 cannot be equated with the formal
sign-selector 0,1 from CMTypeSlope at an arbitrary inert prime.
The full algebraic cycle-class realization remains an external supplier.

## Three noninterchangeable 3/4 markers

1. **Re(z) >= 3/4**, counted with analytic multiplicity and with BOTH signs
   of Im(z), in Guth–Maynard's zeta zero-density theorem.
   The source's pointwise exponent at 3/4 is 5/9, since
   15(1-3/4)/(3+5(3/4))=5/9.
   The uniform exponent at 3/4 is 15/26. The pointwise one is stronger.
   The new module defines bothSignZeroCount using the repository's
   CanonicalZeroDivisor.heightHead, NOT a synthetic numerical zero list.
   GuthMaynardBothSignThreeQuarter is an explicit uninhabited local
   analytic premise. positiveDensity_of_guthMaynard is the valid
   ONE-WAY restriction from both-sign to positive-height count.
2. **|Im(z)| <= 3/4**, the GRWTSK bounded-height zero-exclusion seed
   in CriticalStripThreeQuarterSeed.lean. The local comparison theorem
   positiveHeightZeroCount_zero_at_low_seed shows the actual counted
   positive zero set is empty up to that height; it is not an exponent
   or a global density estimate.
3. **Q(rho)=2*rho-1** is the proposed arithmetic threshold-contraction
   map: Q(7/8)=3/4, Q(3/4)=1/2.
   This is EXACT algebra, not a proved prime-error contraction.
   naive_gradedFourier_strictly_misses_threeQuarters imports the
   existing barrier: a graded L2 bound plus naive maximal reconstruction
   cannot produce the nonlinear 7/8 -> 3/4 step for nonnegative
   effective bandwidth exponent.

The separate OpenAI-type premise SevenEighthsZeroFree is used to obtain
the symmetric 1/8 <= Re(z) <= 7/8 band of actual nontrivial zeros.
The conditional combined theorem density_and_sevenEighths_band retains
BOTH the OpenAI and Guth–Maynard premises, without asserting a locally
accepted external proof, RH, or cancellation of the remaining zeros.

## Goldfeld: twist densities versus mean analytic rank

GoldfeldTwistDensityComparison uses a signed symmetric integer window
-X <= d <= X. A source adapter TwistRankFamily must instantiate its
eligible predicate with **nonzero signed squarefree d** and analyticRank
with ord_(s=1) L(E^(d),s) for a specified E/Q. This model currently has
NO such constructed identification and no proof of the Goldfeld theorem.

The arithmetic identity fullRankMoment_eq_one_add_high splits the ACTUAL
finite rank numerator into a rank-one indicator mass and a rank>=2
WEIGHTED tail. Hence the local theorem
mean_half_of_density_and_high_tail requires BOTH rank-0/1
half-density and a negligible high-rank weighted moment. It does not
deduce mean rank 1/2 from two half-densities alone. These conditions
are independent of the CM prime-density count and the zeta-zero
three-quarter count. The Record4239 elliptic rank-32 verification is
not discharged by any twist-density result.

## Source references, hypotheses and statuses

The full required paper-to-formalization provenance is appended separately
to docs/reference/literature/reading-background/paper-to-formalization-references.md.

* **Larry Guth, James Maynard** (Annals of Mathematics **2026**),
  *New large value estimates for Dirichlet polynomials*,
  https://doi.org/10.4007/annals.2026.203.2.6,
  **Theorem 1.2**, zeta zero-density for actual zeta zeros with
  Re(rho)>=sigma and |Im(rho)|<=T, including multiplicity. The *paper*
  estimates were NOT formalized or imported. Only exact rational
  exponents, source-canonical counting and conditional transport are local.
* **OpenAI** (preprint **September 30, 2026**),
  *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*,
  https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-Quasi-Riemann-Hypothesis-September-30-2026.
  Exact external Lean claim OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re.
  The GRWTSK SevenEighthsZeroFree proposition is a LOCAL PREMISE, not an
  accepted external theorem port.
* **OpenAI** (revised preprint **October 6, 2026**),
  *The rational Hodge conjecture for CM abelian varieties*,
  https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/The-rational-Hodge-conjecture-for-CM-abelian-varieties-October-6-2026.
  Sections 02-tensors and 05c-cm-types specify CM sign rows,
  all-conjugate (2,2) types, scalar trace descent, and filtered
  Hecke/Frobenius projectors. The local CM source supplies only typed
  finite and conditional portions, NOT the manuscript's global
  algebraic-cycle surjectivity.
* **OpenAI** (preprint **October 7, 2026**),
  *Goldfeld's analytic density conjecture and the 2-converse for elliptic curves*,
  https://github.com/openai/math/tree/1581d4cbdd69a0faf34b2089614fe2a814316a6a/preprints/Goldfelds-analytic-density-conjecture-and-the-2-converse-for-elliptic-curves-October-7-2026.
  Section 00, Theorem thm:main-density: for every E/Q, analytic ranks j=0,1
  have density 1/2 among NONZERO SIGNED SQUAREFREE parameters by |d|.
  The 2-converse (thm:main-converse) is separate. Section 00 explicitly
  separates the MEAN rank from half densities and points to an additional
  high-rank-tail companion. No Goldfeld external proof was imported here.
* **Joseph H. Silverman** (1994),
  *Advanced Topics in the Arithmetic of Elliptic Curves*, Chapter II,
  complex multiplication, https://doi.org/10.1007/978-1-4612-0851-8.
  Classical CM reduction is BACKGROUND only; a theorem-exact citation
  for E:y^2=x^3-x and p mod4 is UNRESOLVED in this record. The local
  reduction classification is therefore an unconstructed interface.
* Dirichlet/Chebotarev Q(i) splitting density is a CLASSICAL EXTERNAL
  SUPPLIER, not a theorem imported into this formalization. Pin an
  exact source theorem/normalization before claiming paper-exact import.
  The finite nonunit test is repository-authored.

**Logical categories:** finite sign and count comparisons:
LOCAL_IDENTITY_SOURCE_CANDIDATE; external Guth/Maynard, Goldfeld,
Chebotarev, Deuring, OpenAI Hodge, OpenAI 7/8:
CONDITIONAL_REDUCTION / UNRESOLVED_PREMISE; comparison between CM
Hodge (p,p) cycles and finite cyclic graph Laplacians:
ANALOGY_ONLY until an explicit geometric realization functor is proved.
There is NO PAPER_TO_LEAN_BRIDGE_PROVED and NO unconditional RH, GRH,
zero-density, algebraic Hodge, rank-32 or mean-rank conclusion here.

## Trust/verification gate

At each exact source commit above, toolchain is
leanprover/lean4:v4.33.0; Mathlib is pinned to
db584cd6d46c92f209a44c0f1c829460d327499d.
GitHub readback and static scans have found no direct declaration-level
sorry/admit/axiom token. No Lean/Lake executables are available in the
present execution environment. A native Git ls-remote also failed with
DNS resolution error (exit status 128). GitHub app integration was
used for non-force main writes. No Railway. The following have
**NOT RUN** for the new files: lake --wfail builds of all direct
and transitive dependencies, direct elaboration, fresh trusted
kernel replay, transitive #print axioms, generated/opaque/unsafe audit.
No exit-zero evidence, acceptance receipt, or implicit external theorem
port is claimed. Validation requests must be pinned to the exact
unchanged source/blob closure and run by an authorized non-Railway
Lean executor, preserving concurrent main changes.
