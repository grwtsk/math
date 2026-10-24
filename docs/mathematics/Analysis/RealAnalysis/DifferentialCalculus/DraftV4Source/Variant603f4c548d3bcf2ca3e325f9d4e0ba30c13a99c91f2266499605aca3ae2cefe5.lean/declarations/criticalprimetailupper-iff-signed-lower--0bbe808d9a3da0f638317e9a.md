# criticalPrimeTailUpper_iff_signed_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4b6ddbcab389f7862949e5c3e918ce6f593818c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee5fcb72-b171-cf7f-c5f3-b2d2b4af2600",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06389ffb-a0fb-57b3-1c27-3cf200fe4036",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTailUpper_iff_signed_lower",
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
  "slug": "criticalprimetailupper-iff-signed-lower--0bbe808d9a3da0f638317e9a",
  "source": {
    "blob": "d4b6ddbcab389f7862949e5c3e918ce6f593818c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bbe808d9a3da0f638317e9a9ca44392a4ef362c95cd398f9f70bdeb82ee022c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06389ffb-a0fb-57b3-1c27-3cf200fe4036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTailUpper_iff_signed_lower :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      primeLogSum (2 * A) (criticalPrimeTest A) + diagonalMainCoefficient A * A ≤ D) ↔
      CriticalAbelTailLowerBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
    have hp := h A hRA
    rw [criticalPrimeSum_eq_continuous_sub_work A hA] at hp
    linarith
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
    rw [criticalPrimeSum_eq_continuous_sub_work A hA]
    linarith [h A hRA]

/-- Exact Abel decomposition of the independently defined literal first-prime sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DraftV4Source/Variant603f4c548d3bcf2ca3e325f9d4e0ba30c13a99c91f2266499605aca3ae2cefe5.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b6ddbcab389f7862949e5c3e918ce6f593818c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
