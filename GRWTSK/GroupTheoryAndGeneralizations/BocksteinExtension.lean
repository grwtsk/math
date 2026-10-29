import Mathematics.Homology.Rounding
import Mathlib.Algebra.Exact.Basic

/-!
# Unsplit Bockstein phase extension

The continuous torus and finite phase torsion form a short exact extension.
No direct-product coordinates and no section are included here.
-/

namespace Mathematics.Homology

universe u v w

/-- An exact additive extension `0 → Torus → Phase → Torsion → 0`. -/
structure BocksteinExtension
    (Torus : Type u) (Phase : Type v) (Torsion : Type w)
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion] where
  inclusion : Torus →+ Phase
  bockstein : Phase →+ Torsion
  inclusion_injective : Function.Injective inclusion
  bockstein_surjective : Function.Surjective bockstein
  exact : Function.Exact inclusion bockstein
  coefficientSequenceDigest : Digest
  certificate : ObjectAddress

namespace BocksteinExtension

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion)

/-- The continuous torus lies in the kernel of the Bockstein map. -/
theorem bockstein_include_zero (continuous : Torus) :
    extension.bockstein (extension.inclusion continuous) = 0 :=
  extension.exact.apply_apply_eq_zero continuous

/-- Equal finite phases differ by a continuous torus element. -/
theorem difference_lifts_from_torus
    {left right : Phase}
    (samePhase :
      extension.bockstein left = extension.bockstein right) :
    ∃ continuous,
      extension.inclusion continuous = left - right := by
  have zero :
      extension.bockstein (left - right) = 0 := by
    rw [map_sub, samePhase, sub_self]
  exact (extension.exact (left - right)).mp zero

end BocksteinExtension

end Mathematics.Homology
