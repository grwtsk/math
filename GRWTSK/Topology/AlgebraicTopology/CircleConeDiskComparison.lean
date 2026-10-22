/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This self-contained module intentionally imports no unmerged PR files.
-/
import Mathlib.Topology.Category.TopCat.Sphere
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Topology.Homeomorph.Lemmas
import Mathlib.Topology.Constructions
import Mathlib.Topology.UnitInterval

/-!
# The precise cone-to-closed-disk comparison gate

Mathlib's genuine TopCat.disk 2 is the target; no surrogate disk
type is introduced. This module isolates the exact comparison
conditions that a radial map must satisfy. In particular, equality
of radial images must be equivalent to equality of source points
or joint membership in the zero-radius apex.

No cone-to-disk equivalence is postulated, and no unmerged polygon
source is imported. The topology is the ordinary Quotient topology.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.CircleConeDiskComparison

/-- The genuine compact cylinder over Mathlib's standard additive circle. -/
abbrev CircleCylinder := UnitAddCircle × unitInterval

/-- The minimal apex equivalence relation. No positive-radius points
are identified, even if their first components differ. -/
def ApexRelated (x y : CircleCylinder) : Prop :=
  x = y ∨ (x.2 = 0 ∧ y.2 = 0)

theorem apexRelated_equivalence : Equivalence ApexRelated := by
  constructor
  · intro x
    exact Or.inl rfl
  · intro x y h
    rcases h with h | h
    · exact Or.inl h.symm
    · exact Or.inr ⟨h.2, h.1⟩
  · intro x y z hxy hyz
    rcases hxy with hxy | hxy
    · simpa [hxy] using hyz
    rcases hyz with hyz | hyz
    · simpa [← hyz] using (Or.inr hxy : ApexRelated x y)
    · exact Or.inr ⟨hxy.1, hyz.2⟩

def apexSetoid : Setoid CircleCylinder :=
  ⟨ApexRelated, apexRelated_equivalence⟩

/-- The true quotient cone on the unit additive circle. -/
def CircleCone : Type := Quotient apexSetoid

def coneProjection : CircleCylinder → CircleCone :=
  Quotient.mk apexSetoid

theorem coneProjection_surjective : Function.Surjective coneProjection := by
  intro x
  refine Quotient.inductionOn x ?_
  intro y
  exact ⟨y, rfl⟩

theorem coneProjection_continuous : Continuous coneProjection := by
  change Continuous (Quotient.mk' : CircleCylinder → CircleCone)
  exact continuous_quotient_mk'

theorem coneProjection_isQuotientMap : IsQuotientMap coneProjection := by
  change IsQuotientMap (Quotient.mk' : CircleCylinder → CircleCone)
  exact isQuotientMap_quotient_mk'

/-- All zero-radius points coincide in the *actual* cone quotient. -/
theorem cone_apex_eq (z w : UnitAddCircle) :
    coneProjection (z, 0) = coneProjection (w, 0) :=
  Quotient.sound (Or.inr ⟨rfl, rfl⟩)

/-- All non-apex identifications are literal cylinder equality. -/
theorem cone_positive_radius_injective
    {x y : CircleCylinder}
    (hx : x.2 ≠ 0)
    (h : coneProjection x = coneProjection y) : x = y := by
  rcases (Quotient.exact h : ApexRelated x y) with heq | hzero
  · exact heq
  · exact False.elim (hx hzero.1)

/-- The exact radial kernel condition for a disk-valued map.
It is a mathematical hypothesis, NOT an assertion that a suitable
map has already been constructed. -/
def HasExactApexKernel (f : CircleCylinder → TopCat.disk 2) : Prop :=
  ∀ x y, f x = f y ↔ ApexRelated x y

/-- Any candidate radial disk map with the exact apex kernel induces
a map on the genuine topological cone. -/
def diskMapOfExactKernel (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f) : CircleCone → TopCat.disk 2 :=
  Quotient.lift f (fun _ _ h => (hk _ _).2 h)

/-- Exact source identity, a prerequisite for boundary compatibility. -/
@[simp] theorem diskMapOfExactKernel_projection
    (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f) (x : CircleCylinder) :
    diskMapOfExactKernel f hk (coneProjection x) = f x := rfl

/-- Injectivity follows from exact kernel preservation; in particular,
this rejects a constant radial map. -/
theorem diskMapOfExactKernel_injective
    (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f) :
    Function.Injective (diskMapOfExactKernel f hk) := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro a
  refine Quotient.inductionOn y ?_
  intro b hab
  exact Quotient.sound ((hk a b).1 hab)

/-- Surjectivity is transported, rather than silently inferred
from continuity or compactness. -/
theorem diskMapOfExactKernel_surjective
    (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f)
    (hs : Function.Surjective f) :
    Function.Surjective (diskMapOfExactKernel f hk) := by
  intro y
  obtain ⟨x, hx⟩ := hs y
  exact ⟨coneProjection x, hx⟩

/-- Genuine continuity descent through the actual quotient topology. -/
theorem diskMapOfExactKernel_continuous
    (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f)
    (hc : Continuous f) :
    Continuous (diskMapOfExactKernel f hk) := by
  apply Continuous.quotient_lift hc
  intro x y h
  exact (hk x y).2 h

/-- Source compactness is inherited from the authentic compact circle
and real unit interval, then transported along the quotient map. -/
private theorem coneCompact : CompactSpace CircleCone := by
  exact (coneProjection_surjective).compactSpace coneProjection_continuous

/-- The actual Mathlib closed disk is homeomorphic to the actual cone
WHEN a continuous, surjective radial disk map with the exact apex
kernel has been supplied. The geometric construction of that map is
an independent remaining theorem, not hidden in this declaration. -/
noncomputable def coneHomeomorphDiskOfRadial
    (f : CircleCylinder → TopCat.disk 2)
    (hk : HasExactApexKernel f)
    (hc : Continuous f)
    (hs : Function.Surjective f) :
    CircleCone ≃ₜ TopCat.disk 2 := by
  letI : CompactSpace CircleCone := coneCompact
  exact (diskMapOfExactKernel_continuous f hk hc).homeoOfEquivCompactToT2
    (f := Equiv.ofBijective (diskMapOfExactKernel f hk)
      ⟨diskMapOfExactKernel_injective f hk,
       diskMapOfExactKernel_surjective f hk hs⟩)

end GRWTSK.Topology.AlgebraicTopology.CircleConeDiskComparison
