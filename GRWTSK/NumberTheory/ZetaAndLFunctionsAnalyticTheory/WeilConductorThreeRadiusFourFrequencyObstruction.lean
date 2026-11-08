/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Actual source inspected: grwtsk/math@eef4e69aac22d8e6495052b391ed381b80f5eda0.
Canonical Noe skill source@0ca03a08fe714c95e7a52466fa3bb1a2f8b1c753.
WRITTEN_ACTUAL_NEGATIVE_FREQUENCY_SUBSPACE_DENSE_RANGE_AND_SPECTRAL_PROOFS.
ALL458_EXACT_OUTWARD_PHASE_ROWS_AND_FINITE_GUARDS_PASS.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / HUMAN_REVIEW_NOT_RUN.
REMAINING_FINITE_SCHUR_SIGN_AND_ORIGINAL_J3_OPEN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourGramMomentSector
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourScalarObstruction

/-!
# An actual negative frequency subspace and its physical norm cost

Local attribution: grwtsk contributors. The actual source and current repository/canonical structural, typed-port and proof-automation instructions were read. This is an independent complete exact recalculation of the source scalar point plus new written universal interval, range, spectral and norm-cost proofs. No Noe job, repository mutation or publication is performed by this scratch candidate. The universal proofs below are WRITTEN, not elaborated Lean/kernel claims. The exact guard retains every458 source row and every approximation error interval.

## 1. Exact target and source: the actual remaining Schur sign is unchanged

Use H=odd complex L2([-4,4],Lebesgue dt), zero extension, with physical norm squared E and inner product conjugate-linear in the first argument. The real original core is the real odd compactC2 admissible chi3 radius-four core. Fourier normalization is F_f(xi)=integral f(t)exp(i xi t)dt and dxi/(2pi). Every vector inequality below is non-strict on the whole carrier, with strict assertions only for nonzero vectors.

Keep chi3=(0,1,-1)modulo3, primitive nonprincipal conductor3, odd gamma parity1, no pole, and ALL458 unramified atoms n=p^e<=2980,p!=3. Put
 A(xi)=log(3/pi)+Re psi(3/4+i xi/2),
 Pchi(xi)=2 sum_(n=p^e<=2980,p!=3)log(p)chi3(n)cos(xi logn)/sqrt(n),
 s4=A-Pchi.
The actual filters are PH7990/2820,hH=1/(2*10^25), PL19000/1425,hL=153/(2*10^9), with their native binomial definitions and w=PH^2(1-PL^2). Keep
 Hcut=30000000, Omega=35*10^24, C=18524227541662946/10^7,
 D={Hcut<|xi|<Omega} minus([C-10,C+10] union[-C-10,-C+10]),
 B=124997987/10^9, m=1_D*s4*w.
Thus Rres(f)=integral_D m|F_f|^2 dxi/(2pi), represented by the bounded compact selfadjoint R=K* m K. The full gamma form is NOT asserted bounded onallH.

Retain the ORIGINAL P=P23 onto the physical native trace-zero23m sine head, Q=I-P, and A23=P(R+B I)P. Its actual positive inverse satisfies ||A23^-1||<10 by the constructed SchurHeadExtension source law. OnQH the ORIGINAL operator is
 S=Q(R+B I)Q-Q R P A23^-1 P R Q
  =B I_Q+K_Q* M K_Q,
 M=m-Z, Z=m K_P A23^-1 K_P* m>=0, ||M||<741.             (1.1)
The frequency Hilbert carrier used below is Y=odd L2(D,dxi/(2pi)), not arbitrary non-odd L2(D). The multipliers are real even and the finite head consists of real odd functions, so M preservesY. Its real source sector Y_re consists of the purely imaginary odd functions, the Fourier image of real odd physical functions. All these operators preserve the indicated real structures.

Keep also the native L=12Omega, odd Legendre space V of indices n<L, F=QV and W=QH intersect Vperp. The actual far block is
 Dinf=B I_W+K_W* M K_W, Dinf>1/9 I, ||K_W||_HS^2<10^-60.
