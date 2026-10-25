# Complete source: GRWTSK.Logic.Classification.Provenance

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1616f6d885630918e29f3fb6ef968e099ffafe30` · SHA-256 `60a6a4bc65a81ba22876f38169dd2fdb0190892db1edc123215d2eb4639eefc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Released under the repository MIT license.
Research direction: grwtsk contributors.
Implementation assistance: OpenAI ChatGPT.
Candidate source: native compilation and axiom audit NOT_RUN.
-/
import GRWTSK.Logic.Classification.Catalogue

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
```
