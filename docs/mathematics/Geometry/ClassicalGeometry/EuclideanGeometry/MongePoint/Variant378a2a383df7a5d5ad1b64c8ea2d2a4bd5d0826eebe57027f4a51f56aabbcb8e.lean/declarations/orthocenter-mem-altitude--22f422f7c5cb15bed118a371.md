# orthocenter_mem_altitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5e59851-634f-1ff9-c728-fbcf8c723e62",
  "kind": "theorem",
  "lexical_name": "orthocenter_mem_altitude",
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
  "slug": "orthocenter-mem-altitude--22f422f7c5cb15bed118a371",
  "source": {
    "blob": "1279a2e7b96731c6a97969d3d022508edc7025df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 498,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22f422f7c5cb15bed118a371fd6e2b7e71a8c63795267fdd1f33d06c9ee6f6d2",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5e59851-634f-1ff9-c728-fbcf8c723e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthocenter_mem_altitude (t : Triangle ℝ P) {i₁ : Fin 3} :
    t.orthocenter ∈ t.altitude i₁ := by
  obtain ⟨i₂, i₃, h₁₂, h₂₃, h₁₃⟩ : ∃ i₂ i₃, i₁ ≠ i₂ ∧ i₂ ≠ i₃ ∧ i₁ ≠ i₃ := by
    -- porting note: was `decide!`
    fin_cases i₁ <;> decide
  rw [orthocenter_eq_mongePoint, t.altitude_eq_mongePlane h₁₂ h₁₃ h₂₃]
  exact t.mongePoint_mem_mongePlane
#align affine.triangle.orthocenter_mem_altitude Affine.Triangle.orthocenter_mem_altitude

/-- The orthocenter is the only point lying in any two of the
altitudes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1279a2e7b96731c6a97969d3d022508edc7025df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
