-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePower.Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.PrimePower.Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NumberTheory/PrimePower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.PositiveNat

/-!
# Folder.NumberTheory.PrimePower

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.prime_power
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimePower.Variant37287f48c7f7347c912dec817fe37454c1562dab7c5d456e1dd496285aa6aa57

namespace Folder
namespace NumberTheory

structure PrimePower where
  prime : Nat
  isPrime : Nat.Prime prime
  exponent : Nat
  exponent_pos : 0 < exponent

namespace PrimePower

def value (P : PrimePower) : Nat :=
  P.prime ^ P.exponent

theorem value_pos (P : PrimePower) : 0 < P.value := by
  exact pow_pos (Nat.Prime.pos P.isPrime) P.exponent

theorem value_ne_zero (P : PrimePower) : P.value ≠ 0 :=
  Nat.ne_of_gt P.value_pos

def asPositiveNat (P : PrimePower) : PositiveNat :=
  ⟨P.value, P.value_pos⟩

def PrimeLt (a b : PrimePower) : Prop :=
  a.prime < b.prime

theorem prime_ne_of_primeLt
    {a b : PrimePower}
    (h : PrimeLt a b) :
    a.prime ≠ b.prime :=
  Nat.ne_of_lt h

end PrimePower
end NumberTheory
end Folder
