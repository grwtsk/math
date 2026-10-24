# dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deb9a94b-0b48-2af4-bc06-232bfb586c7e",
  "kind": "lemma",
  "lexical_name": "dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₂",
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
  "slug": "dist-orthogonalprojection-line-eq-of-two-zsmul-oangle-eq-aux--b12b411522433ac6da5301ac",
  "source": {
    "blob": "159d93dab9f89a5ded988be238ea4b7c54eed408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 264,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b12b411522433ac6da5301acde2059d3d2f2bfbe892f1dd708c21eefb4ea8459",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deb9a94b-0b48-2af4-bc06-232bfb586c7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₂ {p p₁ p₂ p₃ : P}
    (h₂ : p₁ ≠ p₂) (h₃ : p₁ ≠ p₃) (h : (2 : ℤ) • ∡ p₂ p₁ p = (2 : ℤ) • ∡ p p₁ p₃)
    (h' : orthogonalProjection line[ℝ, p₁, p₂] p = p₁ ∨
      orthogonalProjection line[ℝ, p₁, p₃] p = p₁) :
    dist p (orthogonalProjection line[ℝ, p₁, p₂] p) =
      dist p (orthogonalProjection line[ℝ, p₁, p₃] p) := by
  rcases h' with h' | h'
  · exact dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₁ h₂ h h'
  · refine (dist_orthogonalProjection_line_eq_of_two_zsmul_oangle_eq_aux₁ h₃ ?_ h').symm
    rw [oangle_rev, smul_neg, ← h, oangle_rev, smul_neg, neg_neg]

/-- A point `p` is equidistant to two lines `p₁ p₂` and `p₁ p₃` if the oriented angles at `p₁`
are equal modulo `π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Bisector/Variant1cc355ad73de48d34e14cd905534fb407f408e01577863af8198ab310de177f1.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `159d93dab9f89a5ded988be238ea4b7c54eed408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
