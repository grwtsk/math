# addEMatchTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff1a2fea6a62e5c6d8e80c50d379f2661d13d0b2009fd5b9f85f607fd0f2673b",
  "kind": "def",
  "lexical_name": "addEMatchTheorem",
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
  "slug": "addematchtheorem--c2e91f0a472ddf21e37ee3aa",
  "source": {
    "blob": "304b09a2289df047b83e96768c6c53d2c0c1d828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2e91f0a472ddf21e37ee3aa66f516cb78dd64b6f1f78bb2aadda8b4e0d73947",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff1a2fea6a62e5c6d8e80c50d379f2661d13d0b2009fd5b9f85f607fd0f2673b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def addEMatchTheorem (params : Grind.Params) (id : Ident) (declName : Name)
    (kind : Grind.EMatchTheoremKind)
    (minIndexable : Bool) (suggest : Bool := false) (warn := true) : MetaM Grind.Params := do
  let info ← getAsyncConstInfo declName
  match info.kind with
  | .thm | .axiom | .ctor =>
    match kind with
    | .eqBoth gen =>
      ensureNoMinIndexable minIndexable
      let thm₁ ← Grind.mkEMatchTheoremForDecl declName (.eqLhs gen) params.symPrios
      let thm₂ ← Grind.mkEMatchTheoremForDecl declName (.eqRhs gen) params.symPrios
      if warn &&
          params.extensions.containsWithSamePatterns thm₁.origin thm₁.patterns thm₁.cnstrs &&
          params.extensions.containsWithSamePatterns thm₂.origin thm₂.patterns thm₂.cnstrs then
        warnRedundantEMatchArg params.extensions declName
      return { params with extra := params.extra.push thm₁ |>.push thm₂ }
    | _ =>
      if kind matches .eqLhs _ | .eqRhs _ then
        ensureNoMinIndexable minIndexable
      let thm ← if suggest && !Grind.backward.grind.inferPattern.get (← getOptions) then
        Grind.mkEMatchTheoremAndSuggest id declName params.symPrios minIndexable (isParam := true)
      else
        Grind.mkEMatchTheoremForDecl declName kind params.symPrios (minIndexable := minIndexable)
      if warn && params.extensions.containsWithSamePatterns thm.origin thm.patterns thm.cnstrs then
        warnRedundantEMatchArg params.extensions declName
      return { params with extra := params.extra.push thm }
  | .defn =>
    if (← isReducible declName) then
      throwError "`{.ofConstName declName}` is a reducible definition, `grind` automatically unfolds them"
    if !kind.isEqLhs && !kind.isDefault then
      throwError "invalid `grind` parameter, `{.ofConstName declName}` is a definition, the only acceptable (and redundant) modifier is '='"
    ensureNoMinIndexable minIndexable
    let some thms ← Grind.mkEMatchEqTheoremsForDef? declName
      | throwError "failed to generate equation theorems for `{.ofConstName declName}`"
    return { params with extra := params.extra ++ thms.toPArray' }
  | _ =>
    throwError "invalid `grind` parameter, `{.ofConstName declName}` is not a theorem, definition, or inductive type"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant09148dbd32aec9670be16354adbe8195c56867e57f3595cec16de54ed9a8ffb6.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `304b09a2289df047b83e96768c6c53d2c0c1d828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