The original actual finite GramG andH, the moment-sectorU, and the remaining finite blocks D_U,B_U,T_Z of GramMomentSector are unchanged. The requested sign T_Z-B_U*D_U^-1B_U>=0 on ALL remaining Z_F is still OPEN. No frequency-space positivity forM is a premise of that target; this note proves such positivity is actually FALSE.

## 2. Independent exact all458-point check

Take
 x*=3806849122861433/1000000=3806849122.861433,
 delta=1/100000.
This is the existing scalar obstruction frequency, now recalculated from ALL actual source atoms using the pinned existing interval arithmetic helper. The exact lower result is
 Pchi(x*)>=9918590713598897334799549619414251700511/2^128
             =29.148118379884764... .                    (2.1)
The native full Binet bound A(xi)<=log|xi|+1 for |xi|>=100 and the complete positive atanh remainder give
 A(x*)<=23.060067682056676... .                            (2.2)
The exact rational value of(2.2), not its displayed decimal, is retained in the payload. Conservative small scalar guards are
 Pchi(x*)>291481183798/10^10,
 A(x*)<230600676822/10^10.                                (2.3)
These are independently checked outward rational consequences of the full intervals, not Lean theorems manufactured by scalar norm_num.

Finite calculation and errors: the source cutoff log2980<8<log2981 is checked by exact24-term range-reduced atanh bounds with full omitted positive remainder. The inventory independently enumerates prime/exponent tags and all integer prime-power tags2..2980; their sorted lists agree and contain458 distinct n, omitting ONLY base3. Every exponent identity p^e=n and character residue is retained. Every logp has its full rational atanh interval rounded OUTWARD to denominator2^128. The exact integer square-root bracket retains both endpoints. Machin pi=16atan(1/5)-4atan(1/239) uses24 alternating terms and its whole next-term remainder. The actual x*logn argument interval is reduced by an exact integer multiple of the entire2pi interval and checked to lie in(-4,4). Cosine/sine are enclosed by the existing20-step Taylor recurrence plus the complete next-parity remainders and outward arithmetic; every unreduced/reduced phase, quotient, cosine, positive/signed weight and product interval is retained. Their458 signed lower endpoints give(2.1). The whole positive full coefficient mass is independently below211. No floating value enters any acceptance comparison.

The exact source helper is interval_helpers.py, SHA256a2301dc183f368b612ae9976ab00e27cdc2533297ed61754b2082e5ef219bab4. It supplies arithmetic functions only; its old93-atom observation routine is NOT used. The new checker constructs the actual458-atom source explicitly and pins all current native dependencies.

## 3. The ENTIRE mirrored interval, not an isolated negative point

Define
 J+=[x*-delta,x*+delta], J=J+ union(-J+).
All ofJ lies inD, strictly beyond the paid mirror pair and the native low stop100000000/3-1, and inside the actual high pass32*10^24. These rational endpoint comparisons are checked exactly.

The complete prime mass<211 and every logn<8 give the global Lipschitz law
 |Pchi(xi)-Pchi(x*)|<=1688|xi-x*|.                        (3.1)
Indeed each cosine is Lipschitz with its actual factorlogn, and summing ALL positive coefficient magnitudes gives at most8*211. For xi inJ+,
 A(xi)<=log(x*+delta)+1<=logx*+1+delta/x*.
The last inequality is integral_x*^(x*+delta)du/u<=delta/x*, with no numerical gamma-derivative approximation. Thus the EXACT interval gap is at least
 P_lower-Gamma_upper-1688delta-delta/x*
  =6.071170697828084...>6.
Evenness covers-J+ too. Hence s4<=-6 throughout the ENTIREJ.

The actual complete all-lobe filter laws give PH>=1-10^-10 and PL<=10^-40 there, so
 w>=(1-10^-10)^2(1-10^-80)>99/100,
                         m<=-59/10 onJ.                 (3.2)
This is a statement about the actual filtered, masked458-atom source, with both frequency signs and all interval endpoints included. The old radius-three mask or independent prime phases play no role.

## 4. Actual M has a full infinite-dimensional negative source subspace

