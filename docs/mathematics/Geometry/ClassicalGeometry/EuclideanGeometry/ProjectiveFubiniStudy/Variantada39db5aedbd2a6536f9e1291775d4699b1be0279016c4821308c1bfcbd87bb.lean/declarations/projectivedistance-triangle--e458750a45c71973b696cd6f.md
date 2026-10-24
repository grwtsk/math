# projectiveDistance_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:583d25f0-ec07-cc16-2898-7a93c157273b",
  "kind": "theorem",
  "lexical_name": "projectiveDistance_triangle",
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
  "slug": "projectivedistance-triangle--e458750a45c71973b696cd6f",
  "source": {
    "blob": "4207bbba730394f2666283dd79c9bc3e3b0175af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 548,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e458750a45c71973b696cd6f4851b21567738692f1937a06927b164a5790fb6b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:583d25f0-ec07-cc16-2898-7a93c157273b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projectiveDistance_triangle (p q r : Projectivization ℂ H) :
    projectiveDistance p r ≤ projectiveDistance p q + projectiveDistance q r := by
  induction p using Projectivization.ind with
  | h x hx =>
      induction q using Projectivization.ind with
      | h y hy =>
          induction r using Projectivization.ind with
          | h z hz =>
              simpa only [projectiveDistance_mk_mk] using
                fubiniStudyBase_triangle_via_normalize x y z hx hy hz

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207bbba730394f2666283dd79c9bc3e3b0175af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
