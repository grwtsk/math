# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5e661d2821cc3fbc12b76267217391ef52e29d3c181f233c33fa2c0752e297f",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--103ade323670589939b4e54d",
  "source": {
    "blob": "ad7b34afa7caac8fed6013343ef3ad98938d70e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InheritDoc/Variant8c5ef48c87351af10ebe0c91b04a7c8cfb1760d898b9056118006dc842a4b54d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:103ade323670589939b4e54d7459d7ae4c887de39982815ef9969f84d32113f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InheritDoc/Variant8c5ef48c87351af10ebe0c91b04a7c8cfb1760d898b9056118006dc842a4b54d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5e661d2821cc3fbc12b76267217391ef52e29d3c181f233c33fa2c0752e297f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public builtin_initialize
  registerBuiltinAttribute {
    name := `inherit_doc
    descr := "inherit documentation from a specified declaration"
    add   := fun decl stx kind => do
      unless kind == AttributeKind.global do
        throwAttrMustBeGlobal `inherit_doc kind
      match stx with
      | `(attr| inherit_doc $[$id?:ident]?) => withRef stx[0] do
        let some id := id?
          | throwError "Invalid `[inherit_doc]` attribute: Could not infer doc source"
        -- allow inheriting private docstrings
        let declName ← withoutExporting <| Elab.realizeGlobalConstNoOverloadWithInfo id
        if (← findSimpleDocString? (← getEnv) decl (includeBuiltin := false)).isSome then
          logWarning m!"{← mkConstWithLevelParams decl} already has a doc string"
        -- Outside the server, we do not have access to all docstrings
        if !(← getEnv).header.isModule || Elab.inServer.get (← getOptions) then
          if (← findInternalDocString? (← getEnv) declName).isNone then
            logWarningAt id m!"{← mkConstWithLevelParams declName} does not have a doc string"
        addInheritedDocString decl declName
      | _  => throwError "Invalid `[inherit_doc]` attribute syntax"
    applicationTime := AttributeApplicationTime.afterCompilation
  }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InheritDoc/Variant8c5ef48c87351af10ebe0c91b04a7c8cfb1760d898b9056118006dc842a4b54d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InheritDoc/Variant8c5ef48c87351af10ebe0c91b04a7c8cfb1760d898b9056118006dc842a4b54d.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad7b34afa7caac8fed6013343ef3ad98938d70e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
