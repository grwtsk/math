# frame_isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e0e0c49-18f9-12a2-cc66-e9f9ecc293b4",
  "kind": "theorem",
  "lexical_name": "frame_isometry",
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
  "slug": "frame-isometry--f9d944509698540d1cde354d",
  "source": {
    "blob": "442a65803df5872febff260baf3473d5e0b0966d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9d944509698540d1cde354d94cf9b1944eb23f47ee9f891beadaeffcb217d2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e0e0c49-18f9-12a2-cc66-e9f9ecc293b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frame_isometry (k : ℕ) (r : RationalData k) :
    WeightedPermutationNorm.supNorm p (frameQ k r) = targetNorm p k r := by
  apply le_antisymm
  · apply (WeightedPermutationNorm.supNorm_le_iff p _ _).mpr
    rintro ⟨i,j⟩
    have h0 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,0)
    have h1 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,1)
    have h2 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,2)
    have h3 := WeightedPermutationNorm.entry_le p (rawCoordinates k r) (i,3)
    fin_cases j
    · exact h0
    · exact h1
    · exact padicNorm.sub.trans (max_le h2 h1)
    · exact padicNorm.sub.trans (max_le h3 h1)
  · apply (WeightedPermutationNorm.supNorm_le_iff p _ _).mpr
    rintro ⟨i,j⟩
    have h0 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,0)
    have h1 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,1)
    have h2 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,2)
    have h3 := WeightedPermutationNorm.entry_le p (frameQ k r) (i,3)
    fin_cases j
    · exact h0
    · exact h1
    · have hs : r.2 1 i = frameQ k r (i,1) + frameQ k r (i,2) := by simp [frameQ]
      change padicNorm p (r.2 1 i) ≤ _
      rw [hs]
      exact padicNorm.nonarchimedean.trans (max_le h1 h2)
    · have hs : r.2 2 i = frameQ k r (i,1) + frameQ k r (i,3) := by simp [frameQ]
      change padicNorm p (r.2 2 i) ≤ _
      rw [hs]
      exact padicNorm.nonarchimedean.trans (max_le h1 h3)

/-- Universal inverse estimate on the actual raw reduced target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPadicNorm.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442a65803df5872febff260baf3473d5e0b0966d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
