# Finite Euler-symbol perturbations: exact cancellation, stability, and a Hilbert–Pólya obstruction

**Authors:** grwtsk contributors.  
**Mathematical consumer:** [grwtsk/math #1849](https://github.com/grwtsk/math/issues/1849), with exact signed-constant bookkeeping in [#1819](https://github.com/grwtsk/math/issues/1819).  
**Canonical starting revision:** `grwtsk/math@aa5bb69812df00147a56d1b3a4b39f6e6ce7830e`. Lean 4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Lean mathematical source candidate:** [FiniteEulerSymbolCancellation.lean](FiniteEulerSymbolCancellation.lean).  
**Independent finite arithmetic check:** [verify_finite_euler_symbol_cancellation.py](../../../scripts/verify_finite_euler_symbol_cancellation.py).  
**Verification status:** finite exact Gaussian-rational 1,728-case comparison **PASS**. New Lean elaboration, kernel replay, transitive axiom audit **NOT_RUN**. The normalized analytic theorem below is a conventional mathematical derivation, not a Lean-checked theorem.

## Source comparison: why the logarithmic derivative matters

The byte-pinned public mirror `tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f` of Alpöge's announced 20 November 2026 Lean release contains:

- `lean/src/Formalism/StatementFL.lean` (Git blob `dc044005eb5db4e1c2a600cc70c8d8974c1aa8c9`), defining `Formalism.SchiC` and `Formalism.GchiC` as the complex smoothed von Mangoldt sum plus `x * (deriv L χ 1 / L χ 1)`;
- `lean/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean` (blob `599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1`), defining `An.sumLamChi`, `An.gChi` and the same logarithmic-derivative correction in the nontrivial-character case;
- `lean/src/Development/AutomorphicArithmetic/CharacterBoxes/Imprimitive.lean` (blob `97cbdce9fcc91c4f0dcc25fef62daf4c95724afa`), using the genuine finite Euler-factor relation in `LFunction_changeLevel` to transfer nonvanishing through primitive-character reduction.

These files are **source inspections**, not imported modules. The Alpöge mirror uses Lean 4.33.1 and incompatible Mathlib; no cross-pin replay was performed here. The Lean and Mathlib communities announced independent checks of the genuine RH and Dirichlet GRH theorems on November 21, 2026. The existing proof of RH is not a proof of an independent prime-Jacobi spectral realization.

## Theorem 1. Exact centered finite Euler-factor perturbation

Fix a prime `p≥2`, real `X≥1`, and `u,v∈ℂ` with `|u|,|v|≤1`. Set `H=max{h∈ℕ:p^h≤X}`, with `H=0` if `X<p`. Write the finite symbol statistic

\[
S_{p,u}(X)=(\log p)\sum_{h=1}^{H}u^h\left(\frac{X}{p^h}-1\right),
\]

and the local Euler function `L_{p,u}(s)=(1-u p^{-s})^{-1}`. Its logarithmic derivative satisfies

\[
\frac{L'_{p,u}(1)}{L_{p,u}(1)}=-\frac{u\log p}{p-u},
\]

since `|u/p|<1`. Define the **centered** local statistic

\[
G_{p,u}(X)=S_{p,u}(X)-X\frac{u\log p}{p-u}.
\]

By the geometric expansion `u/(p-u)=∑_{h≥1}u^h/p^h` we obtain the exact identity

\[
\boxed{G_{p,u}(X)-G_{p,v}(X)=
-(\log p)\left[\sum_{h=1}^{H}(u^h-v^h)
+X\sum_{h>H}\frac{u^h-v^h}{p^h}\right].}
\]

Both terms are essential; simply dropping the prime-power tail would lose the analytic counterterm. In closed rational form the tail is

\[
\sum_{h>H}\frac{u^h}{p^h}=\frac{u^{H+1}}{p^H(p-u)}.
\]

The Lean source supplies the generic **division-free algebraic core**: for `geometricPrefix(z,H)=∑_{h=1}^H z^h` and `finiteSmoothedSymbol(z,w,X,H)=X geometricPrefix(z,H)-geometricPrefix(w,H)`, it states

\[
\begin{aligned}
(1-z)\operatorname{finiteSmoothedSymbol}(z,w,X,H)-Xz
&=-(1-z)\operatorname{geometricPrefix}(w,H)-Xz^{H+1}.
\end{aligned}
\]

Take `z=u/p`, `w=u` and divide only after proving `1-z≠0`. The remaining prime/complex logarithmic derivative and norm bounds are mathematical/Lean interface obligations, not claimed checked in this file.

## Theorem 2. Uniform small remainder under *finite* Euler perturbations

From `|u^h-v^h|≤2`, the finite prefix has modulus at most `2H`. The tail has modulus at most

\[
2X\sum_{h>H}p^{-h}=\frac{2X}{p^H(p-1)}<\frac{2p}{p-1}.
\]

Since `H log(p)≤log X`, we obtain

\[
\boxed{
|G_{p,u}(X)-G_{p,v}(X)|
\le 2\log X+\frac{2p\log p}{p-1}.
}
\]

For a **fixed finite set `F` of primes**, arbitrary symbol changes of modulus at most one, and the compensating *relative logarithmic derivative* at `s=1`, summing yields

\[
\boxed{
|G_u(X)-G_v(X)|\le 2|F|\log X
+2\sum_{p\in F}\frac{p\log p}{p-1}.
}
\]

Thus any existing one-sided `O(X^θ)` or two-sided `O(X^θ)` estimate for `θ>0` is preserved by a finite Euler-factor modification, **provided** the analytic `L'/L` correction is changed consistently and the underlying L-function has the requisite nonvanishing at `s=1`. This is a stability theorem, **not** a producer of the original estimate.

Special case: an imprimitive Dirichlet L-function differs from its primitive-character L-function by finitely many Euler factors. The exact factors, conductor hypotheses, and `LFunction_changeLevel` identity remain part of the source, as do the no-new-zeros estimates in `Re(s)>0`. The trivial-character pole at `s=1` is a separate normalization; do not use the nontrivial `GchiC` formula there.

## Why the uncorrected perturbation appeared to be fatal

If `u=1`, `v=1-t` with fixed `0<t<1`, the *uncorrected* difference contains at least `t log(p)(X/p-1)`, growing linearly with `X`. The corresponding change to the local logarithmic derivative cancels the entire `X`-scale geometric sum, leaving only an `O(log X)` boundary effect. This is the precise reason the earlier uncorrected obstruction does **not** transfer to the corrected `An.gChi` statistic. The same cancellation is present in the existing Alpöge source; its reuse is not new independent proof of his upper bound.

## A second necessary check: order sensitivity of the Jacobi spectrum

For a zero-diagonal four-vertex Jacobi matrix with three positive bonds `(a,b,c)`, its characteristic polynomial is

\[
P_4(t)=t^4-(a^2+b^2+c^2)t^2+a^2c^2.
\]

The prime-ordered bonds `(2,3,5)` give `P_4=t^4-38t²+100`; exchanging the first two bonds gives `(3,2,5)` and `P_4=t^4-38t²+225`. These spectra differ, even though the unordered Euler product over the same primes is unchanged. This elementary countercheck does **not** invalidate the canonical increasing-prime ordering: it shows that an operator/xi determinant identification must explain how the additional path-order data enters or cancels. Reconstructing primes from root moments alone is not a determinant/zero-divisor equality.

Recent spectral literature (e.g., D. Yafaev, *Spectral theory of Jacobi operators with increasing coefficients*, J. Spectr. Theory 13 (2023)) proves absolute-continuity results under additional hypotheses. Those hypotheses have **not** been verified for the prime-bond sequence, so we make no claim here about pure point versus continuous spectrum of the actual prime-Jacobi closure.

## The complete dependency map and the first missing theorem

1. **Source arithmetic**: the actual nth primes define `J`; positive bonds, finite symmetry, Gram/Krylov and inverse determinants mathematically establish reconstruction. The newest 17 Lean source candidates await a real pin-matched build.
2. **Formal symbol transport**: recover all primes through any finite cutoff; unique factorization and character multiplicativity reconstitute `SchiC`. The present algebra supplies exact finite Euler-factor cancellation and finite-twist stability. These are unconditional mathematical reductions, not all-window estimates.
3. **Alpöge original source**: the full `Level.Gm` also contains weighted `An.gChi`, the analytic `L'/L` correction, character and conductor hypotheses, and the genuine arithmetic/theta-lift inequalities needed by `UpperTheory.Comparison₂.core_gm`. **Those inequalities are not supplied by symbol reconstruction or Jacobi positivity.**
4. **Formal RH through Alpöge**: the original release has an independently verified route `UpperTheory.FinalTheorems.everyCharacter → Formalism.VW.rh_of_every → Mathlib.RiemannHypothesis`. This is a complete *existing* proof route, **not an independent Hilbert–Pólya proof**.
5. **Independent Hilbert–Pólya**: to make the prime-only self-adjoint Jacobi closure a genuinely source-complete RH operator, additionally prove a spectral/regularized-determinant trace equality to the actual completed `xi` with gamma/poles/multiplicity/zero completeness and correct analytic domains; currently **OPEN**. Alternatively prove an operator-derived uniform all-scale source-sensitive bound strong enough for the independently specified Alpöge consumer; also **OPEN**.

**Next formal target:** define and prove a source-specific finite Euler-factor normalization lemma for an actual Dirichlet character in its original Lean 4.33.1 environment (or verified port), then build a formally justified map to the `grwtsk/math` moment reconstruction. Test the required analytic hypotheses rather than adding a new axiom. None of these tasks authorizes claiming a Hilbert–Pólya proof of RH.