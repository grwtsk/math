# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeltaRing.Variant1d6de872af11619f7bbb6073bad2d3689f16cdb71083fb54d770cdcbea34f1f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7323e4d8b37eb60d3bd96e291bd4eeaa83df359` · SHA-256 `f4d3be5e4ea6724efe719b11eb078404cd4c33dff427b335ecc3ff3b12444050`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RingOps.Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RingOps.Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f","mathematical_subject":"Computation.DataStructures","original_sha256":"0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Prismatic/DeltaRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RingOps.Variant0d6168cee29c7e8646019ddf221705d4ed436e3a815201791650ced94b70d68f

namespace Surface.Prismatic

universe u

/-!
# Delta rings

Formalized here: a small operation-level interface for δ-rings, including the
Frobenius lift formula `φ(x) = x^p + pδ(x)` and Prop-valued certificates for
the δ-identities.

Certificate-gated here: ring-homomorphism laws and Frobenius reduction modulo
`p`, because the current Surface snapshot does not import a full commutative
ring hierarchy.

Not claimed: a complete development of commutative algebra or Witt-vector
theory.
-/

/-- Minimal commutative-ring-like operations used by the prismatic interfaces. -/
structure RingOps where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  neg : carrier → carrier
  mul : carrier → carrier → carrier
  lawBoundary : List String

namespace RingOps

def natMul (R : RingOps.{u}) : Nat → R.carrier → R.carrier
  | 0, _ => R.zero
  | n + 1, x => R.add x (natMul R n x)

def pow (R : RingOps.{u}) (x : R.carrier) : Nat → R.carrier
  | 0 => R.one
  | n + 1 => R.mul x (pow R x n)

end RingOps

/-- A δ-ring at the prime-like index `p`. -/
structure DeltaRing (p : Nat) where
  ops : RingOps.{u}
  delta : ops.carrier → ops.carrier
  phi : ops.carrier → ops.carrier
  phi_eq :
    ∀ x, phi x =
      ops.add (ops.pow x p) (ops.natMul p (delta x))
  delta_zero : delta ops.zero = ops.zero
  delta_one : delta ops.one = ops.zero
  delta_add_numerator_divisible :
    ∀ _ _ : ops.carrier, Prop
  delta_add_certificate :
    ∀ x y, delta_add_numerator_divisible x y
  delta_mul :
    ∀ x y,
      delta (ops.mul x y) =
        ops.add
          (ops.add
            (ops.mul (ops.pow x p) (delta y))
            (ops.mul (ops.pow y p) (delta x)))
          (ops.natMul p (ops.mul (delta x) (delta y)))
  phi_is_ring_hom : Prop
  phi_is_ring_hom_certified : phi_is_ring_hom
  phi_lifts_frobenius_mod_p : Prop
  phi_lifts_frobenius_mod_p_certified : phi_lifts_frobenius_mod_p
  certificateBoundary : List String

namespace DeltaRing

theorem frobenius_lift_formula
    (A : Surface.Prismatic.DeltaRing p)
    (x : A.ops.carrier) :
    A.phi x =
      A.ops.add (A.ops.pow x p) (A.ops.natMul p (A.delta x)) :=
  A.phi_eq x

theorem delta_structure_gives_frobenius_lift
    (A : Surface.Prismatic.DeltaRing p) :
    A.phi_lifts_frobenius_mod_p :=
  A.phi_lifts_frobenius_mod_p_certified

end DeltaRing

/-- Homomorphism of δ-rings. -/
structure DeltaRingHom
    {p : Nat}
    (A B : DeltaRing p) where
  map : A.ops.carrier → B.ops.carrier
  preserves_zero : map A.ops.zero = B.ops.zero
  preserves_one : map A.ops.one = B.ops.one
  preserves_add :
    ∀ x y, map (A.ops.add x y) = B.ops.add (map x) (map y)
  preserves_mul :
    ∀ x y, map (A.ops.mul x y) = B.ops.mul (map x) (map y)
  preserves_delta :
    ∀ x, map (A.delta x) = B.delta (map x)
  preserves_phi :
    ∀ x, map (A.phi x) = B.phi (map x)
  homBoundary : List String

/-- A tiny terminal δ-ring used by examples and tests. -/
def unitDeltaRing (p : Nat) : DeltaRing p where
  ops := {
    carrier := PUnit
    zero := PUnit.unit
    one := PUnit.unit
    add := fun _ _ => PUnit.unit
    neg := fun _ => PUnit.unit
    mul := fun _ _ => PUnit.unit
    lawBoundary := [
      "The unit ring is an example carrier for interface tests.",
      "It is not used to prove nontrivial prismatic comparison theorems."
    ]
  }
  delta := fun _ => PUnit.unit
  phi := fun _ => PUnit.unit
  phi_eq := by
    intro x
    rfl
  delta_zero := rfl
  delta_one := rfl
  delta_add_numerator_divisible := fun _ _ => True
  delta_add_certificate := by
    intro x y
    trivial
  delta_mul := by
    intro x y
    rfl
  phi_is_ring_hom := True
  phi_is_ring_hom_certified := trivial
  phi_lifts_frobenius_mod_p := True
  phi_lifts_frobenius_mod_p_certified := trivial
  certificateBoundary := [
    "Unit δ-ring example.",
    "Nontrivial δ-ring mathematics must use nontrivial certificates."
  ]

end Surface.Prismatic
```
