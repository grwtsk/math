# cumulativeBoundaryCorrelation_eq_paddedWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e33133b1-e89a-c454-4312-372f9d711152",
  "kind": "theorem",
  "lexical_name": "cumulativeBoundaryCorrelation_eq_paddedWindow",
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
  "slug": "cumulativeboundarycorrelation-eq-paddedwindow--8bb33b3ffa80880246d5c775",
  "source": {
    "blob": "9d72f7ea607fa737e02fa7eabe58d8abd14f4407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb33b3ffa80880246d5c7753b30b329c95ef3fd25adda8b8bf66fa79c4adc8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e33133b1-e89a-c454-4312-372f9d711152`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cumulativeBoundaryCorrelation_eq_paddedWindow
    {j t : ℕ}
    (ht : t ∈ boundaryCoreDepths j) :
    cumulativeHarmonicShiftCorrelation j t (2 ^ j) =
      ∑ u ∈ Finset.range (2 ^ j),
        if u ≤ t then
          boundaryMovingWindowMertens j u *
            moebiusReal (t - u + 1)
        else 0 := by
  rw [cumulativeBoundaryCorrelation_eq_reverseWindow ht]
  have hleft := boundaryCoreDepth_left ht
  have hle : t + 1 ≤ 2 ^ j := by omega
  rw [sum_range_eq_sum_range_indicator_of_le
    (fun u =>
      boundaryMovingWindowMertens j u *
        moebiusReal (t - u + 1)) hle]
  apply Finset.sum_congr rfl
  intro u hu
  have huX := Finset.mem_range.mp hu
  by_cases hut : u ≤ t
  · have hut' : u < t + 1 := by omega
    simp [hut, hut']
  · have hut' : ¬ u < t + 1 := by omega
    simp [hut, hut']

/-- Outer finite Fubini identifies the boundary correlation packet with the
moving-window bilinear packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryMovingWindowAdapter.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d72f7ea607fa737e02fa7eabe58d8abd14f4407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
