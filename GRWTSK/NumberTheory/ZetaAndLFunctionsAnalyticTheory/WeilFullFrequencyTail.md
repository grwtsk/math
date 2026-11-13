# Full primitive Fourier tail and signed zeta pole leakage

Author: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M41 (primary), 11M26, 42A38, 46E35.
Evidence: WRITTEN_ANALYTICAL_ARGUMENT. The adjacent
WeilFullFrequencyTail.lean contains four scalar Lean
SOURCE_PROOF_CANDIDATES. The exact full-source Plancherel return
and conductor-one pole leakage in this note are NOT Lean declarations.
Lean elaboration, full dependency build, fresh kernel replay, transitive
axiom audit, certified numerical evaluation and independent review
NOT_RUN. Novelty UNASSESSED. No RH, GRH or universal-sign claim.

## 1. Exact arithmetic source and angular transform

Fix A>0, q>=1 and a primitive character chi of conductor q.
Conductor q=1 is the analytically continued Riemann zeta source.
Set a=gammaParity(chi) in {0,1},
 b=a+1/2>0, c=gammaConstant(q,a)
   =log(q/pi)+psi(1/4+a/2),
 K_a(r)=exp(-b*r)/(1-exp(-2*r)) for r>0.

Let f be smooth complex, supported inside [-A,A], with
 F(xi)=int_R f(t) exp(-i*xi*t)dt,
 E=int_R |f(t)|²dt=(1/(2pi))int_R |F(xi)|²dxi,
 C_f(r)=int_R conjugate(f(t))*f(t+r)dt.

The ORIGINAL integer inventory I_A=LowSchur.activePrimePowers A
includes every n>=2 with n<exp(2A); every prime power has its
literal von Mangoldt weight w_n=Lambda(n)/sqrt(n), and all
non-prime-powers have weight zero. The original phase-sensitive
signed term is
 S_chi,A(f)=2sum_(n in I_A)w_n*
                      Re(conjugate(chi(n))*C_f(log n)).
Character values at nonunits are zero. At log n=2A, correlation
is zero at a null support endpoint, so the strict cutoff is exact.

For primitive q>1 the unchanged physical source is
 Q_chi,A(f)=c E+Gamma_a(f)-S_chi,A(f),
 Gamma_a(f)=int_0^infinity K_a(r)*
                      ||f(.+r)-f||²_2 dr.
For q=1 retain the SEPARATE signed two-pole term
 P_zeta(f)=M_+(f)*conjugate(M_-(f))
          +M_-(f)*conjugate(M_+(f)),
 M_±(f)=int_R exp(±t/2)*f(t)dt,
 and Q_zeta,A=P_zeta+c E+Gamma_0-S_1,A.
No pole-neutral restriction or absolute squares are substituted.

## 2. Exact frequency representation (WFFT-A, WRITTEN)

Plancherel with the MINUS angular Fourier convention supplies
 C_f(r)=(1/(2pi))int_R exp(i*xi*r)|F(xi)|²dxi,
 e_f(r)=(1/(2pi))int_R
                    2*(1-cos(xi*r))*|F(xi)|²dxi.
Both integrals genuinely converge. Define the exact positive
compensated gamma frequency symbol
 Psi_a(xi)=2int_0^infinity K_a(r)*(1-cos(xi*r))dr.
It is finite at every real xi because the numerator is O(r²)
at zero and K_a has an integrable exponential tail.
Tonelli justifies interchanging the positive r,xi integrals.
Native OddMultiplierBounds.periodicMultiplier_eq_kernel_integral
identifies Psi with the literal existing periodicMultiplier a xi.
Its series consists of every rate b+2j and is not a shifted
positive comparator.

The full, REAL signed primitive frequency symbol is
 m_chi,A(xi)=c+Psi_a(xi)-
     2sum_(n in I_A)w_n*
       Re(conjugate(chi(n))*exp(i*xi*log n)).
For complex characters it is NOT generally even in xi.
Exact finite-sum Fourier inversion yields
 Q_chi,A(f)=(1/(2pi))int_R m_chi,A(xi)|F(xi)|²dxi
