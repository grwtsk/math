# elabDefDeriving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b722d664ab332e19c2592209f580265a40d3846454a184bbde2b878baa95aa57",
  "kind": "def",
  "lexical_name": "elabDefDeriving",
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
  "slug": "elabdefderiving--f35dc137bc1d81bc1a99f945",
  "source": {
    "blob": "f4caf2bf736132d9585b78818ee95b24c530edc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f35dc137bc1d81bc1a99f9454571b83c01cdc2dd9b6a54608c1eaa635cc67526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b722d664ab332e19c2592209f580265a40d3846454a184bbde2b878baa95aa57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabDefDeriving (classes : Array DerivingClassView) (decls : Array Syntax)
    (isNoncomputable := false) (cmdRef? : Option Syntax := none) : CommandElabM Unit := runTermElabM fun _ => do
  for decl in decls do
    withRef decl <| withLogging do
      let declExpr ←
        if decl.isIdent then
          let declName ← realizeGlobalConstNoOverload decl
          let info ← getConstInfo declName
          unless info.isDefinition do
            throwError (m!"Declaration `{.ofConstName declName}` is not a definition."
              ++ .note m!"When any declaration is a definition, this command goes into delta deriving mode, \
                    which applies only to definitions. \
                    Delta deriving unfolds definitions and infers pre-existing instances.")
          -- Use the declaration's level parameters, to ensure the instance is fully universe polymorphic
          mkConstWithLevelParams declName
        else
          Term.elabTermAndSynthesize decl none
      for cls in classes do
        withLogging do
        withTraceNode `Elab.Deriving (fun _ => return m!"running delta deriving handler for `{cls.cls}` and definition `{declExpr}`") do
          Term.processDefDeriving cls declExpr (isNoncomputable := isNoncomputable) (cmdRef? := cmdRef?)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4caf2bf736132d9585b78818ee95b24c530edc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
