# jointMangoldtErrorWork_eq_overlap_add_leftStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79eb81386480ae77cd5b4f82b5d72655b02ad983",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 850,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71c4821b-bdd7-32fc-e6b9-fe007b01cfe4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57f4060d-757a-a3d9-0f06-5ce489a981d4",
  "kind": "theorem",
  "lexical_name": "jointMangoldtErrorWork_eq_overlap_add_leftStrip",
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
  "slug": "jointmangoldterrorwork-eq-overlap-add-leftstrip--84131fbf7ce01d6808e62fa7",
  "source": {
    "blob": "79eb81386480ae77cd5b4f82b5d72655b02ad983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 863,
    "line": 850,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84131fbf7ce01d6808e62fa7ea577a1e07e526ff4533c1204658d21c0ed6d920",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f4060d-757a-a3d9-0f06-5ce489a981d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtErrorWork_eq_overlap_add_leftStrip (A : ℝ) (hA : 1 ≤ A) :
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) +
        (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v) := by
  have hi : MeasurableSet (discreteOverlapWindow A) := measurableSet_Icc
  have hsub := discreteOverlapWindow_subset_actualWorkWindow A hA
  have hd := setIntegral_sdiff hi (actualMixedWorkDensity_integrable A hA).integrableOn hsub
  change (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v) =
    (∫ v in actualWorkWindow A, actualMixedWorkDensity A v) -
      (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) at hd
  rw [jointMangoldtErrorWork_eq_actual_window_integral A hA]
  linarith

/-- Full compensation survives the localized mixed-work representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eb81386480ae77cd5b4f82b5d72655b02ad983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
