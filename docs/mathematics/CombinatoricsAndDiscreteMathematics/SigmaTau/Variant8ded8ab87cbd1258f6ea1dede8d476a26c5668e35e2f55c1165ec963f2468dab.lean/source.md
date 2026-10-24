# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SigmaTau.Variant8ded8ab87cbd1258f6ea1dede8d476a26c5668e35e2f55c1165ec963f2468dab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fff2476e0729d7d618c161d3997583976fcfa7b0` · SHA-256 `d40d025ed8f3a69489f9958c62e8d3279e60a1a92c1749e75870b72a729f08af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Tau.Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Tau.Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/SigmaTau.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.DivisorSum
import Mathlib.NumberTheory.Divisors

/-!
# Folder.Rebuild.NumberTheory.SigmaTau

Divisor-counting and divisor-sum functions for the rebuild branch.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Tau.Variant3ebe831b5af49a964edf18133c0df3560dcc653e7962d99a7dc52141b9aa09bf

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def tau : ArithFn Nat :=
  fun n => (Nat.divisors n).card

def sigma : ArithFn Nat :=
  fun n => ∑ d ∈ Nat.divisors n, d

theorem tau_one : tau 1 = 1 := by
  simp [tau]

theorem sigma_one : sigma 1 = 1 := by
  simp [sigma]

theorem tau_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    tau p = 2 := by
  rw [tau, hp.divisors]
  exact Finset.card_pair (Ne.symm hp.ne_one)

theorem sigma_prime
    {p : Nat}
    (hp : Nat.Prime p) :
    sigma p = p + 1 := by
  rw [sigma, hp.divisors, Finset.sum_pair (Ne.symm hp.ne_one)]
  rw [add_comm]

theorem tau_prime_power
    {p k : Nat}
    (hp : Nat.Prime p) :
    tau (p ^ k) = k + 1 := by
  simp [tau, Nat.divisors_prime_pow hp]

theorem sigma_prime_power
    {p k : Nat}
    (hp : Nat.Prime p) :
    sigma (p ^ k) = ∑ j ∈ Finset.range (k + 1), p ^ j := by
  simp [sigma, Nat.sum_divisors_prime_pow hp]

end NumberTheory
end Rebuild
end Folder
```
