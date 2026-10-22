# Inclusive weak PNT source transport: von Mangoldt to Chebyshev theta

Issue: #885. Parent: #880 / draft PR #883.  
Base revision: 87f3f24fb038f63a825c18a4911fabc1b7fc950f.  
Status: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_WEAK_PNT_PROOF_PORT_OPEN**.

## The smaller external arithmetic theorem

The [Prime Number Theorem + Project](https://github.com/AlexKontorovich/PrimeNumberTheoremAnd) by Alex Kontorovich, Terry Tao, and collaborators contains a formally authored *weak PNT* conclusion. At historical revision

    a5040887e6bb24f7c201db8568e7755c138b3878

the source \`PrimeNumberTheoremAnd/Consequences.lean\` (blob \`6ca8f33be62e333e1a0e2774b78a35af9a57c049\`) declares

\`\`\`lean
theorem WeakPNT' :
  Tendsto
    (fun N : ℕ => (∑ n ∈ Finset.Iic N, Λ n) / (N : ℝ))
    Filter.atTop (nhds 1)
\`\`\`

Its predecessor \`PrimeNumberTheoremAnd/Wiener.lean\` (blob \`06d464bfbf34b21360a8c725422d6c7d1cb4c2eb\`) declares \`WeakPNT\` from its Wiener–Ikehara formulation:

\`\`\`lean
Tendsto (fun N : ℕ => cumsum Λ N / (N : ℝ))
  Filter.atTop (nhds 1).
\`\`\`

The \`WeakPNT'\` source uses the predecessor plus a finite endpoint estimate \(\Lambda(N)/N\to0\). That is a significantly smaller final theorem statement than the later \`chebyshev_asymptotic\` result. It still carries the predecessor's analytic Wiener–Ikehara proof requirements, so identifying its name does not circumvent the hard PNT theorem.

**Source compatibility:** The external project pins Mathlib \`308445d7985027f538e281e18df29ca16ede2ba3\` (Lean 4.21-era) while \`grwtsk/math\` pins Mathlib \`db584cd6d46c92f209a44c0f1c829460d327499d\` (Lean 4.33). The source statements are inspected. Their proof terms have NOT been ported or accepted in this repository.

## Exact finite source identity

The actual pinned Mathlib Chebyshev psi convention is

\[
\psi(x)=\sum_{0<n\le\lfloor x\rfloor}\Lambda(n).
\]

The external \`WeakPNT'\` uses the inclusive sum

\[
S(N)=\sum_{0\le n\le N}\Lambda(n).
\]

The Mathlib theorem \`Chebyshev.psi_eq_sum_Icc\` and the natural-number equality \(\operatorname{Iic}N=\operatorname{Icc}(0,N)\) identify the two:

\[
\boxed{S(N)=\psi(N)\quad\text{for every }N\in\mathbf N.}
\]

This includes \(N=0\). The latter is a finite-sum identity, not a claim that ordinary division by \(N=0\) is defined. Lean's totalized field division allows the limit expression to remain defined at zero, and the \(\operatorname{atTop}\) limit is insensitive to that initial value.

The Lean source defines \`externalPNTAndInclusiveMangoldt\` and authors \`externalPNTAndInclusiveMangoldt_eq_psi_natCast\`.

## Weak PNT implies full real Chebyshev asymptotic

The **unproved external-source proposition in the local file** is

\[
\operatorname{ExternalPNTAndWeakPNTInclusive}:\
\lim_{N\to\infty}\frac{S(N)}N=1.
\]

The locally authored conditional transport follows the exact chain:

1. Source identity gives \(\psi(N)/N\to1\).
2. Mathlib \`Asymptotics.isEquivalent_of_tendsto_one\` yields \(\psi(N)\sim N\) along natural numbers.
3. \(\lfloor x\rfloor\to\infty\) and \(\lfloor x\rfloor\sim x\), so \(\psi(\lfloor x\rfloor)\sim x\).
4. Pinned \`Chebyshev.psi_eq_psi_coe_floor\` gives \(\psi(x)\sim x\) for real \(x\to\infty\).
5. Pinned \`Chebyshev.isBigO_psi_sub_theta_sqrt\` gives \(\psi(x)-\theta(x)=O(\sqrt x)\). Mathlib square-root growth and inversion imply \(\sqrt x=o(x)\). Therefore \(\psi(x)-\theta(x)=o(x)\).
6. Subtracting this lower-order term yields \(\theta(x)\sim x\).
7. The prior issue #880 proof of equivalence between the literal theta asymptotic and the epsilon statement gives the local \`ThetaPrimeNumberTheorem\`.

Thus the new bounded Lean declaration has the exact intended form

\`\`\`lean
externalPNTAndWeakInclusive_to_thetaPNT
  (hWeak : ExternalPNTAndWeakPNTInclusive) :
  ThetaPrimeNumberTheorem
\`\`\`

and its consumer is

\`\`\`lean
no_integerPsiCapacity_of_externalWeakPNT
  (hWeak : ExternalPNTAndWeakPNTInclusive) :
  ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity
\`\`\`

Neither consumes RH. Both are **conditional**, because \`hWeak\` is not constructed in the local repository.

## What is and is not closed

**The mathematical/semantic source bridge** now reduces the PNT-facing premise needed by the rejected uniform integer-psi capacity audit to the weak inclusive von Mangoldt limit. The complete finite source identity and each analytic implication are authored using pinned declarations. These are reusable even if an alternative local PNT proof is selected.

**The effectful/formal proof supplier remains open.** The historical \`Wiener.lean::WeakPNT\` and \`Consequences.lean::WeakPNT'\` were not compiled at this repository's Lean/Mathlib revision. The project must supply a compatible transitive theorem proof and a source-bound #100 replay/axiom audit before reporting an unconditional kernel-checked \(\neg\) capacity theorem.

In particular: A GitHub source file, an external \`leanok\` tag, or a source-defined proposition is *not* an accepted proof. A cross-version translation is not validated merely because names and proposition strings agree. No parent proof or dependency pin is mutated by this packet.

## Correct negative research disposition

The fixed all-target integer-psi capacity from #846 remains **mathematically rejected** by classical PNT plus unbounded prime jumps. This packet sharpens its formal negative audit only; it does not prove RH or refute other nonlinear, smeared, or signed detector constructions. The accepted source-target identities, higher-prime-power square-root correction and floor sawtooth residual remain reusable.

## Replay and hostile controls

The controls retain \`N=0\` in the finite sum but avoid a nonzero-denominator claim at zero. They distinguish \(\psi(N)/N\to1\) from pointwise \(\psi(N)=N\), preserve \(\psi(x)=\psi(\lfloor x\rfloor)\) without claiming \(\lfloor x\rfloor=x\), and require the true \(\psi-\theta=O(\sqrt x)\) estimate for the theta transport. They explicitly reject direct proof import across incompatible Mathlib revisions, automatic PNT admission, or any RH assertion.

Evidence: \`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEAK_PNT_PROOF_PORT_OPEN / NO_RH_CLAIM\`.
