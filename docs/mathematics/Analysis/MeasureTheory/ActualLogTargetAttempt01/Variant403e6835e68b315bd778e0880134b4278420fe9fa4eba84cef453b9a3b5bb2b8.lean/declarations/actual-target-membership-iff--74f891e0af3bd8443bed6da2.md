# actual_target_membership_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56b2baac-2e36-4f77-8e09-8874f61ff2e9",
  "kind": "theorem",
  "lexical_name": "actual_target_membership_iff",
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
  "slug": "actual-target-membership-iff--74f891e0af3bd8443bed6da2",
  "source": {
    "blob": "a1c12a393c7417885720dbf18e3930b2f4c04211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74f891e0af3bd8443bed6da2a5514d73ccdd82f7b6c72f0ec7dcdaf04731e702",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b2baac-2e36-4f77-8e09-8874f61ff2e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_target_membership_iff (A : ℝ) (hA : 1 ≤ A) :
    positiveTarget ∈ positiveIntegerHull A hA ↔ logTarget ∈ logIntegerHull A hA := by
  have he : logEquiv positiveTarget = logTarget := logMap_positiveTarget
  rw [←he,←actual_integer_hull_image]
  constructor
  · intro h
    exact ⟨positiveTarget,h,rfl⟩
  · rintro ⟨f,hf,hfe⟩
    have hx := logEquiv.injective hfe
    simpa only [hx] using hf

/-- Exact target distance, coefficient one; this is not the repository arithmetic quadratic form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualLogTargetAttempt01/Variant403e6835e68b315bd778e0880134b4278420fe9fa4eba84cef453b9a3b5bb2b8.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c12a393c7417885720dbf18e3930b2f4c04211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
