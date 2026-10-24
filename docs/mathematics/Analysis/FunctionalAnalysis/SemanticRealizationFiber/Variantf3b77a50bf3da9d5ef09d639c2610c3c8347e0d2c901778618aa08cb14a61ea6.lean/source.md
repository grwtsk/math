# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealizationFiber.Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19124b6b6787c71182fccf845ef4a39ae15000f6` · SHA-256 `bed2d430a29e38384a5fe6e60767c7abe994dd81bb0a648a19dfe3ca77e51e4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SemanticRealizationSystem.Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.SemanticRealizationSystem.Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Hilbert/SemanticRealizationFiber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Hilbert.SemanticRealization

/-!
# Dependent semantic realization fibers

Changing a norm profile changes the Banach carrier type; changing a kernel
changes the Hilbert carrier type.  The family is therefore dependent, and
cross-profile transformations must explicitly commute with both realizations.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.SemanticRealizationSystem.Variant462503c801c243ea8f022c9afb96c1e9dea92d192ab7ab0bd0db892501106ef3

noncomputable section

namespace Mathematics.Hilbert

universe u v

/-- One dependent family of semantic Banach and kernel Hilbert realizations. -/
structure SemanticRealizationSystem
    (Profile : Type u)
    (Atom : Type v) where
  banachModel : Profile → Concept.QuotientNormData Atom
  kernel : Profile → Kernel.PositiveKernel Atom
  compatibility :
    ∀ profile,
      KernelCompatibility
        (banachModel profile)
        (kernel profile)

namespace SemanticRealizationSystem

variable
    {Profile : Type u}
    {Atom : Type v}
    (system : SemanticRealizationSystem Profile Atom)

/-- The profile-indexed semantic Banach fiber. -/
abbrev BanachFiber (profile : Profile) :=
  Concept.BanachCarrier (system.banachModel profile)

/-- The profile-indexed kernel Hilbert fiber. -/
abbrev HilbertFiber (profile : Profile) :=
  KernelSpace (system.kernel profile)

/-- The canonical realization in one selected profile. -/
def realize
    (profile : Profile) :
    system.BanachFiber profile →L[ℂ]
      system.HilbertFiber profile :=
  banachToHilbert (system.compatibility profile)

end SemanticRealizationSystem

/--
A cross-profile transformation must commute with the two canonical
realizations.  Merely sharing atom identifiers does not supply these maps.
-/
structure SemanticFiberTransformation
    {Profile : Type u}
    {Atom : Type v}
    (system : SemanticRealizationSystem Profile Atom)
    (source target : Profile) where
  banachMap :
    system.BanachFiber source →L[ℂ]
      system.BanachFiber target
  hilbertMap :
    system.HilbertFiber source →L[ℂ]
      system.HilbertFiber target
  realization_commutes :
    hilbertMap.comp (system.realize source) =
      (system.realize target).comp banachMap

namespace SemanticFiberTransformation

variable
    {Profile : Type u}
    {Atom : Type v}
    {system : SemanticRealizationSystem Profile Atom}
    {source target : Profile}

/-- The commuting square evaluated at one semantic state. -/
theorem realize_map
    (transformation :
      SemanticFiberTransformation system source target)
    (state : system.BanachFiber source) :
    transformation.hilbertMap (system.realize source state) =
      system.realize target
        (transformation.banachMap state) := by
  simpa using
    congrArg
      (fun map ↦ map state)
      transformation.realization_commutes

end SemanticFiberTransformation

/-- Isometric profile equivalence, stronger than a one-way transformation. -/
structure SemanticFiberIsometricEquivalence
    {Profile : Type u}
    {Atom : Type v}
    (system : SemanticRealizationSystem Profile Atom)
    (source target : Profile) where
  banachEquiv :
    system.BanachFiber source ≃ₗᵢ[ℂ]
      system.BanachFiber target
  hilbertEquiv :
    system.HilbertFiber source ≃ₗᵢ[ℂ]
      system.HilbertFiber target
  realization_commutes :
    hilbertEquiv.toContinuousLinearEquiv.toContinuousLinearMap.comp
        (system.realize source) =
      (system.realize target).comp
        banachEquiv.toContinuousLinearEquiv.toContinuousLinearMap

end Mathematics.Hilbert
```
