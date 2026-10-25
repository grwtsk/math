# findUnusedHaves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ce382ba32e55162378836311be90cab81cd212d2fc7db770f53628e80b2f4d1",
  "kind": "def",
  "lexical_name": "findUnusedHaves",
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
  "slug": "findunusedhaves--d9e248e04c9af8a43501020c",
  "source": {
    "blob": "240605315812c204b41e2f22b2718769634065dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9e248e04c9af8a43501020cd68d1b59581b70a6aaadf56d9cc68ffdbb839d33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ce382ba32e55162378836311be90cab81cd212d2fc7db770f53628e80b2f4d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findUnusedHaves (_ : Expr) : MetaM (Array MessageData) := do
  -- adaptation note: kmill 2025-06-29. `Expr.letFun?` is deprecated.
  -- This linter needs to be updated for `Expr.letE (nondep := true)`, but it has false
  -- positives, so I am disabling it for now.
  return #[]
  /-
  let res ← IO.mkRef #[]
  forEachExpr e fun e => do
    match e.letFun? with
    | some (n, t, _, b) =>
      if n.isInternal then return
      if b.hasLooseBVars then return
      unless ← Meta.isProp t do return
      let msg ← addMessageContextFull m!"unnecessary have {n.eraseMacroScopes} : {t}"
      res.modify (·.push msg)
    | _ => return
  res.get
  -/

/-- A linter for checking that declarations don't have unused term mode have statements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240605315812c204b41e2f22b2718769634065dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
