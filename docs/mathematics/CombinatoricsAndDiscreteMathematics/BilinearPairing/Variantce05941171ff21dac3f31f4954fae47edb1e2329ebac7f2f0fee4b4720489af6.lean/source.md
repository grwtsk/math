# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BilinearPairing.Variantce05941171ff21dac3f31f4954fae47edb1e2329ebac7f2f0fee4b4720489af6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ea58f63141a71ceffd6d7ac04b632005f0e1fa6` · SHA-256 `bfb7f0c3453a94dbebb94560438b2c55c1e26d1e745e239bd986fd28423a8e2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BilinearMatrixPairing.Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BilinearMatrixPairing.Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/BilinearPairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Data.Matrix.Basic
import Mathlib.Tactic

/-!
# Complex bilinear matrix pairings

The conductor-three Vaughan Type II form is bilinear in its two arithmetic
coefficient vectors.  In particular, it is not the sesquilinear form obtained
by inserting the vectors directly into a complex Hilbert-space inner product.

This module fixes that convention at the finite matrix boundary.  The bridge
to a Hilbert inner product conjugates the left arithmetic vector explicitly;
Mathlib's inner product is conjugate-linear in its first argument, so the two
conjugations cancel.  Everything here is finite algebra and carries no norm or
correlation estimate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BilinearMatrixPairing.Variant963f087bf9aca4ac3d3996605fac78e066ec98b05ef2a885544a61099a7267fe

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators ComplexConjugate InnerProductSpace
open ComplexConjugate

/-- The arithmetic complex-bilinear pairing `sum_l sum_r a_l M_lr b_r`.

There is deliberately no conjugation in this definition. -/
@[expose]
def bilinearMatrixPairing {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (matrix : Matrix Left Right ℂ)
    (right : Right → ℂ) : ℂ :=
  ∑ leftIndex : Left, ∑ rightIndex : Right,
    left leftIndex * matrix leftIndex rightIndex * right rightIndex

@[surface_novel, surface_published]
theorem bilinearMatrixPairing_zero_matrix {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (right : Right → ℂ) :
    bilinearMatrixPairing left (0 : Matrix Left Right ℂ) right = 0 := by
  simp [bilinearMatrixPairing]

@[surface_novel, surface_published]
theorem bilinearMatrixPairing_add {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (A B : Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left (A + B) right =
      bilinearMatrixPairing left A right +
        bilinearMatrixPairing left B right := by
  simp only [bilinearMatrixPairing, Matrix.add_apply, mul_add,
    add_mul, Finset.sum_add_distrib]

@[surface_novel, surface_published]
theorem bilinearMatrixPairing_sub {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (A B : Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left (A - B) right =
      bilinearMatrixPairing left A right -
        bilinearMatrixPairing left B right := by
  rw [sub_eq_add_neg, bilinearMatrixPairing_add]
  simp [bilinearMatrixPairing, sub_eq_add_neg]

@[surface_novel, surface_published]
theorem bilinearMatrixPairing_sum {Index Left Right : Type*}
    [Fintype Index] [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (matrices : Index → Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left (∑ index, matrices index) right =
      ∑ index, bilinearMatrixPairing left (matrices index) right := by
  classical
  simp only [bilinearMatrixPairing, Matrix.sum_apply,
    Finset.mul_sum, Finset.sum_mul]
  calc
    (∑ leftIndex, ∑ rightIndex, ∑ index,
        left leftIndex * matrices index leftIndex rightIndex *
          right rightIndex) =
      ∑ leftIndex, ∑ index, ∑ rightIndex,
        left leftIndex * matrices index leftIndex rightIndex *
          right rightIndex := by
            apply Fintype.sum_congr
            intro leftIndex
            exact Finset.sum_comm
    _ = ∑ index, ∑ leftIndex, ∑ rightIndex,
        left leftIndex * matrices index leftIndex rightIndex *
          right rightIndex := Finset.sum_comm

@[surface_novel, surface_published]
theorem bilinearMatrixPairing_finset_sum
    {Index Left Right : Type*} [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (indices : Finset Index)
    (matrices : Index → Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left (∑ index ∈ indices, matrices index) right =
      ∑ index ∈ indices,
        bilinearMatrixPairing left (matrices index) right := by
  classical
  induction indices using Finset.induction_on with
  | empty => simp [bilinearMatrixPairing_zero_matrix]
  | @insert index indices hnot ih =>
      simp [hnot, bilinearMatrixPairing_add, ih]

/-- The left vector used to represent a bilinear arithmetic form inside a
sesquilinear complex Hilbert space. -/
@[expose]
def conjugatedLeftEuclideanVector {Left : Type*} [Fintype Left]
    (left : Left → ℂ) : EuclideanSpace ℂ Left :=
  WithLp.toLp 2 (fun leftIndex ↦ star (left leftIndex))

/-- The ordinary matrix action, regarded as a vector in complex Euclidean
space. -/
@[expose]
def matrixActionEuclideanVector {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (matrix : Matrix Left Right ℂ) (right : Right → ℂ) :
    EuclideanSpace ℂ Left :=
  WithLp.toLp 2 (Matrix.mulVec matrix right)

/-- The bilinear arithmetic form is represented by a Hilbert inner product
only after explicitly conjugating the left input.

The theorem prevents accidental replacement of
`sum a_l M_lr b_r` by `sum conj(a_l) M_lr b_r`. -/
@[surface_novel, surface_published]
theorem bilinearMatrixPairing_eq_inner_conjugatedLeft
    {Left Right : Type*} [Fintype Left] [Fintype Right]
    (left : Left → ℂ) (matrix : Matrix Left Right ℂ)
    (right : Right → ℂ) :
    bilinearMatrixPairing left matrix right =
      ⟪conjugatedLeftEuclideanVector left,
        matrixActionEuclideanVector matrix right⟫_ℂ := by
  classical
  simp only [bilinearMatrixPairing, conjugatedLeftEuclideanVector,
    matrixActionEuclideanVector, EuclideanSpace.inner_toLp_toLp,
    dotProduct, Matrix.mulVec, Pi.star_apply, star_star]
  apply Finset.sum_congr rfl
  intro leftIndex _
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro rightIndex _
  ring

end

end Surface.Core.TypeII

end
```
