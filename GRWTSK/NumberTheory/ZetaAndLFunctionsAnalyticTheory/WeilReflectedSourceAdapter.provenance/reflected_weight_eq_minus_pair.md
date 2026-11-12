# reflected_weight_eq_minus_pair

Fully qualified declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter.reflected_weight_eq_minus_pair`.
Owning layer: source-exact Weil reconstruction / arithmetic source return.
MSC2020: 11M06, 11M26, 11M41, 42A38.

## Literal statement

```lean
theorem reflected_weight_eq_minus_pair (f : ℝ → ℂ) (A : ℝ)
    (hf : Integrable f volume) (hs : ∀ t, A < |t| → f t = 0) (s : ℂ) :
    (∫ r : ℝ, correlation f (-r) * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      (∫ t : ℝ, f t * Complex.exp (-Complex.I * spectralCoordinate s * (t : ℂ))) *
        conj (∫ t : ℝ, f t *
          Complex.exp (-Complex.I * conj (spectralCoordinate s) * (t : ℂ)))
```

## Complete primary analytical argument

The source support bound and L1 integrability are inherited by Rf.
Apply the EXISTING correlation_contour_weight_eq_reflected_product to Rf.
Its left side has C_Rf(r)=C_f(-r). In each right-hand Fourier integral set
u=-t. The plus Fourier transform of Rf is the minus Fourier transform F- of f.
This gives F-(gamma(s))*conj(F-(conj(gamma(s)))) at EVERY complex s.
The earlier native theorem has already proved integrability of the two twisted
factors and their convolution before applying Fubini. No exchange of a
nonintegrable iterated integral is assumed in this adapter.
For merely supported L1 input the inner convolution is defined almost
everywhere; the final rectangle consumer uses the canonical smooth compact
class, where native L2 facts ensure each correlation integral exists.

## Consumer and unresolved premises

Consumer: reflected_rectangle_residue_identity rewrites each actual
finite zero coefficient using this equality. Locations are the original
spectralCoordinate rho, and multiplicities remain zeroMultiplicity chi rho.
The native contour-weight entire theorem is applied to Rf; no analyticity
field is introduced. Infinite zero-sum convergence is not supplied here.

## Falsification and alternative checks

Off the line gamma need not be real. Replacing conj(F-(conj(gamma)))
by conj(F-(gamma)) changes the value. The purely imaginary coordinates of
possible real zeros are retained. Coefficients are arbitrary complex numbers;
no evenness, reality or simple-zero hypothesis occurs. Zero f and A=0 are valid.

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