for primitive q>1. For q=1 add the two-pole P_zeta(f).
These are returns to the unchanged source, not new forms.

## 3. Explicit high-frequency coercivity (WFFT-B, WRITTEN)

Define exactly the native characterPrimeMass
 M_chi,A=2sum_(n in I_A)w_n*|chi(n)|>=0.
The signed finite prime symbol is <=M_chi,A for every real xi.
The existing checked-statement supplier
OddMultiplierBounds.log_lower_le_periodicMultiplier gives
 Psi_a(xi)>= (1/2)*log(1+xi²/b²)
for every parity and every real xi.

For arbitrary eta>0, set
 T_chi,A,eta=b*exp(M_chi,A+|c|+eta).
For |xi|>=T_chi,A,eta,
 (1/2)*log(1+xi²/b²)
   >= log(|xi|/b)>=M_chi,A+|c|+eta.
Since c+|c|>=0, the exact full symbol satisfies
  m_chi,A(xi)>=eta.                                 (3.1)

Let P_T be orthogonal Fourier projection onto {|xi|<T} in
L²(R), and H_T=I-P_T. Write f_L=P_T f, f_H=H_T f,
E_L=||f_L||² and E_H=||f_H||². The pieces need not be
supported on [-A,A] and are NEVER independently
reinstantiated as canonical compact tests. The ORIGINAL
source is evaluated first and its integral is split:
 Q_chi,A(f)>=(1/(2pi))*int_(|xi|<T)
               m_chi,A(xi)|F(xi)|²dxi+eta*E_H
for primitive q>1 and T>=T_chi,A,eta. No high/low
mixed term arises in this diagonal physical multiplier.
This is not finite dimensional and does not prove the
remaining low-band sign.

## 4. Signed zeta pole leakage (WFFT-C, WRITTEN)

For q=1 define actual support-truncated pole vectors
 v_±(t)=1_[-A,A](t)*exp(±t/2) in L²(R),
 and M_±(f)=<v_±,f>, with antilinear-first inner products.
Their exact masses are
 ||v_±||²=int_[-A,A]exp(±t)dt=2sinh A.

Their entire angular Fourier transforms are
 F(v_±)(xi)=
 [exp((±1/2-i*xi)A)-exp(-(±1/2-i*xi)A)]
                         /(±1/2-i*xi).
The exact squared modulus is, for EITHER pole orientation,
 |F(v_±)(xi)|²=
       2*(cosh A-cos(2*A*xi))/(xi²+1/4).
The numerator is <=2*(cosh A+1)=4*cosh(A/2)².
The two-sided Fourier projection integral is bounded by
 ||H_T v_±||² <= [8*cosh(A/2)²/pi]*atan(1/(2*T))
                 <=4*cosh(A/2)²/(pi*T).                (4.1)
The last step uses atan(u)<=u for u>=0. This is a
sharper bound than 4exp(A)/(pi*T); BOTH are valid.
It uses the ACTUAL truncated pole vectors, not
an unbounded global exponential.

Put B=sqrt(2sinh A), H=2cosh(A/2)/sqrt(pi*T).
For f_L=P_Tf and f_H=H_Tf, define
 M_±^L=<v_±,f_L>, M_±^H=<v_±,f_H>.
Cauchy with self-adjoint Fourier projections gives
 |M_±^L|<=B sqrt(E_L),
 |M_±^H|<=H sqrt(E_H).

Let P_zeta^L=M_+^L*conjugate(M_-^L)
               +M_-^L*conjugate(M_+^L).
It can be NEGATIVE. Expansion of BOTH exact signed
pole orientations supplies
 |P_zeta(f)-P_zeta^L|
   <=4BH sqrt(E_L E_H)+2H² E_H.                      (4.2)
All low/high pole cross couplings are charged.

Choose eta>0 and any T satisfying both
 T >= (1/2)*exp(M_1,A+|c_1,0|+eta),
 T >= 16cosh(A/2)²/(pi*eta).
