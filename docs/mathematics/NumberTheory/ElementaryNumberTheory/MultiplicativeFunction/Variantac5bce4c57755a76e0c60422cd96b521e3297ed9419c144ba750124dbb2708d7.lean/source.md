# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.MultiplicativeFunction.Variantac5bce4c57755a76e0c60422cd96b521e3297ed9419c144ba750124dbb2708d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc61d0a9b7a96f1cb9daadb25ca239f50102a363` · SHA-256 `04cff457c27d945464671996938e95b8de0b813b80c5c5fb5a1af3d05bc6d758`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithFn.Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.ArithFn.Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/MultiplicativeFunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.Divisibility

/-!
# Folder.Rebuild.NumberTheory.MultiplicativeFunction

Local multiplicative predicates for arithmetic functions in the rebuild branch.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithFn.Variant942284250d5c64e86e60e968d048489bd38c4272e57fafbd95887e7bca66960e

namespace Folder
namespace Rebuild
namespace NumberTheory

abbrev ArithFn (R : Type*) := Nat → R

def IsMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, Nat.Coprime a b → f (a * b) = f a * f b

def IsCompletelyMultiplicative
    [Mul R] [One R]
    (f : ArithFn R) : Prop :=
  f 1 = 1 ∧
    ∀ a b : Nat, f (a * b) = f a * f b

theorem completely_multiplicative_is_multiplicative
    [Mul R] [One R]
    {f : ArithFn R}
    (hf : IsCompletelyMultiplicative f) :
    IsMultiplicative f := by
  constructor
  · exact hf.1
  · intro a b _hab
    exact hf.2 a b

theorem multiplicative_mul
    [CommMonoid R]
    {f g : ArithFn R}
    (hf : IsMultiplicative f)
    (hg : IsMultiplicative g) :
    IsMultiplicative fun n => f n * g n := by
  constructor
  · simp [hf.1, hg.1]
  · intro a b hab
    change f (a * b) * g (a * b) =
      (f a * g a) * (f b * g b)
    rw [hf.2 a b hab, hg.2 a b hab]
    simp [mul_left_comm, mul_comm]

end NumberTheory
end Rebuild
end Folder
```
