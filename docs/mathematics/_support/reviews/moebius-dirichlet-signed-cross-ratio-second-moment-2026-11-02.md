# Original Möbius signed Dirichlet character second moment via multiplicative residue-ratio Fourier

Research date: 2026-11-02 (America/Los_Angeles). Local mathematical attribution: grwtsk contributors.
Snapshot inspected before additive publication: grwtsk/math main `3b355586351b692c2fe67d848bf70f5f68b21832`.
Pinned toolchain: `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Formal status for all new GRWTSK files: **SOURCE_PROOF_CANDIDATE**. Lean parsing/elaboration, exact expected type/universe checks, full import compilation, fresh independent kernel replay and transitive axioms audit **NOT_RUN**. RH and Dirichlet GRH remain OPEN.

## 1. The new distinct mathematical obligation, not a repeat of prior signed MEANS

The current repo already has:
- `MoebiusDirichletResidueOrthogonality.lean` Git blob `82698de228e06569e2f9dfe5223eb2056d09bc8d`: true complete character pair projector, preserving original birth-gated Möbius source.
- `MoebiusDirichletResidueParseval.lean` blob `152ef7002c566bcca14ec8aac8c027c523693347`: finite character Fourier Parseval for genuine complex coefficients.
- `MoebiusDirichletMeanSignedSharp.lean` blob `5c94aa74ab426d62dc7a8937155e0ba8cd1ef960`: signed all-character MEAN via exact unit diagonal subtraction and sharp finite residue fiber occupancy, including mean zero when q>=N(T).
- `MoebiusLFunctionFamilyInverse.lean` blob `2b9c2b556de587db611478b7724c9205db90fd3b`: exactly the mathlib character coefficient mu_chi(n)=mu(n)chi(n).
- `MoebiusLFunctionHermitianPickup.lean` blob `0643134718a73f65f1ca01f2db0804b4883676b4`: the original complex Hermitian `familyCross` source.
- `MertensPrimitive.lean` blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`: literal ordinary arithmetic mu(n), birth-gated response and causal Gram.

The previously published signed mean
  (sum_(all chi mod q) familyCross_chi(T))/phi(q)
is a FIRST character moment. It can vanish even with individual sources of large opposite signs. Therefore it is insufficient to infer a fixed-primitive-character signed bound or GRH. The next mathematically distinct target is the SECOND character moment of the genuine original signed source, not the mean.

## 2. Actual ratio-class decomposition of the original Möbius signed Gram

Fix positive q and physical T, N(T)=floor(exp T). Let
  K_T(m,n)=int_0^T pickupResponse(m,u)*pickupResponse(n,u) du,
the exact original real birth-gated Gram, and
  H_T(m,n)=mu(m)*mu(n)*K_T(m,n).

The authentic complex signed Dirichlet-character offdiagonal source is
  Z_(chi,T)=sum_(m!=n<=N) chi(m)*conj(chi(n))*H_T(m,n).
All ordered orientations and the original diagonal exclusion are preserved. Since K_T(m,n)=K_T(n,m), H_T is real symmetric, and (m,n) and (n,m) both occur, Z_chi is REAL mathematically and agrees with the old `familyCross(dirichletCharacterCoefficients chi,T)`.

For each a in ZMod q, define the genuine ratio packet:
  B_(q,a)(T) = sum_(m!=n<=N,
                  n is a UNIT modulo q,
                  (m mod q)*(n mod q)^(-1)=a)
                  H_T(m,n).
No numerator-unit restriction is needed in this definition: a nonunit ratio may carry a packet but is annihilated by every character. Denominator nonunit terms also vanish in all character sources, by pinned `MulChar.map_nonunit`.

For every actual DirichletCharacter Complex q,
  Z_chi(T) = sum_(a mod q) chi(a)*B_(q,a)(T).                (1)
This is a finite multiplicative Fourier transform, not a random-sign model or a changed physical source. It follows from pinned `MulChar.star_apply'`, `MulChar.inv_apply'`, and character multiplicativity.

The all-character FIRST complex moment is
  sum_chi Z_chi(T) = phi(q)*B_(q,1)(T).                      (2)
This directly identifies the old signed mean with the IDENTITY ratio packet. Its vanishing for q>=N says only B_(q,1)=0. It says nothing about packets a!=1.

