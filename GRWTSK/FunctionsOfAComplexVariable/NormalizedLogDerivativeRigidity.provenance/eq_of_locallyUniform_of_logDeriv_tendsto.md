# Anchored source identification for an actual locally uniform limit

Local attribution: grwtsk contributors. Source authoring assistance: OpenAI ChatGPT.

Source: [NormalizedLogDerivativeRigidity.lean](../NormalizedLogDerivativeRigidity.lean).
Main declaration: `GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eq_of_locallyUniform_of_logDeriv_tendsto`.
Supporting declarations: `GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eqOn_of_logDeriv_eqOn_of_anchor` and `GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eq_of_logDeriv_eqOn_of_anchor`.
Source SHA-256: `ec30cebf8e029fe5a6089b229e42fd8f5c69f08bfde8d9875e64f6604a8dfe4c`.
Source Git blob: `27d9465ecbe0fe2aa155828195227603332de3ae`.
Inspected math base: `6cab1fb0725c00a9d06b112ffc215e3523396c50`; Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: https://github.com/grwtsk/math/issues/1805 ; research https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/53 .

## Quantifiers, hypotheses and exact conclusion

Let `F : ℕ → ℂ → ℂ` be an entire sequence actually converging locally uniformly on the whole plane to `f`. Let `g` be entire. Let `U` be open and preconnected, with `a ∈ U`. Assume both `f` and `g` are nonvanishing on `U`, every `F n a = g a`, and for every `z ∈ U`, `logDeriv (F n) z` tends to `logDeriv g z`. The conclusion is literal function equality `f = g` on all of `ℂ`, not equality of a sampled zero set or equality modulo an unspecified zero-free factor.

The nonvanishing of the limit on `U` is an explicit premise. The theorem does not derive it from pointwise convergence. It also does not prove local boundedness, existence of a locally uniform subsequence, or convergence of logarithmic derivatives from an arithmetic operator.

## Complete primary argument

Weierstrass convergence gives analyticity of `f`. At each point of `U`, where `f` is nonzero, locally uniform derivative convergence gives `logDeriv (F n) z -> logDeriv f z`. Uniqueness of limits identifies this value with `logDeriv g z`. The common anchor value passes to the limit.

On the open preconnected region, equality of logarithmic derivatives implies `f=c*g` for a nonzero constant `c`. The shared nonzero value at `a` forces `c=1`. Equality on the open region gives equality near `a`; the identity principle then identifies the entire functions on the whole plane. The two supporting declarations isolate these steps for reuse.

The quotient argument, differentiating `f/g`, is an alternative presentation of the same analytic mechanism, not a genuinely independent proof. No independent review is claimed.

## Dated prior-art and declaration comparison

These are standard uniqueness and convergence consequences. They are local compositions of inspected mathlib declarations, not a new source theorem or an adaptation imported from a paper:

- Chris Birkbeck / mathlib contributors, `logDeriv_eqOn_iff`, `Mathlib/Analysis/Calculus/LogDeriv.lean`, pinned blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`.
- Vincent Beffara / mathlib contributors, `TendstoLocallyUniformlyOn.differentiableOn` and `Complex.logDeriv_tendsto`, `Mathlib/Analysis/Complex/LocallyUniformLimit.lean`, pinned blob `b4a9947620884b5c98eb2aefbbf1a9e39f34244a`.
- mathlib contributors, `AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq`, available through `Mathlib/Analysis/Analytic/IsolatedZeros.lean` and its imports; inspected entry file blob `ba1d64f1edd41c4387fff822c74e7acfb0af50c1`.

Primary-source prefix: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/ . Comparison performed November 11, 2026. Upstream source keeps its authorship and Apache-2.0 license. No upstream proof text is copied.

The motivating paper is the November 10, 2026 edition of *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, section 20.4 / RP-OC-08. Its identity and digest are in [anchor provenance](../FiniteRealSpectrumAnchor.provenance/anchorMass_eq_neg_im_logDeriv_div.md). The theorem here is a local derivation supporting that research target, not a theorem attributed to the paper.

## Hostile cases and remaining source-return obligations

Dropping the common anchor leaves the arbitrary constant multiplier. Allowing zeros in the comparison region invalidates use of the nonvanishing logarithmic-derivative theorem. Pointwise function convergence is not substituted for locally uniform convergence. Nonvanishing at one point is not silently substituted for nonvanishing throughout `U`.

The intended consumer takes `g` to be the correctly completed, pole-removed arithmetic function normalized at spectral coordinate `3 I/2`, corresponding to `s=2`. No such primitive-Dirichlet adapter is introduced here. It must preserve conductor power, parity/gamma factors, nonreal-character duality, both pole orientations, prime-power terms, the actual test domain and multiplicity. Proving the arithmetic logarithmic-derivative approximation without assuming GRH remains the substantive open supplier obligation.

Full normal-family reconstruction, Hurwitz/Rouche zero arguments, the full retained-lattice cutoff obstruction and any GRH conclusion remain outside this source tranche.

## Verification

Source proof candidate. Novelty `UNASSESSED`; no novelty claim. Elaboration, fresh kernel replay, transitive axiom audit, independent analytic review and arithmetic certification: `NOT_RUN`. Commands and the unavailable canonical proof-automation skill are recorded in the linked anchor provenance. No proof job was dispatched and no passing CI result is asserted.
