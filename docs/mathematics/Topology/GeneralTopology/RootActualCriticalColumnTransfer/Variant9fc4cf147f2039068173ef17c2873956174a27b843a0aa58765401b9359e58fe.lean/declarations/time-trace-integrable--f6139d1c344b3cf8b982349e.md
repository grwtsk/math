# time_trace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c508b5aa-4e0b-85b8-d39c-fd2d0f9c0993",
  "kind": "theorem",
  "lexical_name": "time_trace_integrable",
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
  "slug": "time-trace-integrable--f6139d1c344b3cf8b982349e",
  "source": {
    "blob": "50f2778bdcf074423bbf86cccf4669c1d7d3e58c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant9fc4cf147f2039068173ef17c2873956174a27b843a0aa58765401b9359e58fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6139d1c344b3cf8b982349e6f6fe8306a1422a083692c4a7c8b248f5ffaf291",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant9fc4cf147f2039068173ef17c2873956174a27b843a0aa58765401b9359e58fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c508b5aa-4e0b-85b8-d39c-fd2d0f9c0993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem time_trace_integrable {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    IntervalIntegrable (fun t => actualAdjointTimePrimitive A 0 t *
      actualTwistedTimeDensity A t s) volume
      (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
  have ht := (actual_orders hA).1
  have hp := (actualAdjointTimePrimitive_absolutelyContinuous A 0 _ ht).continuousOn
  rw [uIcc_of_le ht] at hp
  exact (hp.intervalIntegrable_of_Icc ht).mul_continuousOn
    (twisted_time_continuous (by linarith) s).continuousOn

/-- The actual critical homogeneous profile is subtracted from the actual column primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant9fc4cf147f2039068173ef17c2873956174a27b843a0aa58765401b9359e58fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RootActualCriticalColumnTransfer/Variant9fc4cf147f2039068173ef17c2873956174a27b843a0aa58765401b9359e58fe.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50f2778bdcf074423bbf86cccf4669c1d7d3e58c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
