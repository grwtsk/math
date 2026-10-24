# presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34bf1983356f0410992855a157cdc3f0f3acaa5fa0af05dad64d8386fab7790f",
  "kind": "def",
  "lexical_name": "presentation",
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
  "slug": "presentation--4beb8934643b23e2857719bf",
  "source": {
    "blob": "9bdadd365123e22636f60e93b98594ee94929352",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 260,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4beb8934643b23e2857719bfc53e6d55d32977898258c09e6cf7f3d5d03adcff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34bf1983356f0410992855a157cdc3f0f3acaa5fa0af05dad64d8386fab7790f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def presentation (X : Profinite) : Stonean where
  toTop := (profiniteToCompHaus.obj X).projectivePresentation.p.toTop
  prop := (profiniteToCompHaus.obj X).presentation.prop

/-- The morphism from `presentation X` to `X`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant374e07a710491a451d5ff70e95b17de753de97947989b31016b2129c0336bc4f.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bdadd365123e22636f60e93b98594ee94929352` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
