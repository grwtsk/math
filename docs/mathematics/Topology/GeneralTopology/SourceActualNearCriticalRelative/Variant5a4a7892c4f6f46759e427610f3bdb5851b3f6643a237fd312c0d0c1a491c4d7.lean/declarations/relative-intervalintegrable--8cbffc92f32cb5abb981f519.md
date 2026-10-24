# relative_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:868968e6-85f5-dd6a-cbf4-556c0ef5f6b3",
  "kind": "theorem",
  "lexical_name": "relative_intervalIntegrable",
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
  "slug": "relative-intervalintegrable--8cbffc92f32cb5abb981f519",
  "source": {
    "blob": "ec7bb909701363f5686446572dc3f84221b7b873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5a4a7892c4f6f46759e427610f3bdb5851b3f6643a237fd312c0d0c1a491c4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cbffc92f32cb5abb981f519ca3961f03c56eb2e2ca7337fc953ab290aa97feb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5a4a7892c4f6f46759e427610f3bdb5851b3f6643a237fd312c0d0c1a491c4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:868968e6-85f5-dd6a-cbf4-556c0ef5f6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem relative_intervalIntegrable {T : ℝ} (hT : 0 ≤ T) :
    IntervalIntegrable relativePsiError volume 0 T := by
  have he : relativePsiError = actualRelativePsiTimeError := funext relative_eq_actual
  rw [he]
  exact actualRelativePsiTimeError_intervalIntegrable hT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5a4a7892c4f6f46759e427610f3bdb5851b3f6643a237fd312c0d0c1a491c4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5a4a7892c4f6f46759e427610f3bdb5851b3f6643a237fd312c0d0c1a491c4d7.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec7bb909701363f5686446572dc3f84221b7b873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
