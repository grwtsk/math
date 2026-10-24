# ConformalBarycenterInterface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c59ae80a43597a50c3fee9c142b4240a9e46ebef0eaf71bc81e284b6cb900fd4",
  "kind": "structure",
  "lexical_name": "ConformalBarycenterInterface",
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
  "slug": "conformalbarycenterinterface--4ff56c6144f792358190d70d",
  "source": {
    "blob": "372f215631039c0999473f60c404491a6b7c03c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 413,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Varianta62e63ce374e218003fc91b547318f8cd7136f91754bc00df8b3e1a204ada1bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ff56c6144f792358190d70d0fcad0f5aef5bf7f6d24cef94903ed223e5c1ef6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Varianta62e63ce374e218003fc91b547318f8cd7136f91754bc00df8b3e1a204ada1bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c59ae80a43597a50c3fee9c142b4240a9e46ebef0eaf71bc81e284b6cb900fd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConformalBarycenterInterface (Boundary Ball : Type*) where
  constructionVersion : VersionId
  conformalBarycenter : List Boundary → Ball
  mobiusActionBoundary : Boundary → Boundary
  mobiusActionBall : Ball → Ball
  equivarianceObligation : Prop

end FCRS.TheoremBarycenter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Varianta62e63ce374e218003fc91b547318f8cd7136f91754bc00df8b3e1a204ada1bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoremBarycenter/Varianta62e63ce374e218003fc91b547318f8cd7136f91754bc00df8b3e1a204ada1bc.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `372f215631039c0999473f60c404491a6b7c03c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
