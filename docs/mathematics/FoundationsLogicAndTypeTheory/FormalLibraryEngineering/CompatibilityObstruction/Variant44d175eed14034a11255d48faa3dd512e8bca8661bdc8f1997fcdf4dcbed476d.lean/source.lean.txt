import Folder.GrandChallenge.CompatibilityObstruction

/-!
# Folder.Theorem.GrandChallenge.CompatibilityObstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports grand-challenge obstruction facts.
Ontology: proof.grand_challenge_compatibility_obstruction
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem forbidden_produces_obstruction_if_supplied
    (P : Folder.GrandChallenge.CompatibilityObstructionProgram) :
    P.forbiddenProducesObstruction :=
  Folder.GrandChallenge.forbidden_produces_obstruction_if_supplied P

theorem compatibility_excludes_forbidden_if_supplied
    (P : Folder.GrandChallenge.CompatibilityObstructionProgram) :
    P.compatibilityExcludesForbidden :=
  Folder.GrandChallenge.compatibility_excludes_forbidden_if_supplied P

end GrandChallenge
end Theorem
end Folder

