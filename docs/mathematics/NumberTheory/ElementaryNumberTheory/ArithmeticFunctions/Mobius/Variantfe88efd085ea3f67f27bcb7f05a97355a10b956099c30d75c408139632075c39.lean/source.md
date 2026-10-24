# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Mobius.Variantfe88efd085ea3f67f27bcb7f05a97355a10b956099c30d75c408139632075c39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b73a31d80520248076b59b0d5fdc7bc23e4ee97d` · SHA-256 `114be45a2cc6d8fc81054071e375ab905ba967ad7721dbe088a5e268bf0e6e52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.MobiusFn.Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.MobiusFn.Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"eb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/Mobius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.DivisorSum
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# Folder.Rebuild.NumberTheory.Mobius

Finite Möbius identities repackaged for the rebuild branch.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.MobiusFn.Varianteb1ab3b9364e30eda7497275b61378e4a0fc171e23059c666183e2105f5b3bae

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators
open ArithmeticFunction
open scoped ArithmeticFunction.Moebius

noncomputable def mobiusFn : ArithFn Int :=
  fun n => ArithmeticFunction.moebius n

theorem mobius_sum_divisors_eq_one_or_zero
    (n : Nat) :
    (∑ d ∈ Nat.divisors n, mobiusFn d) =
      if n = 1 then 1 else 0 := by
  have h :=
    congrArg (fun F : ArithmeticFunction Int => F n)
      ArithmeticFunction.moebius_mul_coe_zeta
  rw [ArithmeticFunction.coe_mul_zeta_apply] at h
  simpa [mobiusFn, ArithmeticFunction.one_apply] using h

/--
Checked rebuild of finite Moebius inversion.

This is an elementary finite divisor-sum theorem. It is not an analytic theorem
and does not depend on prime-counting asymptotics, zeta continuation, or
zero-free regions.
-/
theorem mobius_inversion_finite_checked
    {f g : ArithFn Int}
    (hfg :
      ∀ n, 0 < n →
        g n = ∑ d ∈ Nat.divisors n, f d) :
    ∀ n, 0 < n →
      f n = ∑ d ∈ Nat.divisors n, mobiusFn d * g (n / d) := by
  intro n hn
  have hsum :
      ∀ n > 0, (∑ d ∈ Nat.divisors n, f d) = g n := by
    intro m hm
    exact (hfg m hm).symm
  have hm :=
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq
      (R := Int)).mp hsum n hn
  have hm' :
      ∑ x ∈ n.divisorsAntidiagonal,
        mobiusFn x.1 * g x.2 = f n := by
    simpa [mobiusFn] using hm
  rw [Nat.sum_divisorsAntidiagonal
    (fun d e => mobiusFn d * g e)] at hm'
  exact hm'.symm

theorem mobius_inversion
    {f g : ArithFn Int}
    (hfg :
      ∀ n, 0 < n →
        g n = ∑ d ∈ Nat.divisors n, f d) :
    ∀ n, 0 < n →
      f n = ∑ d ∈ Nat.divisors n, mobiusFn d * g (n / d) :=
  mobius_inversion_finite_checked hfg

end NumberTheory
end Rebuild
end Folder
```
