# Alpöge-style source-window transport without his final RH theorem

**Authors:** grwtsk contributors.  
**Mathematical source:** [AlpogeWindowSourceTransport.lean](AlpogeWindowSourceTransport.lean); original consumer [math #1828](https://github.com/grwtsk/math/issues/1828) and independent prime-Jacobi error program [math #1849](https://github.com/grwtsk/math/issues/1849).  
**Canonical local base:** grwtsk/math@14165a7035d14ab3d20d80396a0ba8f3b75cae52, root Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.  
**External source-only provenance:** Alpöge mirror tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f, Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Window.lean blob 099d96fec932b03a505ea79a81c45bcc3fbf0ea3 (Formalism.HC.HasWindows), ExplicitFormulaErrorOfHostConditions.lean blob ed60b4b997cd4703713660b185b9e43fd95559a1 (Level.Gm), and Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean blob 3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d (conditional Gm power bound). The upstream environment uses Lean v4.33.1 and an incompatible Mathlib pin; **not imported**. No theorem from Main.lean or FinalTheorems is used.

## Exact theorem

The original predicate is

\[
HasWindows(S,a)\ \Longleftrightarrow\
\forall y:\mathbb R,\ \exists Y\ge y,\
\forall x\in[Y,Y^a],\ x\in S.
\]

The local HasPowerWindows F θ a is exactly this predicate with
\(S=\{x:F(x)\le x^\theta\}\). This is a mathematical predicate correspondence, not a checked cross-edition Lean equivalence.

**Window transfer theorem.** Suppose
HasPowerWindows F θ a, and for some fixed \(x_0\),

\[
|G(x)-F(x)|\le E(x)
\le x^{\theta'}-x^\theta
\quad\text{for every }x\ge x_0.
\]

Then HasPowerWindows G θ' a.

**Proof.** Given any lower start y, apply the F-window hypothesis to \(\max(y,x_0)\). It supplies \(Y\ge\max(y,x_0)\) and all \(x\in[Y,Y^a]\) satisfy \(F(x)\le x^\theta\). Since \(x\ge x_0\), the full error/margin bound gives
\(G(x)\le F(x)+|G(x)-F(x)|
\le x^\theta +x^{\theta'}-x^\theta=x^{\theta'}\).
Use the same Y. \(\square\)

The three Lean theorem candidates formalize (1) the elementary one-sided ceiling plus error margin, (2) the full quantified window transfer, and (3) exact-source congruence. They require no arithmetic facts, no spectral input, no RH hypothesis, and do not rename an unproved proposition as an established zero-free region.

## Nontrivial analytic instantiation from a finite Euler-symbol perturbation

Let \(\theta>0\), \(\eta>0\), and \(|F(x)-G(x)|\le C\log x\) for \(x\ge e\), with \(C\ge0\). The elementary inequality \(e^u\ge1+u\) yields

\[
x^{\theta+\eta}-x^\theta
=x^\theta(e^{\eta\log x}-1)
\ge\eta x^\theta\log x.
\]

Take \(x_0\ge e\) so that \(x^\theta\ge C/\eta\) for all \(x\ge x_0\). Thus
\(C\log x\le x^{\theta+\eta}-x^\theta\) above \(x_0\), and the quantified transport proves

\[
HasWindows\{F(x)\le x^\theta\},a
\Longrightarrow
HasWindows\{G(x)\le x^{\theta+\eta}\},a.
\]

The [finite corrected Euler-symbol theorem](FiniteEulerSymbolCancellation.md) bounds any fixed finite Euler-factor change by \(O(\log x)\) **only when its local logarithmic derivative correction is preserved**. This gives a source-specific application to Alpöge's nontrivial character branches An.gChi within Level.Gm, with exact finite character weights. The zeta Gz branch is held fixed; a generic modified character or conductor is not identified with a genuine Dirichlet character automatically.

## What the theorem does not supply

This is a proof of **stability of source inequalities**, not the source inequality itself. The principal one-sided estimate of Alpöge's core_gm still depends on its EAtH and CoreAtH analytic/arithmetic hypotheses. The actual finite-window selector and character-family construction remain separate. Level.FormBAt (a zero-free criterion) must retain its exact hypotheses; there is no invocation of the final RH or every-character result.

An actual Lean compatibility theorem that identifies the locally defined window predicate with upstream Formalism.HC.HasWindows is NOT_RUN; so are compilation, axiom audit and independent fresh kernel replay of the three new Lean declarations. The full proof of the logarithmic-to-power absorption appears here and in [PrimeJacobiMomentErrorBudget.md](../../Combinatorics/GraphTheory/PrimeJacobiMomentErrorBudget.md); its Mathlib analytic lemma is a separate formalization step.

**Novelty:** the window shape and eventual transport are elementary, with no global novelty claim. The source-specific integration with certified arithmetic reconstruction and the relevant weighted character family is a new maintained project target, pending external prior-art review.
