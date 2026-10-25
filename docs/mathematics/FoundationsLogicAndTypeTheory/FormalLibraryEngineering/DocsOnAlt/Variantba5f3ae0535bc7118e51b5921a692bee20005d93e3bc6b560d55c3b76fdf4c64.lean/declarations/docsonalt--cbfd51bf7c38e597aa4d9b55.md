# docsOnAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25193f1707f140813b0620927fe40ca1759f01ed982fd1909ca44540cdd06166",
  "kind": "def",
  "lexical_name": "docsOnAlt",
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
  "slug": "docsonalt--cbfd51bf7c38e597aa4d9b55",
  "source": {
    "blob": "88df267976652485e401043fc28d263b1cda47c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Variantba5f3ae0535bc7118e51b5921a692bee20005d93e3bc6b560d55c3b76fdf4c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbfd51bf7c38e597aa4d9b55b18e1011af7d653263fff4ff8d426a442f059412",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Variantba5f3ae0535bc7118e51b5921a692bee20005d93e3bc6b560d55c3b76fdf4c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25193f1707f140813b0620927fe40ca1759f01ed982fd1909ca44540cdd06166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def docsOnAlt : Linter where
  run stx := do
    if getLinterDocsOnAlt (← getLinterOptions) then
      if let some mods := stx.find? (·.getKind ∈ [``declModifiers, ``Command.syntax]) then
        if mods.find? isAltAttr |>.isSome then
          if let some doc := mods.find? (·.getKind == ``docComment) then
            let msg := m!"Documentation is ignored on a tactic alternative."
            logLint linter.tactic.docsOnAlt doc msg
      else if let some cmd := stx.find? (·.getKind == ``Command.attribute) then
        let attrs := cmd[2]
        let names := cmd[4].getArgs
        if (attrs.find? isAltAttr).isSome then
          let infoTrees := (← get).infoState.trees.toArray
          for tree in infoTrees do
            tree.visitM' (postNode := fun ci info _ => do
              match info with
              | .ofTermInfo ti =>
                if names.contains ti.stx then
                  if let some (x, _) := ti.expr.const? then
                    if (← findInternalDocString? ci.env x).isSome then
                      let msg := m!"Documentation for `{.ofConstName x}` is ignored because it is \
                        a tactic alternative."
                      logLint linter.tactic.docsOnAlt ti.stx msg
              | _ => pure ())
where
  isAltAttr : Syntax → Bool
    | `(attr|tactic_alt $_) => true
    | _ => false


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Variantba5f3ae0535bc7118e51b5921a692bee20005d93e3bc6b560d55c3b76fdf4c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Variantba5f3ae0535bc7118e51b5921a692bee20005d93e3bc6b560d55c3b76fdf4c64.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88df267976652485e401043fc28d263b1cda47c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
