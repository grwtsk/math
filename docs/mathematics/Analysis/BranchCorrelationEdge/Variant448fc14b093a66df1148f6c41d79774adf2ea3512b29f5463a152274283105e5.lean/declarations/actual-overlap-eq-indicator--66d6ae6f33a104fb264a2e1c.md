# actual_overlap_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94691d70-6b92-59ff-3981-2d4ff88b6a6c",
  "kind": "theorem",
  "lexical_name": "actual_overlap_eq_indicator",
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
  "slug": "actual-overlap-eq-indicator--66d6ae6f33a104fb264a2e1c",
  "source": {
    "blob": "7a3a4701cef8979e811839c42115da9add5faef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66d6ae6f33a104fb264a2e1cb0b1a36af9af9659a91282312e805c263314f0b4",
  "verification": {
    "reference": "docs/verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94691d70-6b92-59ff-3981-2d4ff88b6a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_overlap_eq_indicator {A t : ℝ} (hA : 0 < A) (ht : 0 ≤ t) :
    (fun x ↦ normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - t)) =
      (Icc (t - A) A).indicator
        (fun x ↦ normalizedInterior A x * normalizedInterior A (x - t)) := by
  rw [normalizedTest_eq_indicator A hA]
  funext x
  have hs : x ∈ Icc (-A) A ∧ x - t ∈ Icc (-A) A ↔ x ∈ Icc (t - A) A := by
    simp only [mem_Icc]
    constructor
    · rintro ⟨⟨_, hx1⟩, ⟨hy0, _⟩⟩
      exact ⟨by linarith, hx1⟩
    · rintro ⟨hx0, hx1⟩
      exact ⟨⟨by linarith, hx1⟩, ⟨by linarith, by linarith⟩⟩
  by_cases hx : x ∈ Icc (-A) A
  · by_cases hy : x - t ∈ Icc (-A) A
    · simp [hx, hy, hs.mp ⟨hx, hy⟩]
    · have hm : x ∉ Icc (t - A) A := fun h ↦ hy (hs.mpr h).2
      simp [hx, hy, hm]
  · have hm : x ∉ Icc (t - A) A := fun h ↦ hx (hs.mpr h).1
    simp [hx, hm]

/-- The actual correlation is an oriented polynomial integral only on its stated half-support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchCorrelationEdge/Variant448fc14b093a66df1148f6c41d79774adf2ea3512b29f5463a152274283105e5.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3a4701cef8979e811839c42115da9add5faef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
