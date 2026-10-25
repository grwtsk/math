/-
LiftedPairingEquation — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: bea659c7c07b1401097f72737a6596c096a163d860afcc94b5cae9fd22a62da3
Organized SHA-256: bcdd229bf0bc7c694bd667bb8c65362eb4e47a1e367363b79fbd19809fc63c91
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact consequence of the complete same-version operation/equality record under every original parameter and both P/Q inputs. The proof is H.commutator_lift P Q, a genuine supplied equation projection, not a construction of a Heisenberg group or bilinear/nondegenerate pairing. No m>0 assumption or alternate old pairing provider is introduced. -/

import Folder.Arithmetic.WeilPairing

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedLiftedPairingEquality.Variantbea659c7c07b1401.OperationAndLiftData

/-!
# Folder.Arithmetic.HeisenbergExtension

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.heisenberg_extension
Pivot role: none
Zero typology: elliptic
Contract boundary: contract
Composite stack role: torsion
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedLiftedPairingEquality.Variantbea659c7c07b1401

open Folder
open Folder.Arithmetic

universe u

theorem heisenberg_commutator_lift
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {m : Nat}
    {W : WeilPairingContract G m}
    (H : HeisenbergExtension G m W)
    (P Q : MTorsionPoint G m) :
    H.commutator (H.lift P) (H.lift Q) =
      H.center (W.pairing P Q) :=
  H.commutator_lift P Q


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedLiftedPairingEquality.Variantbea659c7c07b1401
