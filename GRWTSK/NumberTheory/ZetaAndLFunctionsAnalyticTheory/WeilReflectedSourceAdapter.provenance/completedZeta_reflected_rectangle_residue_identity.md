# completedZeta_reflected_rectangle_residue_identity

Fully qualified declaration:
`GRWTSK.NumberTheory.WeilQuadraticForm.ReflectedSourceAdapter.completedZeta_reflected_rectangle_residue_identity`.
Owning layer: source-exact Weil reconstruction / arithmetic source return.
MSC2020: 11M06, 11M26, 11M41, 42A38.

## Literal statement

```lean
theorem completedZeta_reflected_rectangle_residue_identity
    (T : ℝ) (hT : 0 < T)
    (hheight : ∀ s : ℂ, |s.im| = T → completedRiemannZeta s ≠ 0)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    let F := fun z : ℂ => ∫ t : ℝ, f t * Complex.exp (-Complex.I * z * (t : ℂ))
    let Mp := ∫ t : ℝ, f t * (Real.exp (t / 2) : ℂ)
    let Mm := ∫ t : ℝ, f t * (Real.exp (-t / 2) : ℂ)
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
      boundaryIntegral (-1) 2 (-T) T (fun s => W s * logDeriv completedRiemannZeta s) =
      (∑ rho ∈ heightWindow chi hprim T,
        (zeroMultiplicity chi rho : ℂ) *
          (F (spectralCoordinate rho.1) * conj (F (conj (spectralCoordinate rho.1))))) -
        (Mp * conj Mm + Mm * conj Mp)
```

## Complete primary analytical argument

Specialize reflected_rectangle_residue_identity to the literal character
1 of modulus 1. Use the existing isPrimitive_one_level_one and
completedLFunction_modOne_eq to identify the completed source with
completedRiemannZeta, including the given height-avoidance statement.
The q=1 branch reduces to the sum of BOTH cross-pole products, subtracted
from the unchanged finite multiplicity-weighted zero sum. No nonprincipal
arithmetic theorem is instantiated at the principal character.

## Consumer and unresolved premises

Consumer: the conductor-one branch of the original RH/primitive-GRH
explicit-formula route. It provides a separate actual zeta boundary identity,
not a fictitious pole-free chi=1 use of primitiveArithmeticValue.
The original analytically continued zero target and the eventual Weil-criterion
return still require their full source/limit and sign arguments.

## Falsification and alternative checks

Setting chi=1 in the nonprincipal consumer would violate its hypotheses;
this theorem instead uses the pole-inclusive generic rectangle result.
The negative-pole example with a real odd smooth test remains applicable.
Neither pole is totalized away, and neither is replaced by an absolute square.
The old completion is not multiplied by a new conductor or entire factor.

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
