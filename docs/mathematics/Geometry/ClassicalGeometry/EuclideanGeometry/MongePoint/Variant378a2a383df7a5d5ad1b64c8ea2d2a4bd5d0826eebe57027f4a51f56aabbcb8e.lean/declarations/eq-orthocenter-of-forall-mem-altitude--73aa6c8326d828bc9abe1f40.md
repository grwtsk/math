# eq_orthocenter_of_forall_mem_altitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b52a2b6-944a-8787-c79d-501a816b235c",
  "kind": "theorem",
  "lexical_name": "eq_orthocenter_of_forall_mem_altitude",
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
  "slug": "eq-orthocenter-of-forall-mem-altitude--73aa6c8326d828bc9abe1f40",
  "source": {
    "blob": "1279a2e7b96731c6a97969d3d022508edc7025df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 509,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73aa6c8326d828bc9abe1f4047b7a7059dc02919256be525a9435c4bb48fc2f6",
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

Occurrence: `result:4b52a2b6-944a-8787-c79d-501a816b235c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_orthocenter_of_forall_mem_altitude {t : Triangle ℝ P} {i₁ i₂ : Fin 3} {p : P}
    (h₁₂ : i₁ ≠ i₂) (h₁ : p ∈ t.altitude i₁) (h₂ : p ∈ t.altitude i₂) : p = t.orthocenter := by
  obtain ⟨i₃, h₂₃, h₁₃⟩ : ∃ i₃, i₂ ≠ i₃ ∧ i₁ ≠ i₃ := by
    clear h₁ h₂
    -- porting note: was `decide!`
    fin_cases i₁ <;> fin_cases i₂ <;> decide
  rw [t.altitude_eq_mongePlane h₁₃ h₁₂ h₂₃.symm] at h₁
  rw [t.altitude_eq_mongePlane h₂₃ h₁₂.symm h₁₃.symm] at h₂
  rw [orthocenter_eq_mongePoint]
  have ha : ∀ i, i₃ ≠ i → p ∈ t.mongePlane i₃ i := by
    intro i hi
    have hi₁₂ : i₁ = i ∨ i₂ = i := by
      clear h₁ h₂
      -- porting note: was `decide!`
      fin_cases i₁ <;> fin_cases i₂ <;> fin_cases i₃ <;> fin_cases i <;> simp at h₁₂ h₁₃ h₂₃ hi ⊢
    cases' hi₁₂ with hi₁₂ hi₁₂
    · exact hi₁₂ ▸ h₂
    · exact hi₁₂ ▸ h₁
  exact eq_mongePoint_of_forall_mem_mongePlane ha
#align affine.triangle.eq_orthocenter_of_forall_mem_altitude Affine.Triangle.eq_orthocenter_of_forall_mem_altitude

/-- The distance from the orthocenter to the reflection of the
circumcenter in a side equals the circumradius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1279a2e7b96731c6a97969d3d022508edc7025df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
