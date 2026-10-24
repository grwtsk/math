# actualRawTimePrimitive_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c2b1eb4-4474-00ca-e12a-daf9e8b46082",
  "kind": "theorem",
  "lexical_name": "actualRawTimePrimitive_abs_le",
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
  "slug": "actualrawtimeprimitive-abs-le--20e9d415c399926379bf286c",
  "source": {
    "blob": "54397761c5451e945f860739bb4ee0adddff73b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e9d415c399926379bf286c2a1cb0f4f3fb348e4a21bfb27e6069ccd7069367",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c2b1eb4-4474-00ca-e12a-daf9e8b46082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRawTimePrimitive_abs_le {A offset t : ℝ} (hA : 1 ≤ A)
    (ht : actualTimeLower A ≤ t) :
    |∫ r in actualTimeLower A..t,
        Real.exp (r / 2) * (mangoldtLogError r - offset)| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp (t / 2) := by
  have h := actualAdjointTimePrimitive_abs_le hA ht (offset := offset)
  unfold actualAdjointTimePrimitive at h
  rw [abs_mul, abs_of_pos (Real.exp_pos _)] at h
  have hh := mul_le_mul_of_nonneg_left h (Real.exp_pos (t / 2)).le
  have hp : Real.exp (t / 2) * Real.exp (-t / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  simpa only [← mul_assoc, hp, one_mul, mul_comm] using hh

/-- At the actual original endpoint the full natural upper cutoff is exactly retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualAdjointTimeTrace/Variantef0942cf898bcca3d39ee98ee37066fad7af0ec85ef09fafabe1c63c30dd239e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54397761c5451e945f860739bb4ee0adddff73b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
