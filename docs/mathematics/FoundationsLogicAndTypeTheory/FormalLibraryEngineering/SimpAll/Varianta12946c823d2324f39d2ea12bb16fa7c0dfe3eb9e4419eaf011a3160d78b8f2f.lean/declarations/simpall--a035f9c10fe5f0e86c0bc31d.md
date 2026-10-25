# simpAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f448b1485f2e1321c013ebb2577bd266d5f4759395dc46f412e36fb1e6f0d0ab",
  "kind": "def",
  "lexical_name": "simpAll",
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
  "slug": "simpall--a035f9c10fe5f0e86c0bc31d",
  "source": {
    "blob": "dfc77a1aa99ca08a3f110181f750ba38d0288bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Varianta12946c823d2324f39d2ea12bb16fa7c0dfe3eb9e4419eaf011a3160d78b8f2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a035f9c10fe5f0e86c0bc31d90b77c1cc57032f05d12f4f1bc08bd36e20c4577",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Varianta12946c823d2324f39d2ea12bb16fa7c0dfe3eb9e4419eaf011a3160d78b8f2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f448b1485f2e1321c013ebb2577bd266d5f4759395dc46f412e36fb1e6f0d0ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpAll (mvarId : MVarId) (ctx : Simp.Context) (simprocs : SimprocsArray := #[]) (stats : Stats := {}) : MetaM (Option MVarId × Stats) := do
  mvarId.withContext do
    let (r, s) ← SimpAll.main.run { stats with mvarId, ctx, simprocs }
    if let .some mvarIdNew := r then
      if ctx.config.failIfUnchanged && mvarId == mvarIdNew then
        throwError "simp_all made no progress"
    return (r, { s with })

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Varianta12946c823d2324f39d2ea12bb16fa7c0dfe3eb9e4419eaf011a3160d78b8f2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpAll/Varianta12946c823d2324f39d2ea12bb16fa7c0dfe3eb9e4419eaf011a3160d78b8f2f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfc77a1aa99ca08a3f110181f750ba38d0288bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
