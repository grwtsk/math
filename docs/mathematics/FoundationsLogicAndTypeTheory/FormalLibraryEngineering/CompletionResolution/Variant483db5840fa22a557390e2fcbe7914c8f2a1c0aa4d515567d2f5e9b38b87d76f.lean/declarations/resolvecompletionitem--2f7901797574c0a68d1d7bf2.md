# resolveCompletionItem?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6266c2ed23a6017f62399c950db80f11b3bbe9bcbe677ca695b0ae2d9002651f",
  "kind": "def",
  "lexical_name": "resolveCompletionItem?",
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
  "slug": "resolvecompletionitem--2f7901797574c0a68d1d7bf2",
  "source": {
    "blob": "6afccaa8e5087b2b11d9067c52d8f35b32cf6ecb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f7901797574c0a68d1d7bf2fd51eacc3dd231d9dba5255a5cfd65c898fd54a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6266c2ed23a6017f62399c950db80f11b3bbe9bcbe677ca695b0ae2d9002651f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveCompletionItem?
    (fileMap           : FileMap)
    (hoverPos          : String.Pos.Raw)
    (cmdStx            : Syntax)
    (infoTree          : InfoTree)
    (item              : CompletionItem)
    (id                : CompletionIdentifier)
    (completionInfoPos : Nat)
    : IO CompletionItem := do
  let (completionInfos, _) := findCompletionInfosAt fileMap hoverPos cmdStx infoTree
  let some i := completionInfos[completionInfoPos]?
    | return item
  i.ctx.runMetaM i.info.lctx (item.resolve id)

end Lean.Server.Completion
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionResolution/Variant483db5840fa22a557390e2fcbe7914c8f2a1c0aa4d515567d2f5e9b38b87d76f.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6afccaa8e5087b2b11d9067c52d8f35b32cf6ecb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
