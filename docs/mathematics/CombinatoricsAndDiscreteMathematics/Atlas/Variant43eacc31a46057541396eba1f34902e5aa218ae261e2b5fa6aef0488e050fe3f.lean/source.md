# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Atlas.Variant43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30c9df7f53c3b685bd0bacae1192948f807e6f38` · SHA-256 `43eacc31a46057541396eba1f34902e5aa218ae261e2b5fa6aef0488e050fe3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.Powerset
import Mathlib.Order.Closure

/-!
# Exhaustive finite rule closure

A ground rule has finite premises and one conclusion in a fixed finite fact
universe. Saturation intersects all rule-closed supersets of the seed inventory.
This deliberately small, executable reference algorithm exhausts a powerset;
it proves exact completeness without assuming a heuristic iteration budget.

Rules are syntactic data. Their mathematical authority comes from a separate
interpretation and a proof that every admitted rule preserves that interpretation.
No arbitrary rule list is declared mathematically sound by this construction.
-/

namespace FormalResearch.MathematicalTooling.Semantics.Atlas

variable {α : Type*}

/-- A finite ground Horn rule; compatibility belongs to its semantic soundness proof. -/
structure Rule (α : Type*) where
  /-- Facts that must already be available before this rule applies. -/
  premises : Finset α
  /-- The fact derived when every premise is available. -/
  conclusion : α
  deriving DecidableEq

variable [DecidableEq α]

/-- The inventory contains every consequence of an admitted rule whose premises it contains. -/
def RuleClosed (rules : Finset (Rule α)) (inventory : Finset α) : Prop :=
  ∀ rule ∈ rules, rule.premises ⊆ inventory → rule.conclusion ∈ inventory

instance (rules : Finset (Rule α)) (inventory : Finset α) :
    Decidable (RuleClosed rules inventory) :=
  inferInstanceAs (Decidable (∀ rule ∈ rules,
    rule.premises ⊆ inventory → rule.conclusion ∈ inventory))

section Saturation

variable [Fintype α]

/-- Exhaustive intersection of all rule-closed seed supersets in the finite universe. -/
def saturate (rules : Finset (Rule α)) (seeds : Finset α) : Finset α :=
  Finset.univ.filter fun x ↦ ∀ inventory ∈ (Finset.univ : Finset α).powerset,
    seeds ⊆ inventory → RuleClosed rules inventory → x ∈ inventory

@[simp]
theorem mem_saturate {rules : Finset (Rule α)} {seeds : Finset α} {x : α} :
    x ∈ saturate rules seeds ↔
      ∀ inventory, seeds ⊆ inventory → RuleClosed rules inventory → x ∈ inventory := by
  simp [saturate]

/-- Every seed remains in the exact finite closure. -/
theorem saturation_extensive (rules : Finset (Rule α)) (seeds : Finset α) :
    seeds ⊆ saturate rules seeds := by
  intro x hx
  exact mem_saturate.mpr fun _ hseed _ ↦ hseed hx

/-- Adding seeds cannot remove a derived fact, for one fixed rule language. -/
theorem saturation_monotone (rules : Finset (Rule α)) : Monotone (saturate rules) := by
  intro seeds larger hsub x hx
  exact mem_saturate.mpr fun inventory hseed hclosed ↦
    mem_saturate.mp hx inventory (hsub.trans hseed) hclosed

/-- Exhaustive saturation is closed under every rule in the declared language. -/
theorem saturation_closed (rules : Finset (Rule α)) (seeds : Finset α) :
    RuleClosed rules (saturate rules seeds) := by
  intro rule hrule hpremises
  apply mem_saturate.mpr
  intro inventory hseed hclosed
  apply hclosed rule hrule
  intro x hx
  exact mem_saturate.mp (hpremises hx) inventory hseed hclosed

/-- The computed inventory is the least rule-closed superset, not a partial search result. -/
theorem saturation_least {rules : Finset (Rule α)} {seeds inventory : Finset α}
    (hseed : seeds ⊆ inventory) (hclosed : RuleClosed rules inventory) :
    saturate rules seeds ⊆ inventory := by
  intro x hx
  exact mem_saturate.mp hx inventory hseed hclosed

/-- Saturating a complete finite closure adds nothing. -/
theorem saturation_idempotent (rules : Finset (Rule α)) (seeds : Finset α) :
    saturate rules (saturate rules seeds) = saturate rules seeds := by
  apply Finset.Subset.antisymm
  · exact saturation_least (Finset.Subset.refl _) (saturation_closed rules seeds)
  · exact saturation_extensive rules _

/-- The exhaustive rule algorithm, packaged using Mathlib's closure-operator interface. -/
def saturation (rules : Finset (Rule α)) : ClosureOperator (Finset α) where
  toFun := saturate rules
  monotone' := saturation_monotone rules
  le_closure' := saturation_extensive rules
  idempotent' := saturation_idempotent rules

/-- Sound interpretations of the seeds and every admitted rule extend to all computed facts. -/
theorem saturation_sound (rules : Finset (Rule α)) (seeds : Finset α)
    (meaning : α → Prop) (hseed : ∀ x ∈ seeds, meaning x)
    (hrules : ∀ rule ∈ rules,
      (∀ x ∈ rule.premises, meaning x) → meaning rule.conclusion) :
    ∀ x ∈ saturate rules seeds, meaning x := by
  classical
  have hsub : seeds ⊆ Finset.univ.filter meaning := by
    intro x hx
    exact Finset.mem_filter.mpr ⟨Finset.mem_univ x, hseed x hx⟩
  have hclosed : RuleClosed rules (Finset.univ.filter meaning) := by
    intro rule hrule hpremises
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_univ _, hrules rule hrule ?_⟩
    intro x hx
    exact (Finset.mem_filter.mp (hpremises hx)).2
  intro x hx
  exact (Finset.mem_filter.mp (saturation_least hsub hclosed hx)).2

end Saturation

section Attachment

variable (cl : ClosureOperator (Finset α))

/-- Attach an already admitted finite chart inventory using the fixed closure language. -/
def attach (atlas chart : Finset α) : Finset α := cl (atlas ∪ chart)

/-- Existing atlas facts remain after a conservative attachment. -/
theorem attach_extends_atlas (atlas chart : Finset α) : atlas ⊆ attach cl atlas chart :=
  Finset.Subset.trans Finset.subset_union_left (cl.le_closure _)

/-- Every previously derived fact survives attachment with the same semantic rules. -/
theorem attach_preserves_old_closure (atlas chart : Finset α) :
    cl atlas ⊆ attach cl atlas chart :=
  cl.monotone Finset.subset_union_left

/-- Saturating between chart attachments leaves their final closure unchanged. -/
theorem attach_attach (atlas first second : Finset α) :
    attach cl (attach cl atlas first) second = cl (atlas ∪ first ∪ second) :=
  cl.closure_sup_closure_left _ _

/-- Finite chart union, and consequently its exact closure, is order independent. -/
theorem attachment_order_final_equiv (atlas first second : Finset α) :
    cl (atlas ∪ first ∪ second) = cl (atlas ∪ second ∪ first) := by
  rw [Finset.union_right_comm]

/-- Sequential conservative attachments have the same final closure in either order. -/
theorem attach_order_independent (atlas first second : Finset α) :
    attach cl (attach cl atlas first) second = attach cl (attach cl atlas second) first := by
  rw [attach_attach, attach_attach, attachment_order_final_equiv]

end Attachment

end FormalResearch.MathematicalTooling.Semantics.Atlas
```
