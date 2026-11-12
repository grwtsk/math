# reflected_rectangle_residue_identity

Fully qualified declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter.reflected_rectangle_residue_identity`.
Owning layer: source-exact Weil reconstruction / arithmetic source return.
MSC2020: 11M06, 11M26, 11M41, 42A38.

## Literal statement

```lean
theorem reflected_rectangle_residue_identity {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive)
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → DirichletCharacter.completedLFunction chi s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    let F := fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (-Complex.I * z * (t : ℂ))
    let Mp := ∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)
    let Mm := ∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T
        (fun s => W s * logDeriv (DirichletCharacter.completedLFunction chi) s) =
      (∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) *
          (F (spectralCoordinate rho.1) * conj (F (conj (spectralCoordinate rho.1))))) -
        (if q = 1 then Mp * conj Mm + Mm * conj Mp else 0)
```

## Complete primary analytical argument

For the given canonical smooth compact f, first prove L1 integrability
and the pointwise support bound from tsupport. Reflection preserves the SAME
smooth class and window (closure of the reflected nonzero support is contained
in the original closed symmetric interval). Apply the existing entire-weight
theorem to Rf; C_Rf=C_f(-r) identifies its weight with W-.
Now apply weil_rectangle_residue_identity to the SAME primitive character chi,
positive height T and the stated original completed-source height avoidance.
It yields the full normalized boundary integral as the multiplicity-weighted
finite sum of W-(rho) minus the two q=1 pole coefficients. Substitute
reflected_weight_eq_minus_pair in each finite summand and
reflected_weight_poles_eq in the pole slots. No zero or residue is added,
projected, removed or divided by its multiplicity.

## Consumer and unresolved premises

This consumes the actual finite residue theorem, not just an abstract
form interface. Together with reflected_prime_legs_eq_twistedPrime and
primitiveArithmeticValue_inverse_reflect it fixes the same-character source
convention for the existing finite arithmetic-line/inversion route.
The height-avoidance premise is the existing source-selected rectangle
condition; it is not asserted for every positive height. Removing both
horizontal edges, controlling vertical tails, evaluating the gamma and prime
integrals, and passing to the infinite zero sum remain separate obligations.
The theorem does NOT identify the complete infinite zero sum with Q, and
certainly does not prove positivity of Q.

## Falsification and alternative checks

Retain negative/zero ordinates, nonreal gamma coordinates, multiple zeros,
both character parities and q=1. The rectangle has positive orientation and
normalization (2*pi*i)^(-1), while a vertical-line dt expression has a different
normalization. Both pole residues have minus signs in the boundary identity.
Heights through zeros are excluded explicitly. No numerical contour evaluation
or universally nonnegative certificate has been performed.

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
