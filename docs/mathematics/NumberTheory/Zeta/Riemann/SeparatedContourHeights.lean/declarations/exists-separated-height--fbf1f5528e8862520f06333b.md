# exists_separated_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aef4f70-617e-27cf-98be-829c12a73120",
  "kind": "theorem",
  "lexical_name": "exists_separated_height",
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
  "slug": "exists-separated-height--fbf1f5528e8862520f06333b",
  "source": {
    "blob": "7c1ae3bb0688226f32cee4ec90515f373174376b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbf1f5528e8862520f06333b965c89a5604004948321c9696f150b6b127582ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aef4f70-617e-27cf-98be-829c12a73120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_separated_height (N : ℕ) :
    ∃ H : ℝ, (N : ℝ) + 1 + 2 * heightClearance N ≤ H ∧
      H ≤ (N : ℝ) + 2 - 2 * heightClearance N ∧
      ∀ z : ZeroPoint, heightClearance N ≤ |H - height z| := by
  obtain ⟨H, hL, hR, hband⟩ := exists_interval_clearance (heightBand N) height ((N : ℝ) + 1)
  change (N : ℝ) + 1 + 2 * heightClearance N ≤ H at hL
  have hR' : H ≤ (N : ℝ) + 2 - 2 * heightClearance N := by
    simpa only [heightClearance, add_assoc, one_add_one_eq_two] using hR
  refine ⟨H, hL, hR', ?_⟩
  intro z
  by_cases hz : z ∈ heightBand N
  · exact hband z hz
  have hδ := heightClearance_pos N
  have hδu := heightClearance_le_quarter N
  by_cases hlo : height z ≤ (N : ℝ)
  · rw [abs_of_nonneg (by linarith : 0 ≤ H - height z)]
    linarith
  · have hhi : (N : ℝ) + 3 < height z := by
      by_contra h
      exact hz ((mem_heightBand N z).mpr ⟨lt_of_not_ge hlo, le_of_not_gt h⟩)
    rw [abs_of_nonpos (by linarith : H - height z ≤ 0)]
    linarith

/-- Noncomputable mathematical selection; this does not enumerate numerical zeros. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c1ae3bb0688226f32cee4ec90515f373174376b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
