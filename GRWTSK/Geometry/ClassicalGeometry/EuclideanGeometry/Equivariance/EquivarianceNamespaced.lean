-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.EquivariantScheduleKernelCertificate.Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.EquivariantScheduleKernelCertificate.Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/Equivariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.CrossedProduct
import Mathematics.ConnesBitfield.Dynamics

/-!
# Automorphism invariance of the common boundary law

Kernel equivariance makes every automorphic image of the invariant law
invariant again.  Contractive uniqueness then identifies that image with the
same canonical boundary law.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.EquivariantScheduleKernelCertificate.Variant11a0022ecd5f2e55bf4a224d92ea53d840e140d3dc68952d0611d99347b6638f

namespace Mathematics.ConnesBitfield

universe uSchedule

structure EquivariantScheduleKernelCertificate
    {system : RandomBitfieldSystem}
    (model : FiniteCrossedProductModel system)
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (family :
      ScheduleKernelFamily system carrier Schedule) where
  lawAction :
    model.Automorphism →
      carrier.Law →
      carrier.Law
  lawActionIdentity :
    ∀ law,
      lawAction 1 law = law
  lawActionCompatible :
    ∀ left right law,
      lawAction (left * right) law =
        lawAction left (lawAction right law)
  realizationEquivariant :
    ∀ automorphism law state,
      (carrier.realize
        (lawAction automorphism law)).weight
          (model.action.act automorphism state) =
        (carrier.realize law).weight state
  wassersteinInvariant :
    ∀ automorphism left right,
      carrier.wasserstein
          (lawAction automorphism left)
          (lawAction automorphism right) =
        carrier.wasserstein left right
  pointwiseKernelEquivariant :
    ∀ automorphism schedule state nextState,
      (family.kernel schedule).transitionWeight
          (model.action.act automorphism state)
          (model.action.act automorphism nextState) =
        (family.kernel schedule).transitionWeight
          state nextState
  kernelEquivariant :
    ∀ automorphism schedule law,
      lawAction automorphism
          (carrier.push (family.kernel schedule) law) =
        carrier.push (family.kernel schedule)
          (lawAction automorphism law)

theorem invariantLaw_automorphism_invariant
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {family :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model family)
    (automorphism : model.Automorphism) :
    equivariance.lawAction
        automorphism family.invariantLaw =
      family.invariantLaw := by
  apply family.invariantLaw_unique
  intro schedule
  rw [← equivariance.kernelEquivariant]
  rw [family.commonInvariant]

theorem iterateLaw_automorphism_equivariant
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {family :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model family)
    (automorphism : model.Automorphism)
    (schedule : Nat → Schedule)
    (initial : carrier.Law) :
    ∀ depth,
      family.iterateLaw schedule depth
          (equivariance.lawAction
            automorphism initial) =
        equivariance.lawAction automorphism
          (family.iterateLaw schedule depth initial) := by
  intro depth
  induction depth with
  | zero =>
      rfl
  | succ depth inductionHypothesis =>
      change
        carrier.push
            (family.kernel (schedule depth))
            (family.iterateLaw schedule depth
              (equivariance.lawAction
                automorphism initial)) =
          equivariance.lawAction automorphism
            (carrier.push
              (family.kernel (schedule depth))
              (family.iterateLaw
                schedule depth initial))
      rw [inductionHypothesis]
      exact
        (equivariance.kernelEquivariant
          automorphism (schedule depth)
          (family.iterateLaw
            schedule depth initial)).symm

theorem automorphism_distance_to_boundary
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {family :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model family)
    (automorphism : model.Automorphism)
    (law : carrier.Law) :
    carrier.wasserstein
        (equivariance.lawAction automorphism law)
        family.invariantLaw =
      carrier.wasserstein law family.invariantLaw := by
  calc
    carrier.wasserstein
        (equivariance.lawAction automorphism law)
        family.invariantLaw =
      carrier.wasserstein
        (equivariance.lawAction automorphism law)
        (equivariance.lawAction automorphism
          family.invariantLaw) := by
            rw [invariantLaw_automorphism_invariant
              equivariance automorphism]
    _ =
      carrier.wasserstein law family.invariantLaw :=
        equivariance.wassersteinInvariant
          automorphism law family.invariantLaw

/--
Automorphism-related traversals may differ at every finite depth, but both
approach the common symmetry-fixed boundary.  The displayed bound is the
exact finite form of the `2 qⁿ` estimate.
-/
theorem automorphism_related_traversals_wasserstein_le
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {family :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model family)
    (automorphism : model.Automorphism)
    (schedule : Nat → Schedule)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.wasserstein
        (family.iterateLaw schedule depth initial)
        (family.iterateLaw schedule depth
          (equivariance.lawAction
            automorphism initial)) ≤
      family.contraction ^ depth *
          carrier.wasserstein initial
            family.invariantLaw +
        family.contraction ^ depth *
          carrier.wasserstein initial
            family.invariantLaw := by
  calc
    carrier.wasserstein
        (family.iterateLaw schedule depth initial)
        (family.iterateLaw schedule depth
          (equivariance.lawAction
            automorphism initial)) ≤
      carrier.wasserstein
          (family.iterateLaw schedule depth initial)
          family.invariantLaw +
        carrier.wasserstein
          (family.iterateLaw schedule depth
            (equivariance.lawAction
              automorphism initial))
          family.invariantLaw := by
            simpa
                [carrier.wasserstein_eq_nndist]
              using
                nndist_triangle
                  (family.iterateLaw
                    schedule depth initial)
                  family.invariantLaw
                  (family.iterateLaw schedule depth
                    (equivariance.lawAction
                      automorphism initial))
    _ ≤
      family.contraction ^ depth *
          carrier.wasserstein initial
            family.invariantLaw +
        family.contraction ^ depth *
          carrier.wasserstein
            (equivariance.lawAction
              automorphism initial)
            family.invariantLaw :=
      add_le_add
        (family.iterateLaw_wasserstein_le
          schedule depth initial)
        (family.iterateLaw_wasserstein_le
          schedule depth
          (equivariance.lawAction
            automorphism initial))
    _ =
      family.contraction ^ depth *
          carrier.wasserstein initial
            family.invariantLaw +
        family.contraction ^ depth *
          carrier.wasserstein initial
            family.invariantLaw := by
      rw [automorphism_distance_to_boundary
        equivariance automorphism initial]

end Mathematics.ConnesBitfield
