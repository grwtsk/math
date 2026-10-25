# NamespaceEntry.finish

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70b2a7bcd4d4544c41b652f159e064baee4f8e5ce3089bebe37410301a05d7c9",
  "kind": "def",
  "lexical_name": "NamespaceEntry.finish",
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
  "slug": "namespaceentry-finish--51ba14b825f3bfd6d39dc929",
  "source": {
    "blob": "9cf41c96dba2d38db15494ad8af2694071c3d991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51ba14b825f3bfd6d39dc929b7c7fbe913d5c88f34dd2216aabc696e675d8097",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70b2a7bcd4d4544c41b652f159e064baee4f8e5ce3089bebe37410301a05d7c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NamespaceEntry.finish (text : FileMap) (syms : Array DocumentSymbol) (endStx : Option Syntax) :
    NamespaceEntry → Array DocumentSymbol
  | { name, stx, selection, prevSiblings, .. } =>
    -- we can assume that commands always have at least one position (see `parseCommand`)
    let range := match endStx with
      | some endStx => (mkNullNode #[stx, endStx]).getRange?.get!
      | none        =>  { stx.getRange?.get! with stop := text.source.rawEndPos }
    let name := name.foldr (fun x y => y ++ x) Name.anonymous
    prevSiblings.push <| DocumentSymbol.mk {
      -- anonymous sections are represented by `«»` name components
      name := if name == `«» then "<section>" else name.toString
      kind := .namespace
      range := range.toLspRange text
      selectionRange := selection.getRange?.getD range |>.toLspRange text
      children? := syms
    }

open Parser.Command in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cf41c96dba2d38db15494ad8af2694071c3d991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