Let Y_J be ALL odd L2 frequency functions supportedJ, with measure dxi/(2pi), and let Pi_J be the orthogonal frequency mask. For EVERY y inY_J, positivity of the ALREADY CONSTRUCTED inverseA23^-1 gives
 <Zy,y>=<A23^-1 K_P*my,K_P*my>>=0.
Therefore from(1.1),(3.2),
                   <My,y><=-59/10 ||y||^2.               (4.1)
No sign follows here from coverage weights; the argument uses the actual source phase calculation and true old-head inverse. In particular M>=0 is FALSE, even on its actual odd frequency sector. The same conclusion holds in the real source sectorY_re intersectY_J.

This subspace is explicitly infinite dimensional and exhaustively indexed. OnJ+ let
 phi_n(xi)=sqrt((2n+1)/(2delta))*P_n((xi-x*)/delta), n>=0,
 normalized inL2(J+,dxi). Define y_n=i sqrt(pi) phi_n onJ+ and extend ODDLY to-J+, zero offJ. Then
 ||y_n||_(dxi/(2pi))^2=2*pi/(2pi)*||phi_n||_(dxi)^2=1.
Legendre orthogonality/completeness give an orthonormal basis ofY_J in the real source sector, and its complex span is complete inY_J. ALL n>=0 are retained. No finite passing rows are promoted to(4.1); that universal law follows from the entire interval and Z positivity.

There is a genuine source-bound positive heat if desired on this precise NEGATIVE compression. Define N_J=-Pi_J M|Y_J, a bounded selfadjoint operator onALLY_J. Equation(4.1) gives N_J>=59/10 I and ||N_J||<=741. Its norm-convergent spectral exponential T_t=exp(-tN_J) has T_0=I, the semigroup law and
 ||T_t||<=exp[-(59/10)t], t>=0,
 integral_0^infty T_t dt=N_J^-1,
 ||integral_a^infty T_t dt||<=(10/59)exp[-(59/10)a].
The tail law holds for EVERY a>=0. Norm differentiation proves the source-return by integrating -N_J T_t, retaining the entire time tail. This is heat of the actual negative-compression generator, not a claim thatM orS is positive on its unproved remaining carrier. No invariance ofY_J under the fullM is assumed; N_J is the true compressed operator.

## 5. Dense source range on BOTH QH and the already paid far spaceW

The operator K_Q:QH->Y has DENSE range. We prove this on the exact odd carrier. If y inY is orthogonal to its range, its adjoint satisfies Q K*y=0. Extendy byzero outsideD and put
 h(t)=(1/(2pi))integral_D y(xi)exp(-i xi t)dxi.
D is bounded and finite measure, so y isL1 as well asL2; the integral defines an ENTIRE function of complex t. Every derivative is justified by domination byOmega^j exp(Omega|Imt|)|y|. Global Plancherel gives h inL2(R), and oddness ofy gives oddness ofh. The physical adjointK*y is exactlyh restricted[-4,4], with no non-odd projection error.

The adjoint equation says h on[-4,4] belongs toPH, hence equals a finite sine sum on its interior. Both representatives are entire, so equalitya.e on that interval implies pointwise and then global analytic equality. A nonzero finite sine sum is continuous periodic of period8 and cannot be inL2(R). Consequently h=0 andy=0. The adjoint kernel iszero, proving density.

The stronger ACTUAL far map K_W:W->Y is also dense. Indeed
 Wperp_H=PH+V,
a finite-dimensional, hence closed, sum. Its adjoint kernel equation says h|[-4,4] equals a finite odd polynomial plus a finite native sine sum. Again analyticity extends equality toALLR. A nonzero polynomial grows at infinity while the finite sine sum stays bounded, so this sum is notL2(R); after the polynomial iszero, a nonzero finite sine sum is still notL2(R). Thus both vanish andy=0. This proves the dense range ofK_W with the original physicalW and WITHOUT changing its exceedingly small source norm.

