import GRWTSK.NumericalAnalysis.PolynomialCircuitSheaf
import Mathlib.Logic.Equiv.Defs

/-!
# Dyads of typed circuit sections

Local attribution: grwtsk contributors.

A dyad retains two ordered children and their exact shared observation. For
incidence opens, the two observations are restrictions to the intersection.
This is the binary gluing property of a sheaf of sets (Stacks Project,
Definition 6.7.1 and Remark 6.7.2, <https://stacks.math.columbia.edu/tag/006S>).

The binary proof takes a wire from the left when it is present there, and from
the right otherwise. Exact overlap equality gives the right value also on
shared wires. Each gate is checked in one of its original opens, since that
open contains every wire incident to it. The two restrictions recover the
children, and wirewise extensionality recovers the parent. Alternatively the
general incidence gluing theorem applies to the two-member cover. Both proofs
use the same exact overlap hypothesis, whose weakening to sign agreement is
refuted by `PolynomialCircuit.sameSign_incompatible_path`.

The equivalence supplies the split and join for the decoder's incidence
sections. Recovery of source bytes also needs a separate encoding contract.
Originality and independent analytic review remain unassessed.
-/

namespace GRWTSK.NumericalAnalysis.AlgebraicDecoder

universe u v w

/-- The fiber product of two ordered child states over an explicit observation. -/
structure Dyad {Left : Type u} {Right : Type v} {Overlap : Type w}
    (leftTo : Left → Overlap) (rightTo : Right → Overlap) where
  left : Left
  right : Right
  agrees : leftTo left = rightTo right

namespace Dyad

variable {Left : Type u} {Right : Type v} {Overlap : Type w}
variable {leftTo : Left → Overlap} {rightTo : Right → Overlap}

def overlap (children : Dyad leftTo rightTo) : Overlap := leftTo children.left

theorem overlap_eq_right (children : Dyad leftTo rightTo) :
    children.overlap = rightTo children.right := children.agrees

theorem ext {a b : Dyad leftTo rightTo} (left : a.left = b.left) (right : a.right = b.right) :
    a = b := by
  cases a
  cases b
  cases left
  cases right
  rfl

/-- Children with a singleton observation can be paired independently. -/
def independent (left : Left) (right : Right) :
    Dyad (fun _ : Left => ()) (fun _ : Right => ()) := ⟨left, right, rfl⟩

def independentEquiv (Left : Type u) (Right : Type v) :
    Dyad (fun _ : Left => ()) (fun _ : Right => ()) ≃ (Left × Right) where
  toFun children := (children.left, children.right)
  invFun pair := independent pair.1 pair.2
  left_inv children := ext rfl rfl
  right_inv pair := by cases pair; rfl

end Dyad

open PolynomialCircuit

variable {Wire : Type u} {Gate : Type v} {C : Circuit.{u, v, w} Wire Gate}

/-- The union is again an incidence open, because each gate brings its wires. -/
def unionOpen (U V : Open C) : Open C where
  wires := fun wire => U.wires wire ∨ V.wires wire
  gates := fun g => U.gates g ∨ V.gates g
  incident hg hw := hg.elim (fun h => Or.inl (U.incident h hw)) (fun h => Or.inr (V.incident h hw))

theorem unionLeft (U V : Open C) : Open.Included U (unionOpen U V) :=
  ⟨fun _ h => Or.inl h, fun _ h => Or.inl h⟩

theorem unionRight (U V : Open C) : Open.Included V (unionOpen U V) :=
  ⟨fun _ h => Or.inr h, fun _ h => Or.inr h⟩

/-- Local circuit sections that agree as sections on the actual intersection. -/
abbrev SectionDyad (U V : Open C) :=
  Dyad (fun s : Section U => s.restrict (Open.interLeft U V))
    (fun s : Section V => s.restrict (Open.interRight U V))

namespace SectionDyad

variable {U V : Open C}

def split (parent : Section (unionOpen U V)) : SectionDyad U V where
  left := parent.restrict (unionLeft U V)
  right := parent.restrict (unionRight U V)
  agrees := Section.ext fun _ _ => rfl

/-- With no shared wire, the overlap section carries no value choices. -/
def ofDisjointWires (disjoint : ∀ wire, ¬ (U.wires wire ∧ V.wires wire))
    (left : Section U) (right : Section V) : SectionDyad U V :=
  ⟨left, right, Section.ext fun wire hw => (disjoint wire hw).elim⟩

private def mergedValue [DecidablePred U.wires] (children : SectionDyad U V)
    (wire : Wire) (hw : (unionOpen U V).wires wire) : C.Carrier wire :=
  if hu : U.wires wire then children.left.value wire hu
  else children.right.value wire (hw.resolve_left hu)

private theorem mergedValue_left [DecidablePred U.wires] (children : SectionDyad U V)
    (wire : Wire) (hw : U.wires wire) :
    mergedValue children wire (Or.inl hw) = children.left.value wire hw := dite_eq_left hw

private theorem mergedValue_right [DecidablePred U.wires] (children : SectionDyad U V)
    (wire : Wire) (hw : V.wires wire) :
    mergedValue children wire (Or.inr hw) = children.right.value wire hw := by
  unfold mergedValue
  split
  next hu =>
    exact congrArg (fun s : Section (U.inter V) => s.value wire ⟨hu, hw⟩) children.agrees
  next => rfl

/-- Glue the two sections by deciding which child supplies each wire. -/
def merge [DecidablePred U.wires] (children : SectionDyad U V) : Section (unionOpen U V) where
  value := mergedValue children
  obeys := by
    intro g hg
    rcases hg with hu | hv
    · have exactValues :
          (fun wire hw => mergedValue children wire ((unionOpen U V).incident (Or.inl hu) hw)) =
            (fun wire hw => children.left.value wire (U.incident hu hw)) := by
          funext wire hw
          exact mergedValue_left children wire (U.incident hu hw)
      rw [exactValues]
      exact children.left.obeys g hu
    · have exactValues :
          (fun wire hw => mergedValue children wire ((unionOpen U V).incident (Or.inr hv) hw)) =
            (fun wire hw => children.right.value wire (V.incident hv hw)) := by
          funext wire hw
          exact mergedValue_right children wire (V.incident hv hw)
      rw [exactValues]
      exact children.right.obeys g hv

@[simp] theorem merge_restrict_left [DecidablePred U.wires] (children : SectionDyad U V) :
    children.merge.restrict (unionLeft U V) = children.left :=
  Section.ext (mergedValue_left children)

@[simp] theorem merge_restrict_right [DecidablePred U.wires] (children : SectionDyad U V) :
    children.merge.restrict (unionRight U V) = children.right :=
  Section.ext (mergedValue_right children)

@[simp] theorem split_merge [DecidablePred U.wires] (children : SectionDyad U V) :
    split children.merge = children :=
  Dyad.ext (merge_restrict_left children) (merge_restrict_right children)

@[simp] theorem merge_split [DecidablePred U.wires] (parent : Section (unionOpen U V)) :
    (split parent).merge = parent := by
  apply Section.ext
  intro wire hw
  rcases hw with hu | hv
  · exact mergedValue_left (split parent) wire hu
  · exact mergedValue_right (split parent) wire hv

end SectionDyad

/-- Decidable membership gives an executable binary split and join. -/
def sectionUnionEquivOfDecidable (U V : Open C) [DecidablePred U.wires] :
    Section (unionOpen U V) ≃ SectionDyad U V where
  toFun := SectionDyad.split
  invFun := SectionDyad.merge
  left_inv := SectionDyad.merge_split
  right_inv := SectionDyad.split_merge

/-- Sections on the union are exactly compatible pairs of local sections. -/
noncomputable def sectionUnionEquiv (U V : Open C) : Section (unionOpen U V) ≃ SectionDyad U V := by
  classical
  exact sectionUnionEquivOfDecidable U V

end GRWTSK.NumericalAnalysis.AlgebraicDecoder
