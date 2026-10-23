# PrimeNumberTheoremAnd Chebyshev-PNT port to the pinned theta source

Issue: #880. Parent: #871 / draft PR #873.
Branch: research/880-external-pntand-theta-port-v01.
Exact parent: d4074c8ea780f2fda485c5fae82e3c37d04e89de.

Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_PNT_PROOF_PORT_OPEN**.

## 1. Exact external source

The Prime Number Theorem + project by Alex Kontorovich, Terry Tao, and collaborators contains a Lean proof of the prime number theorem at the following **immutable historical source**:

- Repository: https://github.com/AlexKontorovich/PrimeNumberTheoremAnd
- Commit: \`a5040887e6bb24f7c201db8568e7755c138b3878\`
- File: \`PrimeNumberTheoremAnd/Consequences.lean\`
- Blob: \`6ca8f33be62e333e1a0e2774b78a35af9a57c049\`
- Declaration: \`chebyshev_asymptotic\`, in the neighborhood of line 506
- Prior input: \`WeakPNT\` from \`PrimeNumberTheoremAnd/Wiener.lean\`, blob \`06d464bfbf34b21360a8c725422d6c7d1cb4c2eb\`; the source declares \`Tendsto (fun N ↦ cumsum Λ N / N) atTop (𝓝 1)\`

The relevant external theorem asserts

\[
f(x)\sim x,\quad
f(x)=\sum_{\substack{p\le\lfloor x\rfloor\\p\ {\rm prime}}}\log p.
\]

In Lean syntax the external source writes

\`\`\`lean
theorem chebyshev_asymptotic :
  (fun x ↦ ∑ p ∈
     (Finset.Iic ⌊x⌋₊).filter Nat.Prime, Real.log p)
       ~[Filter.atTop] (fun x ↦ x)
\`\`\`

The external project has source-level theorem code. Its presence on GitHub and a \`leanok\` tag are not evidence that this packet has imported its kernel proof.

## 2. Actual dependency mismatch

The external project at the cited commit pins Mathlib revision

\`\`\`text
308445d7985027f538e281e18df29ca16ede2ba3
\`\`\`

and originates in the Lean 4.21-era toolchain. This repository pins

\`\`\`text
db584cd6d46c92f209a44c0f1c829460d327499d
\`\`\`

under Lean 4.33. They are **different mathematical library snapshots**. No direct source import, cherry-pick, or source-string declaration constitutes a trusted cross-version proof transport. We do not modify either toolchain, Mathlib pin, or Lake manifest.

A genuine source-level import would require a compatible port of the external proof and every transitive dependency, with exact theorem signatures and #100 replay/axiom audits. Until that exists, the PNT proof term is **unavailable locally**, even though the classical theorem is true.

## 3. Exact finite source comparison

The external project uses \`Finset.Iic ⌊x⌋₊\`, while the pinned Mathlib \`Chebyshev.theta\` uses the filtered interval \`Finset.Ioc 0 ⌊x⌋₊\`. Since a prime cannot be zero, the two filter sets are identical (the zero-inclusive \`Finset.Icc 0 n\` is equivalent to \`Iic n\` on natural numbers). The pinned Mathlib already proves

\`\`\`lean
Chebyshev.theta_eq_sum_Icc
\`\`\`

The new packet introduces a genuinely source-aligned finite sum and authors

\`\`\`lean
externalPNTAndPrimeIndex_eq_pinned
externalPNTAndPrimeLogSum_eq_theta
\`\`\`

with the all-real equality

\[
\boxed{f(x)=\theta(x)\quad\text{for every real }x.}
\]

This is an exact arithmetic identity about the imported Chebyshev objects, not an asymptotic or a heuristic.

## 4. Exact analytic proposition comparison

The packet defines the *proposition* \`ExternalPNTAndChebyshevAsymptotic\` with the same \`IsEquivalent Filter.atTop\` statement as the external declaration, now expressed over the locally pinned sum.

It proves the semantic theorem

\[
\boxed{
\operatorname{ExternalPNTAndChebyshevAsymptotic}
\iff
\operatorname{ThetaPrimeNumberTheorem}.
}
\]

The left side expresses \(\theta(x)\sim x\). The right side is the parent's explicit PNT epsilon statement

\[
\forall\epsilon>0\;\exists B\;\forall x\ge B:
|\theta(x)-x|\le\epsilon x.
\]

For the forward direction, \`Asymptotics.IsEquivalent.isLittleO\` and \`IsLittleO.def\` give eventual inequalities \(\|\theta(x)-x\|\le\epsilon\|x\|\). Restrict to \(x\ge\max(B,0)\), where \(\|x\|=x\).

For the converse, the epsilon inequality gives the same \`IsLittleO\` eventual bound after positive-domain restriction, and \`IsEquivalent\` is definitionally the corresponding little-o difference statement. No asymptotic proposition is silently promoted into pointwise equality; the finite source equality is proved separately.

## 5. Consuming the negative audit

The control module composes the source comparison with the existing parent's named-PNT endpoint:

\`\`\`lean
no_integerPsiCapacity_of_externalPNTAnd_proof
  (hExternal : ExternalPNTAndChebyshevAsymptotic) :
  ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity
\`\`\`

This retains the PNT theorem term as an explicit parameter. It is a conditional result about the mathematically **rejected fixed all-target quadratic psi-capacity**. It is NOT evidence for RH.

Previously, #871 isolated the classical theta PNT proposition; this packet now identifies the exact external formally authored PNT theorem and proves that its arithmetic source and logical claim are the correct input. The single remaining cross-project PNT obligation is to supply a real proof term at the pinned local revision.

## 6. Verification and hostile controls

The packet does NOT:
- import the external PNT theorem at an incompatible Mathlib revision;
- claim that a source commit or external \`leanok\` verifies the local theorem;
- assume an arbitrary external theorem with mismatching prime weights or endpoints;
- identify \(\theta=O(x)\) with \(\theta(x)\sim x\);
- claim a statement at finite cutoff extends automatically to all large \(x\);
- infer unconditional local \(\neg\) capacity or RH from a conditional port;
- infer that rejecting this one response rules out all smoothed/signed source models.

Source is drafted only. No Lean/Lake or external replay executed; no accepted proof receipt, axiom closure, merge, or research-priority claim. The PNT theorem's external and pinned dependency closures remain separately auditable.