The new SECOND moment of the actual REAL signed cross is the exact Parseval identity
  sum_chi familyCross_chi(T)^2
    =phi(q)*sum_(a unit)|B_(q,a)(T)|^2.                   (3)

The source proof is broken into:
- PURE generic finite ratio Fourier lemma without prior GRWTSK analytic imports;
- source specialization at ALL ordered (m,n) in the original inventory with if (m!=n) signed weights;
- finite all-character Parseval from the prior pinned character source;
- a separate REALITY proof: the star of H_T(m,n) equals H_T(n,m), so conjugating and swapping the two ordered finite sums gives star Z_chi=Z_chi. Thus |Z_chi|^2=(Re Z_chi)^2 and (3) has the actual previous `familyCross` type, not merely a surrogate complex square.

A safe individual consequence retaining the full character count is
  familyCross_chi(T)^2
    <= phi(q)*sum_(a unit)|B_(q,a)(T)|^2.                (4)
This follows from nonnegative summands in (3), NOT from the old signed mean or an unfounded independence assumption.

## 3. A direct fourth-order arithmetic collision description

Expanding the right-hand sum of squares in (3) and pairing ratio classes reveals the literal FOUR-INDEX arithmetic source
  sum_(m!=n,r!=s<=N,
       (m n r s,q)=1,
       m*s ≡ n*r (mod q))
       mu(m)mu(n)mu(r)mu(s)
       K_T(m,n)*K_T(r,s).                                (5)

The denominator-unit conditions and the unit ratio imply that all four indices are units modulo q; this is crucial for composite q. Formula (5) is mathematically equivalent to the ratio-class square sum. In this publication formula (5) is an explanatory paper expansion, not a new Lean theorem, avoiding any unsupported claim that fourfold finite reindex was already kernel checked.

When q>N(T), a=1 has NO offdiagonal ratio packet, but other ratios remain. When q>=N(T)^2, the modular collision m*s≡n*r implies exact INTEGER equality m*s=n*r, so the surviving fourth-order source can be organized by rational slopes. This offers a bridge to the repo's existing gcd/time-shift and short-ratio source analyses, but no all-positive-rate cancellation theorem is derived from it.

## 4. A concrete exact obstruction to replacing the second moment by zero signed MEAN

Take q=5 and any T with log 2 < T < log 3, so N(T)=2. The nonzero original Möbius coefficients are mu(1)=1, mu(2)=-1. Let k=K_T(1,2)>0 (the exact original birth-gated physical overlap).

The four genuine characters modulo 5 have chi(2) in {1,i,-1,-i}. The full original signed real offdiagonal crosses are
  familyCross_chi(T) = -2*k*Re(chi(2))
                   in {-2*k,0,2*k,0}.
Therefore
  (sum_chi familyCross_chi(T))/4 = 0
but
  (sum_chi familyCross_chi(T)^2)/4 = 2*k^2 > 0.

The two nonzero ratio packets are B_(5,2)=-k and B_(5,3)=-k, with B_(5,1)=0. Parseval gives exactly 2*k^2, no surrogate Gram, coefficient or averaging convention. This is a mathematically explicit example showing WHY all-character signed mean cancellation cannot control an individual primitive character.

## 5. Genuine fixed-q arithmetic target and conditional consumer

The new source defines `FixedModulusRatioMomentEveryRate q` as an UNPROVED proposition. It asks, for every epsilon>0, a constant C_epsilon,q>=0 such that for ALL dyadic j>=0:
  phi(q)*sum_(a unit)|B_(q,a)(j*log 2)|^2
    <= C_epsilon,q*exp(2*epsilon*j*log 2).              (6)

The factor phi(q) is retained on the LEFT, with all q-dependence visible. The source proof candidate
  `individualFamilyCross_everyRate_of_ratioMoment`
uses (4) and the elementary square-root inequality to show that (6) would imply each actual `familyCross(dirichletCharacterCoefficients chi)` has a one-sided every-positive-rate bound. This is a conditional implication, NOT proof that (6) holds.

The original `PrimitiveDirichletFamilyLowGcdEveryRate` and genuine causal-to-prefix/Mellin-to-GRH bridges remain UNPROVED. The ratio-second-moment bound is stronger than a single-character condition and its truth is not inferred from finite Parseval.

