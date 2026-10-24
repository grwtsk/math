# IsOrthoᵢ.not_isOrtho_basis_self_of_separatingLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c50c5b72-7a09-0144-fdbd-a9cb2f378c85",
  "kind": "theorem",
  "lexical_name": "IsOrthoᵢ.not_isOrtho_basis_self_of_separatingLeft",
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
  "slug": "isortho-not-isortho-basis-self-of-separatingleft--31f8a866df5990de0aafb4ff",
  "source": {
    "blob": "f375bbc35d14c25e01650cd8ddfab95f811d94b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 791,
    "line": 775,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31f8a866df5990de0aafb4ff40f58de9e9d0510cc75b2c8c0c99c0ec7ec16869",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c50c5b72-7a09-0144-fdbd-a9cb2f378c85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–791.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsOrthoᵢ.not_isOrtho_basis_self_of_separatingLeft [Nontrivial R]
    {B : M →ₛₗ[I] M →ₛₗ[I'] M₁} {v : Basis n R M} (h : B.IsOrthoᵢ v) (hB : B.SeparatingLeft)
    (i : n) : ¬B.IsOrtho (v i) (v i) := by
  intro ho
  refine v.ne_zero i (hB (v i) fun m ↦ ?_)
  obtain ⟨vi, rfl⟩ := v.repr.symm.surjective m
  rw [Basis.repr_symm_apply, Finsupp.linearCombination_apply, Finsupp.sum, map_sum]
  apply Finset.sum_eq_zero
  rintro j -
  rw [map_smulₛₗ]
  suffices B (v i) (v j) = 0 by rw [this, smul_zero]
  obtain rfl | hij := eq_or_ne i j
  · exact ho
  · exact h hij

/-- An orthogonal basis with respect to a right-separating bilinear map has no self-orthogonal
elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant5b5c013725063fd94230e7f7b05f08baaed3c2af30a3f2541917f200c2d4ba51.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f375bbc35d14c25e01650cd8ddfab95f811d94b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
