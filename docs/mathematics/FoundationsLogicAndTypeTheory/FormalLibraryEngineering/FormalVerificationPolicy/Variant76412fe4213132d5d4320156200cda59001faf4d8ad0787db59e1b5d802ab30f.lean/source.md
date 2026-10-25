# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalVerificationPolicy.Variant76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20becf4cef534fbf0f95a6e1021d0ff6f949ff9c` · SHA-256 `76412fe4213132d5d4320156200cda59001faf4d8ad0787db59e1b5d802ab30f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.GrandChallenge.FormalVerificationPolicy

Radiation role: research-boundary
BinaryMatrix spine: This module records theorem-status verification policy.
Ontology: formal_verification_policy
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge

structure FormalVerificationPolicy where
  requiresLeanKernelCheck : Prop
  forbidsAxiom : Prop
  forbidsSorry : Prop
  forbidsAdmit : Prop
  forbidsSorryAx : Prop
  informalReasoningAllowedAsHeuristic : Prop
  theoremStatusRequiresCompilation : Prop
  sourceLabel : String

def defaultFormalVerificationPolicy : FormalVerificationPolicy := {
  requiresLeanKernelCheck := True
  forbidsAxiom := True
  forbidsSorry := True
  forbidsAdmit := True
  forbidsSorryAx := True
  informalReasoningAllowedAsHeuristic := True
  theoremStatusRequiresCompilation := True
  sourceLabel :=
    "Lean kernel verification policy inspired by Aristotle-style formal proof discipline"
}

theorem formal_policy_requires_kernel_check :
    defaultFormalVerificationPolicy.requiresLeanKernelCheck :=
  trivial

theorem formal_policy_forbids_sorry :
    defaultFormalVerificationPolicy.forbidsSorry :=
  trivial

theorem formal_policy_forbids_axiom :
    defaultFormalVerificationPolicy.forbidsAxiom :=
  trivial

theorem formal_policy_allows_informal_heuristics :
    defaultFormalVerificationPolicy.informalReasoningAllowedAsHeuristic :=
  trivial

end GrandChallenge
end Folder

```
