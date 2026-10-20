/-
ExistingProviderShellRoundTrips — individually reviewed exact mathematical source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e7de949bac797e160ffa30f5e3609b2bcb6fc86362f3a46cc9b56d746c214107
Organized SHA-256: 637db6d3e576a59a24c6c7bee87b3032df85a6aae5eb5783fac2a9be4e12c0b9
PMD: 510.1.070.020 matrix theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All original base/k/n/P/X/Y and finite tensor/shell contexts and qualified inverse proofs remain exact. The original imported provider stays unresolved; no new244 provider, alias or stronger heat/bundle theorem is introduced. -/

import Folder.Research.ShapeChangingBundle

/-!
# Folder.Theorem.Research.ShapeChangingBundle

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.shape_changing_bundle
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGridConsequences.Variante7de949bac797e16

open Folder

open Carrier

theorem contract_expandWithShell_center
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
    (X : Folder.Research.ShapeChangingBundle.ShapeChangingState base k n) :
    (Folder.Research.ShapeChangingBundle.contractOneStep base k
      (Folder.Research.ShapeChangingBundle.expandWithShell base k P X)).1 = X :=
  Folder.Research.ShapeChangingBundle.contract_expandWithShell_center base k P X


theorem contract_expandWithShell_shell
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (P : Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
    (X : Folder.Research.ShapeChangingBundle.ShapeChangingState base k n) :
    (Folder.Research.ShapeChangingBundle.contractOneStep base k
      (Folder.Research.ShapeChangingBundle.expandWithShell base k P X)).2 =
      P.shell :=
  Folder.Research.ShapeChangingBundle.contract_expandWithShell_shell base k P X


theorem expand_contractOneStep
    (base : GridShape)
    (k : Nat)
    {n : Nat}
    (Y : Folder.Research.ShapeChangingBundle.ShapeChangingState base k (n + 1)) :
    Folder.Research.ShapeChangingBundle.expandWithShell base k
      ({ shell :=
          (Folder.Research.ShapeChangingBundle.contractOneStep base k Y).2 } :
        Folder.Research.ShapeChangingBundle.ShapeStepPayload base k n)
      (Folder.Research.ShapeChangingBundle.contractOneStep base k Y).1
    = Y :=
  Folder.Research.ShapeChangingBundle.expand_contractOneStep base k Y

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ShapeChangingGridConsequences.Variante7de949bac797e16