Then the nonpole zeta multiplier is >=eta on |xi|>=T,
and H²<=eta/4. The exact full zeta source therefore obeys
 Q_zeta,A(f)>=
  (1/(2pi))*int_(|xi|<T)m_1,A(xi)|F(xi)|²dxi
   +P_zeta^L+(eta-2H²)E_H
   -4BH sqrt(E_L E_H).

Apply Young with eta/4:
 4BH sqrt(E_L E_H)
 <= (eta/4)*E_H+(16 B²H²/eta)*E_L.
Since B²=2sinh A, H²=4cosh(A/2)²/(pi T),
we conclude the explicit POLE-INCLUSIVE bound
 Q_zeta,A(f) >=
   (1/(2pi))*int_(|xi|<T)m_1,A(xi)|F(xi)|²dxi
   +P_zeta^L
   -[128cosh(A/2)²*sinh(A)/(pi*eta*T)]*E_L
   +(eta/4)*E_H.                                   (4.3)
Both pole orientations, their genuine complex pairing,
and the sign of the pole-low term are preserved.

## 5. Falsification, arithmetic consumer and next premise

At f=0 every term vanishes. For a complex nonreal chi,
m_chi,A(xi) may differ from m_chi,A(-xi), so even
frequency averaging is invalid. No poles enter q>1, but
the q=1 pole must NOT be dropped or squared. Source
smooth support supplies e_f integrability; arbitrary
L² sources do not necessarily have finite gamma energy.
The Fourier projections f_L,f_H generally lose compact
support; only their Fourier components and windowed
pole linear functionals are used after the source
identity. Moreover, a nonzero compactly supported smooth
function cannot have F identically zero throughout an
open frequency band: Paley--Wiener analyticity forces
such an f to vanish. The high-only subspace therefore
has no nonzero canonical smooth test; the decomposition
must not be interpreted as a finite-codimensional split
of the compact-support domain. A fixed-window cutoff T
may be huge and
does not give any uniform all-conductor/all-window
positivity. No finite numerical checks, moments, or
kernel-to-zero identification can fill the low-band sign.

Canonical consumer:
- LowSchur.activePrimePowers and primeWeight;
- SourcePrimeCorrelation.correlation and energy;
- CharacterWindow.twistedPrime and
  CharacterSensitiveFrobeniusFloor.characterPrimeMass;
- OddRootProjection.parityKernel and
  GammaData.gammaConstant;
- OddMultiplierBounds.log_lower_le_periodicMultiplier,
  periodicMultiplier_eq_kernel_integral;
- GammaPhysicalReturn primitive and separate zeta
  physical-source/zero-sum statements, at their
  actual source proof candidate evidence level;
- FullFrequencyTail.signedPrimeFrequency,
  fullFrequencySymbol, highFrequencyCutoff,
  signedPrimeFrequency_le_characterPrimeMass,
  log_floor_le_fullFrequencySymbol,
  fullFrequencySymbol_ge_of_highCutoff,
  fullFrequencySymbol_nonneg_above_cutoff.

The Lean source statements are numbered WFFT-v1-01--04.
This note's Fourier/physical/pole claims WFFT-A--C
are WRITTEN only, not Lean declarations.

Prior art: E. Bombieri, Remarks on Weil's quadratic
functional in the theory of prime numbers, I,
Rend. Lincei 11 (2000), §§2--3 and Fourier/variational
analysis, https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0;
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20);
M. Suzuki, Weil's quadratic form via the screw
function, arXiv:2606.09096v3, §1. The repository
already contains an odd periodic high-complement
comparison. Our scope is all primitive complex
character sectors and exact zeta pole-frequency
leakage; novelty UNASSESSED.

Inspected grwtsk/math main
42210191a69cdd35046ff3f452fe9df8f0185610.
Pins Lean leanprover/lean4:v4.34.1; Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612;
unchanged. First FORMAL obligation is complete
pinned elaboration, then the full Fourier source
and zeta-pole leakage in Lean. First ARITHMETIC
obligation is the exact signed low-band inequality
for every primitive character, A, eta and test,
including the two zeta pole moments. That universal
sign remains UNPROVED and is not encoded as an
admissibility/certificate assumption.
