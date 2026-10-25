# unresolveNameGlobal?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03a0e93a2f64925ee348640f622b07ba779f9725bd861e20e8ae1e6c7327cad0",
  "kind": "def",
  "lexical_name": "unresolveNameGlobal?",
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
  "slug": "unresolvenameglobal--9cf2a5b454b5ded1d0758e7f",
  "source": {
    "blob": "b687cc6b3cb76fc6a2f6f726d494f46ea541614b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 642,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9cf2a5b454b5ded1d0758e7f14e7fcef09e57242e4d2bdb3f410608c174fdd6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03a0e93a2f64925ee348640f622b07ba779f9725bd861e20e8ae1e6c7327cad0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unresolveNameGlobal? (n₀ : Name)
    (fullNames := false) (allowHorizAliases := false)
    (filter : Name → m Bool := fun _ => pure true) :
    m (Option Name) := OptionT.run do
  let view := extractMacroScopes n₀
  -- `n₁` is the name without any private prefix or macro scopes
  let n₁ := privateToUserName view.name
  if fullNames then
    -- Prefer `n₀` without `_root_`, but add it if necessary.
    -- (Note: `ResolveName.resolveExact` allows `_root_` for private names accessible to the current module.)
    return ← tryResolve view n₁ <|> tryResolve view (rootNamespace ++ n₁)
  -- Now we consider aliases and the (potential) fully qualified name.
  -- If horizontal aliases are not allowed, then any aliases that aren't from a parent namespace of `n₁` are skipped.
  -- We try all suffixes for each option, taking the first that resolves to `n₀`, if any.
  let mut aliases := (getRevAliases (← getEnv) n₀).toArray
  unless allowHorizAliases do
    aliases := aliases.filter fun n => n.getPrefix.isPrefixOf n₁.getPrefix
  aliases.firstM (unresolveNameCore none) -- do not apply macro scopes on `n₀` to aliases
    <|> unresolveNameCore view (rootNamespace ++ n₁)
where
  /-- Adds any macro scopes to `n`, then returns it if it resolves to `n₀` and isn't filtered out. -/
  tryResolve (view? : Option MacroScopesView) (n : Name) : OptionT m Name := do
    let n' := if let some view := view? then { view with name := n }.review else n
    let [(potentialMatch, _)] ← resolveGlobalName (enableLog := false) n' | failure
    guard <| potentialMatch == n₀
    guard <| ← filter n'
    return n'
  unresolveNameCore (view? : Option MacroScopesView) (n : Name) : OptionT m Name := do
    guard <| !n.hasMacroScopes
    let n := privateToUserName n
    let mut revComponents := n.componentsRev
    let mut candidate := Name.anonymous
    for cmpt in revComponents do
      candidate := Name.appendCore cmpt candidate
      try
        return ← tryResolve view? candidate
      catch _ : Unit => pure ()
    failure

/--
Finds an efficient name that unambiguously resolves to the given name `n₀`, if possible.
If not, it returns `n₀`. (See `unresolveNameGlobal?`, which returns `none` instead.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b687cc6b3cb76fc6a2f6f726d494f46ea541614b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
