module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.BilinearPairing
public import Surface.Core.TypeII.BilinearPacket
public import Surface.Core.TypeII.DyadicBlocks
import Mathlib.Tactic

/-!
# Exact dyadic decomposition of the conductor-three Vaughan Type II prefix

This module groups the already checked finite Type II factor expansion into
the canonical disjoint rectangles `(M,2M] × (K,2K]`.  The arithmetic form
is complex bilinear, not sesquilinear.  Every theorem below is an exact
finite reindexing; there are no analytic estimates or hypotheses.
-/

public section

namespace Surface.Core.ConductorThreeVaughanBlocks

noncomputable section

open scoped BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeTwistedVaughan
open Surface.Core.ConductorThreeWangZahlTTStar
open Surface.Core.TypeII

/-- The literal hyperbola cutoff on one canonical dyadic rectangle. -/
@[expose]
def typeIIBlockCutoffMatrix {N : ℕ} (B : TypeIIDyadicBlock N) (x : ℕ) :
    Matrix B.Left B.Right ℂ :=
  typeIICutoffMatrix (fun m ↦ m.1.1) (fun k ↦ k.1.1) x

/-- The left conductor-three Vaughan vector restricted to one shell. -/
@[expose]
def blockLeftCoefficient {N : ℕ} (B : TypeIIDyadicBlock N) : B.Left → ℂ :=
  fun m ↦ conductorThreeVaughanLeft N m.1

/-- The right conductor-three Vaughan vector restricted to one shell. -/
@[expose]
def blockRightCoefficient {N : ℕ} (B : TypeIIDyadicBlock N) : B.Right → ℂ :=
  fun k ↦ conductorThreeVaughanRight N k.1

/-- The exact bilinear contribution from one dyadic rectangle. -/
@[expose]
def conductorThreeTypeIIBlockSubtypePairing {N : ℕ}
    (B : TypeIIDyadicBlock N) (x : ℕ) : ℂ :=
  bilinearMatrixPairing (blockLeftCoefficient B)
    (typeIIBlockCutoffMatrix B x) (blockRightCoefficient B)

/-! ## Masked full-scale form

The masked representation is convenient for proving the finite partition.
It is definitionally the same double sum as the subtype representation.
-/

@[expose]
def maskedBlockLeftCoefficient {N : ℕ} (B : TypeIIDyadicBlock N)
    (m : VaughanScaleIndex N) : ℂ :=
  if B.M < m.1 ∧ m.1 ≤ 2 * B.M then conductorThreeVaughanLeft N m else 0

@[expose]
def maskedBlockRightCoefficient {N : ℕ} (B : TypeIIDyadicBlock N)
    (k : VaughanScaleIndex N) : ℂ :=
  if B.K < k.1 ∧ k.1 ≤ 2 * B.K then conductorThreeVaughanRight N k else 0

@[expose]
def maskedTypeIIBlockPairing {N : ℕ}
    (B : TypeIIDyadicBlock N) (x : ℕ) : ℂ :=
  bilinearMatrixPairing (maskedBlockLeftCoefficient B)
    (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
      (fun k : VaughanScaleIndex N ↦ k.1) x)
    (maskedBlockRightCoefficient B)

/-- The block contribution in zero-extended full-scale form.  This form is
used for the exact partition theorem; `conductorThreeTypeIIBlockSubtypePairing`
exposes the equivalent finite shell types for later local analysis. -/
@[expose]
def conductorThreeTypeIIBlockPairing {N : ℕ}
    (B : TypeIIDyadicBlock N) (x : ℕ) : ℂ :=
  maskedTypeIIBlockPairing B x

