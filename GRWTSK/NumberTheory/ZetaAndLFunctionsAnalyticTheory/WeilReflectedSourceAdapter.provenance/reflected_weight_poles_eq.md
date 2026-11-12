# reflected_weight_poles_eq

Fully qualified declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter.reflected_weight_poles_eq`.
Owning layer: source-exact Weil reconstruction / arithmetic source return.
MSC2020: 11M06, 11M26, 11M41, 42A38.

## Literal statement

```lean
theorem reflected_weight_poles_eq (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    W 0 + W 1 =
      (∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)) +
      (∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)) *
        conj (∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ))
```

## Complete primary analytical argument

Reflection of the integration variable identifies W-(s)=W+(1-s).
At s=0 this is integral C_f(r)e^(r/2); at s=1 it is integral C_f(r)e^(-r/2).
Both integrals are genuinely integrable by the native Laplace-integrability
result for supported L1 input. Their sum is the existing zeta pole integral.
Apply zeta_pole_correlation, which factors that integral into
M+ conj(M-)+M- conj(M+). Thus both orientations, their complex pairings,
and their signs are obtained from existing source integrals.

## Consumer and unresolved premises

Consumer: the generic finite rectangle theorem subtracts W-(0)+W-(1)
when q=1. This lemma supplies the literal cross-pole terms in its conclusion
and in completedZeta_reflected_rectangle_residue_identity.

## Falsification and alternative checks

The pole sum is 2 Re(M+conj(M-)), not |M+|^2+|M-|^2.
For any real odd smooth compact f with M+ nonzero, change of variables gives
M-=-M+, so the pole sum is -2|M+|^2. Such f exists by taking f(t)=t*b(t)
for a nonnegative nonzero even smooth bump. Hence dropping or making this
term positive would change the source. Both moments vanish for f=0, without
introducing pole-neutral restrictions on other tests.

Alternative checks are algebraic change-of-variable or conjugation checks,
not an independent analytical review or a second independent proof.

## Provenance, source identity and evidence

By grwtsk contributors. Dated 2026-11-12.
Local file: `../WeilReflectedSourceAdapter.lean`.
Source SHA-256: `c3bed1144362b7bcc9cde28d3c62f999f1b5ddae101be8f58a6cf23cb548fe5c`.
Inspected canonical source: grwtsk/math@af9b7a05afbf79d4def070fa96f9091b2f177160.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6828157075.

Written mathematical argument and Lean source candidate are supplied.
LEAN_ELABORATION, FULL_DEPENDENCY_BUILD, FRESH_KERNEL, TRANSITIVE_AXIOM_AUDIT,
INDEPENDENT_ANALYTICAL_REVIEW, NUMERICAL_CERTIFICATION: NOT_RUN.
Novelty: UNASSESSED; no originality or RH/GRH claim. No new research claim ID.
Text checks and finite scalar/integral sanity tests do not promote these statuses.
The required execution skill returned 404 at Noe main
`e8309df2b998cc050e80ca1dffd4a78bb83d9448`; no dependent proof job was dispatched.
No root imports, dependency pins, existing sources or workflows are changed.

## Primary-source comparison (2026-11-12)

This is a local consequence of the native source identities, not a copied
external Lean proof or a new proof of the classical explicit formula.
Native declarations and their individual provenance are authoritative here:
[correlation](https://github.com/grwtsk/math/blob/af9b7a05afbf79d4def070fa96f9091b2f177160/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilSourcePrimeCorrelation.lean),
[complex Fourier return](https://github.com/grwtsk/math/blob/af9b7a05afbf79d4def070fa96f9091b2f177160/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean),
[entire contour weight](https://github.com/grwtsk/math/blob/af9b7a05afbf79d4def070fa96f9091b2f177160/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilContourWeight.lean),
[dual arithmetic orientation](https://github.com/grwtsk/math/blob/af9b7a05afbf79d4def070fa96f9091b2f177160/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletWeilIntegrand.lean),
[finite rectangle](https://github.com/grwtsk/math/blob/af9b7a05afbf79d4def070fa96f9091b2f177160/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilRectangleResidues.lean).

The convention comparison is with Anthropic's `Zeta23.ThmE.literatureRHSchi`
and `Zeta23.ThmE.EF_lit_chi_L`, at
`anthropics/formal-math@16a5ce41304fcdaea4e0be7c132e1c361dc26da5`,
`zeta23/Zeta23/ThmE/EFLitChi.lean` and `MainChi.lean`.
Those use chi(n)k(log n)+conj(chi(n))k(-log n) and the plus Fourier transform.
The project uses conj(chi(n))*C_f(log n). Hence k(r)=C_f(-r), not k(r)=C_f(r),
is required for the same-character comparison. The original native orientation
adapter remains correct and unchanged. The native Fourier factorization and
both signed zeta pole products predate this addition.

The paper context is Alpöge--Furman, arXiv:2608.13637, Appendix A and the
primitive-character explicit-formula discussion; this record compares the exact
pinned Lean statements, not an independently audited complete paper proof.
Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
§2.1 and equations (3.17)--(3.20), supplies the native correlation convention.
No theorem from OpenAI's seven-eighths development is a dependency. No new
external toolchain or license-sensitive source copy is introduced.
Corpus-wide duplication and novelty assessment were not completed; empty code
search results are not evidence of absence.
