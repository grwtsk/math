# delabConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4bb19e9bd755d6b9b92249b00f33db5d37d18c7829058a7552e4ede56602ecc",
  "kind": "def",
  "lexical_name": "delabConst",
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
  "slug": "delabconst--874c757f6ef27de6795d8b0d",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:874c757f6ef27de6795d8b0d5cdb2f61cf15a0b70cb12a62b93874fcf33e2de7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4bb19e9bd755d6b9b92249b00f33db5d37d18c7829058a7552e4ede56602ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabConst : Delab := do
  let Expr.const c₀ ls ← getExpr | unreachable!
  let env ← getEnv
  let c ←
    if ← pure (isPrivateName c₀) <&&> getPPOption getPPPrivateNames then
      pure c₀
    else if let some c ← unresolveNameGlobalAvoidingLocals? c₀ (fullNames := ← getPPOption getPPFullNames) then
      pure c
    else if !env.contains c₀ then
      -- The compiler pretty prints constants that are not defined in the environment.
      -- Use such names as-is, without additional macro scopes.
      -- We still remove the private prefix if the name would be accessible to the current module.
      if isPrivateName c₀ && mkPrivateName env (privateToUserName c₀.eraseMacroScopes) == c₀.eraseMacroScopes then
        pure <| Name.modifyBase c₀ privateToUserName
      else
        pure c₀
    else
      -- The identifier cannot be referred to. To indicate this, we add a delaboration-specific macro scope.
      -- If the name is private, we also erase the private prefix and add it as an additional macro scope, ensuring
      -- no collisions between names with different private prefixes.
      let c := if let some (.num priv 0) := privatePrefix? c₀.eraseMacroScopes then
          -- The private prefix before `0` is of the form `_private.modulename`, which works as a macro scope context
          Lean.addMacroScope priv (Name.modifyBase c₀ privateToUserName) reservedMacroScope
        else
          c₀
      pure <| Lean.addMacroScope `_delabConst c reservedMacroScope

  let stx ←
    if !ls.isEmpty && (← getPPOption getPPUniverses) then
      let ls' ← ls.toArray.mapM fun l => delabLevel l (prec := 0)
      `($(mkIdent c).{$ls',*})
    else
      pure <| mkIdent c

  let stx ← maybeAddBlockImplicit stx
  if (← getPPOption getPPTagAppFns) then
    annotateTermInfo stx
  else
    return stx

/--
If `pp.tagAppFns` is set, and if the current expression is a constant application,
then `d` is evaluated with the head constant delaborated with `delabConst` as the ref.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
