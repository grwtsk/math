import Mathematics.Hilbert.SemanticRealization

/-!
# Dependent semantic realization fibers

Changing a norm profile changes the Banach carrier type; changing a kernel
changes the Hilbert carrier type.  The family is therefore dependent, and
cross-profile transformations must explicitly commute with both realizations.
-/

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
