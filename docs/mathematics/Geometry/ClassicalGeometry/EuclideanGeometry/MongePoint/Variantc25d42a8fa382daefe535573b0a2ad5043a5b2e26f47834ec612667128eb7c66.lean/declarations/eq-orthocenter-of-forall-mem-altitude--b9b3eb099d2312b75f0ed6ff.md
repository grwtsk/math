# eq_orthocenter_of_forall_mem_altitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48c3f7e1-764a-bc19-ed75-48c0c8ad0b4d",
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
  "slug": "eq-orthocenter-of-forall-mem-altitude--b9b3eb099d2312b75f0ed6ff",
  "source": {
    "blob": "f582cc6d4efac0da3198e0b3cbe489bfc5611cb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 445,
    "line": 430,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b3eb099d2312b75f0ed6ff90fa29227684b0ad0896fc8c28824fda2494f59e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48c3f7e1-764a-bc19-ed75-48c0c8ad0b4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–445.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_orthocenter_of_forall_mem_altitude {t : Triangle ℝ P} {i₁ i₂ : Fin 3} {p : P}
    (h₁₂ : i₁ ≠ i₂) (h₁ : p ∈ t.altitude i₁) (h₂ : p ∈ t.altitude i₂) : p = t.orthocenter := by
  obtain ⟨i₃, h₂₃, h₁₃⟩ : ∃ i₃, i₂ ≠ i₃ ∧ i₁ ≠ i₃ := by
    clear h₁ h₂
    decide +revert
  rw [t.altitude_eq_mongePlane h₁₃ h₁₂ h₂₃.symm] at h₁
  rw [t.altitude_eq_mongePlane h₂₃ h₁₂.symm h₁₃.symm] at h₂
  rw [orthocenter_eq_mongePoint]
  have ha : ∀ i, i₃ ≠ i → p ∈ t.mongePlane i₃ i := by
    intro i hi
    obtain rfl | rfl : i₁ = i ∨ i₂ = i := by lia
    all_goals assumption
  exact eq_mongePoint_of_forall_mem_mongePlane ha

/-- The distance from the orthocenter to the reflection of the
circumcenter in a side equals the circumradius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variantc25d42a8fa382daefe535573b0a2ad5043a5b2e26f47834ec612667128eb7c66.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f582cc6d4efac0da3198e0b3cbe489bfc5611cb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
