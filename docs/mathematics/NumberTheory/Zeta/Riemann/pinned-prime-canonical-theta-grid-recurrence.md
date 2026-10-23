# The canonical finite theta envelope closes the capacity-to-recurrence adapter

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**  
Issue: **#871**  
Parent issue: **#865**  
Parent draft PR: **#869**  
Pinned parent revision: \`eb4ba4fc81b057675d13729608de47d1a47a307d\`  
Route: RH-G01, negative audit of the fixed-uniform integer-psi capacity

This is a source-derived recurrence, **conditional on the already mathematically rejected capacity premise**. It does not supply that premise, prove RH, or establish an unconditional Lean negative theorem without importing the classical PNT.

## 1. The defect in an arbitrary envelope

The parent negative audit correctly left \`ActualPsiCapacityToEnvelopeRecurrence\` uninstantiated. Its profile permits **any** nonnegative sequence \`E_j\` that bounds the actual theta error, including arbitrarily inflated values. A pointwise bound for the actual next-octave theta values does not constrain a freely chosen inflated \`E_(j+1)\`.

This child fixes that mathematical defect using a finite attained maximum of the *same actual source values*:

\[
X_j=2^{j+1},\qquad
I_j=\{m\in\mathbf N:X_j\le m\le2X_j\},
\]

\[
\boxed{
E_j=\max_{m\in I_j}\bigl(|\theta(m)-m|+2\bigr).
}
\]

The finite set is nonempty, with \(X_j\in I_j\). The max is not an empty-set totalization or an unproved analytic supremum.

The extra \(+2\) is deliberate. For any real \(u\in[X_j,2X_j]\), let \(m=\lfloor u\rfloor\). Pinned Mathlib states \(\theta(u)=\theta(m)\), and \(0\le u-m<1\). Therefore

\[
|\theta(u)-u|+1
\le|\theta(m)-m|+|m-u|+1
\le|\theta(m)-m|+2
\le E_j.
\]

The final inequality consumes the actual finite-max upper-bound theorem. In particular, the existing pinned prime-coefficient envelope theorem applies **without changing the source amplitude**:

\[
A_{X_j}
=\sum_{\substack{X_j<p\le2X_j\\p\ {\rm prime}}}
\frac{\log p}{p}\bigl(|\theta(p)-p|+1\bigr)
\le L E_j,
\qquad L=2\log4.
\]

## 2. Actual capacity to canonical recurrence

Assume the original \`PinnedPrimeWeightIntegerPsiQuadraticResponseCapacityWithBudget C\` with a *single fixed* \(C\ge0\), for every sufficiently late dyadic stage and **all** integer targets \(m\in[2X_j,4X_j]\). This is the parent’s exact statement; it is not replaced by another abstract response.

For such \(m\),

\[
X_j|\psi(m)-m|\le C A_{X_j}^2
\le C L^2 E_j^2,
\]

hence

\[
|\psi(m)-m|\le C L^2 E_j^2/X_j.
\]

Pinned Mathlib supplies one universal real constant \(C_{\rm hp}\) with

\[
\psi(m)-\theta(m)\le C_{\rm hp}\sqrt m.
\]

Fix \(A_{\rm hp}=|C_{\rm hp}|\ge0\). Because \(m\le4X_j\),

\[
\sqrt m\le2\sqrt{X_j},
\qquad
|\theta(m)-m|\le|\psi(m)-m|+2A_{\rm hp}\sqrt{X_j}.
\]

Since \(X_j\ge1\), \(2\le2\sqrt{X_j}\), so

\[
|\theta(m)-m|+2
\le
C L^2\,\frac{E_j^2}{X_j}
+(2A_{\rm hp}+2)\sqrt{X_j}.
\]

These inequalities hold for every integer in the *entire* next source window \(I_{j+1}=[2X_j,4X_j]\). The attained finite maximum can now be taken on the left, proving

\[
\boxed{
E_{j+1}
\le
K\frac{E_j^2}{X_j}+H\sqrt{X_j},
}
\]

with

\[
K=C L^2,\qquad H=2A_{\rm hp}+2.
\]

Crucially, the Chebyshev correction \(H\) is **independent of the hypothetical coefficient budget \(C\)**. The pinned absolute prime-weight mass is reused without source alteration, sign erasure, endpoint deletion, or target fitting.

The source theorem is:

\`\`\`lean
integerPsiCapacity_to_canonicalThetaGridRecurrence
\`\`\`

It yields the earlier proposition \`SquareRootForcedQuadraticRecurrence\` on this specific canonical \(E\). It does not claim that every controlling envelope satisfies the recurrence.

## 3. Explicit named PNT boundary

The controls define **only a proposition**, \`ThetaPrimeNumberTheorem\`, with the exact classical claim

\[
\forall\epsilon>0,\ \exists B,\ \forall u\ge B,\quad
|\theta(u)-u|\le\epsilon u.
\]

This standard theorem is true in classical analytic number theory, but the child supplies **no kernel-accepted proof** of it. It is not inferred from Chebyshev’s much weaker \(\theta(u)=O(u)\) estimate. The pinned Mathlib Chebyshev module has the relevant definitions and unconditional prime-power bound, but is not treated as automatically containing this PNT theorem.

The elementary comparison is proved at authored-source level:

\[
\boxed{
\texttt{ThetaPrimeNumberTheorem}
\Longrightarrow
\texttt{SublinearDyadicEnvelope }E.
}
\]

Indeed, for \(\epsilon>0\), use \(\delta=\epsilon/4\) in PNT. At sufficiently large \(j\), every \(m\in I_j\) lies beyond the PNT threshold, and \(X_j>4/\epsilon\). Thus

\[
|\theta(m)-m|+2
\le\delta m+2
\le\frac\epsilon2 X_j+\frac\epsilon2 X_j
=\epsilon X_j.
\]

Finite maximality gives \(E_j\le\epsilon X_j\). The scale-growth witness uses the literal \(X_j=2^{j+1}\), with \(j\le X_j\), and does not postulate a growth lemma.

## 4. Composition with the already sourced unbounded prime jumps

The parent #865 source authored

\`\`\`lean
unboundedAdjacentPsiJump_of_bertrand :
  UnboundedAdjacentPsiJump
\`\`\`

using true Bertrand primes in \((2X_j,4X_j]\) and the exact identity

\[
(\psi(p)-p)-(\psi(p-1)-(p-1))=\log p-1.
\]

The parent #856 authored the abstract dyadic bootstrap:

\[
E_j/X_j\to0
\quad+\quad
E_{j+1}\le K E_j^2/X_j+H\sqrt{X_j}
\quad\Longrightarrow\quad
E_j=O(\sqrt{X_j}).
\]

The original source capacity plus the pinned feature ceiling would then imply the **uniform** bound \(|\psi(m)-m|\le KM^2\) for all integer next-octave targets. Bertrand prime jumps are unbounded, so this is a contradiction.

The new child controls compose these existing modules to author

\`\`\`lean
no_integerPsiCapacity_of_canonicalGridSublinear :
  SublinearDyadicEnvelope canonicalThetaGridEnvelope →
  ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity

no_integerPsiCapacity_of_namedPNT :
  ThetaPrimeNumberTheorem →
  ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity
\`\`\`

The *only* independent mathematical input remaining in the second implication is the named classical PNT theorem, not a separately guessed recurrence or jump certificate. Accepted Lean elaboration and exact-head replay remain open.

## 5. Mathematical decision and trust

This packet supports rejection of the **particular fixed, uniform, all-integer target** capacity of parent PR #851. A conditional RH implication whose source hypothesis is false does not advance RH. The negative conclusion is not a proof that all analytic or spectral nonlinear approaches are impossible.

Preserve as reusable source facts: the literal weighted prime window, exact signed theta/psi split, integerized floor correction, prime-power \(O(\sqrt x)\) bound, true Bertrand prime jumps, and scale-aware finite arithmetic comparisons.

No replacement capacity theorem is being proposed. A future supplier must genuinely change the mathematical response model (for instance a smoothed integrated transform with a separately proved inverse/endpoint reconstruction), then prove all new source and residual obligations.

## 6. Evidence

\`\`\`
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
FINITE_ATTAINED_THETA_GRID_ENVELOPE_DEFINED
REAL_THETA_STAIRCASE_CONTROL_DEFINED
ACTUAL_CAPACITY_TO_CANONICAL_RECURRENCE_DEFINED
CANONICAL_PNT_PROFILE_BRIDGE_DEFINED
NAMED_PNT_TO_NOT_CAPACITY_CONDITIONAL_DEFINED
UNCONDITIONAL_PNT_PROOF_NOT_IMPORTED
NO_LEAN_KERNEL_ACCEPTANCE
FIXED_INTEGER_PSI_CAPACITY_REJECTED_MATHEMATICALLY
NO_RH_CLAIM
\`\`\`

The source, controls and mathematics note are passive source artifacts. They are not Lean/Lake execution receipts, proof of a global analytic continuation or prime number theorem, or evidence for an unconditional RH theorem.

Source attribution: Chebyshev theta/psi and the von Mangoldt function; classical prime number theorem; Bertrand's postulate; pinned Mathlib \`Mathlib/NumberTheory/Chebyshev.lean\` at revision \`db584cd6d46c92f209a44c0f1c829460d327499d\`; local parent interfaces under issues #846, #856, #865.
