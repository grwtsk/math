# coreGrowingShiftQuarticEndpointStaircaseSupport_subset_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:869519b2-6141-30f7-0c5e-578a6ccfce93",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticEndpointStaircaseSupport_subset_range",
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
  "slug": "coregrowingshiftquarticendpointstaircasesupport-subset-range--a29fd84ed3c556ddadfb5bec",
  "source": {
    "blob": "49646020d08e2797d7762f0d1b7b14c4e1bd01ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 145,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a29fd84ed3c556ddadfb5bec890e8b4614789c728a5c20931b650c99a0e4e936",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:869519b2-6141-30f7-0c5e-578a6ccfce93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticEndpointStaircaseSupport_subset_range
    (j h : ℕ) :
    coreGrowingShiftQuarticEndpointStaircaseSupport j h ⊆
      Finset.range (2 ^ (j + 1)) := by
  intro b hb
  by_cases hh : 0 < h
  · have hbI :
        coreGrowingShiftQuarticEndpointStaircaseLower j h ≤ b ∧
          b < coreGrowingShiftQuarticEndpointStaircaseUpper j h := by
      simpa [coreGrowingShiftQuarticEndpointStaircaseSupport, hh,
        Finset.mem_Ico] using hb
    have hUpper :
        coreGrowingShiftQuarticEndpointStaircaseUpper j h ≤
          2 ^ (j + 1) := by
      unfold coreGrowingShiftQuarticEndpointStaircaseUpper
      have hmin := min_le_left
        (2 ^ (j + 1) - logarithmicShiftThreshold j - 1)
        (2 ^ (j + 1) - h - 1)
      omega
    exact Finset.mem_range.mpr (lt_of_lt_of_le hbI.2 hUpper)
  · simp [coreGrowingShiftQuarticEndpointStaircaseSupport, hh] at hb

/-- Unweighted binary-prefix square energy on the exact active staircase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticEndpointStaircase.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49646020d08e2797d7762f0d1b7b14c4e1bd01ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
