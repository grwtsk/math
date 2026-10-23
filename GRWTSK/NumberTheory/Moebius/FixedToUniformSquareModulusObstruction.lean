/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #576. Direct stacked parent: draft PR #573 at
`55288fef3e3a167bac513e118cfbde363d6bf51e`.

Provenance: the core quantifier witness is a current-stack transplant of the
mathematical idea already source-drafted in issue #441 / PR #454
(`parameterDependent_doesNotImply_uniform`).
-/
import GRWTSK.NumberTheory.Moebius.SquareModulusAPConjectureJunction
import Mathlib.Tactic.Omega

/-!
# Fixed-scope constants do not become growing-family constants by logic alone

The square-modulus AP junction distinguishes a theorem proved for each fixed
choice of affine/congruence data from one theorem with a single constant
uniform over a growing family.

This module records the minimal hostile witness behind that distinction.
For a relation `P parameter constant`, the statements

`forall parameter, exists constant, P parameter constant`

and

`exists constant, forall parameter, P parameter constant`

have different quantifier order.  The implication from the first to the
second is false in general.

This is a logical scope obstruction only.  It does not refute the possibility
that additional analytic structure proves a genuine uniformity theorem.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
namespace SquareModulusAPConjectureJunction

/-- Pointwise parameter control: each parameter may use its own witness. -/
def PointwiseExistsBound
    {Parameter Constant : Type*}
    (P : Parameter → Constant → Prop) : Prop :=
  ∀ parameter, ∃ constant, P parameter constant

/-- Uniform parameter control: one witness must work for every parameter. -/
def UniformExistsBound
    {Parameter Constant : Type*}
    (P : Parameter → Constant → Prop) : Prop :=
  ∃ constant, ∀ parameter, P parameter constant

/-- Minimal natural-number fixture exposing the quantifier-order gap. -/
def naturalDominanceRelation
    (parameter constant : ℕ) : Prop :=
  parameter ≤ constant

/-- Every fixed natural parameter has a parameter-dependent dominating
constant. -/
theorem pointwiseNaturalDominance :
    PointwiseExistsBound naturalDominanceRelation := by
  intro parameter
  exact ⟨parameter, le_rfl⟩

/-- No single natural number dominates every natural parameter. -/
theorem not_uniformNaturalDominance :
    ¬ UniformExistsBound naturalDominanceRelation := by
  rintro ⟨constant, hconstant⟩
  have hbad := hconstant (constant + 1)
  omega

/-- The quantifier exchange from parameter-dependent constants to one uniform
constant is invalid by pure logic alone. -/
theorem pointwiseExists_doesNotImply_uniformExists :
    ¬ (PointwiseExistsBound naturalDominanceRelation →
      UniformExistsBound naturalDominanceRelation) := by
  intro htransport
  exact not_uniformNaturalDominance
    (htransport pointwiseNaturalDominance)

/-- Named witness disposition for the square-modulus junction.

Only the logical shortcut is refuted.  No analytic uniformity theorem is
refuted. -/
def FixedToUniformQuantifierExchangeRefutedAtScope : Prop :=
  ¬ (PointwiseExistsBound naturalDominanceRelation →
    UniformExistsBound naturalDominanceRelation)

theorem fixedToUniformQuantifierExchangeRefutedAtScope :
    FixedToUniformQuantifierExchangeRefutedAtScope :=
  pointwiseExists_doesNotImply_uniformExists

/-- A pointwise-to-uniform upgrade is represented as proof-relevant data rather
than an implicit coercion. -/
structure PointwiseToUniformBoundAdapter
    {Parameter Constant : Type*}
    (P : Parameter → Constant → Prop) : Type where
  upgrade :
    PointwiseExistsBound P → UniformExistsBound P

/-- The repository-facing fixed-form/growing-family boundary is retained as
two literal proposition slots.  A pair contains no implication field. -/
def fixedFormVsUniformSquareModulusBoundary
    (d : FixedFormBinaryChowlaData) : Prop × Prop :=
  (FixedFormBinaryChowlaSource d,
    UniformDyadicSquareModulusMertensTwoPointAP)

end SquareModulusAPConjectureJunction
end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.SquareModulusAPConjectureJunction.pointwiseExists_doesNotImply_uniformExists
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.SquareModulusAPConjectureJunction.fixedToUniformQuantifierExchangeRefutedAtScope
