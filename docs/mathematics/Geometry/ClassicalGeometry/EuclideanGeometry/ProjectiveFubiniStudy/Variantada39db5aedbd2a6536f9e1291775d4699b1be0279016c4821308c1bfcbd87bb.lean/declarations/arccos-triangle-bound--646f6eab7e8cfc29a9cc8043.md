# arccos_triangle_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e75c7a31-2931-0ba0-a5f9-23149b38e7d2",
  "kind": "theorem",
  "lexical_name": "arccos_triangle_bound",
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
  "slug": "arccos-triangle-bound--646f6eab7e8cfc29a9cc8043",
  "source": {
    "blob": "4207bbba730394f2666283dd79c9bc3e3b0175af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 81,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:646f6eab7e8cfc29a9cc80438540c698444ac1ac56f8447477aa54197f69e723",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e75c7a31-2931-0ba0-a5f9-23149b38e7d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arccos_triangle_bound (A B C : ℝ)
    (hA : A ∈ Set.Icc 0 1) (hB : B ∈ Set.Icc 0 1) (_hC : C ∈ Set.Icc 0 1)
    (hbound : C ≥ A * B - Real.sqrt (1 - A ^ 2) * Real.sqrt (1 - B ^ 2)) :
    Real.arccos C ≤ Real.arccos A + Real.arccos B := by
  have hAneg : -1 ≤ A := le_trans (by norm_num) hA.1
  have hBneg : -1 ≤ B := le_trans (by norm_num) hB.1
  have hsumNonneg : 0 ≤ Real.arccos A + Real.arccos B :=
    add_nonneg (Real.arccos_nonneg A) (Real.arccos_nonneg B)
  have hsumLePi : Real.arccos A + Real.arccos B ≤ Real.pi := by
    have hAhalf : Real.arccos A ≤ Real.pi / 2 :=
      Real.arccos_le_pi_div_two.mpr hA.1
    have hBhalf : Real.arccos B ≤ Real.pi / 2 :=
      Real.arccos_le_pi_div_two.mpr hB.1
    linarith
  have hcos :
      Real.cos (Real.arccos A + Real.arccos B) =
        A * B - Real.sqrt (1 - A ^ 2) * Real.sqrt (1 - B ^ 2) := by
    rw [Real.cos_add, Real.cos_arccos hAneg hA.2,
      Real.cos_arccos hBneg hB.2, Real.sin_arccos, Real.sin_arccos]
  calc
    Real.arccos C ≤ Real.arccos
        (A * B - Real.sqrt (1 - A ^ 2) * Real.sqrt (1 - B ^ 2)) :=
      Real.arccos_le_arccos hbound
    _ = Real.arccos (Real.cos (Real.arccos A + Real.arccos B)) := by rw [hcos]
    _ = Real.arccos A + Real.arccos B :=
      Real.arccos_cos hsumNonneg hsumLePi

/-- A nonzero vector has zero ray angle with itself. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207bbba730394f2666283dd79c9bc3e3b0175af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