For the real source use purely imaginary odd y. Its inverse Fourier transformh is real odd. The same argument then proves dense range of the real physical Q/W carriers intoY_re. Equivalently real-part projection of a complex physical approximant produces the correct purely imaginary-odd frequency projection and preserves approximation. The sourceA,R,S andM preserve these real structures.

These are analytic uniqueness theorems, NOT bounded inverse theorems and NOT surjectivity assertions.

## 6. Actual compact spectra: infinitely many downward shifts, not a negative stage

For any integern>=1 take y_0,...,y_(n-1) fromSection4. Their span is uniformly M-negative by(4.1). DenseK_Q range allows physical vectorsv_j inQH with K_Qv_j as close toy_j as desired. The finite Gram matrix
 <M K_Qv_i,K_Qv_j>
converges entrywise, and therefore in finite matrix operator norm, to the negative matrix<My_i,y_j>. Choose the approximation small enough to retain a negative bound, for example-1 times the coefficient norm. Thev_j are linearly independent because theirK_Q images are close to an orthonormal family. Hence
 S-B I=K_Q* M K_Q
has an n-dimensional NEGATIVE quadratic subspace for EVERYn. The same proof with the denseK_W range proves
                  Dinf-B I_W=K_W* M K_W                 (6.1)
has arbitrarily large negative subspaces INSIDE THE ALREADY PAID far space.

Both perturbations are compact selfadjoint. K is Hilbert--Schmidt because the physical interval and D both have finite measure and its Fourier kernel has modulusone. Restrictions remain compact. Thus the compact selfadjoint spectral theorem gives infinitely many negative eigenvalues ofS-BI and ofDinf-BI, tendingtozero. The latter satisfy
 -741*10^-60<lambda_j(Dinf-BI)<0,
 lambda_j->0,
 B-741*10^-60<lambda_j(Dinf)<B.                           (6.2)
In particular the actualDinf remains STRICTLY POSITIVE, with its native floor>1/9. Eventually the corresponding eigenvalues ofS itself also lie in(0,B), becauseB>0 and the perturbation eigenvalues tend0. No negative eigenvalue ofS, noRres<-B E and no full-Q4 counterexample is obtained.

There is an exact whole-series budget. The Hilbert--Schmidt ideal inequality gives
 ||Dinf-BI||_trace<=||M||*||K_W||_HS^2<741*10^-60.
Therefore the ENTIRE infinite family of negative magnitudes satisfies
                  sum_j |lambda_j|<741*10^-60.           (6.3)
Every eigenvalue is retained, not merely a finite numerical list. Order the negative magnitudes nu_0>=nu_1>=...>0. For EVERY J>=0,
 (J+1)nu_J<=sum_(j=0)^J nu_j<741*10^-60.
Thus the ENTIRE remainder of the negative spectral operator after its firstJ terms has operator norm
 ||sum_(j>=J) nu_j E_j||<=741*10^-60/(J+1),               (6.4)
where E_j are its actual orthogonal eigenprojections, including multiplicities. Its operator-norm series converges, and (6.4) retains every unseen negative eigenbranch. No trace-norm tail decay beyond the full budget(6.3), or numerical computation of the eigendata, is claimed. It also follows that at most741*10^-60/a negative magnitudes can exceed anya>0.

The original restricted residualK_Q* m K_Q also has infinite negative index by the same proof usingm<=-59/10 onJ; alternatively the positiveZ subtraction cannot remove these negative directions. Its compact negative eigenvalues tend0 too. This disproves an attempted residual floorZERO, while being entirely compatible with the actual required floor-B. Smooth original real odd compactC2 vectors are dense inQH: Q subtracts a finite original trace-head function from a dense original core. Thus finite negative subspaces of that bounded residual can also be approximated by genuine original tests. Far-block eigenvectors themselves are not assertedC2. If a native far core is needed, its density follows by correcting the finitely many PH+V moments with fixed smooth dual functions; no moment inverse conditioning estimate is silently supplied.

A separate written audit of the denseW/HS norm argument agreed with this derivation; it shares the existing native Legendre/source premises. No independent human or kernel review is inferred.

## 7. The exact physical cost: why density never proves S<0

