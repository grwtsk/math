# collectSubtrees

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:084a9a4db5ae2d722f7ca66414c434c617fb24a71eec04325129b9d76a32dc9d",
  "kind": "def",
  "lexical_name": "collectSubtrees",
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
  "slug": "collectsubtrees--02175b75737952ec3d7779cf",
  "source": {
    "blob": "7c2ee08defb381768cd32c43caab17a657ca1bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02175b75737952ec3d7779cfc44452f0daf88cbd952dd73d8c71279233e95953",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:084a9a4db5ae2d722f7ca66414c434c617fb24a71eec04325129b9d76a32dc9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectSubtrees (p : TracePattern) (t : TraceTree)
    (acc : Array TraceTree := #[]) : CoreM (Array TraceTree) := do
  if ← p t then
    return acc.push t
  t.children.foldlM (fun acc c => collectSubtrees p c acc) acc

/--
Prunes the tree to the subtrees satisfying `p`, keeping their ancestors for context; `none` if
there is no match. The resulting tree consists of those nodes that either have a matching
ancestor or transitive child. Matching subtrees are not searched for nested matches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2ee08defb381768cd32c43caab17a657ca1bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
