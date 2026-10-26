/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Upstream Mathlib and GRWTSK source retain their authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcDescentReturnGraph
import GRWTSK.Analysis.Geometry.FiniteFourArcReturn

set_option autoImplicit false

/-!
# Source and multiplicity fidelity across a closed four-arc contact cycle

One constructed piecewise quadratic geometric source has four patches, but
does not thereby have four independent source identities or an analytic
multiplicity multiplied by four. A source identifier and positive declared
multiplicity remain constant across all four verified contacts.

The multiplicity is finite-source bookkeeping only; it is not asserted to
be zeta zero multiplicity, a closed-geodesic stabilizer, or a trace weight.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

universe u

/-- An immutable source label and multiplicity for the selected four-arc
geometry. Geometry comes from `patch`, not from abstract labels. -/
structure LabeledLoop (Label : Type u) where
  sourceLabel : Label
  multiplicity : ℕ
  multiplicity_pos : 0 < multiplicity

namespace LabeledLoop

variable {Label : Type u}

/-- The actual quadratic arc indexed by one fixed geometric source. -/
def sourcePatch (_L : LabeledLoop Label) (i : Fin 4) :
    GRWTSK.Analysis.Geometry.QuadraticBezierContact.Segment (Fin 2) :=
  patch i

def arcSourceLabel (L : LabeledLoop Label) (_i : Fin 4) : Label :=
  L.sourceLabel

def arcMultiplicity (L : LabeledLoop Label) (_i : Fin 4) : ℕ :=
  L.multiplicity

theorem arcSourceLabel_preserved (L : LabeledLoop Label) (i : Fin 4) :
    L.arcSourceLabel (next i) = L.arcSourceLabel i := rfl

theorem arcMultiplicity_preserved (L : LabeledLoop Label) (i : Fin 4) :
    L.arcMultiplicity (next i) = L.arcMultiplicity i := rfl

/-- A geometric contact between successive actual patches carries the
same immutable source label and finite multiplicity. -/
theorem source_preserved_on_contact (L : LabeledLoop Label)
    {i j : Fin 4} (h : contactEdge i j) :
    L.arcSourceLabel i = L.arcSourceLabel j ∧
      L.arcMultiplicity i = L.arcMultiplicity j := by
  change j = next i at h
  subst j
  exact ⟨(L.arcSourceLabel_preserved i).symm,
    (L.arcMultiplicity_preserved i).symm⟩

/-- The four physical arc records may be counted individually, but
their *source's* declared multiplicity remains just `L.multiplicity`.
No conclusion adds four copies to its analytic multiplicity. -/
theorem source_multiplicity_positive (L : LabeledLoop Label) (i : Fin 4) :
    0 < L.arcMultiplicity i :=
  L.multiplicity_pos

/-- The finite data preserve source, oriented seams, and nontriviality,
without inferring planar topology or a zeta identification. -/
theorem contact_certificate (L : LabeledLoop Label) :
    (∀ i : Fin 4, (contact i).Positive) ∧
      (∀ i : Fin 4,
        L.arcSourceLabel (next i) = L.arcSourceLabel i) ∧
      (∀ i : Fin 4,
        L.arcMultiplicity (next i) = L.arcMultiplicity i) ∧
      (patch 0).start ≠ (patch 0).finish := by
  refine ⟨contact_positive, L.arcSourceLabel_preserved,
    L.arcMultiplicity_preserved, patch_zero_nonconstant⟩

end LabeledLoop

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
