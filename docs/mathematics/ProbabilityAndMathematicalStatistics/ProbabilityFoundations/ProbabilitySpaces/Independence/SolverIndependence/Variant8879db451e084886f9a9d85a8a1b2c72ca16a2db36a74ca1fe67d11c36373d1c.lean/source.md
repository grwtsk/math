# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.SolverIndependence.Variant8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b310c74b0070f38efd163e3d684bc7324dae7d66` · SHA-256 `8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.SingularLinearSolver

/-!
# Solver independence of singular Schur residuals

The singular provenance solver constructed from a linear section is not
canonical as a map.  This module proves that its induced positive residual
geometry is canonical.

Any two BlockSchurSolver values for the same ambient positive form satisfy the
same normal equations.  Their provenance corrections differ by a null
provenance direction, hence by null-orthogonality that difference is invisible
to the ambient positive geometry.  Consequently the explained provenance
pairing and the Schur residual bilinear form are independent of the chosen
solver.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup U] [Module ℝ U]

namespace BlockSchurSolver

variable {G : PositiveForm (P × U)}

private theorem form_sub_right
    (x y z : P × U) :
    G.form x (y - z) = G.form x y - G.form x z := by
  rw [sub_eq_add_neg, G.add_right]
  have h := G.smul_right (-1 : ℝ) x z
  simp only [neg_smul, one_smul, neg_mul, one_mul] at h
  rw [h]
  ring

/-- The normal equation can be read as equality between the provenance
correction pairing and the original cross pairing. -/
theorem provenance_pairing_eq_cross
    (S : BlockSchurSolver G) (p : P) (u : U) :
    G.form (provenanceInclusion p) (provenanceInclusion (S.solve u)) =
      G.form (provenanceInclusion p) (autonomousInclusion u) := by
  have h := S.normal p u
  rw [form_sub_right] at h
  linarith

/-- Two solutions of the same normal equations differ by a provenance-null
direction. -/
theorem solver_difference_null
    (S T : BlockSchurSolver G) (u : U) :
    G.form
        (provenanceInclusion (S.solve u - T.solve u))
        (provenanceInclusion (S.solve u - T.solve u)) = 0 := by
  let d : P := S.solve u - T.solve u
  have hS := S.provenance_pairing_eq_cross d u
  have hT := T.provenance_pairing_eq_cross d u
  have hpair :
      G.form (provenanceInclusion d) (provenanceInclusion (S.solve u)) =
        G.form (provenanceInclusion d) (provenanceInclusion (T.solve u)) := by
    exact hS.trans hT.symm
  have hzero :
      G.form (provenanceInclusion d)
        (provenanceInclusion (S.solve u) -
          provenanceInclusion (T.solve u)) = 0 := by
    rw [form_sub_right]
    linarith
  simpa [d] using hzero

/-- The difference between two solver corrections is orthogonal to every
ambient direction. -/
theorem solver_difference_orthogonal
    (S T : BlockSchurSolver G) (u : U) (x : P × U) :
    G.form (provenanceInclusion (S.solve u - T.solve u)) x = 0 :=
  G.null_orthogonal (S.solver_difference_null T u) x

/-- The provenance energy pairing is independent of the chosen normal-equation
solver. -/
theorem provenance_energy_independent
    (S T : BlockSchurSolver G) (u v : U) :
    G.form (provenanceInclusion (S.solve u))
        (provenanceInclusion (S.solve v)) =
      G.form (provenanceInclusion (T.solve u))
        (provenanceInclusion (T.solve v)) := by
  calc
    G.form (provenanceInclusion (S.solve u))
        (provenanceInclusion (S.solve v)) =
        G.form (provenanceInclusion (S.solve u))
          (autonomousInclusion v) :=
      S.provenance_pairing_eq_cross (S.solve u) v
    _ =
        G.form (provenanceInclusion (S.solve u))
          (provenanceInclusion (T.solve v)) :=
      (T.provenance_pairing_eq_cross (S.solve u) v).symm
    _ =
        G.form (provenanceInclusion (T.solve v))
          (provenanceInclusion (S.solve u)) :=
      G.symmetric _ _
    _ =
        G.form (provenanceInclusion (T.solve v))
          (autonomousInclusion u) :=
      S.provenance_pairing_eq_cross (T.solve v) u
    _ =
        G.form (provenanceInclusion (T.solve v))
          (provenanceInclusion (T.solve u)) :=
      (T.provenance_pairing_eq_cross (T.solve v) u).symm
    _ =
        G.form (provenanceInclusion (T.solve u))
          (provenanceInclusion (T.solve v)) :=
      G.symmetric _ _

/-- The Schur residual pairing is independent of the chosen solver. -/
theorem schur_pairing_independent
    (S T : BlockSchurSolver G) (u v : U) :
    S.schurForm.form u v = T.schurForm.form u v := by
  rw [S.schurForm_eq_sub, T.schurForm_eq_sub]
  rw [S.provenance_energy_independent T u v]

/-- Exact equality of the underlying Schur bilinear forms. -/
theorem schurForm_form_eq
    (S T : BlockSchurSolver G) :
    S.schurForm.form = T.schurForm.form := by
  funext u v
  exact S.schur_pairing_independent T u v

/-- Visibility in the singular residual geometry is solver-independent. -/
theorem schur_visible_iff
    (S T : BlockSchurSolver G) (u : U) :
    S.schurForm.Visible u ↔ T.schurForm.Visible u := by
  unfold PositiveForm.Visible
  rw [S.schur_pairing_independent T u u]

/-- Nullity in the singular residual geometry is solver-independent. -/
theorem schur_isNull_iff
    (S T : BlockSchurSolver G) (u : U) :
    S.schurForm.IsNull u ↔ T.schurForm.IsNull u := by
  unfold PositiveForm.IsNull
  rw [S.schur_pairing_independent T u u]

end BlockSchurSolver

universe w z

variable {ι : Type w} {κ : Type z}
variable [Fintype ι]
variable [Fintype κ]

/-- The singular solver constructed from a projective section produces the same
Schur residual pairing as every other admitted block solver. -/
theorem singular_schur_pairing_canonical
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (T : BlockSchurSolver G) (u v : κ → ℝ) :
    (singularBlockSchurSolver G A B hA hB).schurForm.form u v =
      T.schurForm.form u v :=
  (singularBlockSchurSolver G A B hA hB).schur_pairing_independent T u v

end FormalResearch.PositiveAtlas
```