/-- Pointwise disjointness of the dyadic rectangle masks on the effective
Type II support. -/
private theorem sum_masked_block_entries {N x : ℕ} (hx : x ≤ 2 * N)
    (m k : VaughanScaleIndex N) :
    (∑ B ∈ conductorThreeTypeIIBlocks N,
      maskedBlockLeftCoefficient B m *
        typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
          (fun i : VaughanScaleIndex N ↦ i.1) x m k *
        maskedBlockRightCoefficient B k) =
      conductorThreeVaughanLeft N m *
        typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
          (fun i : VaughanScaleIndex N ↦ i.1) x m k *
        conductorThreeVaughanRight N k := by
  classical
  let U := vaughanFourthRootCutoff N
  by_cases hm : U < m.1
  · by_cases hk : U < k.1
    · by_cases hmk : m.1 * k.1 ≤ x
      · let a : VaughanTypeIIFactorAtom N :=
          ⟨(m, k), ⟨hmk.trans hx, hm, hk⟩⟩
        let B₀ : TypeIIDyadicBlock N := typeIIFactorDyadicBlock a
        have hB₀mem : B₀ ∈ conductorThreeTypeIIBlocks N :=
          typeIIFactorDyadicBlock_mem a
        have hm₀ : B₀.M < m.1 ∧ m.1 ≤ 2 * B₀.M := by
          exact (typeIIFactorLeftInBlock a).2
        have hk₀ : B₀.K < k.1 ∧ k.1 ≤ 2 * B₀.K := by
          exact (typeIIFactorRightInBlock a).2
        rw [Finset.sum_eq_single B₀]
        · simp [maskedBlockLeftCoefficient, maskedBlockRightCoefficient,
            typeIICutoffMatrix, hm₀, hk₀, hm, hk, hmk,
            conductorThreeVaughanLeft, conductorThreeVaughanRight, U]
        · intro B hB hne
          by_cases hmB : B.M < m.1 ∧ m.1 ≤ 2 * B.M
          · by_cases hkB : B.K < k.1 ∧ k.1 ≤ 2 * B.K
            · have hmgt : 1 < m.1 :=
                (show 1 < 2 by decide).trans
                  ((two_le_vaughanFourthRootCutoff N).trans_lt hm)
              have hkgt : 1 < k.1 :=
                (show 1 < 2 by decide).trans
                  ((two_le_vaughanFourthRootCutoff N).trans_lt hk)
              have hMB := dyadicLowerEndpoint_eq_of_mem hmgt B.M_isPower hmB
              have hM₀ := dyadicLowerEndpoint_eq_of_mem hmgt B₀.M_isPower hm₀
              have hKB := dyadicLowerEndpoint_eq_of_mem hkgt B.K_isPower hkB
              have hK₀ := dyadicLowerEndpoint_eq_of_mem hkgt B₀.K_isPower hk₀
              exfalso
              exact hne (TypeIIDyadicBlock.ext (hMB.symm.trans hM₀)
                (hKB.symm.trans hK₀))
            · simp [maskedBlockRightCoefficient, hkB]
          · simp [maskedBlockLeftCoefficient, hmB]
        · simp [hB₀mem]
      · simp [typeIICutoffMatrix, hmk]
    · simp [maskedBlockRightCoefficient, conductorThreeVaughanRight, U, hk]
  · simp [maskedBlockLeftCoefficient, conductorThreeVaughanLeft, U, hm]

/-- The disjoint dyadic block pairings sum to the single full-scale bilinear
cutoff pairing. -/
@[surface_novel, surface_published]
theorem sum_typeIIBlockPairing_eq_global {N x : ℕ} (hx : x ≤ 2 * N) :
    (∑ B ∈ conductorThreeTypeIIBlocks N,
      conductorThreeTypeIIBlockPairing B x) =
      bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) := by
  classical
  simp only [conductorThreeTypeIIBlockPairing, maskedTypeIIBlockPairing,
    bilinearMatrixPairing]
  calc
    (∑ B ∈ conductorThreeTypeIIBlocks N,
        ∑ m, ∑ k,
          maskedBlockLeftCoefficient B m *
            typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
              (fun i : VaughanScaleIndex N ↦ i.1) x m k *
            maskedBlockRightCoefficient B k) =
      ∑ m, ∑ k, ∑ B ∈ conductorThreeTypeIIBlocks N,
          maskedBlockLeftCoefficient B m *
            typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
              (fun i : VaughanScaleIndex N ↦ i.1) x m k *
            maskedBlockRightCoefficient B k := by
              rw [Finset.sum_comm]
              apply Fintype.sum_congr
              intro m
              rw [Finset.sum_comm]
    _ = ∑ m, ∑ k,
        conductorThreeVaughanLeft N m *
          typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
            (fun i : VaughanScaleIndex N ↦ i.1) x m k *
          conductorThreeVaughanRight N k := by
            apply Fintype.sum_congr
            intro m
            apply Fintype.sum_congr
            intro k
            exact sum_masked_block_entries hx m k

