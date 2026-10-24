# _root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.Matrix.IsUnit.posDef_star_left_conjugate_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82e26e7-1cb9-3bb4-8a4c-6d7b9a5b2c2a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.Matrix.IsUnit.posDef_star_left_conjugate_iff",
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
  "slug": "root-grwtsk-algebra-linearalgebra-possemidef-variant1b69b42201896947aab4--0be7764880b7bf2dc3a01b31",
  "source": {
    "blob": "07ac8a17c278a43c89ad4a5135c9bd8ceb339714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 596,
    "path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0be7764880b7bf2dc3a01b313ebb94e3a9d1ab74f4aea3a0b36d30a9ea142594",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82e26e7-1cb9-3bb4-8a4c-6d7b9a5b2c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.PosSemidef.Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.Matrix.IsUnit.posDef_star_left_conjugate_iff (hU : IsUnit U) :
    PosDef (star U * x * U) ↔ x.PosDef := by
  refine ⟨fun h ↦ ?_, fun h ↦ h.conjTranspose_mul_mul_same <| mulVec_injective_of_isUnit hU⟩
  lift U to (Matrix n n R)ˣ using hU
  have := h.conjTranspose_mul_mul_same (mulVec_injective_of_isUnit (Units.isUnit U⁻¹))
  rwa [← star_eq_conjTranspose, ← mul_assoc, ← mul_assoc, ← star_mul, mul_assoc,
    Units.mul_inv, mul_one, star_one, one_mul] at this

/-- For an invertible matrix `U`, `U * x * star U` is positive definite iff `x` is.
This works on any ⋆-ring with a partial order.

See `IsUnit.isStrictlyPositive_star_right_conjugate_iff` for a similar statement for star-ordered
rings. For matrices, positive definiteness is equivalent to strict positivity when the underlying
field is `ℝ` or `ℂ` (see `Matrix.isStrictlyPositive_iff_posDef`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ac8a17c278a43c89ad4a5135c9bd8ceb339714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
