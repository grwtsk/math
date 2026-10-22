import GRWTSK.Algebra.PolygonalQuarticSeparable

/-!
# Finite relabeling of quartic matching partitions

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

An unordered edge is a two-element Finset (Fin 4); a matching is a
Finset of such edges. Relabeling is a genuine permutation action on
these finite combinatorial objects. The three reference partitions
are concrete elements. Restricting this action to precisely those
three partitions and identifying its kernel as the Klein four group
is a separate, still-open theorem in this source.

All statements here are independent of a coefficient ring or field.
-/

namespace GRWTSK.Algebra.QuarticMatchingAction

open GRWTSK.Algebra.PolygonalQuarticDescent

private abbrev Vertex := Fin 4
private abbrev Edge := Finset Vertex
private abbrev Matching := Finset Edge

/-- An unordered pair of vertices. -/
def pair (i j : Vertex) : Edge := {i,j}

/-- A perfect matching of the four formal root labels. -/
def matching01_23 : Matching := {pair 0 1, pair 2 3}
def matching02_13 : Matching := {pair 0 2, pair 1 3}
def matching03_12 : Matching := {pair 0 3, pair 1 2}

/-- The three explicit perfect matchings. -/
def threeMatchings : Finset Matching :=
  {matching01_23, matching02_13, matching03_12}

theorem threeMatchings_card : threeMatchings.card = 3 := by
  decide

/-- Relabel both endpoints of every edge, then every edge of the matching. -/
def relabel (σ : Equiv.Perm Vertex) (m : Matching) : Matching :=
  m.image (fun e => e.image σ)

theorem relabel_one (m : Matching) :
    relabel (1 : Equiv.Perm Vertex) m = m := by
  simp [relabel]

/-- Relabeling is compatible with permutation composition (rightmost first). -/
theorem relabel_mul (σ τ : Equiv.Perm Vertex) (m : Matching) :
    relabel (σ * τ) m = relabel σ (relabel τ m) := by
  simp [relabel, Finset.image_image, Equiv.Perm.mul_apply, Function.comp_def]

/-- A concrete nontrivial action: exchanging labels 1 and 2 exchanges
the 01|23 and 02|13 matchings. -/
theorem swap_takes_first_to_second :
    relabel (Equiv.swap (1 : Vertex) 2) matching01_23 =
      matching02_13 := by
  decide

theorem swap_takes_second_to_first :
    relabel (Equiv.swap (1 : Vertex) 2) matching02_13 =
      matching01_23 := by
  decide

/-- The three distinct matchings are the exact partitions targeted by
the eventual S₄ → S₃ permutation representation. -/
theorem reference_matchings_distinct :
    matching01_23 ≠ matching02_13 ∧
    matching01_23 ≠ matching03_12 ∧
    matching02_13 ≠ matching03_12 := by
  decide

end GRWTSK.Algebra.QuarticMatchingAction
