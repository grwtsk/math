# SnapshotTree.trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cd18eec74d3b421d7e5bf2f4c064b0e6415586eda83bccc32867a4f1021603d",
  "kind": "def",
  "lexical_name": "SnapshotTree.trace",
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
  "slug": "snapshottree-trace--e5361ecb92fd911ae9e107b4",
  "source": {
    "blob": "bd298b91593518e541b22900e5c100f1400adf5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant72e50116f0b8af3de92ec3aa19fda7f3dea1f3ef7412628f07c72f77f246dbdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5361ecb92fd911ae9e107b41b20fb6b730471820a048f8e9691b1bd0a87d2ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant72e50116f0b8af3de92ec3aa19fda7f3dea1f3ef7412628f07c72f77f246dbdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cd18eec74d3b421d7e5bf2f4c064b0e6415586eda83bccc32867a4f1021603d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def SnapshotTree.trace (s : SnapshotTree) : CoreM Unit :=
  go .skip s
where go range? s := do
  let file ← getFileMap
  let mut desc := f!"{s.element.desc}"
  match range? with
  | .some range => desc := desc ++ f!"{file.toPosition range.start}-{file.toPosition range.stop} "
  | .inherit => desc := desc ++ "<range inherited> "
  | .skip => desc := desc ++ "<no range> "
  let msgs ← s.element.diagnostics.msgLog.toList.mapM (·.toString)
  desc := desc ++ .prefixJoin "\n• " msgs
  withTraceNode `Elab.snapshotTree (fun _ => pure desc) do
    s.children.toList.forM fun c => go c.reportingRange c.get
    if let some t := s.element.infoTree? then
      trace[Elab.info] (← t.format)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant72e50116f0b8af3de92ec3aa19fda7f3dea1f3ef7412628f07c72f77f246dbdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant72e50116f0b8af3de92ec3aa19fda7f3dea1f3ef7412628f07c72f77f246dbdb.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd298b91593518e541b22900e5c100f1400adf5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
