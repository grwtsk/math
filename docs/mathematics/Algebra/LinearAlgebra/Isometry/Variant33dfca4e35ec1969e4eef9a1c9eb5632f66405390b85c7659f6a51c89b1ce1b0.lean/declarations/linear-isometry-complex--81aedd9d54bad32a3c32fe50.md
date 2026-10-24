# linear_isometry_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4548b582-0992-7c4a-e593-3ec5f2aa974f",
  "kind": "theorem",
  "lexical_name": "linear_isometry_complex",
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
  "slug": "linear-isometry-complex--81aedd9d54bad32a3c32fe50",
  "source": {
    "blob": "726b1ac204a41e445a9dd752a1fa3f7e7ad93d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81aedd9d54bad32a3c32fe50ebe62e63e26598b50636bd315b57d700391cd159",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4548b582-0992-7c4a-e593-3ec5f2aa974f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_isometry_complex (f : ℂ ≃ₗᵢ[ℝ] ℂ) :
    ∃ a : Circle, f = rotation a ∨ f = conjLIE.trans (rotation a) := by
  let a : Circle := ⟨f 1, by simp [Submonoid.unitSphere, f.norm_map]⟩
  use a
  have : (f.trans (rotation a).symm) 1 = 1 := by simpa [a] using rotation_apply a⁻¹ (f 1)
  refine (linear_isometry_complex_aux this).imp (fun h₁ => ?_) fun h₂ => ?_
  · simpa using eq_mul_of_inv_mul_eq h₁
  · exact eq_mul_of_inv_mul_eq h₂

/-- The matrix representation of `rotation a` is equal to the conformal matrix
`!![re a, -im a; im a, re a]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometry/Variant33dfca4e35ec1969e4eef9a1c9eb5632f66405390b85c7659f6a51c89b1ce1b0.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726b1ac204a41e445a9dd752a1fa3f7e7ad93d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
