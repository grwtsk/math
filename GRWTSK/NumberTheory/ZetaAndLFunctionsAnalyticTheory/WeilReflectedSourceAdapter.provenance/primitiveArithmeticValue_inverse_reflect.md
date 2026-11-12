# primitiveArithmeticValue_inverse_reflect

Fully qualified declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter.primitiveArithmeticValue_inverse_reflect`.
Owning layer: source-exact Weil reconstruction / arithmetic source return.
MSC2020: 11M06, 11M26, 11M41, 42A38.

## Literal statement

```lean
theorem primitiveArithmeticValue_inverse_reflect {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hprim : chi.IsPrimitive) (hnon : chi ≠ 1)
    (A : ℝ) (f : ℝ → ℂ) :
    primitiveArithmeticValue chi⁻¹
      (by simpa only [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
            using hprim)
      (by simpa only [ne_eq, inv_eq_one] using hnon) A (fun t => f (-t)) =
      primitiveArithmeticValue chi hprim hnon A f
```

## Complete primary analytical argument

For Rf(t)=f(-t), translation of Lebesgue measure gives
C_f(-r)=conj(C_f(r)); reflection gives C_Rf(r)=C_f(-r).
The same reflection gives E(Rf)=E(f). For the actual increment integral,
first set u=-t, then translate u=v+r. The difference becomes
f(v)-f(v+r), whose squared norm equals that of f(v+r)-f(v).
Thus every shift energy and every gamma density are unchanged, pointwise in r.
Inversion preserves conductor and the existing genuine parity. The source
coefficient identity conj(chi inverse(n))=chi(n), including nonunits, gives
Re(chi(n)conj(C_f(r)))=Re(conj(chi(n))C_f(r)). Each original finite summand,
and hence the entire signed prime expression, agrees. Substitution in the
original definition of primitiveArithmeticValue proves the displayed equality.

For a genuine supported smooth test, reflection preserves smoothness and
compact support in the SAME symmetric window. This domain fact is proved by
the private admissible_reflect_same_window lemma, not by an unproved density
claim. L2 integrability follows from continuous compact support. Gamma-density
integrability is equivalent under reflection since the densities are pointwise
identical. The algebraic equality also holds for the totalized definitions on
arbitrary f; that stronger syntactic domain does not establish integrability
for arbitrary abstract f.

## Consumer and unresolved premises

Consumer: the existing primitiveArithmeticValue_dual_orientation can now
be applied to the actual reflected test and returned to primitiveArithmeticValue
of the original character. This is not a replacement quadratic form. It does
not compare chi and chi inverse at the same unreflected complex test.

## Falsification and alternative checks

A source with nonreal correlations distinguishes the two character
orientations. With chi=i and correlation=i, Re(conj(chi)*correlation)=1,
whereas Re(chi*correlation)=-1. Reflection conjugates the correlation and
restores equality. Both parity values, nonunit character values, zero tests and
negative baseline constants are preserved. No sign is inferred from the equality.

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
