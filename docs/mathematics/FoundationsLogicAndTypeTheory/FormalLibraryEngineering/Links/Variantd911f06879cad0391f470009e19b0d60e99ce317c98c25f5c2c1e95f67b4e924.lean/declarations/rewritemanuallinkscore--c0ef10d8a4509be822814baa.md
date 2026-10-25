# rewriteManualLinksCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5eb857162851a3a218c9c1b67353e5aa23a37f4f5cd8dc5f114e485bfe50f8b",
  "kind": "def",
  "lexical_name": "rewriteManualLinksCore",
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
  "slug": "rewritemanuallinkscore--c0ef10d8a4509be822814baa",
  "source": {
    "blob": "0b57475bcb44ff10a6738fd85cbd2ca651fc00f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0ef10d8a4509be822814baae74231835c824e76b0626d607969e09bdf8d887e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5eb857162851a3a218c9c1b67353e5aa23a37f4f5cd8dc5f114e485bfe50f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rewriteManualLinksCore (s : String) : Id (Array (Lean.Syntax.Range × String) × String) := do
  let scheme := "lean-manual://"
  let mut out := ""
  let mut errors := #[]
  let mut iter := s.startPos
  while h : ¬iter.IsAtEnd do
    let c := iter.get h
    let pre := iter
    iter := iter.next h

    match pre.skip? scheme with
    | none =>
      out := out.push c
      continue
    | some start =>
      let mut iter' := start
      while h' : ¬iter'.IsAtEnd do
        let c' := iter'.get h'
        let pre' := iter'
        iter' := iter'.next h'
        if urlChar c' && ¬iter'.IsAtEnd then
          continue
        match rw (s.extract start pre') with
        | .error err =>
          errors := errors.push (⟨pre.offset, pre'.offset⟩, err)
          out := out.push c
          break
        | .ok path =>
          out := out ++ manualRoot ++ path
          out := out.push c'
          iter := iter'
          break

  pure (errors, out)

where
  /--
  Returns `true` if the character is one of those allowed in RFC 3986 sections 2.2 and 2.3. other
  than '(' or')'.
  -/
  urlChar (c : Char) : Bool :=
    -- unreserved
    c.isAlphanum || c == '-' || c == '.' || c == '_' || c == '~' ||
    -- gen-delims
    c == ':' || c == '/' || c == '?' || c == '#' || c == '[' || c == ']' || c == '@' ||
    -- sub-delims
    -- ( and ) are excluded due to Markdown's link syntax
    c == '!' || c == '$' || c == '&' || c == '\'' || /- c == '(' || c == ')' || -/ c == '*' ||
    c == '+' || c == ',' || c == ';' || c == '='

/--
Rewrites Lean reference manual links in `docstring` to point at the reference manual.

This assumes that all such links have already been validated by `validateDocComment`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Links/Variantd911f06879cad0391f470009e19b0d60e99ce317c98c25f5c2c1e95f67b4e924.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b57475bcb44ff10a6738fd85cbd2ca651fc00f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
