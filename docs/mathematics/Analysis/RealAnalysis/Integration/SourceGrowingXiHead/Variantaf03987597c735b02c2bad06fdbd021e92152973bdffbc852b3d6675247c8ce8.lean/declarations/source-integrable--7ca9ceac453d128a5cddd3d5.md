# source_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88d86d38-e8bd-d6ff-ad00-6321a858a736",
  "kind": "theorem",
  "lexical_name": "source_integrable",
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
  "slug": "source-integrable--7ca9ceac453d128a5cddd3d5",
  "source": {
    "blob": "b14eb20b14b19a7d44ee3857a1e3e4713e64a624",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variantaf03987597c735b02c2bad06fdbd021e92152973bdffbc852b3d6675247c8ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ca9ceac453d128a5cddd3d559fa32bea7996b92e2340f7b2dd585cc7c526bf4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variantaf03987597c735b02c2bad06fdbd021e92152973bdffbc852b3d6675247c8ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d86d38-e8bd-d6ff-ad00-6321a858a736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_integrable {A H : ℝ} (hA : 91 ≤ A)
    (hH : Real.log 7 ≤ H) (hHA : H ≤ 2 * A) :
    IntervalIntegrable (fun t => actualF7 t * actualXiCurvature A t)
      volume (Real.log 7) H := by
  have hi := actualF7_curvature_intervalIntegrable A (by linarith : 40 ≤ A)
  exact hi.mono_set (by
    rw [uIcc_of_le hH, uIcc_of_le (show Real.log 7 ≤ 2 * A by linarith)]
    exact Icc_subset_Icc le_rfl hHA)

/-- The actual head at any supported real time endpoint has this explicit cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variantaf03987597c735b02c2bad06fdbd021e92152973bdffbc852b3d6675247c8ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variantaf03987597c735b02c2bad06fdbd021e92152973bdffbc852b3d6675247c8ce8.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b14eb20b14b19a7d44ee3857a1e3e4713e64a624` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
