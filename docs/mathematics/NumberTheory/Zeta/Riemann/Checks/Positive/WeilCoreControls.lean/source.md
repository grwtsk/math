# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCoreControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eb9cfe936450fd4276dcd2ddc38d5d7b8357429` · SHA-256 `2126a5c822169abb2f7d8cd10b0951b1bc66d023de507859eb30a0a2a9e2f278`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only paired admission controls. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore

set_option autoImplicit false

/-!
# Paired admission controls for the exact Weil core

Each C01-C12 control checks one particular ill-typed shortcut with
`fail_if_success`, then elaborates a correctly supplied companion in the same
context. The test is about that expression, not logical independence or the
nonexistence of every possible proof. Some companions deliberately carry the
missing premise as an explicit argument.

These declarations return True. Their stored proof terms are NOT receipts that
negative checks executed. Acceptance requires clean exact-source elaboration,
positive companions, success-injection mutants, and the inherited trust audit.
No unconditional zeta criterion, comparison-error decay, or runtime authority is supplied.
-/

namespace GRWTSK.RiemannHypothesis.Checks.WeilCoreControls

open Filter
open scoped Topology

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

/-- A successful inner trial must make its rejection guard fail. The outer
rejection guard checks that failure without closing the ambient True goal. -/
theorem rejection_guard_is_live : True := by
  fail_if_success
    fail_if_success
      have _successfulTrial : True := True.intro
  exact True.intro

/-- C01: a Gram-limit endpoint must receive its separate exact criterion. -/
theorem endpoint_requires_criterion
    (limit : DiagonalPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) : True := by
  fail_if_success
    -- C01 REJECT BEGIN
    have _trial : _root_.RiemannHypothesis := limit.riemannHypothesis
    -- C01 REJECT END
  -- C01 ACCEPT BEGIN
  have _trial : _root_.RiemannHypothesis := limit.riemannHypothesis criterion
  -- C01 ACCEPT END
  exact True.intro

/-- C02: a criterion direction is an implication, not a proof of its premise. -/
theorem criterion_requires_positive_diagonal
    (criterion : WeilPositivityImpliesRH form)
    (positive : form.PositiveDiagonal) : True := by
  fail_if_success
    -- C02 REJECT BEGIN
    have _trial : _root_.RiemannHypothesis := criterion.proof
    -- C02 REJECT END
  -- C02 ACCEPT BEGIN
  have _trial : _root_.RiemannHypothesis := criterion.proof positive
  -- C02 ACCEPT END
  exact True.intro

/-- C03: the forward record becomes an iff only after the missing reverse proof. -/
theorem forward_requires_reverse_for_iff
    (forward : WeilPositivityImpliesRH form)
    (reverse : _root_.RiemannHypothesis → form.PositiveDiagonal) : True := by
  fail_if_success
    -- C03 REJECT BEGIN
    have _trial : WeilPositivityIffRH form := forward
    -- C03 REJECT END
  -- C03 ACCEPT BEGIN
  have _trial : WeilPositivityIffRH form :=
    { source := forward.source
      source_binding_eq := forward.source_binding_eq
      proof := ⟨forward.proof, reverse⟩ }
  -- C03 ACCEPT END
  exact True.intro

/-- C04: equality of actual forms must be used, not presumed from shared metadata. -/
theorem criterion_requires_exact_form
    (otherForm : WeilHermitianForm space)
    (criterion : WeilPositivityImpliesRH form) (sameForm : otherForm = form) : True := by
  fail_if_success
    -- C04 REJECT BEGIN
    have _trial : WeilPositivityImpliesRH otherForm := criterion
    -- C04 REJECT END
  -- C04 ACCEPT BEGIN
  have _trial : WeilPositivityImpliesRH otherForm := by
    cases sameForm
    exact criterion
  -- C04 ACCEPT END
  exact True.intro

/-- C05: a replacement source record needs its own binding equality. Token
agreement is still not authentication of repository bytes or execution. -/
theorem replacement_source_requires_binding
    (criterion : WeilPositivityImpliesRH form) (translated : WeilCriterionSource)
    (binding : translated.binding = space.binding) : True := by
  fail_if_success
    -- C05 REJECT BEGIN
    have _trial : WeilPositivityImpliesRH form :=
      { source := translated
        source_binding_eq := criterion.source_binding_eq
        proof := criterion.proof }
    -- C05 REJECT END
  -- C05 ACCEPT BEGIN
  have _trial : WeilPositivityImpliesRH form :=
    { source := translated
      source_binding_eq := binding
      proof := criterion.proof }
  -- C05 ACCEPT END
  exact True.intro

/-- C06: a selected-set hypothesis cannot be assigned to the all-vector field.
The companion supplies actual coverage; selected is not assumed finite. -/
theorem sampled_convergence_requires_coverage
    (family : PositiveGramFamily space H) (selected : Set space.Vector)
    (sampled : ∀ f, f ∈ selected →
      Tendsto (fun n => family.diagonal n f) atTop (𝓝 (form.diagonal f)))
    (covers : ∀ f, f ∈ selected)
    (revision : form.sourceRevision = space.revision)
    (normalization : form.normalizationId = space.normalizationId) : True := by
  fail_if_success
    -- C06 REJECT BEGIN
    have _trial : DiagonalPositiveGramLimit form H :=
      { family := family
        comparisonId := "paired-selected-set-control"
        form_revision_eq := revision
        form_normalization_eq := normalization
        tendsto_diagonal := sampled }
    -- C06 REJECT END
  -- C06 ACCEPT BEGIN
  have _trial : DiagonalPositiveGramLimit form H :=
    { family := family
      comparisonId := "paired-selected-set-control"
      form_revision_eq := revision
      form_normalization_eq := normalization
      tendsto_diagonal := fun f => sampled f (covers f) }
  -- C06 ACCEPT END
  exact True.intro

