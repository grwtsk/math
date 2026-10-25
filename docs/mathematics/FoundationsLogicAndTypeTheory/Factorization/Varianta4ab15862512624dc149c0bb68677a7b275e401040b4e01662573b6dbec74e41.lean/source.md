# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Factorization.Varianta4ab15862512624dc149c0bb68677a7b275e401040b4e01662573b6dbec74e41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31ee2d2224c2b733a3de32ca355b03aa337f8113` · SHA-256 `c606e641671b488084945909351c1029a9706d31193c42ea30e3ec393b45f51b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FactorizationMap.Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FactorizationMap.Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NumberTheory/Factorization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Factorization.Basic
import Folder.NumberTheory.PrimePower

/-!
# Folder.NumberTheory.Factorization

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.factorization
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FactorizationMap.Variant184f7066c9b6c88ce6520460a63bfbfc170163469e5361a894053a217ebb3d81

namespace Folder
namespace NumberTheory

def FactorizationMap (n : PositiveNat) : Nat →₀ Nat :=
  Nat.factorization n.val

def IsPrimeSupport (n : PositiveNat) (p : Nat) : Prop :=
  (FactorizationMap n p) ≠ 0

theorem factorization_support_prime
    (n : PositiveNat)
    {p : Nat}
    (hp : IsPrimeSupport n p) :
    Nat.Prime p := by
  have hmem : p ∈ (FactorizationMap n).support := by
    exact Finsupp.mem_support_iff.mpr hp
  have hpf : p ∈ n.val.primeFactors := by
    simpa [FactorizationMap, Nat.support_factorization] using hmem
  exact Nat.prime_of_mem_primeFactors hpf

theorem factorization_exponent_pos
    (n : PositiveNat)
    {p : Nat}
    (hp : IsPrimeSupport n p) :
    0 < FactorizationMap n p :=
  Nat.pos_of_ne_zero hp

noncomputable def factorPrimePowerOfSupport
    (n : PositiveNat)
    (p : Nat)
    (hp : IsPrimeSupport n p) :
    PrimePower where
  prime := p
  isPrime := factorization_support_prime n hp
  exponent := FactorizationMap n p
  exponent_pos := factorization_exponent_pos n hp

end NumberTheory
end Folder
```
