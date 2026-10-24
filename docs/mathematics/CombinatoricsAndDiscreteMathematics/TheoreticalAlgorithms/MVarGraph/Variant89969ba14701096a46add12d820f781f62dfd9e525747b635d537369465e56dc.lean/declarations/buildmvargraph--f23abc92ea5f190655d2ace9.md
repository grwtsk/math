# buildMVarGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5af4b0a4e01c47b590d4efa86ad103b08956c5748dfe0ac90ebaecc1fca53f8d",
  "kind": "def",
  "lexical_name": "buildMVarGraph",
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
  "slug": "buildmvargraph--f23abc92ea5f190655d2ace9",
  "source": {
    "blob": "726e3485de66c59a5843c06dbdfa8814c030b2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f23abc92ea5f190655d2ace94e8d9d7d3f067fb11da99ad16250d9be8fd2d17c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5af4b0a4e01c47b590d4efa86ad103b08956c5748dfe0ac90ebaecc1fca53f8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildMVarGraph : MetaM (Graph MVarId Bool) := do
  let mut g : Graph MVarId Bool := {}
  for (m, _) in (← getMCtx).decls do
    g := g.alter m (·.getD [])
    if let some e := (← getMCtx).eAssignment.find? m then
      for n in (e.collectMVars {}).result do
        g := g.alter n ((m, true) :: ·.getD [])
    if let some a := (← getMCtx).dAssignment.find? m then
      let n := a.mvarIdPending
      g := g.alter n ((m, true) :: ·.getD [])
    for n in ((← m.getType).collectMVars {}).result do
      g := g.alter n ((m, false) :: ·.getD [])
  return g

open ProofWidgets Jsx in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726e3485de66c59a5843c06dbdfa8814c030b2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
