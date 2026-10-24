# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.EulerPhi.Variant4036ef2a00c34902d20fb88f404e28e576a8eaec10fc5c964b4b61427261130d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7a2049c5cb4dd72ba3eda569e43444aa3435add` · SHA-256 `ec07c5ecd2104c83ae6c6d956449890b0629693b9d23136c660164aab505aac9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.EulerPhi.Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.EulerPhi.Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/EulerPhi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Nat.Totient

/-!
# Folder.Rebuild.NumberTheory.EulerPhi

Euler phi wrappers for the rebuild branch.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.EulerPhi.Variant8314421655ff522fc914c0c729da8887bb7b40fa9b8d66c93356095bfb7fe3f0

namespace Folder
namespace Rebuild
namespace NumberTheory

def eulerPhi : ArithFn Nat :=
  Nat.totient

theorem eulerPhi_one :
    eulerPhi 1 = 1 := by
  simp [eulerPhi]

theorem eulerPhi_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    eulerPhi p = p - 1 := by
  simpa [eulerPhi] using Nat.totient_prime hp

theorem eulerPhi_prime_power
    {p k : Nat}
    (hp : Nat.Prime p)
    (hk : 0 < k) :
    eulerPhi (p ^ k) = p ^ k - p ^ (k - 1) := by
  rw [eulerPhi, Nat.totient_prime_pow hp hk]
  have hkpred : k = k - 1 + 1 := by omega
  have hpow : p ^ k = p ^ (k - 1) * p := by
    conv_lhs => rw [hkpred]
    rw [pow_succ]
  calc
    p ^ (k - 1) * (p - 1)
        = p ^ (k - 1) * p - p ^ (k - 1) := by
            rw [Nat.mul_sub_left_distrib, mul_one]
    _ = p ^ k - p ^ (k - 1) := by
            rw [hpow]

theorem eulerPhi_mul_of_coprime
    {a b : Nat}
    (hab : Nat.Coprime a b) :
    eulerPhi (a * b) = eulerPhi a * eulerPhi b := by
  simpa [eulerPhi] using Nat.totient_mul hab

end NumberTheory
end Rebuild
end Folder
```
