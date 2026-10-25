# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinal.Variant90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de3615aa257e048d272585e2db475f8cd582bbde` · SHA-256 `90e9d8e740b3f8217aed5848d5e04a82c680b479d0b762339b6c6ecb19c90b0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.MathematicalTooling.Coverage.Reconstruction
import Mathlib.SetTheory.Cardinal.Regular

/-!
# Cardinal bounds for downward reconstruction

All cardinals in the estimate live in the same explicit universe as the source
type. This module consumes a covering family and a strong-limit hypothesis;
it does not assert that such a family exists. The catalogue counts individual
restrictions, not complete reconstruction codes or arbitrary unions of them.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

universe u

open Cardinal

variable {X : Type u}

/-- The unresolved producer of the small-block covering family. Quantifiers
retain the dependence of `κ` on both `lam` and `μ`. This is a proposition, not an
axiom, proof, or certificate that revised GCH has been replayed. -/
def RevisedCoveringStatement : Prop :=
  ∀ μ : Cardinal.{u}, μ.IsStrongLimit → ℵ₀ < μ →
    ∀ lam : Cardinal.{u}, μ ≤ lam →
      ∃ κ : Cardinal.{u}, κ < μ ∧
        ∃ P : Set (Set lam.out), #P ≤ lam ∧
          (∀ C ∈ P, #C < μ) ∧
          ∀ A : Set lam.out, #A < μ →
            ∃ Q : Set (Set lam.out), Q ⊆ P ∧ #Q < κ ∧ A ⊆ ⋃₀ Q

theorem downwardClosure_eq_iUnion (P : Set (Set X)) :
    downwardClosure P = ⋃ C : P, 𝒫 C.val := by
  ext B
  simp only [mem_downwardClosure, Set.mem_iUnion]
  constructor
  · rintro ⟨C, hC, hBC⟩
    exact ⟨⟨C, hC⟩, hBC⟩
  · rintro ⟨C, hBC⟩
    exact ⟨C.val, C.property, hBC⟩

/-- The first estimate allows duplicate fragments in different blocks. -/
theorem mk_downwardClosure_le_sum (P : Set (Set X)) :
    #(downwardClosure P) ≤ Cardinal.sum fun C : P ↦ 2 ^ #C.val := by
  rw [downwardClosure_eq_iUnion]
  simpa only [Cardinal.mk_powerset] using
    (Cardinal.mk_iUnion_le_sum_mk (f := fun C : P ↦ 𝒫 C.val))

theorem downward_member_small (P : Set (Set X)) (μ : Cardinal.{u})
    (hsize : ∀ C ∈ P, #C < μ) (B : Set X) (hB : B ∈ downwardClosure P) : #B < μ := by
  obtain ⟨C, hC, hBC⟩ := hB
  exact (Cardinal.mk_le_mk_of_subset hBC).trans_lt (hsize C hC)

/-- Each summand is small by the strong-limit property, while the family has
at most `lam` blocks. No uniform strict bound on those summands is presumed. -/
theorem sum_powerset_le_mul (P : Set (Set X)) (μ lam : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (hP : #P ≤ lam) (hsize : ∀ C ∈ P, #C < μ) :
    (Cardinal.sum fun C : P ↦ 2 ^ #C.val) ≤ lam * μ := by
  calc
    _ ≤ Cardinal.sum fun _ : P ↦ μ :=
      Cardinal.sum_le_sum _ _ fun C ↦ (hμ.isStrongPrelimit (hsize C.val C.property)).le
    _ = #P * μ := Cardinal.sum_const' _ _
    _ ≤ lam * μ := mul_le_mul' hP le_rfl

theorem mk_downwardClosure_le (P : Set (Set X)) (μ lam : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (hμlam : μ ≤ lam)
    (hP : #P ≤ lam) (hsize : ∀ C ∈ P, #C < μ) :
    #(downwardClosure P) ≤ lam := by
  calc
    _ ≤ Cardinal.sum fun C : P ↦ 2 ^ #C.val := mk_downwardClosure_le_sum P
    _ ≤ lam * μ := sum_powerset_le_mul P μ lam hμ hP hsize
    _ = lam := Cardinal.mul_eq_left (hμ.aleph0_le.trans hμlam) hμlam hμ.ne_zero

/-- Coverage and exact reconstruction use the identical index cardinal. -/
theorem reconstructed_index_bound {I : Type u} (A : Set X) (C : I → Set X)
    (hcover : A ⊆ ⋃ i, C i) (κ : Cardinal.{u}) (hI : #I < κ) :
    (A = ⋃ i, A ∩ C i) ∧ #I < κ :=
  ⟨reconstruct_of_cover A C hcover, hI⟩

/-- A previously supplied threshold may be enlarged monotonically. This is
about its covering witnesses, not a new existence theorem for revised GCH. -/
theorem covering_threshold_enlargement {I : Type u} (κ κ' : Cardinal.{u})
    (hκ : κ ≤ κ') (hI : #I < κ) : #I < κ' := hI.trans_le hκ

/-- Composing fewer than `μ` local covers may require a larger threshold.
The enlarged successor is still below the uncountable strong limit `μ`.
This applies to a supplied cofinal decomposition of a singular target; the
decomposition and its local covers are independent hypotheses. -/
theorem composed_cover_threshold {J : Type u} (I : J → Type u)
    (μ κ : Cardinal.{u}) (hμ : μ.IsStrongLimit) (huncountable : ℵ₀ < μ)
    (hκ : κ < μ) (hJ : #J < μ) (hI : ∀ j, #(I j) < κ) :
    ∃ κ' : Cardinal.{u}, κ' < μ ∧ κ ≤ κ' ∧ #J < κ' ∧ #(Σ j, I j) < κ' := by
  let β : Cardinal.{u} := max ℵ₀ (max κ #J)
  have hβ : β < μ := max_lt huncountable (max_lt hκ hJ)
  have hκβ : κ ≤ β := (le_max_left κ #J).trans (le_max_right ℵ₀ _)
  have hJβ : #J ≤ β := (le_max_right κ #J).trans (le_max_right ℵ₀ _)
  have hβinf : ℵ₀ ≤ β := le_max_left _ _
  refine ⟨Order.succ β, hμ.isSuccLimit.succ_lt hβ, hκβ.trans (Order.le_succ β),
    hJβ.trans_lt (Order.lt_succ β), ?_⟩
  rw [Cardinal.mk_sigma]
  exact Cardinal.sum_lt_of_isRegular (Cardinal.isRegular_succ hβinf)
    (hJβ.trans_lt (Order.lt_succ β)) fun j ↦
      (hI j).trans_le (hκβ.trans (Order.le_succ β))

/-- A composite cover reconstructs exactly using its dependent-sum indices. -/
theorem reconstruct_composed_cover {J : Type u} {I : J → Type u}
    (A : Set X) (targets : J → Set X) (C : ∀ j, I j → Set X)
    (htarget : A ⊆ ⋃ j, targets j) (hlocal : ∀ j, targets j ⊆ ⋃ i, C j i) :
    A = ⋃ p : Σ j, I j, A ∩ C p.1 p.2 := by
  apply reconstruct_of_cover
  intro x hx
  obtain ⟨j, hj⟩ := Set.mem_iUnion.mp (htarget hx)
  obtain ⟨i, hi⟩ := Set.mem_iUnion.mp (hlocal j hj)
  exact Set.mem_iUnion.mpr ⟨⟨j, i⟩, hi⟩

/-- An equivalence preserves fragment size without crossing cardinal universes. -/
theorem equiv_image_cardinal {Y : Type u} (e : X ≃ Y) (A : Set X) :
    #(e '' A) = #A := Cardinal.mk_image_eq e.injective

end FormalResearch.MathematicalTooling.Coverage
```
