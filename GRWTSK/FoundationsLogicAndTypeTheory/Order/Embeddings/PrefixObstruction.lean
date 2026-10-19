/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib and Lean imports retain upstream authorship and licensing. -/
import Mathlib.Data.List.Basic

/-!
# Common-upper-bound obstructions to exact prefix representations

Two ancestors of the same finite-list address are comparable under `List.IsPrefix`.
Consequently, a source relation with incomparable elements sharing an upper bound
cannot be both preserved and reflected by any list-address map. This application
reuses the pinned upstream ancestor-comparability theorem; no novelty is claimed.

The four-node diamond below supplies a concrete finite obstruction. An injective
linear-extension map of that same diamond preserves its relation as prefixes but
introduces an extra comparison, so injective preservation is strictly weaker than
preservation plus reflection. Natural-number chains do admit an exact prefix map.

Only the declared source relation is represented here. There is no assertion about
arbitrary typed DAG encodings, external taxonomy records, runtime validation, or
the native acceptance of separately maintained candidate taxonomy modules.
-/

set_option autoImplicit false

namespace GRWTSK.Order.Embeddings.PrefixObstruction

variable {Node Label : Type*}

/-- The declared source relation implies the actual target list-prefix relation. -/
def PreservesPrefix (relation : Node → Node → Prop) (address : Node → List Label) : Prop :=
  ∀ a b, relation a b → address a <+: address b

/-- Every target prefix comparison must come from the declared source relation. -/
def ReflectsPrefix (relation : Node → Node → Prop) (address : Node → List Label) : Prop :=
  ∀ a b, address a <+: address b → relation a b

/-- An exact prefix representation forces ancestors of every common upper bound to compare. -/
theorem comparable_of_common_upper (relation : Node → Node → Prop)
    (address : Node → List Label) (hpreserve : PreservesPrefix relation address)
    (hreflect : ReflectsPrefix relation address) {a b c : Node}
    (hac : relation a c) (hbc : relation b c) : relation a b ∨ relation b a := by
  exact (List.prefix_or_prefix_of_prefix (hpreserve a c hac) (hpreserve b c hbc)).imp
    (hreflect a b) (hreflect b a)

/-- Incomparable ancestors of a common upper bound exclude any preserving-and-reflecting map.
No order axioms, source finiteness, target alphabet assumptions, or injectivity are needed. -/
theorem no_prefix_representation_of_incomparable_upper (relation : Node → Node → Prop)
    (a b c : Node) (hac : relation a c) (hbc : relation b c)
    (hab : ¬ relation a b) (hba : ¬ relation b a) :
    ¬ ∃ address : Node → List Label,
      PreservesPrefix relation address ∧ ReflectsPrefix relation address := by
  rintro ⟨address, hpreserve, hreflect⟩
  exact (comparable_of_common_upper relation address hpreserve hreflect hac hbc).elim hab hba

/-- An exact address for the natural-number chain. -/
def chainAddress (n : Nat) : List Unit := List.replicate n ()

theorem chainAddress_prefix_iff (m n : Nat) : chainAddress m <+: chainAddress n ↔ m ≤ n := by
  simp [chainAddress, List.prefix_replicate_iff]

theorem chainAddress_representation :
    PreservesPrefix (fun m n : Nat => m ≤ n) chainAddress ∧
      ReflectsPrefix (fun m n : Nat => m ≤ n) chainAddress :=
  ⟨fun m n h => (chainAddress_prefix_iff m n).mpr h,
    fun m n h => (chainAddress_prefix_iff m n).mp h⟩

theorem chainAddress_injective : Function.Injective chainAddress := by
  intro m n hequal
  have hlength := congrArg List.length hequal
  simpa [chainAddress] using hlength

/-- An actual four-node finite diamond, with exactly two incomparable middle nodes. -/
inductive Diamond
  | bottom | left | right | top
  deriving DecidableEq, Repr

/-- The diamond order: bottom is below all, top is above all, and every node is below itself. -/
def DiamondLe (a b : Diamond) : Prop := a = .bottom ∨ b = .top ∨ a = b

theorem diamondLe_refl (a : Diamond) : DiamondLe a a := Or.inr (Or.inr rfl)

theorem diamondLe_trans {a b c : Diamond} (hab : DiamondLe a b) (hbc : DiamondLe b c) :
    DiamondLe a c := by
  cases a <;> cases b <;> cases c <;> simp_all [DiamondLe]

theorem diamondLe_antisymm {a b : Diamond} (hab : DiamondLe a b) (hba : DiamondLe b a) :
    a = b := by
  cases a <;> cases b <;> simp_all [DiamondLe]

/-- The finite diamond cannot be represented exactly by prefixes over any label type. -/
theorem diamond_has_no_prefix_representation (Label : Type*) :
    ¬ ∃ address : Diamond → List Label,
      PreservesPrefix DiamondLe address ∧ ReflectsPrefix DiamondLe address := by
  apply no_prefix_representation_of_incomparable_upper DiamondLe .left .right .top
  all_goals simp [DiamondLe]

/-- A chosen linear extension places the incomparable middle nodes in extra target order. -/
def diamondRank : Diamond → Nat
  | .bottom => 0
  | .left => 1
  | .right => 2
  | .top => 3

def diamondAddress (node : Diamond) : List Unit := chainAddress (diamondRank node)

theorem diamondAddress_injective : Function.Injective diamondAddress := by
  intro a b hequal
  have hlength := congrArg List.length hequal
  have hrank : diamondRank a = diamondRank b := by
    simpa [diamondAddress, chainAddress] using hlength
  cases a <;> cases b <;> simp_all [diamondRank]

/-- This actual injective address map is monotone into the prefix relation. -/
theorem diamondAddress_preserves : PreservesPrefix DiamondLe diamondAddress := by
  intro a b hab
  apply (chainAddress_prefix_iff (diamondRank a) (diamondRank b)).mpr
  cases a <;> cases b <;> simp_all [DiamondLe, diamondRank]

/-- Preservation introduces a false comparison between the two middle source nodes. -/
theorem diamondAddress_not_reflects : ¬ ReflectsPrefix DiamondLe diamondAddress := by
  intro hreflect
  have hbad := hreflect .left .right
    ((chainAddress_prefix_iff 1 2).mpr (by decide))
  simp [DiamondLe] at hbad

/-- Injectivity plus prefix monotonicity does not supply the essential reflection premise. -/
theorem injective_preservation_without_reflection :
    Function.Injective diamondAddress ∧ PreservesPrefix DiamondLe diamondAddress ∧
      ¬ ReflectsPrefix DiamondLe diamondAddress :=
  ⟨diamondAddress_injective, diamondAddress_preserves, diamondAddress_not_reflects⟩

end GRWTSK.Order.Embeddings.PrefixObstruction
