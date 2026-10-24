# harmonicStartWindow_eq_image_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d31a0bd-3874-4632-85dc-07b7349a73ef",
  "kind": "theorem",
  "lexical_name": "harmonicStartWindow_eq_image_range",
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
  "slug": "harmonicstartwindow-eq-image-range--9972b0940f34c6a0a4c52388",
  "source": {
    "blob": "97de242eef4831e4f3b4d35ced118231d7ceee15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9972b0940f34c6a0a4c52388e290b83e9ee9f86d79a56d470f76a3005c1ee7a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d31a0bd-3874-4632-85dc-07b7349a73ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicStartWindow_eq_image_range
    (j t : ℕ) :
    (Finset.range (t + 1)).image
        (harmonicShortIntervalStart j t) =
      Finset.Ico (harmonicStartWindowLower j t)
        (harmonicStartWindowUpper j t) := by
  ext x
  simp only [Finset.mem_image, Finset.mem_range, Finset.mem_Ico]
  constructor
  · rintro ⟨a, ha, rfl⟩
    exact Finset.mem_Ico.mp (harmonicShortIntervalStart_mem_window (j := j) ha)
  · intro hx
    have hu : harmonicStartWindowUpper j t = harmonicStartWindowLower j t + (t + 1) := by
      unfold harmonicStartWindowUpper harmonicStartWindowLower
      omega
    refine ⟨x - harmonicStartWindowLower j t, ?_, ?_⟩
    · omega
    · unfold harmonicShortIntervalStart
      omega

/-- Exact cardinality of the starting-point window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97de242eef4831e4f3b4d35ced118231d7ceee15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
