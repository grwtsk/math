# Complete source: GRWTSK.Algebra.Homology.ThreeCellCech

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e89ca3cc9e88312d6c3eaca53aef5c93917a3fa9` · SHA-256 `7536ed44ee5b9736884a7198d1ef33acadecf3cf708dd71e0c66c516c9628d7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Source-ordered additive Cech data for one selected filled triangle.
Edges are 01,12,20. These finite formulas are not a geometric cover or a
sheaf-cohomology comparison. Raw phase factors must be removed explicitly.
Unelaborated source proof scripts; no Lean acceptance is asserted.
-/
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Data.Fin.VecNotation
import Mathlib.Tactic.Abel
import Mathlib.Tactic.FinCases

set_option autoImplicit false

namespace GRWTSK.Algebra.Homology.ThreeCellCech

abbrev Triple (V : Type*) := Fin 3 → V

variable {V W : Type*} [AddCommGroup V] [AddCommGroup W]

/-- Source-ordered differences, not geometric cyclic relabeling. -/
def delta0 (z : Triple V) : Triple V := ![z 1 - z 0, z 2 - z 1, z 0 - z 2]

def delta1 (a : Triple V) : V := a 0 + a 1 + a 2

/-- Selected rooted spanning-tree trivialization. -/
def tree (a : Triple V) : Triple V := ![0, a 0, a 0 + a 1]

/-- The filled-face section puts closure on edge 20, not a fourth vertex. -/
def face (c : V) : Triple V := ![0, 0, c]

def common (z a : Triple V) : Triple V := z - tree a

def mismatch (z a : Triple V) : Triple V := delta0 z - a

/-- Change only closure; the selected tree edges remain fixed. -/
def replaceClosure (a : Triple V) (c : V) : Triple V := ![a 0, a 1, c - a 0 - a 1]

@[simp] theorem delta1_delta0 (z : Triple V) : delta1 (delta0 z) = 0 := by
  simp [delta1, delta0] <;> abel

/-- h1=tree and h2=face satisfy the full degree-one homotopy identity. -/
theorem edge_homotopy (a : Triple V) : delta0 (tree a) + face (delta1 a) = a := by
  funext j
  fin_cases j <;> simp [delta0, tree, face, delta1] <;> abel

@[simp] theorem delta1_face (c : V) : delta1 (face c) = c := by simp [delta1, face]

theorem vertex_homotopy (z : Triple V) : tree (delta0 z) = z - (fun _ => z 0) := by
  funext j
  fin_cases j <;> simp [tree, delta0] <;> abel

@[simp] theorem reconstruct (z a : Triple V) : tree a + common z a = z := by
  unfold common
  abel

/-- The actual overlap mismatch retains the independent filled-cell closure. -/
theorem mismatch_decomposition (z a : Triple V) :
    mismatch z a = delta0 (common z a) - face (delta1 a) := by
  funext j
  fin_cases j <;> simp [mismatch, delta0, common, tree, face, delta1] <;> abel

/-- Matching is equality of common-frame sections AND vanishing closure. -/
theorem matching_iff (z a : Triple V) :
    delta0 z = a ↔ (∀ j, common z a j = common z a 0) ∧ delta1 a = 0 := by
  constructor
  · intro h
    subst a
    constructor
    · intro j
      fin_cases j <;> simp [common, tree, delta0] <;> abel
    · exact delta1_delta0 z
  · rintro ⟨hz, hc⟩
    have hd : delta0 (common z a) = 0 := by
      have he : common z a = fun _ => common z a 0 := funext hz
      rw [he]
      funext j
      fin_cases j <;> simp [delta0]
    have hm : mismatch z a = 0 := by
      rw [mismatch_decomposition, hd, hc]
      funext j
      fin_cases j <;> simp [face]
    exact sub_eq_zero.mp hm

/-- A dependent common-section fiber, not an arbitrary global section space. -/
def GlueFiber (z a : Triple V) := {h : V // (∀ j, common z a j = h) ∧ delta1 a = 0}

theorem glue_inhabited_iff (z a : Triple V) : Nonempty (GlueFiber z a) ↔ delta0 z = a := by
  constructor
  · rintro ⟨⟨h, hh, hc⟩⟩
    exact (matching_iff z a).mpr ⟨fun j => (hh j).trans (hh 0).symm, hc⟩
  · intro hz
    obtain ⟨hh, hc⟩ := (matching_iff z a).mp hz
    exact ⟨⟨common z a 0, hh, hc⟩⟩

theorem glue_unique (z a : Triple V) (u v : GlueFiber z a) : u = v := by
  apply Subtype.ext
  exact (u.property.1 0).symm.trans (v.property.1 0)

@[simp] theorem tree_replaceClosure (a : Triple V) (c : V) :
    tree (replaceClosure a c) = tree a := by
  funext j
  fin_cases j <;> simp [tree, replaceClosure]

@[simp] theorem closure_replaceClosure (a : Triple V) (c : V) :
    delta1 (replaceClosure a c) = c := by
  simp [delta1, replaceClosure] <;> abel

@[simp] theorem replaceClosure_restore (a : Triple V) : replaceClosure a (delta1 a) = a := by
  funext j
  fin_cases j <;> simp [replaceClosure, delta1] <;> abel

@[simp] theorem replaceClosure_replace (a : Triple V) (c d : V) :
    replaceClosure (replaceClosure a c) d = replaceClosure a d := by
  funext j
  fin_cases j <;> simp [replaceClosure]

theorem map_tree (F : V →+ W) (a : Triple V) :
    tree (fun j => F (a j)) = fun j => F (tree a j) := by
  funext j
  fin_cases j <;> simp [tree]

theorem map_common (F : V →+ W) (z a : Triple V) :
    common (fun j => F (z j)) (fun j => F (a j)) = fun j => F (common z a j) := by
  funext j
  simp [common, map_tree]

theorem map_closure (F : V →+ W) (a : Triple V) :
    delta1 (fun j => F (a j)) = F (delta1 a) := by simp [delta1]

theorem map_replaceClosure (F : V →+ W) (a : Triple V) (c : V) :
    replaceClosure (fun j => F (a j)) (F c) = fun j => F (replaceClosure a c j) := by
  funext j
  fin_cases j <;> simp [replaceClosure]

section Scalars
variable {K : Type*} [CommRing K] [Module K V]

theorem face_smul (d : K) (c : V) : face (d • c) = d • face c := by
  funext j
  fin_cases j <;> simp [face]

/-- Invertible phase factors are explicit inputs; source labels are not permuted. -/
def phaseEncode (phase : Fin 3 → Kˣ) (z : Triple V) : Triple V :=
  fun j => (phase j : K) • z j

def phaseDecode (phase : Fin 3 → Kˣ) (q : Triple V) : Triple V :=
  fun j => (((phase j)⁻¹ : Kˣ) : K) • q j

@[simp] theorem phaseDecode_encode (phase : Fin 3 → Kˣ) (z : Triple V) :
    phaseDecode phase (phaseEncode phase z) = z := by
  funext j
  simp [phaseDecode, phaseEncode, smul_smul]

@[simp] theorem phaseEncode_decode (phase : Fin 3 → Kˣ) (q : Triple V) :
    phaseEncode phase (phaseDecode phase q) = q := by
  funext j
  simp [phaseDecode, phaseEncode, smul_smul]

end Scalars
end GRWTSK.Algebra.Homology.ThreeCellCech
```
