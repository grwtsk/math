/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Compare TWO genuine alternating biadditive pairings on a rank-two torsion group

No perfectness, chosen Gram form, theta obstruction, regulator, analytic
rank or conclusion of BSD is assumed. If u,v generate the SOURCE group
as a *finite* natural-number additive span, two alternating biadditive
maps B,C are equal as soon as B(u,v)=C(u,v).

A genuine elliptic E[n] over a separably closed field with n invertible
has two such generators by the ORIGINAL pinned Tau Ceti
WeierstrassCurve.nonempty_basis_torsionBy / torsion_addEquiv_prod.
This cuts the theta-commutator vs ORIGINAL Weil comparison from
"all pairs of torsion points" to ONE oriented basis-pair evaluation,
AFTER proving the actual theta commutator biadditive.

The remaining comparison of the specific elliptic rational functions
with Tau Ceti's [n]-isogeny g_T is NOT proved here. This is a sound
algebraic reduction, not a substitute for that geometric identity.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.RankTwoAlternatingPairingDetector

variable {M N : Type*} [AddCommGroup M] [AddCommGroup N]

/-- An alternating biadditive map is skew-symmetric by polarizing
its diagonal-zero identity. No division by two is used, so n=2
is retained without incorrectly cancelling any 2-torsion. -/
theorem alternating_skew
    (B : M →+ M →+ N) (hB : ∀ x : M, B x x = 0)
    (x y : M) : B x y + B y x = 0 := by
  have hh := hB (x + y)
  simp only [map_add] at hh
  simpa only [hB, zero_add, add_zero, add_assoc] using hh

/-- One correctly ORIENTED off-diagonal comparison determines both
basis orders. The reverse pair is its additive negative, not the
same value at odd n. -/
theorem alternating_reverse_pair_eq
    (B C : M →+ M →+ N)
    (hB : ∀ x : M, B x x = 0)
    (hC : ∀ x : M, C x x = 0)
    {u v : M} (h : B u v = C u v) :
    B v u = C v u := by
  have hb := alternating_skew B hB u v
  have hc := alternating_skew C hC u v
  rw [h] at hb
  exact add_left_cancel (hb.trans hc.symm)

/-- If u,v generate the original additive group, only ONE
off-diagonal value is needed to identify alternating
biadditive maps. The n-th root coefficient group may have
2-torsion: no implicit oddness hypothesis enters. -/
theorem alternating_biadditive_eq_of_two_generators
    (u v : M)
    (hgen : ∀ x : M, ∃ i j : ℕ, x = i • u + j • v)
    (B C : M →+ M →+ N)
    (hB : ∀ x : M, B x x = 0)
    (hC : ∀ x : M, C x x = 0)
    (h : B u v = C u v) :
    B = C := by
  have h10 : B v u = C v u :=
    alternating_reverse_pair_eq B C hB hC h
  have hrow0 (x : M) : B u x = C u x := by
    obtain ⟨i, j, rfl⟩ := hgen x
    simp only [map_add, map_nsmul]
    rw [hB u, hC u, h]
  have hrow1 (x : M) : B v x = C v x := by
    obtain ⟨i, j, rfl⟩ := hgen x
    simp only [map_add, map_nsmul]
    rw [h10, hB v, hC v]
  apply AddMonoidHom.ext
  intro x
  obtain ⟨i, j, rfl⟩ := hgen x
  apply AddMonoidHom.ext
  intro y
  calc
    B (i • u + j • v) y = i • B u y + j • B v y := by
      simp only [map_add, map_nsmul, AddMonoidHom.add_apply,
        AddMonoidHom.nsmul_apply]
    _ = i • C u y + j • C v y := by rw [hrow0, hrow1]
    _ = C (i • u + j • v) y := by
      simp only [map_add, map_nsmul, AddMonoidHom.add_apply,
        AddMonoidHom.nsmul_apply]

end GRWTSK.CategoryTheoryHomologicalAlgebra.RankTwoAlternatingPairingDetector
