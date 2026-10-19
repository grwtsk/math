import MathDiscovery.Extractor.Core

/-!
# Environment-diff classifications
-/

namespace MathDiscovery.Extractor

inductive DeclarationChange
  | added
  | removed
  | renamed
  | movedModule
  | typeChanged
  | valueChanged
  | proofChanged
  | dependencyChanged
  | trustClosureChanged
  | visibilityChanged
  | attributeChanged
  | documentationChanged
  | sourceOnlyChanged
  | unchanged
  deriving DecidableEq, Repr, Inhabited

structure DeclarationDiff where
  before : Option DeclarationId
  after : Option DeclarationId
  beforeName : Option Lean.Name
  afterName : Option Lean.Name
  changes : Array DeclarationChange
  statementIdentityStable : Bool
  implementationIdentityStable : Bool
  deriving DecidableEq, Repr, Inhabited

end MathDiscovery.Extractor
