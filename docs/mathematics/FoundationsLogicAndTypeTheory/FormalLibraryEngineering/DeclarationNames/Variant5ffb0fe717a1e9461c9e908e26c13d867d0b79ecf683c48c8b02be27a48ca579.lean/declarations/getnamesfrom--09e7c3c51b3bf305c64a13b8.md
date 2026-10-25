# getNamesFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e654e1326f2e424575ba1825e8a2ea629ea6d299b1c31396bb32310df088f094",
  "kind": "def",
  "lexical_name": "getNamesFrom",
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
  "slug": "getnamesfrom--09e7c3c51b3bf305c64a13b8",
  "source": {
    "blob": "89b1ecfd5341281c602375745b75e4dc93fce4d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationNames/Variant5ffb0fe717a1e9461c9e908e26c13d867d0b79ecf683c48c8b02be27a48ca579.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09e7c3c51b3bf305c64a13b820ac5f3b24ffecd581f8d9b6f41367a6cee9fd20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationNames/Variant5ffb0fe717a1e9461c9e908e26c13d867d0b79ecf683c48c8b02be27a48ca579.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e654e1326f2e424575ba1825e8a2ea629ea6d299b1c31396bb32310df088f094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getNamesFrom {m} [Monad m] [MonadEnv m] [MonadFileMap m] (pos : String.Pos) :
    m (Array Syntax) := do
  -- declarations from parallelism branches should not be interesting here, so use `local`
  let drs := declRangeExt.toPersistentEnvExtension.getState (asyncMode := .local) (← getEnv)
  let fm ← getFileMap
  let mut nms := #[]
  for (nm, rgs) in drs do
    if pos ≤ fm.ofPosition rgs.range.pos then
      let ofPos1 := fm.ofPosition rgs.selectionRange.pos
      let ofPos2 := fm.ofPosition rgs.selectionRange.endPos
      nms := nms.push (mkIdentFrom (.ofRange ⟨ofPos1, ofPos2⟩) nm)
  return nms

/--
If `stx` is a syntax node for an `export` statement, then `getAliasSyntax stx` returns the array of
identifiers with the "exported" names.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationNames/Variant5ffb0fe717a1e9461c9e908e26c13d867d0b79ecf683c48c8b02be27a48ca579.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclarationNames/Variant5ffb0fe717a1e9461c9e908e26c13d867d0b79ecf683c48c8b02be27a48ca579.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b1ecfd5341281c602375745b75e4dc93fce4d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