/-- C07: no implicit record coercion substitutes for the explicit polarization
bridge. The bridge is valid at this exact all-vector Hermitian scope. -/
theorem polarized_record_requires_explicit_bridge
    (limit : DiagonalPositiveGramLimit form H) : True := by
  fail_if_success
    -- C07 REJECT BEGIN
    have _trial : PolarizedPositiveGramLimit form H := limit
    -- C07 REJECT END
  -- C07 ACCEPT BEGIN
  have _trial : PolarizedPositiveGramLimit form H := limit.toPolarized
  -- C07 ACCEPT END
  exact True.intro

/-- C08: nonnegative comparison bounds do not fill the required decay field. -/
theorem error_record_requires_decay
    (family : PositiveGramFamily space H) (error : ℕ → space.Vector → ℝ)
    (nonnegative : ∀ n f, 0 ≤ error n f)
    (comparison : ∀ n f, |form.diagonal f - family.diagonal n f| ≤ error n f)
    (decay : ∀ f, Tendsto (fun n => error n f) atTop (𝓝 0))
    (revision : form.sourceRevision = space.revision)
    (normalization : form.normalizationId = space.normalizationId) : True := by
  fail_if_success
    -- C08 REJECT BEGIN
    have _trial : DiagonalErrorBound form H :=
      { family := family
        comparisonId := "paired-decay-control"
        form_revision_eq := revision
        form_normalization_eq := normalization
        error := error
        error_nonnegative := nonnegative
        comparison := comparison }
    -- C08 REJECT END
  -- C08 ACCEPT BEGIN
  have _trial : DiagonalErrorBound form H :=
    { family := family
      comparisonId := "paired-decay-control"
      form_revision_eq := revision
      form_normalization_eq := normalization
      error := error
      error_nonnegative := nonnegative
      comparison := comparison
      error_tendsto_zero := decay }
  -- C08 ACCEPT END
  exact True.intro

/-- C09: a negative witness needs RH-to-positivity, not the opposite direction. -/
theorem negative_witness_requires_reverse
    (forward : WeilPositivityImpliesRH form) (reverse : RHImpliesWeilPositivity form)
    (witness : ∃ f, form.diagonal f < 0) : True := by
  fail_if_success
    -- C09 REJECT BEGIN
    have _trial : ¬ _root_.RiemannHypothesis := not_rh_of_negativeWitness forward witness
    -- C09 REJECT END
  -- C09 ACCEPT BEGIN
  have _trial : ¬ _root_.RiemannHypothesis := not_rh_of_negativeWitness reverse witness
  -- C09 ACCEPT END
  exact True.intro

/-- C10: the positivity proof for a normalization scalar cannot certify its
negative. The companion retains the exact selected scalar. -/
theorem normalization_sign_is_not_erasable
    {S : Type*} [AddCommGroup S] [Module ℂ S]
    {sourceSpace : WeilTestSpace S} {sourceForm : WeilHermitianForm sourceSpace}
    (transport : PositiveNormalizationTransport form sourceForm) : True := by
  fail_if_success
    -- C10 REJECT BEGIN
    have _trial : 0 < -transport.scalar := transport.scalar_positive
    -- C10 REJECT END
  -- C10 ACCEPT BEGIN
  have _trial : 0 < transport.scalar := transport.scalar_positive
  -- C10 ACCEPT END
  exact True.intro

/-- C11: a replay-disposition label is not a mathematical proof term. -/
theorem replay_label_is_not_a_criterion
    (source : WeilCriterionSource) (label : source.replayDisposition = .discharged)
    (limit : DiagonalPositiveGramLimit form H)
    (criterion : WeilPositivityImpliesRH form) : True := by
  fail_if_success
    -- C11 REJECT BEGIN
    have _trial : _root_.RiemannHypothesis := label
    -- C11 REJECT END
  -- C11 ACCEPT BEGIN
  have _trial : _root_.RiemannHypothesis := limit.riemannHypothesis criterion
  -- C11 ACCEPT END
  exact True.intro

/-- C12: the data-bearing limit record is not itself a proposition. Its existence
is a proposition without converting the record or erasing its data fields. -/
theorem limit_existence_requires_nonempty
    (_limit : DiagonalPositiveGramLimit form H) : True := by
  fail_if_success
    -- C12 REJECT BEGIN
    have _trial : Prop := DiagonalPositiveGramLimit form H
    -- C12 REJECT END
  -- C12 ACCEPT BEGIN
  have _trial : Prop := Nonempty (DiagonalPositiveGramLimit form H)
  -- C12 ACCEPT END
  exact True.intro

end GRWTSK.RiemannHypothesis.Checks.WeilCoreControls
```
