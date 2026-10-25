# refineThrough

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3975478dd8c51f8470ac93d56b37f7849216610b0a4a4f97e1332da2e13527f4",
  "kind": "def",
  "lexical_name": "refineThrough",
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
  "slug": "refinethrough--6e1d535d42fae57542ec1efa",
  "source": {
    "blob": "4aa03371649f80e080246ca3b196456305e73e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e1d535d42fae57542ec1efad15b58fd572ae450f5c5869d7b6fd140a928449b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3975478dd8c51f8470ac93d56b37f7849216610b0a4a4f97e1332da2e13527f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def refineThrough (matcherApp : MatcherApp) (e : Expr) : MetaM (Array Expr) :=
  lambdaTelescope matcherApp.motive fun motiveArgs _motiveBody => do
    unless motiveArgs.size == matcherApp.discrs.size do
      -- This error can only happen if someone implemented a transformation that rewrites the motive created by `mkMatcher`.
      throwError "failed to transfer argument through matcher application, motive must be lambda expression with #{matcherApp.discrs.size} arguments"

    let eAbst ← matcherApp.discrs.size.foldRevM (init := e) fun i _ eAbst => do
      let motiveArg := motiveArgs[i]!
      let discr     := matcherApp.discrs[i]
      let eTypeAbst ← kabstract eAbst discr
      return eTypeAbst.instantiate1 motiveArg
    -- Let's create something that’s a `Sort` and mentions `e`
    -- (recall that `e` itself possibly isn't a type),
    -- by writing `e = e`, so that we can use it as a motive
    let eEq ← mkEq eAbst eAbst

    let matcherLevels ← match matcherApp.uElimPos? with
      | none     => pure matcherApp.matcherLevels
      | some pos =>
        pure <| matcherApp.matcherLevels.set! pos Level.zero
    let motive ← mkLambdaFVars motiveArgs eEq
    let aux := mkAppN (mkConst matcherApp.matcherName matcherLevels.toList) matcherApp.params
    let aux := mkApp aux motive
    let aux := mkAppN aux matcherApp.discrs
    unless (← isTypeCorrect aux) do
      throwError "failed to transfer argument through matcher application, type error when constructing the new motive"
    let auxType ← inferType aux
    forallTelescope auxType fun altAuxs _ => do
      let altAuxTys ← altAuxs.mapM (inferType ·)
      matcherApp.altNumParams.zipWithM (bs := altAuxTys) fun altNumParams altAuxTy => do
        forallBoundedTelescope altAuxTy (some altNumParams) fun fvs body => do
          unless fvs.size = altNumParams do
            throwError "failed to transfer argument through matcher application, alt type must be telescope with #{altNumParams} arguments"
          -- extract type from our synthetic equality
          let body := body.getArg! 2
          -- and abstract over the parameters of the alternatives, so that we can safely pass the Expr out
          mkLambdaFVars fvs body

/-- A non-failing version of `MatcherApp.refineThrough` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Transform/Variant855827421a97566a63783b256dee650fa271f1b7213f76967019b6f828703035.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aa03371649f80e080246ca3b196456305e73e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
