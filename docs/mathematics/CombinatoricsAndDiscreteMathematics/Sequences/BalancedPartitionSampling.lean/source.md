# Complete source: GRWTSK.Combinatorics.Sequences.BalancedPartitionSampling

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c` · SHA-256 `2e1ce6360cca2e06e535692d27554d1c4740ed0aa4fea66af1da20868ef7eacc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Logic.Equiv.Fintype
import Mathlib.Tactic

/-!
# Balanced partitions and fixed-size uniform sampling

An ordered partition is a function with prescribed fiber cardinalities. The
sample space contains **all** such partitions, together with one element from
each fiber. Its counting law is exactly uniform partitions followed by uniform
independent choices within their parts. Relabeling the ambient finite type gives
an explicit bijection between any two output fibers of the same cardinality.
This proves the fixed-size subset law used in Pham--Sauermann,
arXiv:2602.15797v1, Section 3, without assuming that law or a constant-fiber field.
-/

namespace GRWTSK.BalancedPartitionSampling
open scoped BigOperators
noncomputable section
attribute [local instance] Classical.propDecidable

variable {A : Type*} [Fintype A] {m : ℕ}

/-- Every ordered partition with the prescribed part sizes is included. -/
def Partition (sizes : Fin m → ℕ) :=
  {f : A → Fin m // ∀ i, Fintype.card {a // f a = i} = sizes i}

/-- The actual finite parts of the fiber representation. -/
def part {sizes : Fin m → ℕ} (P : Partition (A := A) sizes) (i : Fin m) : Finset A := by
  classical exact Finset.univ.filter (fun a => P.val a = i)

@[simp] theorem mem_part {sizes : Fin m → ℕ} (P : Partition (A := A) sizes)
    (i : Fin m) (a : A) : a ∈ part P i ↔ P.val a = i := by
  classical simp [part]

@[simp] theorem part_card {sizes : Fin m → ℕ} (P : Partition (A := A) sizes)
    (i : Fin m) : (part P i).card = sizes i := by
  classical
  rw [part, ← Fintype.card_subtype]
  exact P.property i

theorem parts_pairwise_disjoint {sizes : Fin m → ℕ} (P : Partition (A := A) sizes) :
    Pairwise (fun i j => Disjoint (part P i) (part P j)) := by
  classical
  intro i j hij
  apply Finset.disjoint_left.mpr
  intro a ha hb
  exact hij ((mem_part P i a).mp ha |>.symm.trans ((mem_part P j a).mp hb))

@[simp] theorem parts_cover {sizes : Fin m → ℕ} (P : Partition (A := A) sizes) :
    Finset.univ.biUnion (part P) = Finset.univ := by
  classical
  ext a
  simp only [Finset.mem_biUnion, Finset.mem_univ, true_and, mem_part]
  exact ⟨fun _ => trivial, fun _ => ⟨P.val a, rfl⟩⟩

/-- One choice per part. The uniform law on this product is independent uniform
selection in each part. -/
abbrev Selection {sizes : Fin m → ℕ} (P : Partition (A := A) sizes) :=
  (i : Fin m) → {a // P.val a = i}

/-- A flat representation of a partition and its choices, retaining the whole
partition rather than just its selected transversal. -/
def Sample (sizes : Fin m → ℕ) :=
  {u : (A → Fin m) × (Fin m → A) //
    (∀ i, Fintype.card {a // u.1 a = i} = sizes i) ∧ ∀ i, u.1 (u.2 i) = i}

instance partitionFinite (sizes : Fin m → ℕ) : Finite (Partition (A := A) sizes) :=
  by unfold Partition; infer_instance

instance sampleFinite (sizes : Fin m → ℕ) : Finite (Sample (A := A) sizes) :=
  by unfold Sample; infer_instance

instance partitionFintype (sizes : Fin m → ℕ) : Fintype (Partition (A := A) sizes) :=
  Fintype.ofFinite _

instance sampleFintype (sizes : Fin m → ℕ) : Fintype (Sample (A := A) sizes) :=
  Fintype.ofFinite _

/-- The flat and conditional-product representations have exactly the same
samples, with no quotient or multiplicity suppression. -/
def sampleSigmaEquiv (sizes : Fin m → ℕ) :
    Sample (A := A) sizes ≃ Σ P : Partition (A := A) sizes, Selection P where
  toFun s := ⟨⟨s.val.1, s.property.1⟩, fun i => ⟨s.val.2 i, s.property.2 i⟩⟩
  invFun s := ⟨(s.1.val, fun i => (s.2 i).val), s.1.property, fun i => (s.2 i).property⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Conditional choices have the same cardinality for every partition. -/
theorem selection_card {sizes : Fin m → ℕ} (P : Partition (A := A) sizes) :
    Fintype.card (Selection P) = ∏ i, sizes i := by
  classical
  change Fintype.card ((i : Fin m) → {a // P.val a = i}) = _
  simp only [Fintype.card_pi, P.property]

/-- Thus the joint uniform counting law gives uniform mass to every partition,
then the product uniform law within it. -/
theorem sample_card (sizes : Fin m → ℕ) :
    Fintype.card (Sample (A := A) sizes) =
      Fintype.card (Partition (A := A) sizes) * ∏ i, sizes i := by
  classical
  rw [Fintype.card_congr (sampleSigmaEquiv sizes), Fintype.card_sigma]
  simp_rw [selection_card]
  simp

/-- The selected subset (one element from each disjoint part). -/
def output {sizes : Fin m → ℕ} (s : Sample (A := A) sizes) : Finset A := by
  classical exact Finset.univ.image s.val.2

theorem choices_injective {sizes : Fin m → ℕ} (s : Sample (A := A) sizes) :
    Function.Injective s.val.2 := by
  intro i j hij
  have h := congrArg s.val.1 hij
  simpa only [s.property.2] using h

@[simp] theorem output_card {sizes : Fin m → ℕ} (s : Sample (A := A) sizes) :
    (output s).card = m := by
  classical
  exact (Finset.card_image_of_injective _ (choices_injective s)).trans (Finset.card_fin m)

/-- Prescribed positive sizes summing to the ambient cardinality admit a real
partition. The equivalence with a disjoint union of finite blocks is constructed
from the proved cardinal equality. -/
theorem partition_nonempty (sizes : Fin m → ℕ)
    (hsum : ∑ i, sizes i = Fintype.card A) : Nonempty (Partition (A := A) sizes) := by
  classical
  let e : A ≃ Σ i : Fin m, Fin (sizes i) :=
    Fintype.equivOfCardEq (by simpa using hsum.symm)
  refine ⟨⟨fun a => (e a).1, fun i => ?_⟩⟩
  let ei : {a : A // (e a).1 = i} ≃ Fin (sizes i) :=
    (e.subtypeEquiv (fun a => Iff.rfl)).trans (Equiv.sigmaSubtype i)
  simpa using Fintype.card_congr ei

theorem sample_nonempty (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A) :
    Nonempty (Sample (A := A) sizes) := by
  classical
  obtain ⟨P⟩ := partition_nonempty sizes hsum
  have hp (i : Fin m) : Nonempty {a // P.val a = i} :=
    Fintype.card_pos_iff.mp (by rw [P.property]; exact hpos i)
  let sel : Selection P := fun i => Classical.choice (hp i)
  exact ⟨(sampleSigmaEquiv sizes).symm ⟨P, sel⟩⟩

/-- Relabeling preserves part sizes, by an explicit equivalence of each fiber. -/
def relabel {sizes : Fin m → ℕ} (e : Equiv.Perm A)
    (s : Sample (A := A) sizes) : Sample (A := A) sizes := by
  classical
  refine ⟨(fun a => s.val.1 (e.symm a), fun i => e (s.val.2 i)), ?_, ?_⟩
  · intro i
    let ei : {a : A // s.val.1 (e.symm a) = i} ≃ {a : A // s.val.1 a = i} :=
      { toFun := fun a => ⟨e.symm a.val, a.property⟩
        invFun := fun a => ⟨e a.val, by simpa using a.property⟩
        left_inv := by intro a; apply Subtype.ext; simp
        right_inv := by intro a; apply Subtype.ext; simp }
    exact (Fintype.card_congr ei).trans (s.property.1 i)
  · intro i
    simpa using s.property.2 i

@[simp] theorem relabel_symm_relabel {sizes : Fin m → ℕ} (e : Equiv.Perm A)
    (s : Sample (A := A) sizes) : relabel e.symm (relabel e s) = s := by
  apply Subtype.ext
  apply Prod.ext <;> funext i <;> simp [relabel]

/-- The sample-space bijection implementing ambient relabeling. -/
def relabelEquiv {sizes : Fin m → ℕ} (e : Equiv.Perm A) :
    Sample (A := A) sizes ≃ Sample (A := A) sizes where
  toFun := relabel e
  invFun := relabel e.symm
  left_inv := relabel_symm_relabel e
  right_inv := by intro s; simpa using relabel_symm_relabel e.symm s

@[simp] theorem output_relabel {sizes : Fin m → ℕ} (e : Equiv.Perm A)
    (s : Sample (A := A) sizes) : output (relabel e s) = (output s).map e.toEmbedding := by
  classical
  ext a
  simp only [output, Finset.mem_image, Finset.mem_univ, true_and, Finset.mem_map]
  constructor
  · rintro ⟨i, rfl⟩
    exact ⟨s.val.2 i, ⟨i, rfl⟩, rfl⟩
  · rintro ⟨b, ⟨i, rfl⟩, rfl⟩
    exact ⟨i, rfl⟩


/-- The output fibers are genuine finite sample spaces. -/
abbrev OutputFiber (sizes : Fin m → ℕ) (R : Finset A) :=
  {s : Sample (A := A) sizes // output s = R}

/-- Relabeling gives a bijection of whole fibers, not merely an inequality of
probabilities. -/
def outputFiberEquiv (sizes : Fin m → ℕ) (R T : Finset A)
    (e : Equiv.Perm A) (he : R.map e.toEmbedding = T) :
    OutputFiber sizes R ≃ OutputFiber sizes T := by
  classical
  refine (relabelEquiv e).subtypeEquiv (fun s => ?_)
  change output s = R ↔ output (relabel e s) = T
  rw [output_relabel, ← he]
  exact ⟨fun h => congrArg (Finset.map e.toEmbedding) h,
    fun h => Finset.map_injective e.toEmbedding h⟩

/-- Equal-size subsets have equally many samples: the necessary permutation is
proved to exist by Mathlib's finite permutation extension theorem. -/
theorem outputFiber_card_eq (sizes : Fin m → ℕ) (R T : Finset A)
    (h : R.card = T.card) :
    Fintype.card (OutputFiber sizes R) = Fintype.card (OutputFiber sizes T) := by
  classical
  obtain ⟨e, he⟩ := Equiv.Perm.exists_map_finset_eq R T h
  exact Fintype.card_congr (outputFiberEquiv sizes R T e he)

/-- Every sample has exactly one output in the fixed-size subset space. -/
theorem sample_card_eq_output_fiber_mul (sizes : Fin m → ℕ) (R : Finset A)
    (hR : R.card = m) :
    Fintype.card (Sample (A := A) sizes) =
      ((Finset.univ : Finset A).powersetCard m).card * Fintype.card (OutputFiber sizes R) := by
  classical
  have h := Finset.card_eq_sum_card_fiberwise
    (s := (Finset.univ : Finset (Sample (A := A) sizes)))
    (t := (Finset.univ : Finset A).powersetCard m) (f := output)
    (fun s _ => Finset.mem_powersetCard.mpr ⟨Finset.subset_univ _, output_card s⟩)
  rw [Finset.card_univ] at h
  rw [h]
  calc
    _ = ∑ T ∈ (Finset.univ : Finset A).powersetCard m,
        Fintype.card (OutputFiber sizes R) := by
      apply Finset.sum_congr rfl
      intro T hT
      rw [← Fintype.card_subtype]
      exact outputFiber_card_eq sizes T R ((Finset.mem_powersetCard.mp hT).2.trans hR.symm)
    _ = _ := by simp

/-- Uniform joint counting probability of an event. -/
def jointProbability (sizes : Fin m → ℕ) (E : Sample (A := A) sizes → Prop) : ℚ := by
  classical exact (Fintype.card {s // E s} : ℚ) / Fintype.card (Sample (A := A) sizes)

/-- The explicit event decomposition into actual partitions and their product
choice spaces. -/
def eventSigmaEquiv (sizes : Fin m → ℕ) (E : Sample (A := A) sizes → Prop) :
    {s // E s} ≃ Σ P : Partition (A := A) sizes,
      {g : Selection P // E ((sampleSigmaEquiv sizes).symm ⟨P,g⟩)} where
  toFun s := let t := sampleSigmaEquiv sizes s.val
    ⟨t.1, ⟨t.2, by dsimp [t]; simpa using s.property⟩⟩
  invFun t := ⟨(sampleSigmaEquiv sizes).symm ⟨t.1,t.2.val⟩, t.2.property⟩
  left_inv _ := rfl
  right_inv _ := rfl

/-- Exact mixture formula: uniform partition, followed by the uniform product
of independent part choices. No probability-law hypothesis is needed. -/
theorem jointProbability_eq_partition_average (sizes : Fin m → ℕ)
    (E : Sample (A := A) sizes → Prop) :
    jointProbability sizes E =
      (∑ P : Partition (A := A) sizes,
        (Fintype.card {g : Selection P //
          E ((sampleSigmaEquiv sizes).symm ⟨P,g⟩)} : ℚ) / ∏ i, (sizes i : ℚ)) /
        Fintype.card (Partition (A := A) sizes) := by
  classical
  unfold jointProbability
  rw [Fintype.card_congr (eventSigmaEquiv sizes E), Fintype.card_sigma, sample_card]
  push_cast
  rw [← Finset.sum_div, div_div, mul_comm]

/-- The output law on fixed-size subsets is uniform, for any feasible positive
prescribed sizes, hence in particular for balanced sizes. -/
theorem output_probability (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A)
    (R : Finset A) (hR : R.card = m) :
    jointProbability sizes (fun s => output s = R) =
      1 / (((Finset.univ : Finset A).powersetCard m).card : ℚ) := by
  classical
  have hs : 0 < Fintype.card (Sample (A := A) sizes) :=
    Fintype.card_pos_iff.mpr (sample_nonempty sizes hpos hsum)
  have hcount := sample_card_eq_output_fiber_mul sizes R hR
  have hden : 0 < Fintype.card (OutputFiber sizes R) := by
    rw [hcount] at hs
    by_contra hn
    have hz := Nat.eq_zero_of_not_pos hn
    simp [hz] at hs
  unfold jointProbability
  have hc : @Fintype.card (OutputFiber sizes R)
      (@Subtype.fintype (Sample (A := A) sizes) (fun s => output s = R)
        (fun _ => Classical.propDecidable _) (sampleFintype sizes)) =
      Fintype.card (OutputFiber sizes R) :=
    @Fintype.card_congr (OutputFiber sizes R) (OutputFiber sizes R)
      (@Subtype.fintype (Sample (A := A) sizes) (fun s => output s = R)
        (fun _ => Classical.propDecidable _) (sampleFintype sizes))
      inferInstance (Equiv.refl _)
  rw [hc, hcount, Nat.cast_mul]
  have hn : (Fintype.card (OutputFiber sizes R) : ℚ) ≠ 0 := by
    exact_mod_cast ne_of_gt hden
  field_simp

/-- Rectangular events in the product choice space factor exactly. This is the
finite counting proof of conditional independence, including nonidentical parts. -/
theorem selection_rectangle_probability {sizes : Fin m → ℕ}
    (P : Partition (A := A) sizes)
    (E : (i : Fin m) → {a // P.val a = i} → Prop) :
    (Fintype.card {g : Selection P // ∀ i, E i (g i)} : ℚ) /
        Fintype.card (Selection P) =
      ∏ i, (Fintype.card {a : {a // P.val a = i} // E i a} : ℚ) / sizes i := by
  classical
  rw [Fintype.card_congr (Equiv.subtypePiEquivPi (p := E)), Fintype.card_pi,
    selection_card, Nat.cast_prod, Nat.cast_prod, Finset.prod_div_distrib]

/-- The retained partition of a sample. -/
def samplePartition {sizes : Fin m → ℕ} (s : Sample (A := A) sizes) :
    Partition (A := A) sizes := ⟨s.val.1, s.property.1⟩

/-- A fixed partition has precisely its whole product of choice samples. -/
def partitionFiberEquiv {sizes : Fin m → ℕ} (P : Partition (A := A) sizes) :
    {s : Sample (A := A) sizes // samplePartition s = P} ≃ Selection P :=
  ((sampleSigmaEquiv sizes).subtypeEquiv (fun _ => Iff.rfl)).trans (Equiv.sigmaSubtype P)

/-- The first stage really is uniform over all prescribed-size ordered
partitions; positive part sizes ensure its second stage is nonempty. -/
theorem partition_probability {sizes : Fin m → ℕ}
    (hpos : ∀ i, 0 < sizes i) (P : Partition (A := A) sizes) :
    jointProbability sizes (fun s => samplePartition s = P) =
      1 / (Fintype.card (Partition (A := A) sizes) : ℚ) := by
  classical
  unfold jointProbability
  rw [Fintype.card_congr (partitionFiberEquiv P), selection_card, sample_card, Nat.cast_mul]
  have hp : (∏ i, sizes i : ℕ) ≠ 0 := Finset.prod_ne_zero_iff.mpr (fun i _ => ne_of_gt (hpos i))
  have hp' : ((∏ i, sizes i : ℕ) : ℚ) ≠ 0 := by exact_mod_cast hp
  field_simp

/-- Uniform fixed-size law for every subset event, not just singleton events. -/
theorem output_event_probability (sizes : Fin m → ℕ)
    (hpos : ∀ i, 0 < sizes i) (hsum : ∑ i, sizes i = Fintype.card A)
    (E : Finset A → Prop) :
    jointProbability sizes (fun s => E (output s)) =
      (((Finset.univ : Finset A).powersetCard m).filter E).card /
        (((Finset.univ : Finset A).powersetCard m).card : ℚ) := by
  classical
  obtain ⟨s₀⟩ := sample_nonempty sizes hpos hsum
  let R := output s₀
  have hR : R.card = m := output_card s₀
  let K := Fintype.card (OutputFiber sizes R)
  have htotal := sample_card_eq_output_fiber_mul sizes R hR
  have hK : (K : ℚ) ≠ 0 := by
    have hn : Nonempty (OutputFiber sizes R) := ⟨⟨s₀, rfl⟩⟩
    exact_mod_cast ne_of_gt (Fintype.card_pos_iff.mpr hn)
  have hevent : Fintype.card {s : Sample (A := A) sizes // E (output s)} =
      (((Finset.univ : Finset A).powersetCard m).filter E).card * K := by
    rw [Fintype.card_subtype]
    have h := Finset.card_eq_sum_card_fiberwise
      (s := (Finset.univ : Finset (Sample (A := A) sizes)).filter (fun s => E (output s)))
      (t := ((Finset.univ : Finset A).powersetCard m).filter E) (f := output)
      (fun s hs => Finset.mem_filter.mpr
        ⟨Finset.mem_powersetCard.mpr ⟨Finset.subset_univ _, output_card s⟩,
          (Finset.mem_filter.mp hs).2⟩)
    rw [h]
    calc
      _ = ∑ T ∈ ((Finset.univ : Finset A).powersetCard m).filter E, K := by
        apply Finset.sum_congr rfl
        intro T hT
        have hET := (Finset.mem_filter.mp hT).2
        have hTc := (Finset.mem_powersetCard.mp (Finset.mem_filter.mp hT).1).2
        have hsets : ((Finset.univ : Finset (Sample (A := A) sizes)).filter
            (fun s => E (output s))).filter (fun s => output s = T) =
            Finset.univ.filter (fun s => output s = T) := by
          ext s
          simp only [Finset.mem_filter, Finset.mem_univ, true_and]
          exact ⟨And.right, fun hs => ⟨hs ▸ hET, hs⟩⟩
        rw [hsets, ← Fintype.card_subtype]
        exact outputFiber_card_eq sizes T R (hTc.trans hR.symm)
      _ = _ := by simp
  unfold jointProbability
  rw [hevent, htotal, Nat.cast_mul, Nat.cast_mul]
  change _ / (_ * (K : ℚ)) = _
  field_simp

/-- Balanced sizes differ by at most one, with the larger parts first. -/
def balancedSizes (n m : ℕ) (i : Fin m) : ℕ :=
  n / m + if i.val < n % m then 1 else 0

theorem balancedSizes_sum (n m : ℕ) (hm : 0 < m) :
    ∑ i : Fin m, balancedSizes n m i = n := by
  have hr : n % m < m := Nat.mod_lt n hm
  have hcount : (Finset.univ.filter (fun i : Fin m => i.val < n % m)).card = n % m := by
    let e : {i : Fin m // i.val < n % m} ≃ Fin (n % m) :=
      { toFun := fun i => ⟨i.val.val, i.property⟩
        invFun := fun i => ⟨⟨i.val, i.isLt.trans hr⟩, i.isLt⟩
        left_inv := by intro i; rfl
        right_inv := by intro i; rfl }
    rw [← Fintype.card_subtype, Fintype.card_congr e, Fintype.card_fin]
  simp only [balancedSizes, Finset.sum_add_distrib, Finset.sum_const,
    Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, Finset.sum_boole, hcount]
  exact Nat.div_add_mod n m

theorem balancedSizes_pos (n m : ℕ) (hm : 0 < m) (hmn : m ≤ n) (i : Fin m) :
    0 < balancedSizes n m i := by
  have hd := Nat.div_pos hmn hm
  unfold balancedSizes
  omega

/-- Feasibility is proved from the numerical range, rather than supplied as an
unproved partition-existence premise. -/
theorem balanced_sample_nonempty (hm : 0 < m) (hmn : m ≤ Fintype.card A) :
    Nonempty (Sample (A := A) (balancedSizes (Fintype.card A) m)) :=
  sample_nonempty _ (balancedSizes_pos _ _ hm hmn) (balancedSizes_sum _ _ hm)

theorem balanced_output_probability (hm : 0 < m) (hmn : m ≤ Fintype.card A)
    (R : Finset A) (hR : R.card = m) :
    jointProbability (balancedSizes (Fintype.card A) m) (fun s => output s = R) =
      1 / (((Finset.univ : Finset A).powersetCard m).card : ℚ) :=
  output_probability _ (balancedSizes_pos _ _ hm hmn) (balancedSizes_sum _ _ hm) R hR

end
end GRWTSK.BalancedPartitionSampling
```