local instance (N : ℕ) : Fintype (VaughanTypeIIFactorAtom N) :=
  @Subtype.fintype _ (IsVaughanTypeIIFactor N)
    (by intro q; unfold IsVaughanTypeIIFactor; infer_instance) inferInstance

private def prefixScaleIndex {N x : ℕ} (hx : x ≤ 2 * N) (n : Fin (x + 1)) :
    VaughanScaleIndex N :=
  ⟨n.1, by omega⟩

/-- The Type II prefix is the sum of exactly those effective factor atoms
whose product index has entered the prefix. -/
private theorem typeIIPrefix_eq_factorAtom_sum {N x : ℕ} (hx : x ≤ 2 * N) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      ∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
  let U := vaughanFourthRootCutoff N
  have hfiber (n : Fin (x + 1)) :
      (((conductorThreeIntegerValue n.1 : ℝ) *
          vaughanTypeIIScalar U U n.1 : ℝ) : ℂ) =
        ∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = prefixScaleIndex hx n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
    symm
    simpa [U, prefixScaleIndex] using
      (vaughanTypeIIFactor_fiber_eq_component N (prefixScaleIndex hx n))
  calc
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
        ∑ n : Fin (x + 1),
          (((conductorThreeIntegerValue n.1 : ℝ) *
            vaughanTypeIIScalar U U n.1 : ℝ) : ℂ) := by
              rw [Fin.sum_univ_eq_sum_range (fun n : ℕ ↦
                (((conductorThreeIntegerValue n : ℝ) *
                  vaughanTypeIIScalar U U n : ℝ) : ℂ))]
              simp [conductorThreeVaughanTypeIIPrefix, vaughanPrefix, U]
    _ = ∑ n : Fin (x + 1), ∑ a : VaughanTypeIIFactorAtom N,
          if vaughanTypeIIFactorIndex a = prefixScaleIndex hx n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
              apply Fintype.sum_congr
              exact hfiber
    _ = ∑ a : VaughanTypeIIFactorAtom N, ∑ n : Fin (x + 1),
          if vaughanTypeIIFactorIndex a = prefixScaleIndex hx n then
            vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 :=
      Finset.sum_comm
    _ = ∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0 := by
      apply Fintype.sum_congr
      intro a
      by_cases ha : (vaughanTypeIIFactorIndex a).1 ≤ x
      · let n₀ : Fin (x + 1) :=
          ⟨(vaughanTypeIIFactorIndex a).1, Nat.lt_succ_iff.mpr ha⟩
        rw [Finset.sum_eq_single n₀]
        · simp [ha, n₀, prefixScaleIndex]
        · intro n _ hne
          have hindex : vaughanTypeIIFactorIndex a ≠ prefixScaleIndex hx n := by
            intro heq
            apply hne
            exact Fin.ext (congrArg Fin.val heq).symm
          simp [hindex]
        · simp
      · have hindex : ∀ n : Fin (x + 1),
            vaughanTypeIIFactorIndex a ≠ prefixScaleIndex hx n := by
          intro n heq
          apply ha
          have hv := congrArg Fin.val heq
          calc
            (vaughanTypeIIFactorIndex a).1 = n.1 := by
              simpa [prefixScaleIndex] using hv
            _ ≤ x := Nat.le_of_lt_succ n.2
        simp [ha, hindex]

private def typeIIFactorTerm {N : ℕ} (q : VaughanFactorPair N) : ℂ :=
  conductorThreeVaughanLeft N q.1 * conductorThreeVaughanRight N q.2

private theorem vaughanTypeIIFactorCoefficient_eq_neg_term {N : ℕ}
    (a : VaughanTypeIIFactorAtom N) :
    vaughanFactorCoefficient (.inr (.inr (.inr a))) =
      -typeIIFactorTerm a.1 := by
  simp [vaughanFactorCoefficient, typeIIFactorTerm,
    conductorThreeVaughanLeft, conductorThreeVaughanRight,
    a.2.2.1, a.2.2.2]
  norm_cast
  ring

local instance typeIIFactorDecidable (N : ℕ) :
    DecidablePred (IsVaughanTypeIIFactor N) :=
  fun _ ↦ Classical.propDecidable _

