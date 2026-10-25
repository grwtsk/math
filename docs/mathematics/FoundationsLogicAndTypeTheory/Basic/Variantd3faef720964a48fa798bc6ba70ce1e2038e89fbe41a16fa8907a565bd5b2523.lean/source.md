# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Basic.Variantd3faef720964a48fa798bc6ba70ce1e2038e89fbe41a16fa8907a565bd5b2523

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77c724f6b0f76aa4f7216bed224f87936f1e38a8` · SHA-256 `e1fab1d4e355ab424a153f4644bbbd744f9cf16fb7456c663c9c3942b25ec1f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.DecouplingAuthority.Varianta0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DecouplingAuthority.Varianta0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Analysis/Decoupling/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.DecouplingAuthority.Varianta0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f

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
```
