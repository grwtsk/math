/-
Released under the repository MIT license.
Research direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT.
Candidate source: native compilation and axiom audit NOT_RUN.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Classification.Catalogue

/-! # External source identity, review scope, and append-only preservation -/

set_option autoImplicit false

namespace GRWTSK.Logic.Classification

open GRWTSK.Order.Taxonomy

/-- These fields are evidence references, not proofs that bytes were checked. -/
structure Snapshot where
  repository : String
  commit : String
  leanToolchain : String
  dependencyLockDigest : Option String
  deriving DecidableEq, Repr

inductive SourceRole where
  | library | positiveCheck | negativeControl | auditDriver | manuscript | historical
  deriving DecidableEq, Repr

inductive VerificationScope where
  | declaration | supportingResult | mainResult | wholeModule | wholeRepository
  deriving DecidableEq, Repr

inductive ReportedStatus where
  | unreviewed | sourceInspected | historicallyChecked | replayPassed | replayFailed | notRun
  deriving DecidableEq, Repr

/-- A locator is not a Lean proof. Toolchain and source role are independent of subject. -/
structure SourceRef where
  snapshot : Snapshot
  path : String
  moduleName : Option String
  declarationName : Option String
  sourceDigest : Option String
  role : SourceRole
  deriving DecidableEq, Repr

/-- A status claim requires an external receipt; even this record is not kernel evidence. -/
structure VerificationRecord where
  source : SourceRef
  scope : VerificationScope
  reportedStatus : ReportedStatus
  receiptDigest : Option String
  permittedAxioms : List String
  deriving DecidableEq, Repr

/-- Original identity, notation, and parent remain distinct from normalized addresses. -/
structure ExternalNode where
  id : String
  parentId : Option String
  notation : String
  label : String
  address : Address
  deriving DecidableEq, Repr

/-- Mathematical classification may be reviewed independently of native proof replay. -/
structure ClassificationRecord where
  source : SourceRef
  primaryTaxonId : String
  secondaryTaxonIds : List String
  rationale : String
  reviewed : Bool
  deriving DecidableEq, Repr

/-- Generic preservation law; cryptographic collision resistance is not assumed. -/
def AppendOnly {Record : Type} (oldRows newRows : List Record) : Prop :=
  ∃ tail, newRows = oldRows ++ tail

theorem appendOnly_refl {Record : Type} (rows : List Record) : AppendOnly rows rows :=
  ⟨[], (List.append_nil rows).symm⟩

theorem appendOnly_trans {Record : Type} {a b c : List Record}
    (hab : AppendOnly a b) (hbc : AppendOnly b c) : AppendOnly a c := by
  rcases hab with ⟨s, rfl⟩
  rcases hbc with ⟨t, rfl⟩
  exact ⟨s ++ t, List.append_assoc a s t⟩

end GRWTSK.Logic.Classification
