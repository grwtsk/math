# Complete source: GRWTSK.Algebra.LinearAlgebra.QuotientConvention.Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da0e19398731813805fb287f497f41500ff753d2` · SHA-256 `91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import Mathlib.LinearAlgebra.Dimension.RankNullity
import Mathlib.RingTheory.Grassmannian

/-!
# Subspace dimension and Mathlib's quotient-rank Grassmannian

A dimension-k subspace of real n-space is the kernel of a quotient of dimension
n-k. Both conventions keep the SAME submodule; this is not orthogonal
complementation and introduces no ambient coordinate permutation or sign change.
The reverse conversion requires k <= n. All constructions below are author
candidates: compilation and exact statement/axiom checks remain with Codex.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n q : ℕ}

/-- Mathlib's convention records quotient rank, not dimension of the submodule. -/
abbrev QuotientPlane (q n : ℕ) := Module.Grassmannian ℝ (Fin n → ℝ) q

/-- Rank-nullity computes the actual quotient dimension of an intrinsic plane. -/
theorem intrinsicPlane_quotient_finrank (P : IntrinsicPlane k n) :
    Module.finrank ℝ ((Fin n → ℝ) ⧸ P.val) = n - k := by
  have h := P.val.finrank_quotient_add_finrank
  have hdim : Module.finrank ℝ (Fin n → ℝ) = n := by simp
  rw [P.property, hdim] at h
  omega

/-- Over the reals the stored stalk rank is the actual quotient dimension. -/
theorem quotientPlane_finrank (Q : QuotientPlane q n) :
    Module.finrank ℝ ((Fin n → ℝ) ⧸ Q.toSubmodule) = q := by
  let p : PrimeSpectrum ℝ := ⟨⊥, by infer_instance⟩
  simpa using Q.rankAtStalk_eq p

/-- The two dimensions add to the ambient dimension, without choosing a basis. -/
theorem quotientPlane_dimension_sum (Q : QuotientPlane q n) :
    q + Module.finrank ℝ Q.toSubmodule = n := by
  have h := Q.toSubmodule.finrank_quotient_add_finrank
  rw [quotientPlane_finrank Q] at h
  simpa using h

/-- A quotient Grassmannian point cannot have rank above ambient dimension. -/
theorem quotientPlane_rank_le (Q : QuotientPlane q n) : q ≤ n := by
  have h := quotientPlane_dimension_sum Q
  omega

/-- Change conventions while retaining precisely the original submodule. -/
def intrinsicToQuotientConvention (P : IntrinsicPlane k n) :
    QuotientPlane (n - k) n where
  toSubmodule := P.val
  finite_quotient := inferInstance
  projective_quotient := inferInstance
  rankAtStalk_eq p := by
    simpa using intrinsicPlane_quotient_finrank P

/-- Convention conversion leaves the underlying submodule unchanged. -/
theorem intrinsicToQuotientConvention_submodule (P : IntrinsicPlane k n) :
    (intrinsicToQuotientConvention P).toSubmodule = P.val := rfl

/-- Recover the dimension-k subspace; natural subtraction requires k <= n. -/
def quotientConventionToIntrinsic (hkn : k ≤ n) (Q : QuotientPlane (n - k) n) :
    IntrinsicPlane k n :=
  ⟨Q.toSubmodule, by
    have h := quotientPlane_dimension_sum Q
    omega⟩

/-- Reverse conversion also leaves the submodule unchanged. -/
theorem quotientConventionToIntrinsic_submodule (hkn : k ≤ n)
    (Q : QuotientPlane (n - k) n) :
    (quotientConventionToIntrinsic hkn Q).val = Q.toSubmodule := rfl

/-- The subspace convention and complementary quotient-rank convention agree. -/
def intrinsicEquivQuotientConvention (hkn : k ≤ n) :
    IntrinsicPlane k n ≃ QuotientPlane (n - k) n where
  toFun := intrinsicToQuotientConvention
  invFun := quotientConventionToIntrinsic hkn
  left_inv P := Subtype.ext rfl
  right_inv Q := Module.Grassmannian.ext rfl

/-- The forward/inverse round trip is an actual identity of intrinsic subspaces. -/
theorem quotientConvention_roundTrip_intrinsic (hkn : k ≤ n)
    (P : IntrinsicPlane k n) :
    quotientConventionToIntrinsic hkn (intrinsicToQuotientConvention P) = P :=
  (intrinsicEquivQuotientConvention hkn).left_inv P

/-- The other round trip is equality of Mathlib's Grassmannian structures. -/
theorem quotientConvention_roundTrip_mathlib (hkn : k ≤ n)
    (Q : QuotientPlane (n - k) n) :
    intrinsicToQuotientConvention (quotientConventionToIntrinsic hkn Q) = Q :=
  (intrinsicEquivQuotientConvention hkn).right_inv Q