For every physical f supported[-4,4], Cauchy--Schwarz gives |F_f(xi)|^2<=8E(f). The total length of BOTH mirrored intervals is|J|=4delta. Therefore
 ||1_J Kf||^2<=8|J|/(2pi)E(f)
             =16delta/pi E(f)<=(1/18750)E(f).             (7.1)
This uses the ORIGINAL unweighted physical norm and the actual frequency measure. For a unit y supportedJ and ||K_Qf-y||<=eta<1,
                  E(f)>=18750(1-eta)^2.                 (7.2)
The same inequality holds forW inputs. A small negative value measured against unit frequency output cannot be compared with-B times that frequency norm in place of the much larger INPUT physical energy.

There is in fact no nonzero exactlyJ-supported output. IfK_Qf=y supportedJ, the entire compact-physical Fourier transformF_f vanishes on a nonempty open interval ofD outsideJ. Analytic uniqueness forcesF_f=0 andy=0. Thus dense range is not surjective. Moreover ANY sequencef_j inQH whoseK_Q output tends to a fixed nonzeroJ-supported target must have ||f_j|| tendingtoinfinity. Otherwise a bounded subsequence has a weakly convergent subsubsequence; compactness ofK_Q gives strong output convergence toK_Qf=y, contradicting the preceding impossibility. This proves divergence of the norm cost, not just the lower bound(7.2).

The fullW law is much stronger and includes EVERY mode. Existing LegendreTail proves
 ||K_W||_HS^2<=2L(24L+20)4^(-L)/81<10^-60.
This uses the COMPLETE Legendre series n>=L and its universal monotonic law, with the exact128 guard. The new checker independently verifies
 2*128*(24*128+20)/(81*4^128)<10^-60
and retains the full formula and source law; it does not infer an infinite tail from that scalar check alone.

For EVERY integern>=1 and EVERY finite-dimensional E_n subsetY_J of dimensionn, suppose a linear T_n:E_n->W satisfies
 ||K_W T_n-inclusion_(E_n->Y)||<=eta<1.
Every singular value ofK_W T_n is at least1-eta, hence
 (1-eta)sqrt(n)<=||K_W T_n||_HS
                   <=||K_W||_HS ||T_n||<10^-30||T_n||.
Consequently
              ||T_n||^2>n(1-eta)^2*10^60.                (7.3)
This is a whole n-dimensional operator-norm cost, not a per-vector orthogonality guess. It is consistent with finite-dimensional approximate returns from density, and forbids a uniform bounded source-return over the exhaustive countable negative family. The actual positive farDinf floor and its full spectral heat/inverse are therefore fully compatible with(6.1)--(6.3).

## 8. Heat, exhaustive indexing, lossless evidence and the unchanged open branch

The mathematical types have their displayed exact carriers and norms: H andQ/W physical oddL2; original real core; Y andY_J with dxi/(2pi); the real source sector; boundedK,m,M,Z,S,Dinf on their actual domains; finite mapsT_n with physical operator norm; the complete countable Legendre familyy_n; and dependent finite source/interval/guard data. The actualN_J spectral heat and its ENTIRE time return are inSection4; the ACTUAL positiveDinf spectral heat, inverse Neumann law and all their time/index tails remain the native LegendreTail instance. Neither heat is claimed to generate the unproved remainingT_Z-B_U*D_U^-1B_U sign. Other representable branch types reuse the exhaustive dyadic coverage pi_n=2^(-n-1), total1 and unobserved tail2^-J; the entire eigenvalue/Legendre tails additionally have(6.3) andSection7. Positive coverage supplies no arithmetic sign.

Finite descriptions preserve the exact source revision, character/conductor/parity,ALL458 identities and phase/error rows,128-bit arithmetic unit, logarithm/atan/Taylor parameters and remainders, full filter/source mask, actual P,Q,A,M,S,W definitions, J, both frequency signs, physical/Fourier measures, full negative-family/time/trace/HS laws, and distinct evidence/OPEN statuses. No arbitrary semantic real function or uncomputed eigenvalue is claimed computably encoded. The existing dependent PaidPacket.RetainedEvidence codec retains complete descriptor/proof/source/checker bytes and proves decodeRetained(encode(data))=data. Concrete exact canonical JSON independently checks decode(encode(payload))=payload and byte-identical re-encoding, with every atom/error row retained; hashes only bind these recoverable bytes.

