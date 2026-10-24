# Complete source: GRWTSK.Analysis.ComplexAnalysis.ComplexWeights.Variant2451fa653d875238fb5f701293fc7cdc22ff433d7db79b37da3cc8ead1e3e0e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4209829870befe3f863256bb57f97c686a696e8d` · SHA-256 `62fdd90035020d4649c9836c75a6da96e2a5c77f240d0329d9df4269c50c2223`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ComplexWeight.Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ComplexWeight.Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ComplexWeights.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexWeights

Complex Dirichlet weights in the absolutely convergent half-plane.
-/


namespace GRWTSK.Analysis.ComplexAnalysis.ComplexWeight.Variant5bcbab1ce437d11c6bcce03f8865265ace54986f88cd0a66027050188c16967c

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

noncomputable def complexWeight
    (s : Complex)
    (n : Nat) : Complex :=
  if n = 0 then 0 else Complex.exp (-(s * ((Real.log n : Real) : Complex)))

theorem complexWeight_zero
    (s : Complex) :
    complexWeight s 0 = 0 := by
  simp [complexWeight]

theorem complexWeight_one
    (s : Complex) :
    complexWeight s 1 = 1 := by
  simp [complexWeight]

theorem complexWeight_of_pos
    (s : Complex)
    {n : Nat}
    (hn : 0 < n) :
    complexWeight s n =
      Complex.exp (-(s * ((Real.log n : Real) : Complex))) := by
  simp [complexWeight, Nat.ne_of_gt hn]

theorem norm_complexWeight_eq_posWeightReal_re
    (s : Complex)
    {n : Nat}
    (hn : 0 < n) :
    ‖complexWeight s n‖ = posWeightReal s.re n := by
  rw [complexWeight_of_pos s hn]
  rw [Complex.norm_exp]
  rw [posWeightReal_of_pos s.re hn]
  rw [Real.rpow_def_of_pos (Nat.cast_pos.mpr hn)]
  congr 1
  rw [Complex.neg_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im]
  ring

theorem norm_complexWeight_le_posWeightReal_re
    (s : Complex)
    (n : Nat) :
    ‖complexWeight s n‖ ≤ posWeightReal s.re n := by
  by_cases hn : n = 0
  · simp [complexWeight, posWeightReal, hn]
  · exact le_of_eq (norm_complexWeight_eq_posWeightReal_re s (Nat.pos_of_ne_zero hn))

theorem complexWeight_mul
    (s : Complex)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    complexWeight s (m * n) =
      complexWeight s m * complexWeight s n := by
  rw [complexWeight_of_pos s (Nat.mul_pos hm hn), complexWeight_of_pos s hm,
    complexWeight_of_pos s hn]
  rw [← Complex.exp_add]
  congr 1
  have hlog :
      Real.log ((m * n : Nat) : Real) =
        Real.log (m : Real) + Real.log (n : Real) := by
    rw [Nat.cast_mul]
    exact
      Real.log_mul
        (by exact_mod_cast (Nat.ne_of_gt hm))
        (by exact_mod_cast (Nat.ne_of_gt hn))
  rw [hlog]
  push_cast
  ring

theorem complexWeight_completely_multiplicative
    (s : Complex) :
    Folder.Rebuild.NumberTheory.IsCompletelyMultiplicative
      (fun n : Nat => complexWeight s n) := by
  constructor
  · exact complexWeight_one s
  · intro a b
    by_cases ha : a = 0
    · subst a
      simp [complexWeight]
    · by_cases hb : b = 0
      · subst b
        simp [complexWeight]
      · exact complexWeight_mul s (Nat.pos_of_ne_zero ha) (Nat.pos_of_ne_zero hb)

end AnalyticNumberTheory
end Rebuild
end Folder
```
