# docsOnAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb632f65890653b409d984a1001d4ed68587e4e6eb272c71a3863a13216152cb",
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
  "slug": "docsonalt--e0b9e65eb5c1659ffb1e8d8f",
  "source": {
    "blob": "cce0035cab3e558ec38a17d5eee9916cc37b95fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0b9e65eb5c1659ffb1e8d8f43845bca7bf84a67887e34a85b775ae88e69b83c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb632f65890653b409d984a1001d4ed68587e4e6eb272c71a3863a13216152cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–61.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocsOnAlt/Varianta2ceda51d20650eb3421022035082ec02f3ae1a2d8bb2cf885e44a8d3ebb6eb7.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce0035cab3e558ec38a17d5eee9916cc37b95fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
