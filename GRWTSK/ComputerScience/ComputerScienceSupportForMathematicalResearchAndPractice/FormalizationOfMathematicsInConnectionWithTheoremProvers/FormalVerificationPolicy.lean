import Folder.GrandChallenge.FormalVerificationPolicy

/-!
# Folder.Theorem.GrandChallenge.FormalVerificationPolicy

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports formal verification policy facts.
Ontology: proof.formal_verification_policy
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem formal_policy_requires_kernel_check :
    Folder.GrandChallenge.defaultFormalVerificationPolicy.requiresLeanKernelCheck :=
  Folder.GrandChallenge.formal_policy_requires_kernel_check

theorem formal_policy_forbids_sorry :
    Folder.GrandChallenge.defaultFormalVerificationPolicy.forbidsSorry :=
  Folder.GrandChallenge.formal_policy_forbids_sorry

theorem formal_policy_forbids_axiom :
    Folder.GrandChallenge.defaultFormalVerificationPolicy.forbidsAxiom :=
  Folder.GrandChallenge.formal_policy_forbids_axiom

theorem formal_policy_allows_informal_heuristics :
    Folder.GrandChallenge.defaultFormalVerificationPolicy.informalReasoningAllowedAsHeuristic :=
  Folder.GrandChallenge.formal_policy_allows_informal_heuristics

end GrandChallenge
end Theorem
end Folder

