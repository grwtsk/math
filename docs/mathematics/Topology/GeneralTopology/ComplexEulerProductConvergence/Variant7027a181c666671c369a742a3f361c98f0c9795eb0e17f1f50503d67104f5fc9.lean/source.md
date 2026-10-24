# Complete source: GRWTSK.Topology.GeneralTopology.ComplexEulerProductConvergence.Variant7027a181c666671c369a742a3f361c98f0c9795eb0e17f1f50503d67104f5fc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7baba381aec4fc590920a78a7c33c97520c875e9` · SHA-256 `bd6ff104a7ecee1245b0f18902350089fd5d1cf650594d3ceef67e1cb617babf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TendstoFinsetSumsOfSummableOfEventuallyContainsIcc.Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TendstoFinsetSumsOfSummableOfEventuallyContainsIcc.Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ComplexEulerProductConvergence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductFinite
import Folder.Rebuild.AnalyticNumberTheory.RealEulerProductConvergence

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductConvergence

Complex Euler-product convergence in the ordinary half-plane of absolute
convergence.
-/


namespace GRWTSK.Topology.GeneralTopology.TendstoFinsetSumsOfSummableOfEventuallyContainsIcc.Variant73f544207507e20c39520f915120f8464078f1be41c7b309d177875e420aa5b4

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

theorem tendsto_finset_sums_of_summable_of_eventually_contains_Icc
    {f : Nat → Complex}
    (hf : Summable f)
    (F : Nat → Finset Nat)
    (hF : ∀ M : Nat, ∃ N₀ : Nat, ∀ N ≥ N₀, Finset.Icc 1 M ⊆ F N)
    (hzero : f 0 = 0) :
    Filter.Tendsto
      (fun N : Nat => ∑ n ∈ F N, f n)
      Filter.atTop
      (nhds (∑' n : Nat, f n)) := by
  let G : Nat → Finset Nat := fun N => insert 0 (F N)
  have hG : Filter.Tendsto G Filter.atTop Filter.atTop := by
    exact Filter.tendsto_atTop_atTop.mpr (fun S : Finset Nat => by
      obtain ⟨N₀, hN₀⟩ := hF (S.sup fun y => y)
      refine ⟨N₀, ?_⟩
      intro N hN x hxS
      by_cases hx0 : x = 0
      · simp [G, hx0]
      · have hpos : 1 ≤ x := Nat.succ_le_of_lt (Nat.pos_of_ne_zero hx0)
        have hxle : x ≤ S.sup (fun y => y) :=
          Finset.le_sup (f := fun y => y) hxS
        have hxIcc : x ∈ Finset.Icc 1 (S.sup fun y => y) :=
          Finset.mem_Icc.mpr ⟨hpos, hxle⟩
        have hxF : x ∈ F N := hN₀ N hN hxIcc
        simp [G, hxF])
  have hhas : HasSum f (∑' n : Nat, f n) := hf.hasSum
  have ht :
      Filter.Tendsto
        (fun N : Nat => ∑ n ∈ G N, f n)
        Filter.atTop
        (nhds (∑' n : Nat, f n)) :=
    hhas.comp hG
  have heq :
      (fun N : Nat => ∑ n ∈ G N, f n) =
        fun N : Nat => ∑ n ∈ F N, f n := by
    funext N
    by_cases h0 : 0 ∈ F N
    · rw [show G N = F N by simp [G, h0]]
    · rw [show G N = insert 0 (F N) by rfl]
      rw [Finset.sum_insert h0, hzero, zero_add]
  rw [← heq]
  exact ht

theorem tendsto_boundedSmoothNumber_sums_complexWeight
    {s : Complex}
    (hs : 1 < s.re) :
    Filter.Tendsto
      (fun N : Nat =>
        ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N, complexWeight s n)
      Filter.atTop
      (nhds (zetaComplexHalfPlane s)) := by
  unfold zetaComplexHalfPlane
  refine
    tendsto_finset_sums_of_summable_of_eventually_contains_Icc
      (zetaComplexHalfPlane_summable hs)
      (fun N => boundedSmoothNumbers (primesUpTo N) N) ?_ (complexWeight_zero s)
  intro M
  refine ⟨M, ?_⟩
  intro N hNM n hn
  exact
    Icc_subset_boundedSmoothNumbers_primesUpTo N
      (Finset.mem_Icc.mpr
        ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hNM⟩)

/--
Checked complex Euler-product convergence for zeta in the half-plane
`Re(s) > 1`.

The approximants are finite products over primes `p <= N`, with local exponent
cutoff `N`. They converge to the absolutely convergent complex Dirichlet series
`zetaComplexHalfPlane s`.

This is not analytic continuation, not a zero-free region, not PNT, not RH,
and not generalized RH.
-/
theorem tendsto_zetaEulerApproxComplex
    {s : Complex}
    (hs : 1 < s.re) :
    Filter.Tendsto
      (fun N : Nat => zetaEulerApproxComplex s N)
      Filter.atTop
      (nhds (zetaComplexHalfPlane s)) := by
  have ht := tendsto_boundedSmoothNumber_sums_complexWeight (s := s) hs
  have heq :
      (fun N : Nat => zetaEulerApproxComplex s N) =
        fun N : Nat =>
          ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N, complexWeight s n := by
    funext N
    exact zetaEulerApproxComplex_expands_boundedSmoothNumbers s N
  rw [heq]
  exact ht

end AnalyticNumberTheory
end Rebuild
end Folder
```