## 6. Independent finite tests ACTUALLY executed in this continuation

(A) Exact Gaussian integer arithmetic: q=5 and q=8, endpoint inventories N=2,4,7,11; 12 seeded arbitrary complex-integer pair-weight fixtures per (q,N), 96 total. Character tables used exact ±1,±i values. Both (1)-(2) and the quadratic Parseval moment (3) passed with ZERO integer mismatches. The tests include nonunit source residues at composite q=8 and completely arbitrary complex pair weights, not only symmetric real kernels.

(B) ORIGINAL real Möbius causal Gram with actual birth support:
  K_T(m,n)=4*((T-L)/sqrt(mn)
               -2*(1/sqrt(m)+1/sqrt(n))*(exp(-L/2)-exp(-T/2))
               +(exp(-L)-exp(-T))),
  L=max(log m,log n), T>L, and K=0 otherwise.

With 65-digit mpmath, T=log(N+0.45), q,N in
  (5,2),(5,4),(5,9),(8,7),(8,12),(17,9),(17,17),
the exact ratio-class second moment (3) agreed with direct character-wise causal Gram evaluation to errors between 0 and approx 6.69e-63. The maximum imaginary residual in the complex ordered Hermitian cross was below 9e-67.

Representative results:
| q | N | signed mean | mean of signed squares |
|---:|---:|---:|---:|
| 5 | 2 | 0 | 0.00018203116724 |
| 5 | 4 | 0 | 0.099471948296 |
| 5 | 9 | 0.12500796415 | 3.0711047996 |
| 8 | 7 | 0 | 0.22721235479 |
| 8 | 12 | 0.002608444274 | 1.4682881265 |
| 17 | 9 | 0 | 1.5711473682 |
| 17 | 17 | 0 | 8.7156204387 |

At q=5,N=2, T≈0.896088024556636, K_T(1,2)≈0.00954020878278, and signed crosses are [-0.0190804175656,0,+0.0190804175656,0] as predicted. These are finite arbitrary-horizon source diagnostics; they are NOT interval-certified arithmetic, proof of an infinite family estimate, or native Lean evidence.

## 7. Source acceptance and verification boundary

Proposed new Lean files:
1. `MoebiusDirichletPairRatioFinite.lean`: generic finite ratio-source Fourier transform, importing pinned Mathlib and no GRWTSK analytic math.
2. `MoebiusDirichletSignedCrossRatioMoment.lean`: original signed ratio packets, true complex cross, first moment and all-character complex second moment, source-to-family real-part and individual absolute bound.
3. `MoebiusDirichletSignedCrossReality.lean`: original source Gram symmetry, conjugate/index-swap, exact real signed-cross second-moment equality.
4. `MoebiusDirichletCrossMomentFrontier.lean`: explicitly UNPROVED fixed-modulus ratio-energy all-rate PROP and its conditional actual signed-cross consumer.
5. Passive acceptance module: `#check` and `#print axioms` for source-bound new declarations, NOT RUN.

No older mathematical sources, original diagonal, fixed gcd cutoff, Mathlib pins, or root imports are modified. The canonical Noe proof automation skill was inspected at grwtsk/noeaaeue main `c881496cc1b0c4e52f0dbb73d32ca6f9eea47b2d`, source blob `5292446e4ef1398ba928d8ad339b662415166f19`. It confers no native dispatch or acceptance authority; no job was dispatched.

ALL new source proof bodies: SOURCE_PROOF_CANDIDATES. Pinned Lean parsing NOT_RUN; expected types NOT_RUN; full import compilation NOT_RUN; fresh independent kernel NOT_RUN; transitive axiom audit NOT_RUN. Static forbidden declaration scan only; no `axiom`, `sorry`, `admit` or `unsafe` declaration introduced. No native compiler was available on the current host.

Original `PlainLowGcdEveryRateDyadic`, actual fixed primitive-character `PrimitiveDirichletFamilyLowGcdEveryRate`, `PrimitiveDirichletCausalToPrefixBridgeTarget`, Mellin/explicit formula/conductor/gamma/poles/zeros, RH and Dirichlet GRH remain OPEN.
