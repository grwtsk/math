-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ArithmeticLoopReplayMetadata.Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ArithmeticLoopReplayMetadata.Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/LoopClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Prismatic.InfiniteLoopCarrier
import Mathlib.LinearAlgebra.BilinearForm.Hom
import Mathlib.LinearAlgebra.Determinant

/-!
# Fully certified arithmetic loop closure

Returning to an isomorphic carrier is necessary but insufficient.  Closure
also preserves the actual period, polarization, level, Frobenius, filtration,
monodromy, determinant, and represented global-object data.  Digests remain
replay metadata only and are never called structural compatibility.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ArithmeticLoopReplayMetadata.Variant6ae820517072a9ec466965107ef085f1fc6bde8c8c06533f685a7769155dc1df

namespace Mathematics.Prismatic

universe u v

/--
Content-addressed replay coordinates for one arithmetic loop state.

These digests support exact replay and comparison of stored bytes.  They carry
no structural authority; the structures they describe are fields of
`ArithmeticLoopState`.
-/
structure ArithmeticLoopReplayMetadata where
  periodDigest : Digest
  polarizationDigest : Digest
  levelDigest : Digest
  frobeniusDigest : Digest
  filtrationDigest : Digest
  monodromyDigest : Digest
  determinantDigest : Digest
  stateDigest : Digest

/--
Actual finite-dimensional arithmetic channels carried around a proposed loop.

The rational carrier makes Frobenius, period, filtration, level, monodromy,
polarization, and determinant mathematical objects rather than addresses.
The determinant is derived from `monodromy`; it is not an independent field.
-/
structure ArithmeticLoopState
    (Carrier : Type u)
    [AddCommGroup Carrier] [Module ℚ Carrier] [Module.Finite ℚ Carrier] where
  globalObject : GlobalArithmeticObject
  periodOperator : Carrier →ₗ[ℚ] Carrier
  polarization : LinearMap.BilinForm ℚ Carrier
  levelStructure : Nat → Submodule ℚ Carrier
  frobenius : Carrier →ₗ[ℚ] Carrier
  filtration : Nat → Submodule ℚ Carrier
  monodromy : Carrier ≃ₗ[ℚ] Carrier
  replay : ArithmeticLoopReplayMetadata

namespace ArithmeticLoopState

variable
    {Carrier : Type u}
    [AddCommGroup Carrier] [Module ℚ Carrier] [Module.Finite ℚ Carrier]

/-- The determinant channel is computed from the actual monodromy operator. -/
noncomputable def determinant
    (state : ArithmeticLoopState Carrier) : ℚ :=
  LinearMap.det state.monodromy.toLinearMap

end ArithmeticLoopState

/--
Complete structural closure certificate.

Every equation is transported through the same carrier linear equivalence.
No equality between replay digests appears in this structure.
-/
structure CertifiedLoopClosure
    {InitialCarrier : Type u} {FinalCarrier : Type v}
    [AddCommGroup InitialCarrier] [Module ℚ InitialCarrier]
    [Module.Finite ℚ InitialCarrier]
    [AddCommGroup FinalCarrier] [Module ℚ FinalCarrier]
    [Module.Finite ℚ FinalCarrier]
    (initial : ArithmeticLoopState InitialCarrier)
    (final : ArithmeticLoopState FinalCarrier) where
  stateIsomorphism : InitialCarrier ≃ₗ[ℚ] FinalCarrier
  globalObjectPreserved :
    final.globalObject = initial.globalObject
  periodCommutes :
    stateIsomorphism.toLinearMap.comp initial.periodOperator =
      final.periodOperator.comp stateIsomorphism.toLinearMap
  polarizationPreserved :
    ∀ left right,
      final.polarization
          (stateIsomorphism left)
          (stateIsomorphism right) =
        initial.polarization left right
  levelPreserved :
    ∀ degree,
      (initial.levelStructure degree).map
          stateIsomorphism.toLinearMap =
        final.levelStructure degree
  frobeniusCommutes :
    stateIsomorphism.toLinearMap.comp initial.frobenius =
      final.frobenius.comp stateIsomorphism.toLinearMap
  filtrationPreserved :
    ∀ degree,
      (initial.filtration degree).map
          stateIsomorphism.toLinearMap =
        final.filtration degree
  monodromyCommutes :
    stateIsomorphism.toLinearMap.comp initial.monodromy.toLinearMap =
      final.monodromy.toLinearMap.comp stateIsomorphism.toLinearMap
  closureCertificate : ObjectAddress

namespace CertifiedLoopClosure

variable
    {InitialCarrier : Type u} {FinalCarrier : Type v}
    [AddCommGroup InitialCarrier] [Module ℚ InitialCarrier]
    [Module.Finite ℚ InitialCarrier]
    [AddCommGroup FinalCarrier] [Module ℚ FinalCarrier]
    [Module.Finite ℚ FinalCarrier]
    {initial : ArithmeticLoopState InitialCarrier}
    {final : ArithmeticLoopState FinalCarrier}

/-- Monodromy is conjugate under the certified carrier equivalence. -/
theorem monodromy_conjugate
    (closure : CertifiedLoopClosure initial final) :
    final.monodromy.toLinearMap =
      (closure.stateIsomorphism.toLinearMap.comp
        initial.monodromy.toLinearMap).comp
          closure.stateIsomorphism.symm.toLinearMap := by
  apply LinearMap.ext
  intro point
  have commuting :=
    LinearMap.congr_fun
      closure.monodromyCommutes
      (closure.stateIsomorphism.symm point)
  simpa using commuting.symm

/--
The determinant equality is a theorem derived from actual monodromy conjugacy,
not a field and not a digest comparison.
-/
theorem determinantPreserved
    (closure : CertifiedLoopClosure initial final) :
    final.determinant = initial.determinant := by
  unfold ArithmeticLoopState.determinant
  rw [closure.monodromy_conjugate]
  exact
    LinearMap.det_conj
      initial.monodromy.toLinearMap
      closure.stateIsomorphism

end CertifiedLoopClosure

end Mathematics.Prismatic
