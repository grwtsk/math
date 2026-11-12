# GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.tendsto_mul_weighted_logDeriv

Local attribution: grwtsk contributors. Date: 2026-11-11.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit, and independent review: NOT_RUN. Imported statuses unchanged.
Math base `461230660ec980d4be6a0e00927d658d237e6866`; Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6811529981.

## Source identity and exact statement

Maintained file: [../LogarithmicPrincipalPart.lean](../LogarithmicPrincipalPart.lean).
Git blob `344feefcd90eb45479a3f887d157dfc4ca3df5a6`; SHA-256 `66b6d36d201033fef505b747ffd7fb9a1e6233566d5e7331f70d00774b33efe8`.

```lean
theorem tendsto_mul_weighted_logDeriv {f g W : ℂ → ℂ} {a : ℂ} (n : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfg : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ n * g s)
    (hW : ContinuousAt W a) :
    Tendsto (fun s => (s - a) * (W s * logDeriv f s))
      (𝓝[≠] a) (𝓝 ((n : ℂ) * W a))
```

## Primary correspondence and consumer

ContinuousAt W a is retained. This is a punctured limit for any continuous weight; it is the usual residue coefficient when the weight is holomorphic. No contour integral or meromorphic assertion for an arbitrary merely continuous weight is made.

Chris Birkbeck, [Mathlib/Analysis/Calculus/LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), `logDeriv_apply`, `logDeriv_congr_nhdsNE`, `logDeriv_fun_mul`, `logDeriv_fun_zpow`, and the comparison theorem `AnalyticAt.tendsto_mul_logDeriv_simple_zero`; blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`. Apache-2.0.

Complete argument and falsification scope: [README.md](README.md).
This is a local consequence/adaptation, not a claim of novel paper formalization.
No transitive axiom report exists. Proposed query below is UNEXECUTED:

```lean
#print axioms GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.tendsto_mul_weighted_logDeriv
```