The new result is a genuine SOURCE obstruction toM>=0 and to eventualDinf>=B I or a bounded inverse identification of frequency and physical metrics. It is not merely a generic finite certificate format or another positive finite sector. Standard analytic uniqueness, compact selfadjoint spectral theory and Hilbert--Schmidt ideal inequalities are proved/applied at the full displayed hypotheses; no prior-art novelty claim is made. The scalar point overlaps the native ScalarObstruction, while the complete interval, actual current filters, negativeM compression, denseW range and full source norm-cost/spectral consequences are explicitly connected here. No further character sector is inferred.

The unchanged dependency path is actual458-atom source -> paid head/inverse and complete far/mixed law -> actual finiteF Gram with its paidU -> OPEN T_Z-B_U*D_U^-1B_U on ALLZ_F -> originalS>=0 -> original entire residual -> originalj3. The new obstruction prevents replacing that missing physical finite sign by the FALSE frequency claimM>=0. It does not pay the missing sign. Fullj3, RH and all-character DirichletGRH remain OPEN.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourFrequencyObstruction

def center : ℚ := 3806849122861433 / 1000000
def halfWidth : ℚ := 1 / 100000
def coarsePrimeLower : ℚ := 291481183798 / 10 ^ 10
def coarseGammaUpper : ℚ := 230600676822 / 10 ^ 10
def filterLower : ℚ := (1 - 1 / 10 ^ 10) ^ 2 * (1 - 1 / 10 ^ 80)
def tail128 : ℚ := 2 * 128 * (24 * 128 + 20) / (81 * 4 ^ 128)

/-- Rational guards only; actual scalar enclosures require the complete458 rows. -/
theorem whole_interval_source_guards :
    (6 : ℚ) < coarsePrimeLower - coarseGammaUpper -
      1688 * halfWidth - halfWidth / center ∧
      (99 / 100 : ℚ) < filterLower ∧ (59 / 10 : ℚ) < 6 * filterLower := by
  norm_num [center, halfWidth, coarsePrimeLower, coarseGammaUpper, filterLower]

theorem actual_filter_and_mask_endpoints :
    (100000000 / 3 - 1 : ℚ) < center - halfWidth ∧
      (30000000 : ℚ) < center - halfWidth ∧
      (18524227541662946 / 10 ^ 7 + 10 : ℚ) < center - halfWidth ∧
      center + halfWidth < (32 * 10 ^ 24 : ℚ) ∧
      (32 * 10 ^ 24 : ℚ) < 35 * 10 ^ 24 := by
  norm_num [center, halfWidth]

/-- Both signs, physical interval length8, and frequency measure1/(2pi). -/
theorem physical_frequency_measure_guard :
    (16 / 3 : ℚ) * halfWidth = 1 / 18750 := by
  norm_num [halfWidth]

/-- The existing full-series law supplies every unseen index beyondL. -/
theorem actual_paid_far_guards :
    tail128 < (1 / 10 ^ 60 : ℚ) ∧
      (1 / 9 : ℚ) < 124997987 / 10 ^ 9 - 741 / 10 ^ 60 := by
  norm_num [tail128]

/-- Full source-dependent finite evidence roundtrip; no semantic-function codec. -/
theorem retained_full_roundtrip
    (data : ConductorThreeRadiusFourPaidPacket.RetainedEvidence) :
    ConductorThreeRadiusFourPaidPacket.decodeRetained
      (ConductorThreeRadiusFourPaidPacket.retainedCodec.encode data) = data :=
  ConductorThreeRadiusFourPaidPacket.full_roundtrip data

theorem entire_coverage_tail (J : ℕ) :
    (∑' k : ℕ, WeightedStage.stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  WeightedStage.stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourFrequencyObstruction
