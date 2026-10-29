import Mathematics.StratifiedBoundary.Resolver
import Mathematics.StratifiedBoundary.Presentation.Noninterference

/-!
# Ordinal authority noninterference

An ordinal address is position data only.
-/

namespace Mathematics.StratifiedBoundary

structure OrdinalIndexAuthorityBoundary where
  ordinalIndexRef : String
  persistentIdentityRef : String
  theoremAuthorityRef : String
  runtimeAuthority : Bool := false
  mutationAuthority : Bool := false
  theoremAuthorityCreated : Bool := false
  runtimeAuthority_exact : runtimeAuthority = false
  mutationAuthority_exact : mutationAuthority = false
  theoremAuthorityCreated_exact :
    theoremAuthorityCreated = false

theorem ordinal_index_does_not_create_authority
    (boundary : OrdinalIndexAuthorityBoundary) :
    boundary.runtimeAuthority = false ∧
      boundary.mutationAuthority = false ∧
      boundary.theoremAuthorityCreated = false :=
  ⟨boundary.runtimeAuthority_exact,
    boundary.mutationAuthority_exact,
    boundary.theoremAuthorityCreated_exact⟩

end Mathematics.StratifiedBoundary
