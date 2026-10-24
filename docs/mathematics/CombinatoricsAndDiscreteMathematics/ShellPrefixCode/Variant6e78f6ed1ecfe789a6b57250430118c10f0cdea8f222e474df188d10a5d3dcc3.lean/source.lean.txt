-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RawProductDyadicInterval.Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RawProductDyadicInterval.Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"b5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/ShellPrefixCode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.ProductDyadicInterval
import Mathlib.Tactic

/-!
# Canonical dyadic codes for product-shell prefixes

Every prefix `(2^q,x]` of a fixed product shell is partitioned by at most
`q+1` binary-aligned product intervals.  The construction recursively splits
the shell into its left and right halves; it never changes the master Vaughan
scale `N`.

The resulting exact matrix identity is finite combinatorics.  No maximal or
square-function estimate is asserted here.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RawProductDyadicInterval.Variantb5f66e5ba6ca8ce9e2e4a4f5350efd2072a1f433e774e7d7ff28bb50b7158987

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-! ## A raw aligned recursion -/

/-- An unrestricted binary-aligned interval `(r*2^s,(r+1)*2^s]` used while
constructing a prefix code. -/
structure RawProductDyadicInterval where
  scale : ℕ
  block : ℕ
deriving DecidableEq

namespace RawProductDyadicInterval

@[expose]
def width (I : RawProductDyadicInterval) : ℕ := 2 ^ I.scale

@[expose]
def lower (I : RawProductDyadicInterval) : ℕ := I.block * I.width

@[expose]
def upper (I : RawProductDyadicInterval) : ℕ := (I.block + 1) * I.width

@[expose]
def carrier (I : RawProductDyadicInterval) : Finset ℕ :=
  Finset.Ioc I.lower I.upper

@[surface_novel, surface_published]
theorem width_pos (I : RawProductDyadicInterval) : 0 < I.width := by
  simp [width]

@[surface_novel, surface_published]
theorem lower_lt_upper (I : RawProductDyadicInterval) :
    I.lower < I.upper := by
  simp only [lower, upper]
  exact Nat.mul_lt_mul_of_pos_right (Nat.lt_succ_self _) I.width_pos

@[surface_novel, surface_published]
theorem mem_carrier_iff (I : RawProductDyadicInterval) (n : ℕ) :
    n ∈ I.carrier ↔ I.lower < n ∧ n ≤ I.upper := by
  simp [carrier]

end RawProductDyadicInterval

/-- Proof-carrying output of the recursive binary decomposition of
`(block*2^depth,x]`. -/
structure RawShellPrefixCode (depth block x : ℕ) where
  intervals : Finset RawProductDyadicInterval
  contained : ∀ I ∈ intervals,
    block * 2 ^ depth ≤ I.lower ∧ I.upper ≤ x
  scale_le : ∀ I ∈ intervals, I.scale ≤ depth
  pairwise_disjoint :
    (↑intervals : Set RawProductDyadicInterval).PairwiseDisjoint
      RawProductDyadicInterval.carrier
  exact_cover :
    intervals.biUnion RawProductDyadicInterval.carrier =
      Finset.Ioc (block * 2 ^ depth) x
  card_le : intervals.card ≤ depth + 1

