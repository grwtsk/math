# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b603837a0753c1547deddb3c8b40d68823b4e9fa` · SHA-256 `6f0154f74ad1add1c19a16ee02784ee688f7305a71db3019aa6f4bfbcbcd4d73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

```
