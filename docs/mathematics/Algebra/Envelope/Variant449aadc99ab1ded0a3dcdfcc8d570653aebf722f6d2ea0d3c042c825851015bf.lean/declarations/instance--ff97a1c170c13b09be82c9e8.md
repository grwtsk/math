# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:786133e8b8dc8d5eb264813a3800d667e3968be6ce9b6f7fcb13f547eb1c9f2f",
  "kind": "instance",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "instance--ff97a1c170c13b09be82c9e8",
  "source": {
    "blob": "4a8bbdbfa9f103f20b5f740dd71af1b30bc0d541",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 450,
    "path": "GRWTSK/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff97a1c170c13b09be82c9e887818ec53a3a99658f09b2eb6f61ba3c04a41d0a",
  "verification": {
    "reference": "docs/verification/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:786133e8b8dc8d5eb264813a3800d667e3968be6ce9b6f7fcb13f547eb1c9f2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := high) [LE α] [LT α] [LawfulOrderLT α] [IsPreorder α] [OrderedRing α] [ExistsAddOfLT α] : OrderedRing (OfSemiring.Q α) where
  zero_lt_one := by
    rw [← toQ_ofNat, ← toQ_ofNat, toQ_lt]
    exact OrderedRing.zero_lt_one
  mul_lt_mul_of_pos_left := by
    intro a b c h₁ h₂
    induction a using Q.ind with | _ a
    induction b using Q.ind with | _ b
    induction c using Q.ind with | _ c
    rcases a with ⟨a₁, a₂⟩; rcases b with ⟨b₁, b₂⟩; rcases c with ⟨c₁, c₂⟩
    simp at h₁ h₂ ⊢
    obtain ⟨d, d_pos, rfl⟩ := ExistsAddOfLT.exists_add_of_le h₂
    simp [Semiring.right_distrib]
    have : c₂ * a₁ + d * a₁ + c₂ * a₂ + (c₂ * b₂ + d * b₂ + c₂ * b₁) =
      c₂ * a₁ + c₂ * a₂ + c₂ * b₁ + c₂ * b₂ + (d * a₁ + d * b₂) := by ac_rfl
    rw [this]; clear this
    have : c₂ * a₂ + d * a₂ + c₂ * a₁ + (c₂ * b₁ + d * b₁ + c₂ * b₂) =
      c₂ * a₁ + c₂ * a₂ + c₂ * b₁ + c₂ * b₂ + (d * a₂ + d * b₁) := by ac_rfl
    rw [this]; clear this
    rw [← OrderedAdd.add_lt_right_iff]
    simpa [Semiring.left_distrib] using OrderedRing.mul_lt_mul_of_pos_left h₁ d_pos
  mul_lt_mul_of_pos_right := by
    intro a b c h₁ h₂
    induction a using Q.ind with | _ a
    induction b using Q.ind with | _ b
    induction c using Q.ind with | _ c
    rcases a with ⟨a₁, a₂⟩; rcases b with ⟨b₁, b₂⟩; rcases c with ⟨c₁, c₂⟩
    simp at h₁ h₂ ⊢
    obtain ⟨d, d_pos, rfl⟩ := ExistsAddOfLT.exists_add_of_le h₂
    simp [Semiring.left_distrib]
    have : a₁ * c₂ + a₁ * d + a₂ * c₂ + (b₁ * c₂ + (b₂ * c₂ + b₂ * d)) =
      a₁ * c₂ + a₂ * c₂ + b₁ * c₂ + b₂ * c₂ + (a₁ * d + b₂ * d) := by ac_rfl
    rw [this]; clear this
    have : a₁ * c₂ + (a₂ * c₂ + a₂ * d) + (b₁ * c₂ + b₁ * d + b₂ * c₂) =
      a₁ * c₂ + a₂ * c₂ + b₁ * c₂ + b₂ * c₂ + (a₂ * d + b₁ * d) := by ac_rfl
    rw [this]; clear this
    rw [← OrderedAdd.add_lt_right_iff]
    simpa [Semiring.right_distrib] using OrderedRing.mul_lt_mul_of_pos_right h₁ d_pos

end OfSemiring
end Lean.Grind.Ring

open Lean.Grind.Ring

namespace Lean.Grind.CommRing

namespace OfCommSemiring

variable (α : Type u) [CommSemiring α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Envelope/Variant449aadc99ab1ded0a3dcdfcc8d570653aebf722f6d2ea0d3c042c825851015bf.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8bbdbfa9f103f20b5f740dd71af1b30bc0d541` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
