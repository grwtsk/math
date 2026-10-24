# transverseAngle_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c8d2daa-2f79-f687-b724-43e9b9443065",
  "kind": "theorem",
  "lexical_name": "transverseAngle_lt",
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
  "slug": "transverseangle-lt--e5ebf9dd6af9f5a1c75dda11",
  "source": {
    "blob": "cb9d7be2cf37d2007777bd4522afa6ca9242d437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ebf9dd6af9f5a1c75dda11dafa6d6246eb4b011c9c67ff3dd3a04bcfac11b8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c8d2daa-2f79-f687-b724-43e9b9443065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transverseAngle_lt (δ γ H : ℝ) (hδ : |δ| < 1 / 2)
    (hH : 0 < H) (hγ : H < |γ|) : transverseAngle δ γ < 1 / H := by
  have hg : 0 < |γ| := hH.trans hγ
  rcases eq_or_lt_of_le (abs_nonneg δ) with hz | hd
  · have hδ0 : |δ| = 0 := hz.symm
    simpa [transverseAngle, hδ0] using hH
  · have ht : Real.arctan (|δ| / |γ|) < |δ| / |γ| := by
      simpa only [Real.tan_arctan] using Real.lt_tan
        (Real.arctan_pos.mpr (div_pos hd hg)) (Real.arctan_lt_pi_div_two _)
    have hs : 2 * (|δ| / |γ|) < 1 / |γ| := by
      rw [← mul_div_assoc]
      exact (div_lt_div_iff_of_pos_right hg).mpr (by linarith)
    have hi : 1 / |γ| < 1 / H := one_div_lt_one_div_of_lt hH hγ
    dsimp [transverseAngle]
    linarith

/-- The arithmetic angle is always nonnegative when used with real absolute values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb9d7be2cf37d2007777bd4522afa6ca9242d437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
