# isOrthogonal_of_forall_apply_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4517c2c-b483-c10d-dc64-2892fa830129",
  "kind": "lemma",
  "lexical_name": "isOrthogonal_of_forall_apply_same",
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
  "slug": "isorthogonal-of-forall-apply-same--5721983fe68907eac2568c6c",
  "source": {
    "blob": "f375bbc35d14c25e01650cd8ddfab95f811d94b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 492,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5721983fe68907eac2568c6c4ff5f1eba552461879f2b87e1f8191cb565aa824",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4517c2c-b483-c10d-dc64-2892fa830129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOrthogonal_of_forall_apply_same {F : Type*} [FunLike F M M] [LinearMapClass F R M M]
    (f : F) (h : IsLeftRegular (2 : R)) (hB : B.IsSymm) (hf : ∀ x, B (f x) (f x) = B x x) :
    B.IsOrthogonal f := by
  intro x y
  suffices 2 * B (f x) (f y) = 2 * B x y from h this
  have := hf (x + y)
  simp only [map_add, LinearMap.add_apply, hf x, hf y, show B y x = B x y from hB.eq y x] at this
  rw [show B (f y) (f x) = B (f x) (f y) from hB.eq (f y) (f x)] at this
  simp only [add_assoc, add_right_inj] at this
  simp only [← add_assoc, add_left_inj] at this
  simpa only [← two_mul] using this

end OrthogonalMap

end AdjointPair

/-! ### Self-adjoint pairs -/


section SelfadjointPair

section AddCommMonoid

variable [CommSemiring R]
variable [AddCommMonoid M] [Module R M]
variable [AddCommMonoid M₁] [Module R M₁]
variable {I : R →+* R}
variable (B F : M →ₗ[R] M →ₛₗ[I] M₁)

/-- The condition for an endomorphism to be "self-adjoint" with respect to a pair of bilinear maps
on the underlying module. In the case that these two maps are identical, this is the usual concept
of self adjointness. In the case that one of the maps is the negation of the other, this is the
usual concept of skew adjointness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f375bbc35d14c25e01650cd8ddfab95f811d94b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
