# expandMutualElement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cc324666e6f1671e947858bc9ddedee6c4562a55f483b680ba089358ceed418",
  "kind": "def",
  "lexical_name": "expandMutualElement",
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
  "slug": "expandmutualelement--bc4362b54f042e72e96f331a",
  "source": {
    "blob": "e64d2b1a1dcfda29798d4c0ffddf0bc3d99f52b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc4362b54f042e72e96f331a4d64137c8e9b3d1876560548e467ef9a5af27739",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cc324666e6f1671e947858bc9ddedee6c4562a55f483b680ba089358ceed418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expandMutualElement : Macro := fun stx => do
  let mut elemsNew := #[]
  let mut modified := false
  for elem in stx[1].getArgs do
    -- Don't trigger the `expandNamespacedDecl` macro, the namespace is handled by the mutual def
    -- elaborator directly instead
    if !elem.isOfKind ``Parser.Command.declaration then
      if let some elemNew ← expandMacro? elem then
        if elemNew.isOfKind nullKind then
          elemsNew := elemsNew ++ elemNew.getArgs
        else
          elemsNew := elemsNew.push elemNew
        modified := true
        continue
    elemsNew := elemsNew.push elem
  if modified then
    return stx.setArg 1 (mkNullNode elemsNew)
  else
    Macro.throwUnsupported

@[builtin_macro Lean.Parser.Command.mutual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantefe2e5fcd34ddf6fb5abb13e8a317047f64c50a363b511738d9ad7fd09e6e3dc.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e64d2b1a1dcfda29798d4c0ffddf0bc3d99f52b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
