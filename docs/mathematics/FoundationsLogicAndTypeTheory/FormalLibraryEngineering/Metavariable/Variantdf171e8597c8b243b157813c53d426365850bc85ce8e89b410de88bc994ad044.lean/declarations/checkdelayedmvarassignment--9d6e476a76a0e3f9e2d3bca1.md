# checkDelayedMVarAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff0a0493a3ac25ce5c3077ff2550d8235e04f183c8a61f0377e74efece17ef57",
  "kind": "def",
  "lexical_name": "checkDelayedMVarAssignment",
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
  "slug": "checkdelayedmvarassignment--9d6e476a76a0e3f9e2d3bca1",
  "source": {
    "blob": "da2cd1a2fd561b484459d897e806f7754d9b9782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d6e476a76a0e3f9e2d3bca119dcd164c4b18f7b28560f27e030d841034aab8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff0a0493a3ac25ce5c3077ff2550d8235e04f183c8a61f0377e74efece17ef57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkDelayedMVarAssignment (e : Expr) (decl : DelayedMetavarAssignment) : MetaM Bool := do
  unless e.getAppNumArgs == decl.fvars.size do
    return false
  let some mdecl ← decl.mvarIdPending.findDecl? | return false
  let mut seenFVars : FVarIdHashSet := {}
  for fvar in decl.fvars, arg in e.getAppArgs do
    let fvarId := fvar.fvarId!
    let some ldecl := mdecl.lctx.find? fvarId | return false
    unless ldecl.hasValue do
      let .fvar argFVarId := arg | return false
      if seenFVars.contains argFVarId then
        return false
      seenFVars := seenFVars.insert argFVarId
  return true

/--
Follows a chain of delayed assignments to find the pending metavariable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Variantdf171e8597c8b243b157813c53d426365850bc85ce8e89b410de88bc994ad044.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2cd1a2fd561b484459d897e806f7754d9b9782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
