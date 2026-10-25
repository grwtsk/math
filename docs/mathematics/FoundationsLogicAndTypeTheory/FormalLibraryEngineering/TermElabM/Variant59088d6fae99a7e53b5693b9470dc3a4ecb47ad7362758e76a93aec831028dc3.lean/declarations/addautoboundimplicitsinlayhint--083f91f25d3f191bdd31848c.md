# addAutoBoundImplicitsInlayHint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc6576a01c167640a30d068e7a03e55337ad5056958044824d2d09c2e5c3137a",
  "kind": "def",
  "lexical_name": "addAutoBoundImplicitsInlayHint",
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
  "slug": "addautoboundimplicitsinlayhint--083f91f25d3f191bdd31848c",
  "source": {
    "blob": "872babc942fe96b14ef803da94e7e2245f8a08ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2078,
    "line": 2030,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:083f91f25d3f191bdd31848c77dc1266040b23bcbf5bf4fa20a415970728894a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc6576a01c167640a30d068e7a03e55337ad5056958044824d2d09c2e5c3137a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2030–2078.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def addAutoBoundImplicitsInlayHint (autos : Array Expr) (inlayHintPos : String.Pos.Raw) : TermElabM Unit := do
  -- If the list of auto-implicits contains a non-type fvar, then the list of auto-implicits will
  -- also contain an mvar that denotes the type of the non-type fvar.
  -- For example, the auto-implicit `x` in a type `Foo x` for `Foo.{u} {α : Sort u} (x : α) : Type`
  -- also comes with an auto-implicit mvar denoting the type of `x`.
  -- We have no way of displaying this mvar to the user in an inlay hint, as it doesn't have a name,
  -- so we filter it.
  -- This also means that inserting the inlay hint with the syntax displayed in the inlay hint will
  -- cause a "failed to infer binder type" error, since we don't have a name to insert in the code.
  let autos := autos.filter (· matches .fvar ..)
  if autos.isEmpty then
    return
  let autoNames ← autos.mapM (·.fvarId!.getUserName)
  let formattedHint := s!" \{{" ".intercalate <| Array.toList <| autoNames.map toString}}"
  let deferredResolution ih := do
    let description := "Automatically-inserted implicit parameters:"
    let codeBlockStart := "```lean"
    let typeInfos ← autos.mapM fun auto => do
      let name := toString <| ← auto.fvarId!.getUserName
      let type := toString <| ← Meta.ppExpr <| ← instantiateMVars (← inferType auto)
      return s!"{name} : {type}"
    let codeBlockEnd := "```"
    let tooltip := "\n".intercalate <| description :: codeBlockStart :: typeInfos.toList ++ [codeBlockEnd]
    return { ih with tooltip? := tooltip }
  pushInfoLeaf <| .ofCustomInfo {
      position := inlayHintPos
      label := .name formattedHint
      textEdits := #[{
        range := ⟨inlayHintPos, inlayHintPos⟩,
        newText := formattedHint
      }]
      kind? := some .parameter
      lctx := ← getLCtx
      deferredResolution
      : InlayHint
    }.toCustomInfo

/--
  Return `autoBoundImplicits ++ xs`
  This method throws an error if a variable in `autoBoundImplicits` depends on some `x` in `xs`.
  The `autoBoundImplicits` may contain free variables created by the auto-implicit feature, and unassigned free variables.
  It avoids the hack used at `autoBoundImplicitsOld`.

  If `inlayHintPos?` is set, this function also inserts an inlay hint denoting `autoBoundImplicits`.
  See `addAutoBoundImplicitsInlayHint` for more information.

  Remark: we cannot simply replace every occurrence of `addAutoBoundImplicitsOld` with this one because a particular
  use-case may not be able to handle the metavariables in the array being given to `k`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variant59088d6fae99a7e53b5693b9470dc3a4ecb47ad7362758e76a93aec831028dc3.lean#L2030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872babc942fe96b14ef803da94e7e2245f8a08ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
