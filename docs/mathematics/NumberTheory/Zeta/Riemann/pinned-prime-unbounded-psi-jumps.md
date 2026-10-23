# Unbounded adjacent Chebyshev-psi jumps on next dyadic octaves

Issue: #865. Parent: #856 / draft PR #861.
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**.

## Bounded source supplier

The parent no-go consumes \`UnboundedAdjacentPsiJump\`: for every real \(D\) and every late-stage \(j_0\), there is \(j\ge j_0\) and adjacent integers \(m,m+1\) in the same next octave satisfying

\[
2D < |\psiError(m+1)-\psiError(m)|.
\]

The child module now authors a proof using the *literal pinned* Chebyshev psi staircase, von Mangoldt prime value, Bertrand's theorem, and \(\log 2>0\). No PNT, RH, zero-density or numerical approximation enters this supplier.

## Exact prime jump

At a prime \(p\), the finite staircase identity is

\[
\psi(p)-\psi(p-1)=\Lambda(p)=\log p.
\]

The \(-1\) arises **only** when subtracting the consecutive integer arguments:

\[
\boxed{\psiError(p)-\psiError(p-1)=\log p-1},
\qquad \psiError(u)=\psi(u)-u.
\]

Source declarations: \`chebyshevPsi_nat_prime_jump\` and \`psiError_nat_prime_jump\`.

## Arbitrarily late dyadic prime

The actual source convention \(X_j=2^{j+1}\) yields

\[
2X_j=2^{j+2}, \qquad \log(2X_j)=(j+2)\log2.
\]

Since \(\log2>0\), this tends to infinity. At any sufficiently late stage, apply \`Nat.exists_prime_lt_and_le_two_mul\` with \(n=2X_j\). It supplies

\[
2X_j<p\le4X_j,\quad p \text{ prime}.
\]

For any real threshold \(B\), the stage can be chosen late enough that \(B<\log(2X_j)<\log p\). Take \(B=2D+1\) and \(m=p-1\). Then

\[
2X_j\le m,\qquad m+1=p\le4X_j,
\]

so both adjacent integers are *in the same next octave*. Moreover,

\[
|\psiError(m+1)-\psiError(m)|
=|\log p-1|\ge\log p-1>2D.
\]

The source declaration \`unboundedAdjacentPsiJump_of_bertrand\` matches the parent's original \`UnboundedAdjacentPsiJump\` exactly.

## Conditional no-go consumer

The source-bound controls use the concrete jump term to specialize the parent conditional contradiction:

\`\`\`lean
fixed_integerPsiCapacity_rejected_given_PNT_and_recurrence
integerPsiCapacity_rejected_given_PNT_and_recurrence
\`\`\`

Their only remaining mathematical premises are:

- a PNT-sourced current-octave theta envelope satisfying the parent \`PNTThetaOctaveProfile\`;
- the theorem converting the *actual* integer psi response-capacity premise into the recurrence for that envelope.

Both remain **OPEN** in this Lean packet. This child does not construct an unconditional kernel-accepted \`¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity\` theorem.

## Hostile controls

The prime jump of \(\psi\) is \(\log p\), not \(\log p-1\). A single prime does not prove unboundedness. Bertrand is used only on its proven interval, not on an invented shorter one. The lower endpoint for \(m=p-1\) is checked, not assumed. The source does not derive PNT or the quadratic recurrence from Bertrand.

The parent mathematical route remains **REJECTED_ROUTE** because the classical contradiction is valid; the submitted Lean proof status is still **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED**. Retain the independent signed source identities and residual bounds for alternative arithmetic constructions.

## Source provenance

- Pinned \`Mathlib/NumberTheory/Bertrand.lean\`, theorem \`Nat.exists_prime_lt_and_le_two_mul\`.
- Pinned \`Mathlib/NumberTheory/Chebyshev.lean\`, definition \`Chebyshev.psi\`.
- Pinned \`Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean\`, theorem \`ArithmeticFunction.vonMangoldt_apply_prime\`.
- Repository \`PinnedPrimeWeightPsiCapacityNoGo.lean\`, original \`UnboundedAdjacentPsiJump\`.
- Mathlib revision \`db584cd6d46c92f209a44c0f1c829460d327499d\`.

No Lean/Lake execution, kernel replay, PR merge, or RH claim is represented by this source packet.
