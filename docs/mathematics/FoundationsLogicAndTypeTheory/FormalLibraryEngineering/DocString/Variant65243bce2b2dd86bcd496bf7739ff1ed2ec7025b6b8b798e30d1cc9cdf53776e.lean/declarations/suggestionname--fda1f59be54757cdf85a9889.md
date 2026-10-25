# suggestionName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85f74d4836c48f2baf9376b6b381dd6ce87a2c41e37a9ed1c121cd1ad56bb4df",
  "kind": "def",
  "lexical_name": "suggestionName",
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
  "slug": "suggestionname--fda1f59be54757cdf85a9889",
  "source": {
    "blob": "e6af04853ba13c2d50a909dfaed37219dc95f7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1397,
    "line": 1361,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fda1f59be54757cdf85a9889dcdef16a2520aa96759c780af85679a330fb110a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85f74d4836c48f2baf9376b6b381dd6ce87a2c41e37a9ed1c121cd1ad56bb4df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1361–1397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def suggestionName (name : Name) : TermElabM Name := do
  let name' ←
    -- Builtin expander names never need namespacing
    if (← builtinDocRoles.get).contains name then pure (some name)
    else if (← builtinDocCodeBlocks.get).contains name then pure (some name)
    else pure none
  match name' with
    | some (.str _ s) =>
      -- Check if the simple name is shadowed locally or globally
      let simpleName := .str .anonymous s
      let qualifiedBuiltin := `Lean.Doc ++ simpleName
      -- Local shadowing check
      if (← resolveLocalName simpleName).isSome then
        return qualifiedBuiltin
      -- Global shadowing check: try to resolve the simple name and see
      -- if it resolves to something other than the builtin role
      else
        let resolved? ← try
          some <$> resolveGlobalConstNoOverload (mkIdent simpleName)
        catch _ => pure none
        match resolved? with
        | some resolved =>
          -- If it resolves to the builtin, use simple name; otherwise qualified
          if resolved == qualifiedBuiltin then return simpleName
          else return qualifiedBuiltin
        | none =>
          -- Nothing to shadow
          return simpleName
    | some n => return n
    | none =>
      -- If it exists, unresolve it
      if (← getEnv).contains name then
        unresolveNameGlobalAvoidingLocals name
      else
        -- Fall back to doing nothing
        pure name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean#L1361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6af04853ba13c2d50a909dfaed37219dc95f7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
