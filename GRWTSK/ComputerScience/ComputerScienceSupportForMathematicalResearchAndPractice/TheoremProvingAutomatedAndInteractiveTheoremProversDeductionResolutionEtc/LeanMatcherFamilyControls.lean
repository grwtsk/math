import Lean
open Lean Elab Command

namespace LeanMatcherFamily.Controls
def walk : Nat → Nat
  | 0 => 0
  | n + 1 => walk n
def plain (n : Nat) := n + 1
end LeanMatcherFamily.Controls

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LeanMatcherFamilyControls.lean
Git blob: aafc95d74df2a638b6140bd3ed2162afc2421470
Retained the recursive and plain source fixtures only.
The matcher observer and NOE_MATCHER_CONTROL_OUTPUT emission are in the Noe driver.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/
