# liftTermElabM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edfe639d592b32d7e3f04b7a4f72eccfc6d8153d2230c59cb880f024d7481105",
  "kind": "def",
  "lexical_name": "liftTermElabM",
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
  "slug": "lifttermelabm--e328f9f276de85fad5811f13",
  "source": {
    "blob": "64dd38ae66f95db8e5109b5b0e7ec2e229855a95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 739,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e328f9f276de85fad5811f1373dd2bd06ef3aeda7b5502246c3d730d5afdae6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edfe639d592b32d7e3f04b7a4f72eccfc6d8153d2230c59cb880f024d7481105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftTermElabM (x : TermElabM α) : CommandElabM α := do
  let ctx ← read
  let s   ← get
  -- dbg_trace "heartbeats: {heartbeats}"
  let scope := s.scopes.head!
  -- We execute `x` with an empty message log. Thus, `x` cannot modify/view messages produced by previous commands.
  -- This is useful for implementing `runTermElabM` where we use `Term.resetMessageLog`
  let x : TermElabM _  := withSaveInfoContext x
  -- make sure `observing` below also catches runtime exceptions (like we do by default in
  -- `CommandElabM`)
  let _ := MonadAlwaysExcept.except (m := TermElabM)
  let x : MetaM _ := (observing (try x finally Meta.reportDiag)).run (← mkTermContext ctx s) { levelNames := scope.levelNames }
  let x : CoreM _ := x.run mkMetaContext {}
  let ((ea, _), _) ← runCore x
  MonadExcept.ofExcept ea

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Command/Variant4fb0272fe60f81f39aaa854be64c888702ffdbc904c279e0dec508ea83e949c8.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64dd38ae66f95db8e5109b5b0e7ec2e229855a95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
