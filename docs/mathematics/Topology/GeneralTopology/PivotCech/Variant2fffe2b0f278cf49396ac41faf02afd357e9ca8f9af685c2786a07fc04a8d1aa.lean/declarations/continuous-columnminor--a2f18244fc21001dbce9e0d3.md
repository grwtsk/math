# continuous_columnMinor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f7f7a16-5d76-4110-f85e-a77d0ce9fbc3",
  "kind": "theorem",
  "lexical_name": "continuous_columnMinor",
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
  "slug": "continuous-columnminor--a2f18244fc21001dbce9e0d3",
  "source": {
    "blob": "eb59a47773381d8349d660e1fea435dafb6c636f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f18244fc21001dbce9e0d3747af9f3d55e5315f13d8058340f2c3d10b195ed",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f7f7a16-5d76-4110-f85e-a77d0ce9fbc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_columnMinor (c : Fin k → Fin n) :
    Continuous (fun A : Matrix (Fin k) (Fin n) ℝ => columnMinor A c) :=
  (continuous_columnSubmatrix c).matrix_det

/-- Actual frame pivot domain, including its determinant hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb59a47773381d8349d660e1fea435dafb6c636f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