/-- Exact recursive binary decomposition.  The endpoint hypotheses say that
`x` lies in the closed dyadic window
`[block*2^depth,(block+1)*2^depth]`. -/
@[surface_novel, surface_published]
theorem exists_rawShellPrefixCode (depth block x : ℕ)
    (hlower : block * 2 ^ depth ≤ x)
    (hupper : x ≤ (block + 1) * 2 ^ depth) :
    Nonempty (RawShellPrefixCode depth block x) := by
  induction depth generalizing block x with
  | zero =>
      have hx : x = block ∨ x = block + 1 := by
        simp only [pow_zero, mul_one] at hlower hupper
        omega
      rcases hx with rfl | rfl
      · refine ⟨{
          intervals := ∅
          contained := by simp
          scale_le := by simp
          pairwise_disjoint := by simp
          exact_cover := by simp
          card_le := by simp }⟩
      · let I : RawProductDyadicInterval := ⟨0, block⟩
        refine ⟨{
          intervals := {I}
          contained := ?_
          scale_le := ?_
          pairwise_disjoint := ?_
          exact_cover := ?_
          card_le := ?_ }⟩
        · intro J hJ
          have hJI : J = I := by simpa using hJ
          subst J
          simp [I, RawProductDyadicInterval.lower,
            RawProductDyadicInterval.upper,
            RawProductDyadicInterval.width]
        · intro J hJ
          have hJI : J = I := by simpa using hJ
          subst J
          simp [I]
        · simp
        · simp [I, RawProductDyadicInterval.carrier,
            RawProductDyadicInterval.lower,
            RawProductDyadicInterval.upper,
            RawProductDyadicInterval.width]
        · simp
  | succ depth ih =>
      let leftBlock : ℕ := 2 * block
      let rightBlock : ℕ := 2 * block + 1
      let midpoint : ℕ := rightBlock * 2 ^ depth
      have hbase :
          block * 2 ^ (depth + 1) = leftBlock * 2 ^ depth := by
        simp [leftBlock, pow_succ']
        ring
      have hmid : midpoint = (leftBlock + 1) * 2 ^ depth := by
        simp [midpoint, rightBlock, leftBlock]
      have htop :
          (block + 1) * 2 ^ (depth + 1) =
            (rightBlock + 1) * 2 ^ depth := by
        simp [rightBlock, pow_succ']
        ring
      by_cases hxmid : x ≤ midpoint
      · have hlower' : leftBlock * 2 ^ depth ≤ x := by
          rwa [← hbase]
        have hupper' : x ≤ (leftBlock + 1) * 2 ^ depth := by
          rwa [← hmid]
        obtain ⟨code⟩ := ih leftBlock x hlower' hupper'
        refine ⟨{
          intervals := code.intervals
          contained := ?_
          scale_le := ?_
          pairwise_disjoint := code.pairwise_disjoint
          exact_cover := ?_
          card_le := code.card_le.trans (by omega) }⟩
        · intro I hI
          have h := code.contained I hI
          rwa [hbase]
        · intro I hI
          exact (code.scale_le I hI).trans (Nat.le_succ _)
        · simpa [hbase] using code.exact_cover
      · have hmid_le_x : midpoint ≤ x := by omega
        have hupper' : x ≤ (rightBlock + 1) * 2 ^ depth := by
          rwa [← htop]
        obtain ⟨rightCode⟩ := ih rightBlock x hmid_le_x hupper'
        let leftInterval : RawProductDyadicInterval := ⟨depth, leftBlock⟩
        have hleftLower : leftInterval.lower = block * 2 ^ (depth + 1) := by
          simp [leftInterval, RawProductDyadicInterval.lower,
            RawProductDyadicInterval.width, hbase]
        have hleftUpper : leftInterval.upper = midpoint := by
          simp [leftInterval, RawProductDyadicInterval.upper,
            RawProductDyadicInterval.width, hmid]
        have hnotmem : leftInterval ∉ rightCode.intervals := by
          intro hmem
          have hcontained := rightCode.contained leftInterval hmem
          rw [hleftLower] at hcontained
          have hstrict : block * 2 ^ (depth + 1) < midpoint := by
            have h := leftInterval.lower_lt_upper
            rwa [hleftLower, hleftUpper] at h
          omega
        have hdisjoint :
            ∀ J ∈ (↑rightCode.intervals : Set RawProductDyadicInterval),
              Disjoint leftInterval.carrier J.carrier := by
          intro J hJ
          have hcontained := rightCode.contained J hJ
          have hJlower : midpoint ≤ J.lower := by
            simpa [midpoint] using hcontained.1
          rw [Finset.disjoint_left]
          intro n hnleft hnright
          have hnleft' := leftInterval.mem_carrier_iff n |>.mp hnleft
          have hnright' := J.mem_carrier_iff n |>.mp hnright
          omega
        refine ⟨{
          intervals := insert leftInterval rightCode.intervals
          contained := ?_
          scale_le := ?_
          pairwise_disjoint := ?_
          exact_cover := ?_
          card_le := ?_ }⟩
        · intro I hI
          simp only [Finset.mem_insert] at hI
          rcases hI with rfl | hI
          · exact ⟨hleftLower.ge, hleftUpper.le.trans hmid_le_x⟩
          · have h := rightCode.contained I hI
            have hbase_mid : block * 2 ^ (depth + 1) ≤ midpoint := by
              have h := leftInterval.lower_lt_upper
              rw [hleftLower, hleftUpper] at h
              exact Nat.le_of_lt h
            have hmid_I : midpoint ≤ I.lower := by
              simpa [midpoint] using h.1
            exact ⟨hbase_mid.trans hmid_I, h.2⟩
        · intro I hI
          simp only [Finset.mem_insert] at hI
          rcases hI with rfl | hI
          · exact Nat.le_succ _
          · exact (rightCode.scale_le I hI).trans (Nat.le_succ _)
        · rw [Finset.coe_insert,
            Set.pairwiseDisjoint_insert_of_notMem]
          exact ⟨rightCode.pairwise_disjoint, hdisjoint⟩
          simpa using hnotmem
        · rw [Finset.biUnion_insert, rightCode.exact_cover]
          ext n
          simp only [Finset.mem_union,
            RawProductDyadicInterval.mem_carrier_iff,
            Finset.mem_Ioc, hleftLower, hleftUpper]
          change
            (block * 2 ^ (depth + 1) < n ∧ n ≤ midpoint) ∨
                (midpoint < n ∧ n ≤ x) ↔
              block * 2 ^ (depth + 1) < n ∧ n ≤ x
          have hbase_mid_strict :
              block * 2 ^ (depth + 1) < midpoint := by
            have h := leftInterval.lower_lt_upper
            rwa [hleftLower, hleftUpper] at h
          constructor
          · rintro (h | h)
            · exact ⟨h.1, h.2.trans hmid_le_x⟩
            · exact ⟨hbase_mid_strict.trans h.1, h.2⟩
          · intro h
            by_cases hn : n ≤ midpoint
            · exact Or.inl ⟨h.1, hn⟩
            · exact Or.inr ⟨by omega, h.2⟩
        · rw [Finset.card_insert_of_notMem hnotmem]
          exact Nat.succ_le_succ rightCode.card_le

/-! ## Conversion to the bounded product-shell interval type -/

/-- Convert one raw interval known to lie in the requested shell into the
finite canonical interval type. -/
@[expose]
def rawIntervalToProductInterval {N q : ℕ}
    (I : RawProductDyadicInterval)
    (hscale : I.scale ≤ q)
    (hlower : 2 ^ q ≤ I.lower)
    (hupper : I.upper ≤ typeIIProductShellUpper N q) :
    TypeIIProductDyadicInterval N q := by
  have hblock : I.block < 2 * N + 1 := by
    have hblock_le_lower : I.block ≤ I.lower := by
      simp only [RawProductDyadicInterval.lower,
        RawProductDyadicInterval.width]
      exact Nat.le_mul_of_pos_right I.block (pow_pos (by decide) _)
    have hlower_le_upper : I.lower ≤ I.upper :=
      Nat.le_of_lt I.lower_lt_upper
    have hupperScale : I.upper ≤ 2 * N :=
      hupper.trans (min_le_right _ _)
    omega
  exact ⟨(⟨I.scale, Nat.lt_succ_iff.mpr hscale⟩,
      ⟨I.block, hblock⟩), ⟨hlower, hupper⟩⟩

@[surface_novel, surface_published]
theorem rawIntervalToProductInterval_carrier {N q : ℕ}
    (I : RawProductDyadicInterval)
    (hscale : I.scale ≤ q)
    (hlower : 2 ^ q ≤ I.lower)
    (hupper : I.upper ≤ typeIIProductShellUpper N q) :
    (rawIntervalToProductInterval I hscale hlower hupper).carrier = I.carrier := by
  rfl

/-- A proof-carrying canonical code for one shell prefix. -/
structure TypeIIShellPrefixCode (N q x : ℕ) where
  intervals : Finset (TypeIIProductDyadicInterval N q)
  pairwise_disjoint :
    (↑intervals : Set (TypeIIProductDyadicInterval N q)).PairwiseDisjoint
      TypeIIProductDyadicInterval.carrier
  exact_cover :
    intervals.biUnion TypeIIProductDyadicInterval.carrier =
      typeIIProductShellPrefixCarrier q x
  card_le : intervals.card ≤ q + 2

/-- Every endpoint in the product shell has a canonical, disjoint dyadic
prefix code. -/
@[surface_novel, surface_published]
theorem shellPrefix_has_disjointDyadicCode {N q x : ℕ}
    (hx : x ∈ typeIIProductShell N q) :
    Nonempty (TypeIIShellPrefixCode N q x) := by
  have hxmem := mem_typeIIProductShell_iff.mp hx
  have hlower : 1 * 2 ^ q ≤ x := by omega
  have hupper : x ≤ (1 + 1) * 2 ^ q := by
    have := hxmem.2.trans (min_le_left _ _)
    rw [pow_succ'] at this
    omega
  obtain ⟨raw⟩ := exists_rawShellPrefixCode q 1 x hlower hupper
  let convert : {I // I ∈ raw.intervals} → TypeIIProductDyadicInterval N q :=
    fun I ↦ rawIntervalToProductInterval I.1
      (raw.scale_le I.1 I.2)
      (by simpa using (raw.contained I.1 I.2).1)
      ((raw.contained I.1 I.2).2.trans hxmem.2)
  have hconvert_injective : Function.Injective convert := by
    intro I J hIJ
    apply Subtype.ext
    cases I with
    | mk I hI =>
      cases J with
      | mk J hJ =>
        cases I
        cases J
        simp_all [convert, rawIntervalToProductInterval]
  let embedding : {I // I ∈ raw.intervals} ↪
      TypeIIProductDyadicInterval N q :=
    ⟨convert, hconvert_injective⟩
  let code : Finset (TypeIIProductDyadicInterval N q) :=
    Finset.univ.map embedding
  refine ⟨{
    intervals := code
    pairwise_disjoint := ?_
    exact_cover := ?_
    card_le := ?_ }⟩
  · intro A hA B hB hne
    simp only [code, Finset.coe_map, Set.mem_image, Finset.mem_coe,
      Finset.mem_univ] at hA hB
    obtain ⟨I, _hIuniv, rfl⟩ := hA
    obtain ⟨J, _hJuniv, rfl⟩ := hB
    have hIJ : I.1 ≠ J.1 := by
      intro h
      apply hne
      exact congrArg embedding (Subtype.ext h)
    have hraw := raw.pairwise_disjoint I.2 J.2 hIJ
    change Disjoint (Finset.Ioc I.1.lower I.1.upper)
      (Finset.Ioc J.1.lower J.1.upper)
    change Disjoint (Finset.Ioc I.1.lower I.1.upper)
      (Finset.Ioc J.1.lower J.1.upper) at hraw
    exact hraw
  · ext n
    constructor
    · intro hn
      simp only [Finset.mem_biUnion] at hn
      obtain ⟨D, hDcode, hnD⟩ := hn
      simp only [code, Finset.mem_map] at hDcode
      obtain ⟨I, _hI, rfl⟩ := hDcode
      have hnraw : n ∈ I.1.carrier := by
        change n ∈ Finset.Ioc I.1.lower I.1.upper at hnD
        exact hnD
      have hrawCover : n ∈ Finset.Ioc (1 * 2 ^ q) x := by
        rw [← raw.exact_cover]
        exact Finset.mem_biUnion.mpr ⟨I.1, I.2, hnraw⟩
      simpa [typeIIProductShellPrefixCarrier] using hrawCover
    · intro hn
      have hnraw : n ∈ raw.intervals.biUnion
          RawProductDyadicInterval.carrier := by
        rw [raw.exact_cover]
        simpa [typeIIProductShellPrefixCarrier] using hn
      obtain ⟨I, hI, hnI⟩ := Finset.mem_biUnion.mp hnraw
      apply Finset.mem_biUnion.mpr
      let Isub : {J // J ∈ raw.intervals} := ⟨I, hI⟩
      refine ⟨convert Isub, ?_, ?_⟩
      · simp [code, embedding, Isub]
      · change n ∈ Finset.Ioc I.lower I.upper
        exact hnI
  · calc
      code.card = Fintype.card {I // I ∈ raw.intervals} := by
        simp [code]
      _ = raw.intervals.card := Fintype.card_coe _
      _ ≤ q + 1 := raw.card_le
      _ ≤ q + 2 := by omega

/-- Exact matrix reconstruction supplied by a shell prefix code. -/
@[surface_novel, surface_published]
theorem shellPrefixMatrix_eq_sum_code
    {N q x : ℕ} (code : TypeIIShellPrefixCode N q x)
    {Left Right : Type*}
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) :
    typeIIProductShellPrefixMatrix leftIndex rightIndex q x =
      ∑ D ∈ code.intervals,
        typeIIProductIntervalMatrix leftIndex rightIndex D := by
  rw [typeIIProductShellPrefixMatrix_eq_sum_fibers]
  rw [← code.exact_cover]
  rw [Finset.sum_biUnion code.pairwise_disjoint]
  symm
  calc
    (∑ D ∈ code.intervals,
        typeIIProductIntervalMatrix leftIndex rightIndex D) =
      ∑ D ∈ code.intervals,
        ∑ n ∈ D.carrier,
          productFiberIncrementMatrix leftIndex rightIndex n := by
            apply Finset.sum_congr rfl
            intro D hD
            exact typeIIProductIntervalMatrix_eq_sum_fibers _ _ D
    _ = _ := rfl

end

end Surface.Core.TypeII

end
