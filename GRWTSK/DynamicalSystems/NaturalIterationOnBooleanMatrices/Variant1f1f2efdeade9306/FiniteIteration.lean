/-
FiniteIteration
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3
Organized SHA-256: 1aee939574508226e9f45c4fceea5fc1509feabc7251717bc8d797604837d104
PMD: 510.6.050 dynamical systems (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: physical GRWTSK subject placement only. Exact original namespace blocks, imported provider names, fields, hypotheses, equations and proofs are preserved. Historical provider lookup is unreplayed; the archive path is not an activated import alias. Distinct historical candidate versions are isolated and are not claimed compatible for coimport. No extra algebraic, analytic or computational acceptance claim is added.
-/

import BooleanMatrix.Application.Core

/-!
# Iterated BooleanMatrix execution
-/

namespace BooleanMatrix
namespace Application

/-- Execute an application a finite number of times. -/
def iterate
    (application : Application) :
    Nat → Application
  | 0 => identity
  | Nat.succ steps =>
      comp application (iterate application steps)

@[simp]
theorem iterate_zero
    (application : Application)
    (input : Matrix) :
    iterate application 0 input = input :=
  rfl

@[simp]
theorem iterate_succ
    (application : Application)
    (steps : Nat)
    (input : Matrix) :
    iterate application (Nat.succ steps) input =
      application (iterate application steps input) :=
  rfl

end Application
end BooleanMatrix
