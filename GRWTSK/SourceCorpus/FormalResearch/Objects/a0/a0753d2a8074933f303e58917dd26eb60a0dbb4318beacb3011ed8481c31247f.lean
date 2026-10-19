import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Basic

set_option autoImplicit false

namespace Think.Analysis.Decoupling

/--
Authority states for the arXiv:1812.04760 decoupling formalization surface.

The current repository artifact records theorem statements and analytic
interfaces. It does not prove the analytic decoupling theorem.
-/
inductive DecouplingAuthority where
  | openResidue
  | checkedProof
  | trustedImport
  | refusedOverclaim
deriving DecidableEq, Repr

def DecouplingAuthority.isProofPositive : DecouplingAuthority → Bool
  | .checkedProof => true
  | .trustedImport => true
  | _ => false

/-- A light finite point model for the plane. -/
abbrev PlanePoint := Fin 2 → ℝ

/-- Source metadata for the paper being routed as an external theorem surface. -/
structure ArxivDecouplingPaper where
  arxivId : String
  title : String
  theoremAuthority : DecouplingAuthority
  checkedProofReady : Bool
  trustedImportReady : Bool
deriving DecidableEq, Repr

def arxiv181204760Paper : ArxivDecouplingPaper :=
  { arxivId := "1812.04760"
    title := "l2 Decoupling in R2 for curves with Vanishing Curvature"
    theoremAuthority := .openResidue
    checkedProofReady := false
    trustedImportReady := false }

/-- A named theorem surface, not a theorem proof. -/
structure DecouplingTheoremSurface where
  arxivId : String
  externalLabel : String
  leanNamespace : String
  leanName : String
  theoremStatementRecorded : Bool
  proofComplete : Bool
  authority : DecouplingAuthority
  unresolvedResidue : String
deriving DecidableEq, Repr

/--
A receipt for the intended checked-proof target. `promotableToCheckedProof`
remains false until the analytic proof and all trusted dependencies are
actually supplied.
-/
structure CheckedProofReceipt where
  arxivId : String
  theoremMapId : String
  leanModule : String
  lakeBuildRequired : Bool
  noSorryRequired : Bool
  trustedImportRequiredForBourgainDemeter : Bool
  promotableToCheckedProof : Bool
  unresolvedResidueCount : Nat
deriving DecidableEq, Repr

theorem arxiv181204760_metadata_is_open_residue :
    arxiv181204760Paper.theoremAuthority = .openResidue := rfl

theorem arxiv181204760_metadata_is_not_checked_proof :
    arxiv181204760Paper.theoremAuthority ≠ .checkedProof := by
  intro h
  cases h

theorem arxiv181204760_metadata_is_not_trusted_import :
    arxiv181204760Paper.theoremAuthority ≠ .trustedImport := by
  intro h
  cases h

end Think.Analysis.Decoupling
