# Complete source: GRWTSK.Topology.GeneralTopology.Perturbation.Variant3fcfa9fd649296ea74f3aadf12ac34866cb5c8369893dad8f7c15c57a8362660

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91fb5eab5ac244f46edcad8ca60b50a6d874d07a` · SHA-256 `e149af2a391e23827047c7a947f51141e0aaf2abe03c2dfe9646d691ff0c2d74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LimitInvariantLawPerturbation.Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LimitInvariantLawPerturbation.Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Boundary/Perturbation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Boundary.LimitKernel

/-!
# Limit-law and connector perturbations

Local kernel defects and projective coherence defects remain separate visible
budgets.  Neither is erased by passing to a limit.
-/


namespace GRWTSK.Topology.GeneralTopology.LimitInvariantLawPerturbation.Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule uLimitLaw

structure LimitInvariantLawPerturbation
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (reference :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) where
  perturbedPush :
    CompatibleSchedule system →
      reference.Law → reference.Law
  perturbedInvariant :
    reference.Law
  perturbedCommonInvariant :
    ∀ schedule,
      perturbedPush schedule perturbedInvariant =
        perturbedInvariant
  localDefect : ℝ≥0
  localDefectBound :
    ∀ schedule law,
      reference.wasserstein
          (perturbedPush schedule law)
          (reference.push schedule law) ≤
        localDefect

theorem limit_invariant_law_perturbation_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {reference :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system}
    (perturbation :
      LimitInvariantLawPerturbation reference) :
    (reference.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) /
        (1 -
          (system.uniformContraction : ℝ)) := by
  let schedule :=
    system.defaultLimitSchedule
  have recurrence :
      reference.wasserstein
          perturbation.perturbedInvariant
          reference.invariantLaw ≤
        perturbation.localDefect +
          system.uniformContraction *
            reference.wasserstein
              perturbation.perturbedInvariant
              reference.invariantLaw := by
    calc
      reference.wasserstein
          perturbation.perturbedInvariant
          reference.invariantLaw =
        reference.wasserstein
          (perturbation.perturbedPush
            schedule perturbation.perturbedInvariant)
          (reference.push
            schedule reference.invariantLaw) := by
              rw [perturbation.perturbedCommonInvariant,
                reference.commonInvariant]
      _ ≤
        reference.wasserstein
            (perturbation.perturbedPush
              schedule perturbation.perturbedInvariant)
            (reference.push
              schedule perturbation.perturbedInvariant) +
          reference.wasserstein
            (reference.push
              schedule perturbation.perturbedInvariant)
            (reference.push
              schedule reference.invariantLaw) :=
        reference.wassersteinTriangle _ _ _
      _ ≤
        perturbation.localDefect +
          system.uniformContraction *
            reference.wasserstein
              perturbation.perturbedInvariant
              reference.invariantLaw :=
        add_le_add
          (perturbation.localDefectBound
            schedule perturbation.perturbedInvariant)
          (reference.uniformlyContractive
            schedule
            perturbation.perturbedInvariant
            reference.invariantLaw)
  have recurrenceReal :
      (reference.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) +
        (system.uniformContraction : ℝ) *
          (reference.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw : ℝ) := by
    exact_mod_cast recurrence
  have denominatorPositive :
      0 <
        1 -
          (system.uniformContraction : ℝ) := by
    exact sub_pos.mpr
      (by
        exact_mod_cast
          system.uniformContraction_lt_one)
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

structure StratumConnectorDefect where
  localKernelDefect : ℝ≥0
  contraction : ℝ≥0
  contraction_lt_one :
    contraction < 1
  observableMismatch : ℝ≥0

noncomputable def StratumConnectorDefect.residualRadius
    (defect : StratumConnectorDefect) : ℝ :=
  (defect.localKernelDefect : ℝ) /
    (1 - (defect.contraction : ℝ))

structure LimitCoherenceResidual where
  residual : Nat → ℝ≥0
  exactProjectiveClosure : Prop
  exactProjectiveClosure_iff :
    exactProjectiveClosure ↔
      ∀ stage, residual stage = 0
  approximateProjectiveClosure : Prop
  approximateProjectiveClosure_iff :
    approximateProjectiveClosure ↔
      Tendsto residual atTop (𝓝 0)

end Mathematics.StratifiedBoundary.Boundary
```
