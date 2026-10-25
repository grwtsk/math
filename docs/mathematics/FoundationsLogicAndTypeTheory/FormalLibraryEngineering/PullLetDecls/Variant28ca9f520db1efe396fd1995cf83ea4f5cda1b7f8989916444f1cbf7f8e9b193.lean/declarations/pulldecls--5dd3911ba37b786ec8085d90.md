# pullDecls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d4f75d9b164647337a430a1efa74a407f6f4f304c6cbaf1c9cfda9b61f0dfeb",
  "kind": "def",
  "lexical_name": "pullDecls",
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
  "slug": "pulldecls--5dd3911ba37b786ec8085d90",
  "source": {
    "blob": "4c9f3aedb75af5767c2157d590d124f7dc8f6d7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullLetDecls/Variant28ca9f520db1efe396fd1995cf83ea4f5cda1b7f8989916444f1cbf7f8e9b193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dd3911ba37b786ec8085d90a974a116b46ab02f19bfc4ecd28fef34fe6688db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullLetDecls/Variant28ca9f520db1efe396fd1995cf83ea4f5cda1b7f8989916444f1cbf7f8e9b193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d4f75d9b164647337a430a1efa74a407f6f4f304c6cbaf1c9cfda9b61f0dfeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def pullDecls (code : Code .pure) : PullM (Code .pure) := do
    match code with
    | .cases c =>
      -- At the present time, we can't correctly enforce the dependencies required for lifting
      -- out of a cases expression on Decidable, so we disable this optimization.
      if c.typeName == ``Decidable then
        return code
      else
        withCheckpoint do
          let alts ← c.alts.mapMonoM pullAlt
          return code.updateAlts! alts
    | .let decl k =>
      if (← shouldPull decl) then
        pullDecls k
      else
        withFVar decl.fvarId do return code.updateCont! (← pullDecls k)
    | .fun decl k | .jp decl k =>
      withCheckpoint do
        let value ← withParams decl.params <| pullDecls decl.value
        let decl ← decl.updateValue value
        withFVar decl.fvarId do return code.updateFun! decl (← pullDecls k)
    | _ => return code

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullLetDecls/Variant28ca9f520db1efe396fd1995cf83ea4f5cda1b7f8989916444f1cbf7f8e9b193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PullLetDecls/Variant28ca9f520db1efe396fd1995cf83ea4f5cda1b7f8989916444f1cbf7f8e9b193.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9f3aedb75af5767c2157d590d124f7dc8f6d7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
