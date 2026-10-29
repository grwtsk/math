-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tally.Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Tally.Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a","mathematical_subject":"Logic.Foundations","original_sha256":"e6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Tally.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Logic.Equiv.Basic

/-!
# Exact tally carrier

A tally is a natural count with a canonical constructor.  Certified tallies
retain one immutable mark per counted operation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tally.Variante6123caba1862bca4150708eba89e66fd39f36952d9a7e2e770a7e7ea14c9c0a

namespace Mathematics.AbelReynolds

structure Tally where
  count : Nat
  deriving DecidableEq, Repr

def Tally.empty : Tally :=
  ⟨0⟩

def Tally.ofNat (count : Nat) : Tally :=
  ⟨count⟩

def Tally.append (left right : Tally) : Tally :=
  ⟨left.count + right.count⟩

@[simp] theorem Tally.count_ofNat (count : Nat) :
    (Tally.ofNat count).count = count :=
  rfl

@[simp] theorem Tally.ofNat_count (tally : Tally) :
    Tally.ofNat tally.count = tally := by
  cases tally
  rfl

@[simp] theorem Tally.count_append (left right : Tally) :
    (left.append right).count = left.count + right.count :=
  rfl

def tallyEquivNat : Tally ≃ Nat where
  toFun := Tally.count
  invFun := Tally.ofNat
  left_inv := Tally.ofNat_count
  right_inv := Tally.count_ofNat

structure CertifiedMark where
  markId : String
  fieldId : String
  operationId : String
  dependencyDigest : String
  boundaryDigest : String
  evidenceDigest : String
  costWitness : Nat
  deriving DecidableEq, Repr

abbrev CertifiedTally := List CertifiedMark

def CertifiedTally.appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) : CertifiedTally :=
  tally ++ [mark]

@[simp] theorem CertifiedTally.length_appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) :
    (tally.appendMark mark).length = tally.length + 1 := by
  simp [CertifiedTally.appendMark]

theorem CertifiedTally.prefix_appendMark
    (tally : CertifiedTally)
    (mark : CertifiedMark) :
    tally.IsPrefix (tally.appendMark mark) := by
  refine ⟨[mark], ?_⟩
  simp [CertifiedTally.appendMark]

def fieldOrdinal (index : Nat) : Tally :=
  Tally.ofNat (index + 1)

@[simp] theorem fieldOrdinal_count (index : Nat) :
    (fieldOrdinal index).count = index + 1 :=
  rfl

end Mathematics.AbelReynolds
