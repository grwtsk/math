import Mathematics.Projects.Mathlib.DeclarationIndex

/-! # Mathlib-positive reflection policy -/

namespace Mathematics.Projects.Mathlib

structure ReflectionPolicy where
  targetRevisionId : StableId
  requireGenerality : Bool := true
  requireProjectIndependence : Bool := true
  requireApiStability : Bool := true
  requireMathlibStyle : Bool := true
  requireMinimalDependencies : Bool := true
  requireDocumentation : Bool := true
  requireKernelCheck : Bool := true
  requireTests : Bool := true
  requireLicenseCompatibility : Bool := true
  requireMigrationPlanForApiChange : Bool := true
  policyDigest : Digest

end Mathematics.Projects.Mathlib
