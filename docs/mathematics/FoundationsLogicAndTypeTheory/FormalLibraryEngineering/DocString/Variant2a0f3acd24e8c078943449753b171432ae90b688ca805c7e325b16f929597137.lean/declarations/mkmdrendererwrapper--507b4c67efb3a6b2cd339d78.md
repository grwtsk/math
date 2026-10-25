# mkMdRendererWrapper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b2dcc9132970512ba0b6d3f0825d29ea4bf9fc89696216fffbdfa827a65c532",
  "kind": "def",
  "lexical_name": "mkMdRendererWrapper",
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
  "slug": "mkmdrendererwrapper--507b4c67efb3a6b2cd339d78",
  "source": {
    "blob": "014689ae16d0f21928edb8900d54e926c7b9471b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1157,
    "line": 1134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:507b4c67efb3a6b2cd339d780133c91aeb01c6d2c2eb1ffed99546d53389b71c",
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

Occurrence: `declaration:9b2dcc9132970512ba0b6d3f0825d29ea4bf9fc89696216fffbdfa827a65c532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1134–1157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkMdRendererWrapper (decl : Name) (isInline : Bool) : MetaM (Name × Name) := do
  let ofName := if isInline then ``Doc.InlineMdRendererOf else ``Doc.BlockMdRendererOf
  let mkName := if isInline then ``Doc.mkInlineMdRenderer else ``Doc.mkBlockMdRenderer
  let wrapperTy := mkConst (if isInline then ``Doc.InlineMdRenderer else ``Doc.BlockMdRenderer)
  let t := (← getConstInfo decl).type
  unless t.isAppOfArity ofName 1 do
    throwError "`{.ofConstName decl}` must have type `{.ofConstName ofName} X` for custom elements of type `X`"
  let elemTy := t.appArg!
  -- The key must match the type name stored in the element's `Dynamic`, which comes from the
  -- `TypeName` instance, so reducible aliases are unfolded to the canonical type name.
  let some key := (← whnfR elemTy).getAppFn.constName?
    | throwError "the custom element type{indentExpr elemTy}\nof `{.ofConstName decl}` must be a named type"
  discard <|
    (try synthInstance (← mkAppM ``TypeName #[elemTy])
     catch _ =>
       throwError m!"the custom element type{indentExpr elemTy}\nof `{.ofConstName decl}` needs a `TypeName` instance." ++ m!"Add `deriving TypeName`".hint')
  let wrapperVal ← mkAppM mkName #[elemTy, mkConst decl]
  let wrapperName := decl ++ `mdRenderer
  addAndCompile (markMeta := isMarkedMeta (← getEnv) decl) <| .defnDecl {
    name := wrapperName, levelParams := [], type := wrapperTy, value := wrapperVal,
    hints := .regular 0, safety := .safe
  }
  return (key, wrapperName)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant2a0f3acd24e8c078943449753b171432ae90b688ca805c7e325b16f929597137.lean#L1134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `014689ae16d0f21928edb8900d54e926c7b9471b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
