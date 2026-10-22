/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Positive Gram limits and the conditional RH endpoint

This file supplies the elementary analytic endpoint requested in issue #215. Each stage
is a genuine complex inner-product Gram form produced by one stage map selected for all
test vectors. Pointwise convergence of the real diagonal to an independently defined
Weil form implies global Weil positivity. Canonical RH follows only after supplying an
exact `WeilPositivityImpliesRH` record from issue #219.

The file also proves that a negative diagonal witness cannot be the pointwise limit of
nonnegative Gram diagonals, derives direct convergence from a complete vanishing error
bound, and provides an approximately-positive variant. It constructs no arithmetic or
elliptic stage map and proves no comparison error tends to zero.
-/

namespace GRWTSK.RiemannHypothesis

open Filter
open scoped Topology

/-- One source-bound sequence of genuine positive Gram stages. The target spaces may
grow with `n`; no uniform finite-rank bound is imposed. -/
structure PositiveGramFamily
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    (space : WeilTestSpace T)
    (H : ℕ → Type*)
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)] where
  map : ∀ n, space.Vector →ₗ[ℂ] H n
  sourceBinding : SourceBinding
  source_binding_eq : sourceBinding = space.binding
  stageId : ℕ → String
  constructionProfile : String
  invalidationKey : String

namespace PositiveGramFamily

/-- Polarized Gram form at one stage. -/
def gram
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (family : PositiveGramFamily space H)
    (n : ℕ) (f g : space.Vector) : ℂ :=
  inner ℂ (family.map n f) (family.map n g)

/-- Real diagonal Gram value. -/
def diagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (family : PositiveGramFamily space H)
    (n : ℕ) (f : space.Vector) : ℝ :=
  (family.gram n f f).re

/-- Every stage diagonal is nonnegative by the inner-product axiom. -/
theorem diagonal_nonnegative
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (family : PositiveGramFamily space H)
    (n : ℕ) (f : space.Vector) :
    0 ≤ family.diagonal n f := by
  simpa [diagonal, gram] using
    (inner_self_nonneg (𝕜 := ℂ) (x := family.map n f))

end PositiveGramFamily

/-- Direct pointwise diagonal convergence profile. -/
structure DiagonalPositiveGramLimit
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space)
    (H : ℕ → Type*)
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)] where
  family : PositiveGramFamily space H
  comparisonId : String
  form_revision_eq : form.sourceRevision = space.revision
  form_normalization_eq : form.normalizationId = space.normalizationId
  tendsto_diagonal :
    ∀ f, Tendsto (fun n => family.diagonal n f) atTop (𝓝 (form.diagonal f))

namespace DiagonalPositiveGramLimit

/-- A pointwise limit of nonnegative Gram diagonals is nonnegative. -/
theorem positiveDiagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (limit : DiagonalPositiveGramLimit form H) :
    form.PositiveDiagonal := by
  intro f
  exact ge_of_tendsto (limit.tendsto_diagonal f)
    (Eventually.of_forall fun n => limit.family.diagonal_nonnegative n f)

/-- Conditional terminal theorem. The limit proves positivity; only the exact #219
criterion supplies the implication to canonical RH. -/
theorem riemannHypothesis
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (limit : DiagonalPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) :
    _root_.RiemannHypothesis :=
  criterion.proof limit.positiveDiagonal

end DiagonalPositiveGramLimit

/-- Pointwise polarized convergence; the explicit converse is in WeilPolarization.
It gives no uniform-in-vector, operator-norm, trace-norm, determinant or sofic limit. -/
structure PolarizedPositiveGramLimit
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space)
    (H : ℕ → Type*)
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)] where
  family : PositiveGramFamily space H
  comparisonId : String
  form_revision_eq : form.sourceRevision = space.revision
  form_normalization_eq : form.normalizationId = space.normalizationId
  tendsto_polarized :
    ∀ f g, Tendsto (fun n => family.gram n f g) atTop (𝓝 (form.toFun f g))

namespace PolarizedPositiveGramLimit

