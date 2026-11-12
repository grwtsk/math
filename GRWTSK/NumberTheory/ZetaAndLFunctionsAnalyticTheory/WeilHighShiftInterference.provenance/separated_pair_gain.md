# WHSI-S3: separated_pair_gain

Local attribution: grwtsk contributors. Date: 2026-11-12.
MSC2020: 11M26 (primary), 47A12, 26D15.
Maintained Lean module: ../WeilHighShiftInterference.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.HighShiftInterference.separated_pair_gain
Source candidate Git blob: 2eb521e7f975e6b8baf39c4b4232e85e608c41a6

## Literal type

~~~lean
theorem separated_pair_gain (a b : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b) :
    a * b ≤
      2 * (a + b) * ((a + b) -
        Real.sqrt (a ^ 2 + b ^ 2 + a * b))
~~~

## Proof and assumptions

Specialize WHSI-S2 to c=1/2, the exact finite two-site shift correlation coefficient for distance d>=A/2 inside a support interval of width A. Then pairBudget(a,b,1/2)=sqrt(a²+b²+ab) by arithmetic. At a+b>0, this is precisely a guaranteed saving at least ab/(2(a+b)). The literal theorem also includes a=b=0 without division.

## Arithmetic consumer and necessary return

For any distinct active high prime powers n,m with |log n-log m|>=A/2, the physical source decomposition bounds their ORIGINAL two signed correlation contributions by sqrt(a_n²+a_m²+a_n a_m)*E(f). This establishes a strict saving if a_n,a_m>0; it leaves all remaining powers, conductor/gamma and both zeta pole orientations in the complete form. The corresponding physical transfer is WRITTEN rather than formalized.

The native source remains SourcePrimeCorrelation.correlation and energy,
CharacterWindow.twistedPrime, LowSchur.activePrimePowers and primeWeight.
The original primitive nonprincipal result is primitiveArithmeticValue;
the conductor-one source retains BOTH signed poles via
WeilGammaPhysicalReturn. No source-oriented signed character response,
finite prime-power inventory, gamma parity, conductor, or pole term
has been replaced.

## Prior art, source revision and evidence

The scalar inequality is elementary Hilbert/real algebra.
The actual L2 finite-chain supplier is the preceding canonical
WeilFiniteChainPrimeBound.md, a source-local consequence of
Fejer's numerical-radius inequality. Prior art: U. Haagerup
and P. de la Harpe, Proc. AMS 115 (1992) 371--379, Theorem 1,
DOI 10.1090/S0002-9939-1992-1072339-6.
Primary Weil arithmetic conventions: Connes--Consani--Moscovici,
Zeta Spectral Triples, arXiv:2511.22755v1, (3.19)--(3.20).
The source has been compared with actual statements, not
claimed as new mathematical literature.

Inspected canonical main: 81e43f712fb5b763dd677a969a22edb926203b25.
Lean toolchain: leanprover/lean4:v4.34.1;
mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.

SOURCE_PROOF_CANDIDATE. Lean elaboration and complete dependency
build NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom audit
NOT_RUN; certified whole-form numerical evaluation NOT_RUN;
independent analytical review NOT_RUN; novelty UNASSESSED.
No new research axiom, sorry/admit, weakened RH target, universal
sign theorem or primitive GRH claim.
