# TargetConflict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e1baaea21a9886db777d98bba4ea589450e0d28c2d977008ba8f8793eb12ae1",
  "kind": "structure",
  "lexical_name": "TargetConflict",
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
  "slug": "targetconflict--f7150f735f24d07d38fdcef8",
  "source": {
    "blob": "04d5e83598109c7a7f874a54d4a786788b47384b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7150f735f24d07d38fdcef859615cd58a97fce52bcbbc530743e6323db38fbc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e1baaea21a9886db777d98bba4ea589450e0d28c2d977008ba8f8793eb12ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TargetConflict (atlas : TargetedAtlas catalog theory)
    (chart : PaperChart catalog theory) where
  /-- The committed target whose values the proposed bridge fails to preserve. -/
  target : Fin atlas.targets.count
  /-- The source endpoint of the conflicting invertible bridge. -/
  left : V
  /-- The target endpoint carrying a different committed target value. -/
  right : V
  bridge : chart.selection.toGraph.InvertibleEdge left right
  different : atlas.targets.value target left ≠ atlas.targets.value target right

omit [Fintype Fact] in
/-- Such a collision rules out the proof required by guarded attachment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Atlas/Variant4221cb6738a082e257360fe3cc9cfa1ae53fa53cf0f9afcecacdde3d0ff8e597.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04d5e83598109c7a7f874a54d4a786788b47384b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