private theorem typeIIFactor_indicator_eq {N x : ℕ} (hx : x ≤ 2 * N)
    (q : VaughanFactorPair N) :
    (if IsVaughanTypeIIFactor N q then
        if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0
      else 0) =
      -(conductorThreeVaughanLeft N q.1 *
        typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x q.1 q.2 *
        conductorThreeVaughanRight N q.2) := by
  classical
  by_cases hfactor : IsVaughanTypeIIFactor N q
  · rcases hfactor with ⟨hproduct, hleft, hright⟩
    by_cases hcutoff : q.1.1 * q.2.1 ≤ x
    · simp [IsVaughanTypeIIFactor, hproduct, hleft, hright, hcutoff,
        typeIIFactorTerm, typeIICutoffMatrix,
        conductorThreeVaughanLeft, conductorThreeVaughanRight]
    · simp [IsVaughanTypeIIFactor, hproduct, hleft, hright, hcutoff,
        typeIICutoffMatrix]
  · by_cases hleft : vaughanFourthRootCutoff N < q.1.1
    · by_cases hright : vaughanFourthRootCutoff N < q.2.1
      · have hcutoff : ¬ q.1.1 * q.2.1 ≤ x := by
          intro hle
          exact hfactor ⟨hle.trans hx, hleft, hright⟩
        simp [hfactor, hcutoff, typeIICutoffMatrix]
      · simp [hfactor, conductorThreeVaughanRight, hright]
    · simp [hfactor, conductorThreeVaughanLeft, hleft]

/-- The effective factor-atom sum is the negative of the global bilinear
cutoff pairing. -/
private theorem factorAtom_sum_eq_neg_global {N x : ℕ} (hx : x ≤ 2 * N) :
    (∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0) =
      -bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) := by
  classical
  let carrier : Finset (VaughanFactorPair N) :=
    Finset.univ.filter (IsVaughanTypeIIFactor N)
  calc
    (∑ a : VaughanTypeIIFactorAtom N,
        if (vaughanTypeIIFactorIndex a).1 ≤ x then
          vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0) =
      ∑ q ∈ carrier,
        if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0 := by
          simp only [vaughanTypeIIFactorIndex]
          simp_rw [vaughanTypeIIFactorCoefficient_eq_neg_term]
          apply (Finset.sum_subtype carrier ?_ fun q ↦
            if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0).symm
          intro q
          simp [carrier]
    _ = ∑ q : VaughanFactorPair N,
        if IsVaughanTypeIIFactor N q then
          (if q.1.1 * q.2.1 ≤ x then -typeIIFactorTerm q else 0)
        else 0 := by
          simp [carrier, Finset.sum_filter]
    _ = ∑ q : VaughanFactorPair N,
        -(conductorThreeVaughanLeft N q.1 *
          typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
            (fun k : VaughanScaleIndex N ↦ k.1) x q.1 q.2 *
          conductorThreeVaughanRight N q.2) := by
            apply Fintype.sum_congr
            exact typeIIFactor_indicator_eq hx
    _ = -bilinearMatrixPairing (conductorThreeVaughanLeft N)
        (typeIICutoffMatrix (fun m : VaughanScaleIndex N ↦ m.1)
          (fun k : VaughanScaleIndex N ↦ k.1) x)
        (conductorThreeVaughanRight N) := by
          rw [Fintype.sum_prod_type]
          simp only [bilinearMatrixPairing, Finset.sum_neg_distrib]

/-- Exact dyadic block decomposition of the fixed conductor-three Vaughan
Type II prefix.  The displayed minus sign is Vaughan's Type II sign; every
block pairing itself uses the unsigned left and right arithmetic vectors.

The hypothesis only says that the requested prefix lies inside the finite
scale `VaughanScaleIndex N`. -/
@[surface_novel, surface_published]
theorem conductorThreeTypeII_eq_sum_dyadicBlocks {N x : ℕ}
    (hx : x ≤ 2 * N) :
    (conductorThreeVaughanTypeIIPrefix N x : ℂ) =
      -∑ B ∈ conductorThreeTypeIIBlocks N,
        conductorThreeTypeIIBlockPairing B x := by
  rw [typeIIPrefix_eq_factorAtom_sum hx,
    factorAtom_sum_eq_neg_global hx,
    sum_typeIIBlockPairing_eq_global hx]

end

end Surface.Core.ConductorThreeVaughanBlocks