/-- Polarized convergence implies diagonal real convergence by continuity of real part. -/
def toDiagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (limit : PolarizedPositiveGramLimit form H) :
    DiagonalPositiveGramLimit form H where
  family := limit.family
  comparisonId := limit.comparisonId
  form_revision_eq := limit.form_revision_eq
  form_normalization_eq := limit.form_normalization_eq
  tendsto_diagonal := by
    intro f
    have hre :=
      (Complex.continuous_re.tendsto (form.toFun f f)).comp
        (limit.tendsto_polarized f f)
    simpa only [Function.comp_def, PositiveGramFamily.diagonal, PositiveGramFamily.gram,
      WeilHermitianForm.diagonal] using hre

/-- Polarized positive-Gram convergence has the same conditional RH endpoint. -/
theorem riemannHypothesis
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (limit : PolarizedPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) :
    _root_.RiemannHypothesis :=
  limit.toDiagonal.riemannHypothesis criterion

end PolarizedPositiveGramLimit

/-- Complete pointwise diagonal error profile. The error is not allowed to be a merely
large tautological bound; it must tend to zero for every admitted test vector. -/
structure DiagonalErrorBound
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space)
    (H : ℕ → Type*)
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)] where
  family : PositiveGramFamily space H
  comparisonId : String
  form_revision_eq : form.sourceRevision = space.revision
  form_normalization_eq : form.normalizationId = space.normalizationId
  error : ℕ → space.Vector → ℝ
  error_nonnegative : ∀ n f, 0 ≤ error n f
  comparison :
    ∀ n f, |form.diagonal f - family.diagonal n f| ≤ error n f
  error_tendsto_zero :
    ∀ f, Tendsto (fun n => error n f) atTop (𝓝 0)

namespace DiagonalErrorBound

/-- A complete vanishing error bound supplies direct diagonal convergence. -/
theorem tendsto_diagonal
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (bound : DiagonalErrorBound form H)
    (f : space.Vector) :
    Tendsto (fun n => bound.family.diagonal n f) atTop
      (𝓝 (form.diagonal f)) := by
  rw [tendsto_iff_norm_sub_tendsto_zero]
  exact squeeze_zero
    (fun n => norm_nonneg _)
    (fun n => by
      simpa [Real.norm_eq_abs, abs_sub_comm] using bound.comparison n f)
    (bound.error_tendsto_zero f)

/-- Convert the error profile to the direct limit profile. -/
def toLimit
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (bound : DiagonalErrorBound form H) :
    DiagonalPositiveGramLimit form H where
  family := bound.family
  comparisonId := bound.comparisonId
  form_revision_eq := bound.form_revision_eq
  form_normalization_eq := bound.form_normalization_eq
  tendsto_diagonal := bound.tendsto_diagonal

end DiagonalErrorBound

/-- A negative target value cannot be a pointwise limit of nonnegative Gram diagonals. -/
theorem no_positiveGramLimit_at_negativeWitness
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    {form : WeilHermitianForm space}
    {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)]
    [∀ n, InnerProductSpace ℂ (H n)]
    (family : PositiveGramFamily space H)
    (f : space.Vector)
    (hnegative : form.diagonal f < 0) :
    ¬ Tendsto (fun n => family.diagonal n f) atTop
        (𝓝 (form.diagonal f)) := by
  intro hlimit
  have hnonnegative : 0 ≤ form.diagonal f :=
    ge_of_tendsto hlimit
      (Eventually.of_forall fun n => family.diagonal_nonnegative n f)
  exact (not_lt_of_ge hnonnegative) hnegative

/-- Approximately positive values with a vanishing lower error still have a
nonnegative limit. -/
theorem nonnegative_limit_of_approximately_nonnegative
    {q error : ℕ → ℝ} {limit : ℝ}
    (hq : Tendsto q atTop (𝓝 limit))
    (herror : Tendsto error atTop (𝓝 0))
    (hlower : ∀ n, -error n ≤ q n) :
    0 ≤ limit := by
  have hsum :
      Tendsto (fun n => q n + error n) atTop (𝓝 (limit + 0)) :=
    hq.add herror
  have hnonnegative : ∀ n, 0 ≤ q n + error n := by
    intro n
    linarith [hlower n]
  have hlimitNonnegative : 0 ≤ limit + 0 :=
    ge_of_tendsto hsum (Eventually.of_forall hnonnegative)
  simpa using hlimitNonnegative

end GRWTSK.RiemannHypothesis
