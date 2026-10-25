# structureSyntaxToView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e36942de7617c6d0ae9100b3fbe8cb3445be2582b0bdf824e708e32f5404bcb7",
  "kind": "def",
  "lexical_name": "structureSyntaxToView",
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
  "slug": "structuresyntaxtoview--c4017ff889f5034ab24651c0",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 422,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4017ff889f5034ab24651c05b51c3c41c40e7dcbd2851307600deaf957db0a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e36942de7617c6d0ae9100b3fbe8cb3445be2582b0bdf824e708e32f5404bcb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def structureSyntaxToView (modifiers : Modifiers) (stx : Syntax) : TermElabM StructView := do
  checkValidInductiveModifier modifiers
  let isClass   := stx[0].getKind == ``Parser.Command.classTk
  -- **Note**: We use `addFirstAttr` to make sure the `[class]` attribute is processed **before** `[univ_out_params]`
  let modifiers := if isClass then modifiers.addFirstAttr { name := `class } else modifiers
  let declId    := stx[1]
  let ⟨name, declName, levelNames, docString?⟩ ← Term.expandDeclId (← getCurrNamespace) (← Term.getLevelNames) declId modifiers
  -- In the case of mutual inductives, this is the earliests point where we can establish the
  -- correct scope for each individual inductive declaration (used e.g. to infer ctor visibility
  -- below), so let's do that now.
  withExporting (isExporting := !isPrivateName declName) do
    if modifiers.isMeta then
      modifyEnv (markMeta · declName)
    addDeclarationRangesForBuiltin declName modifiers.stx stx
    let (binders, type?) := expandOptDeclSig stx[2]
    let exts := stx[3]
    let type? ←
      -- Compatibility mode for `structure S extends P : Type` syntax
      if type?.isNone && !exts.isNone && !exts[0][2].isNone then
        logWarningAt exts[0][2][0] <| "\
          The syntax is now `structure S : Type extends P` rather than `structure S extends P : Type`"
          ++ .note "The purpose of this change is to accommodate `structure S extends toP : P` syntax for naming parent projections."
        pure (some exts[0][2][0][1])
      else
        if !exts.isNone && !exts[0][2].isNone then
          logErrorAt exts[0][2][0] <| "\
              Unexpected additional resulting type. \
              The syntax is now `structure S : Type extends P` rather than `structure S extends P : Type`."
              ++ .note "The purpose of this change is to accommodate `structure S extends toP : P` syntax for naming parent projections."
        pure type?
    let parents ← expandParents exts
    let derivingClasses ← getOptDerivingClasses stx[5]
    let fields ← expandFields stx modifiers declName
    -- Private fields imply a private constructor (in the module system only, for back-compat)
    let ctor ← expandCtor
      (forcePrivate := (← getEnv).header.isModule && fields.any (·.modifiers.isPrivate))
      stx modifiers declName
    fields.forM fun field => do
      if field.declName == ctor.declName then
        throwErrorAt field.ref "Invalid field name `{field.name}`: This is the name of the structure constructor"
      addDeclarationRangesFromSyntax field.declName field.ref
    return {
      ref := stx
      declId
      modifiers
      isClass
      shortDeclName := name
      declName
      levelNames
      binders
      type?
      allowIndices := false
      allowSortPolymorphism := false
      ctors := #[ctor]
      parents
      fields
      computedFields := #[]
      derivingClasses
      docString?
    }


/-!
### Elaboration
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
