# holeCodeActionProvider

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:958bcf7dc0c9f5e9ac90611ffc67fabde112e0527d66dc658d69246f12d61c6c",
  "kind": "def",
  "lexical_name": "holeCodeActionProvider",
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
  "slug": "holecodeactionprovider--5589d26c7340eab905ba2588",
  "source": {
    "blob": "0f79cb74b282fe47a4373c3ebcad4e8ae81b0bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5589d26c7340eab905ba2588f1903fb2d125f01921465789c7105e61dd8fd020",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:958bcf7dc0c9f5e9ac90611ffc67fabde112e0527d66dc658d69246f12d61c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_code_action_provider] def holeCodeActionProvider : CodeActionProvider := fun params snap => do
  let doc ← readDoc
  let startPos := doc.meta.text.lspPosToUtf8Pos params.range.start
  let endPos := doc.meta.text.lspPosToUtf8Pos params.range.end
  have holes := snap.infoTree.foldInfo (init := #[]) fun ctx info result => Id.run do
    let .ofTermInfo info := info | result
    unless [``elabHole, ``elabSyntheticHole, ``elabSorry].contains info.elaborator do
      return result
    let (some head, some tail) := (info.stx.getPos? true, info.stx.getTailPos? true) | result
    unless head ≤ endPos && startPos ≤ tail do return result
    result.push (ctx, info)
  let #[(ctx, info)] := holes | return #[]
  (holeCodeActionExt.getState snap.env).2.flatMapM (· params snap ctx info)

/--
The return value of `findTactic?`.
This is the syntax for which code actions will be triggered.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Provider/Varianta6dd9b036a721864ae41c1535550b6464a89ef8519845002371b9bcbc672d1bb.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f79cb74b282fe47a4373c3ebcad4e8ae81b0bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
