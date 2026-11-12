# WHSI-S2: pairBudget_gap_lower

Local attribution: grwtsk contributors. Date: 2026-11-12.
MSC2020: 11M26 (primary), 47A12, 26D15.
Maintained Lean module: ../WeilHighShiftInterference.lean
Fully qualified declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.HighShiftInterference.pairBudget_gap_lower
Source candidate Git blob: 2eb521e7f975e6b8baf39c4b4232e85e608c41a6

## Literal type

~~~lean
theorem pairBudget_gap_lower (a b c : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) :
    2 * a * b * (1 - c) ≤
      2 * (a + b) * ((a + b) - pairBudget a b c)
~~~

## Proof and assumptions

Use the exact difference of squares (a+b-pairBudget)*(a+b+pairBudget)=2ab(1-c), the nonnegative gap from WHSI-S1, and a+b+pairBudget<=2(a+b). Multiply the latter inequality by the nonnegative gap. Division by a+b is deliberately avoided, so zero-weight/ramified cases are sound.

## Arithmetic consumer and necessary return

The source note §5 uses this identity to lower bound the positive cross-prime saving from the combined Gram response. The finite all-high formula sums every mixed pair but has no unconditional RH/GRH sign conclusion. Any division in the written application has the explicit M_high>0 premise.

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
