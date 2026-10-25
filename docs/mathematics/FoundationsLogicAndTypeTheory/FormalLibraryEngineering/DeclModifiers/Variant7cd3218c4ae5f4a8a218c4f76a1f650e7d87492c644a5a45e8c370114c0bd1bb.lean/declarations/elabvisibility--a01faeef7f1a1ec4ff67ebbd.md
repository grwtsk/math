# elabVisibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2255228be094c30d4258e55c7ba51b44067f8abc9754abf89c2ea666a7c2f2e",
  "kind": "def",
  "lexical_name": "elabVisibility",
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
  "slug": "elabvisibility--a01faeef7f1a1ec4ff67ebbd",
  "source": {
    "blob": "5fd3b8b258ccaf0bc21b1d29d0dc586b1076b8da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a01faeef7f1a1ec4ff67ebbdd4a9a1fe19fcef8e5a5274a68c0139a4a0114fdd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2255228be094c30d4258e55c7ba51b44067f8abc9754abf89c2ea666a7c2f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabVisibility [Monad m] [MonadError m] [MonadEnv m] [MonadOptions m] [MonadLog m]
    [AddMessageContext m]
    (vis? : Option (TSyntax ``Parser.Command.visibility)) :
    m Visibility := do
  let env ← getEnv
  match vis? with
  | none   => pure .regular
  | some v =>
    match v with
    | `(Parser.Command.visibility| private) =>
      if v.raw.getHeadInfo matches .original .. then  -- skip macro output
        if env.header.isModule && !env.isExporting then
          Linter.logLintIf linter.redundantVisibility v
            m!"`private` has no effect in a `module` file outside `public section`; \
            declarations are already `private` by default"
      pure .private
    | `(Parser.Command.visibility| public) =>
      if v.raw.getHeadInfo matches .original .. then  -- skip macro output
        if env.isExporting || !env.header.isModule then
          Linter.logLintIf linter.redundantVisibility v
            m!"`public` is the default visibility{
              if env.header.isModule then " inside a `public section`" else ""
            }; the modifier has no effect"
      pure .public
    | _ => throwErrorAt v "unexpected visibility modifier"

/-- Whether a declaration is default, partial or nonrec. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclModifiers/Variant7cd3218c4ae5f4a8a218c4f76a1f650e7d87492c644a5a45e8c370114c0bd1bb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd3b8b258ccaf0bc21b1d29d0dc586b1076b8da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
