import Folder.GrandChallenge.Status

/-!
# Folder.GrandChallenge.CompatibilityObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records the shared grand-challenge obstruction template.
Ontology: grand_challenge_program
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge

structure StaticInvariant where
  branch : ChallengeBranch
  label : String

structure DynamicOrRecursiveProcess where
  branch : ChallengeBranch
  label : String

structure RealizationComparison where
  branch : ChallengeBranch
  sourceLabel : String
  targetLabel : String
  comparisonSupplied : Prop

structure ForbiddenConfiguration where
  branch : ChallengeBranch
  label : String

structure ObstructionClass where
  branch : ChallengeBranch
  invariant : StaticInvariant
  forbidden : ForbiddenConfiguration
  label : String

structure ObstructionNonzero
    (_O : ObstructionClass) : Prop where
  witness : True

structure CompatibleConfiguration where
  branch : ChallengeBranch
  invariant : StaticInvariant
  process : DynamicOrRecursiveProcess
  realization : RealizationComparison
  obstruction : ObstructionClass
  obstructionVanishes : Prop
  label : String

structure CompatibilityObstructionProgram where
  branch : ChallengeBranch
  invariant : StaticInvariant
  process : DynamicOrRecursiveProcess
  realization : RealizationComparison
  forbidden : ForbiddenConfiguration
  obstruction : ObstructionClass
  forbiddenProducesObstruction : Prop
  forbiddenProducesObstruction_certified : forbiddenProducesObstruction
  compatibilityExcludesForbidden : Prop
  compatibilityExcludesForbidden_certified : compatibilityExcludesForbidden
  sourceLabel : String

theorem forbidden_produces_obstruction_if_supplied
    (P : CompatibilityObstructionProgram) :
    P.forbiddenProducesObstruction :=
  P.forbiddenProducesObstruction_certified

theorem compatibility_excludes_forbidden_if_supplied
    (P : CompatibilityObstructionProgram) :
    P.compatibilityExcludesForbidden :=
  P.compatibilityExcludesForbidden_certified

theorem program_has_static_invariant
    (P : CompatibilityObstructionProgram) :
    ∃ I : StaticInvariant, P.invariant = I :=
  ⟨P.invariant, rfl⟩

theorem program_has_obstruction_class
    (P : CompatibilityObstructionProgram) :
    ∃ O : ObstructionClass, P.obstruction = O :=
  ⟨P.obstruction, rfl⟩

end GrandChallenge
end Folder