/-- Compose the actual frame quotient with the Mathlib convention adapter. -/
def frameQuotientEquivMathlib (hkn : k ≤ n) :
    FramePresentationQuotient k n ≃ QuotientPlane (n - k) n :=
  frameQuotientEquivPlane.trans (intrinsicEquivQuotientConvention hkn)

/-- A full-rank frame gives a Mathlib point via its independently defined row span. -/
def frameToQuotientConvention (A : FullRankFrame k n) : QuotientPlane (n - k) n :=
  intrinsicToQuotientConvention (representedPlane A)

/-- No new geometric identifications are introduced by changing conventions. -/
theorem frameToQuotientConvention_eq_iff (A B : FullRankFrame k n) :
    frameToQuotientConvention A = frameToQuotientConvention B ↔
      frameRowSpace A.val = frameRowSpace B.val := by
  constructor
  · intro h
    exact congrArg (fun Q : QuotientPlane (n - k) n => Q.toSubmodule) h
  · intro h
    exact Module.Grassmannian.ext h

/-- Projective minor recognition now targets the actual Mathlib Grassmannian. -/
theorem frameToQuotientConvention_eq_iff_minors (A B : FullRankFrame k n) :
    frameToQuotientConvention A = frameToQuotientConvention B ↔
      ∃ t : ℝ, t ≠ 0 ∧ ∀ I : Fin k ↪o Fin n,
        orderedMinor B.val I = t * orderedMinor A.val I := by
  rw [frameToQuotientConvention_eq_iff]
  exact frameRowSpace_eq_iff_orderedMinor_proportional A.val B.val A.property B.property

/-- A nonnegative point still means an actual nonnegative row-frame representative. -/
def QuotientConventionNonnegative (Q : QuotientPlane (n - k) n) : Prop :=
  ∃ A : FullRankFrame k n,
    frameToQuotientConvention A = Q ∧ AllOrderedMinorsNonneg A.val

/-- Strict positivity uses the same ordered ambient columns and orientation. -/
def QuotientConventionPositive (Q : QuotientPlane (n - k) n) : Prop :=
  ∃ A : FullRankFrame k n,
    frameToQuotientConvention A = Q ∧ AllOrderedMinorsPos A.val

/-- Nonnegativity transports without choosing an arbitrary positive basis. -/
theorem intrinsicNonnegative_iff_quotientConvention (P : IntrinsicPlane k n) :
    IntrinsicNonnegative P ↔
      QuotientConventionNonnegative (k := k) (intrinsicToQuotientConvention P) := by
  constructor
  · rintro ⟨A, hA, hn⟩
    exact ⟨A, congrArg intrinsicToQuotientConvention hA, hn⟩
  · rintro ⟨A, hA, hn⟩
    refine ⟨A, Subtype.ext ?_, hn⟩
    exact congrArg (fun Q : QuotientPlane (n - k) n => Q.toSubmodule) hA

/-- The strictly positive locus transports with the same witness frame. -/
theorem intrinsicPositive_iff_quotientConvention (P : IntrinsicPlane k n) :
    IntrinsicPositive P ↔
      QuotientConventionPositive (k := k) (intrinsicToQuotientConvention P) := by
  constructor
  · rintro ⟨A, hA, hp⟩
    exact ⟨A, congrArg intrinsicToQuotientConvention hA, hp⟩
  · rintro ⟨A, hA, hp⟩
    refine ⟨A, Subtype.ext ?_, hp⟩
    exact congrArg (fun Q : QuotientPlane (n - k) n => Q.toSubmodule) hA

/-- The full subspace has quotient rank zero, in every ambient dimension. -/
def wholeSpaceQuotientPoint (n : ℕ) : QuotientPlane 0 n where
  toSubmodule := ⊤
  finite_quotient := inferInstance
  projective_quotient := inferInstance
  rankAtStalk_eq p := by simp

/-- Without k <= n, truncated subtraction gives a nonempty wrong target. -/
theorem quotientConvention_dimension_guard (h : n < k) :
    (¬ Nonempty (IntrinsicPlane k n)) ∧ Nonempty (QuotientPlane (n - k) n) := by
  constructor
  · exact no_intrinsicPlane_of_lt h
  · have hzero : n - k = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_lt h)
    rw [hzero]
    exact ⟨wholeSpaceQuotientPoint n⟩

/-- A non-self-dual example exposes the k versus n-k convention error. -/
theorem line_in_three_quotient_rank (P : IntrinsicPlane 1 3) :
    Module.finrank ℝ ((Fin 3 → ℝ) ⧸ P.val) = 2 := by
  simpa using intrinsicPlane_quotient_finrank P

/-- A line in three-space cannot simultaneously be a rank-one quotient kernel. -/
theorem line_in_three_not_quotient_rank_one (P : IntrinsicPlane 1 3) :
    Module.finrank ℝ ((Fin 3 → ℝ) ⧸ P.val) ≠ 1 := by
  have h := line_in_three_quotient_rank P
  omega

end

end FormalResearch.PositiveAtlas.Grassmannian
```
