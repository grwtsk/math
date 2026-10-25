# resolveBuiltinDocName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59fbd039cc428a351599186299864dea35eaa8bed8d792effd0f12eb7bd95b5c",
  "kind": "def",
  "lexical_name": "resolveBuiltinDocName",
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
  "slug": "resolvebuiltindocname--2425160e28bb49028910ff5a",
  "source": {
    "blob": "014689ae16d0f21928edb8900d54e926c7b9471b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1249,
    "line": 1221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2425160e28bb49028910ff5a14d9ea0e0545c1cc3897d2b649bd136dec06859a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:59fbd039cc428a351599186299864dea35eaa8bed8d792effd0f12eb7bd95b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1221–1249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveBuiltinDocName {α : Type} (builtins : NameMap α) (x : Name) : TermElabM (Option α) := do
  if let some v := builtins.get? x then return some v

  -- Builtins shouldn't require a prefix, as they're part of the language.
  if let some v := builtins.get? (`Lean.Doc ++ x) then return some v

  -- If this fails, try resolving through open namespaces so that {Doc.lit}`foo` will work when
  -- `Lean` is opened.
  let openDecls ← getOpenDecls
  for decl in openDecls do
    match decl with
    | .simple ns exs =>
      if !exs.any (· == x) then
        if let some v := builtins.get? (ns ++ x) then return some v
    | .explicit openedId declName =>
      if openedId == x then
        if let some v := builtins.get? declName then return some v
      else if openedId.isPrefixOf x then
        let candidate := x.replacePrefix openedId declName
        if let some v := builtins.get? candidate then return some v

  -- Try resolving through current namespace hierarchy
  let mut ns ← getCurrNamespace
  while !ns.isAnonymous do
    if let some v := builtins.get? (ns ++ x) then return some v
    ns := ns.getPrefix

  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean#L1221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014689ae16d0f21928edb8900d54e926c7b9471b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
