# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ComplexZetaHalfPlane.Variant4668772c7972d4e74a8b8c6f709296342a41e1f8b913388dbde003f5d846bfec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3142765730e2864f17077c264e08f218d78e306` · SHA-256 `68aad4832a59ffb9627b68ebbacb6d19a7b8aa4fad29aa7e84aef06fefa16e49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZetaComplexHalfPlane.Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ZetaComplexHalfPlane.Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ComplexZetaHalfPlane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane

The ordinary complex zeta Dirichlet series in the half-plane `Re(s) > 1`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZetaComplexHalfPlane.Variant461e963da3e0cd51103495abf57d4d7423409ac5ee177752455e42e09862662f

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def zetaComplexHalfPlane
    (s : Complex) : Complex :=
  ∑' n : Nat, complexWeight s n

theorem zetaComplexHalfPlane_summable
    {s : Complex}
    (hs : 1 < s.re) :
    Summable fun n : Nat => complexWeight s n :=
  complexZeta_terms_summable hs

noncomputable def zetaPartialComplex
    (s : Complex)
    (N : Nat) : Complex :=
  ∑ n ∈ Finset.Icc 1 N, complexWeight s n

theorem zetaPartialComplex_eq_range_sum
    (s : Complex)
    (N : Nat) :
    zetaPartialComplex s N =
      ∑ n ∈ Finset.range (N + 1), complexWeight s n := by
  unfold zetaPartialComplex
  refine Finset.sum_subset ?hsub ?hzero
  · intro n hn
    exact Finset.mem_range.mpr (Nat.lt_succ_of_le (Finset.mem_Icc.mp hn).2)
  · intro n hnrange hnnot
    have hn0 : n = 0 := by
      have hnlt : n < N + 1 := Finset.mem_range.mp hnrange
      by_contra hne
      have hpos : 1 ≤ n := Nat.succ_le_of_lt (Nat.pos_of_ne_zero hne)
      apply hnnot
      exact Finset.mem_Icc.mpr ⟨hpos, Nat.le_of_lt_succ hnlt⟩
    simp [hn0, complexWeight_zero]

theorem tendsto_zetaPartialComplex
    {s : Complex}
    (hs : 1 < s.re) :
    Filter.Tendsto
      (fun N : Nat => zetaPartialComplex s N)
      Filter.atTop
      (nhds (zetaComplexHalfPlane s)) := by
  have hsum : HasSum (fun n : Nat => complexWeight s n) (zetaComplexHalfPlane s) :=
    (zetaComplexHalfPlane_summable hs).hasSum
  have ht := hsum.tendsto_sum_nat
  have heq :
      (fun N : Nat => zetaPartialComplex s N) =
        fun N : Nat => ∑ n ∈ Finset.range (N + 1), complexWeight s n := by
    funext N
    exact zetaPartialComplex_eq_range_sum s N
  rw [heq]
  exact ht.comp (Filter.tendsto_add_atTop_nat 1)

def zetaComplexHalfPlane_nonzero_target : Prop :=
  ∀ s : Complex, 1 < s.re → zetaComplexHalfPlane s ≠ 0

end AnalyticNumberTheory
end Rebuild
end Folder
```
