# Zeta spectral GRH bridge: source boundary and verification state

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.

Source module:
`GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean`

Source integration commit:
`13d3e49454c23f825ce730be569856daea2cb3e4`

Source blob:
`0c69c768eca979698ece63c39ba0b9a50a33ba3a`

## Exact scope

This module specializes the existing abstract spectral zero-cover interface to
the repository's actual nontrivial Riemann-zeta zero predicate.

The base problem is:

- zero predicate:
  `GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion.ActualZetaZero`;
- critical predicate:
  `z.re = (1 : ℝ) / 2`.

The resulting
`zetaZeroProblem.Hypothesis` is proved definitionally equivalent to the
existing `ZetaCriticalPlacement` proposition.

No generalized L-function zero family is constructed. No spectral cover is
constructed. No RH or GRH theorem is proved.

## New declarations

- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaZeroProblem`
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaZeroProblem_hypothesis_iff`
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_implies_generalized_of_spectralCovers`
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.generalized_implies_zetaCriticalPlacement_of_member_specialization`
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_iff_generalized_of_spectralCovers_and_specialization`
- `GRWTSK.RiemannHypothesis.ZetaSpectralGRHBridge.zetaCriticalPlacement_transports_and_splits_ordinates`

## Exact hypotheses retained

The forward zeta-to-generalized theorem requires a
`SpectralCoverFamily zetaZeroProblem family`. For every generalized family
member, that supplier must provide an actual zero map which:

1. maps each generalized zero to an actual selected Riemann-zeta zero; and
2. pulls zeta critical-line placement back to the generalized critical locus.

The reverse theorem requires an actual
`BaseSpecialization zetaZeroProblem (family i0)` for one family member. This
contains:

1. an embedding of actual zeta zero objects into that generalized zero type;
2. preservation of the zero predicate; and
3. reflection of generalized criticality back to zeta criticality.

Therefore the equivalence theorem is a **conditional structural equivalence**.
It does not assert unconditional `GRH = RH`.

The combined theorem
`zetaCriticalPlacement_transports_and_splits_ordinates` additionally requires
an actual `DynamicSpectralCover` on the zeta source and an explicit
`ZetaEventualSoficSuppliers` value. The rational-to-eventual-sofic,
algebraic-on-critical-line-to-eventual-sofic, and non-eventual-soficity fields
remain independent unresolved premises. GRH/RH placement alone does not imply
irrationality or transcendence.

## Consumed source identities

This increment imports existing local source only:

- `GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean`, current
  abstraction for dynamic partitions, finite-state presentation, spectral
  zero covers, and typed base specialization;
- `GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean`,
  blob `ef37ba716cdc5bc514ce17991be957f7a574b81a` at the inspected main
  snapshot, supplying `ActualZetaZero`, `ZetaCriticalPlacement`, actual
  ordinate predicates, and the eventual-sofic conditional criterion.

No external paper theorem is newly imported by this module. Previously recorded
Rodgers--Tao, Huffman, OpenAI quasi-RH, and symbolic-dynamics sources remain
context for their own predecessor modules and are not promoted here.

## Classification

- **Imported local mathematics:** existing typed factorization, dynamic
  spectral-cover, and actual-zeta predicate interfaces.
- **Source proof candidates:** all six declarations listed above.
- **Kernel-verified bridges:** none claimed for this source commit.
- **Conditional interfaces:** spectral-cover family, base specialization,
  dynamic spectral process, arithmetic-to-eventual-sofic suppliers, and
  non-eventual-soficity.
- **Unresolved premises:** construction and verification of every concrete
  generalized zero map and specialization, plus the arithmetic/sofic
  suppliers.
- **Nonclaims:** no unconditional RH, GRH, RH=GRH, irrational zero ordinate,
  transcendental zero ordinate, 3/4 zero-free theorem, or spectral realization.

## Verification status

Actual status for source commit
`13d3e49454c23f825ce730be569856daea2cb3e4`:

- GitHub source creation: **performed**;
- exact source blob readback:
  `0c69c768eca979698ece63c39ba0b9a50a33ba3a`;
- `lake env lean GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean`:
  **NOT_RUN**;
- `lake build GRWTSK.NumberTheory.Zeta.Riemann.ZetaSpectralGRHBridge --wfail`:
  **NOT_RUN**;
- transitive dependency build: **NOT_RUN**;
- fresh kernel replay: **NOT_RUN**;
- transitive `#print axioms` / `sorryAx` / unsafe audit:
  **NOT_RUN / NOT_KERNEL_AUDITED**;
- external verification receipt: **unavailable**.

GitHub source readback and theorem inspection are not Lean elaboration or
kernel acceptance. The module remains outside any promoted verification status
until the pinned toolchain has actually checked it.
