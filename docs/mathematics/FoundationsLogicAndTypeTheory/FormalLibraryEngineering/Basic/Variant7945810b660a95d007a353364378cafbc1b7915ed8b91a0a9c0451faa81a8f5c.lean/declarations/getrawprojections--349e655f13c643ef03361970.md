# getRawProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:494d24a7c90ab9f5c44ad9a4ff0f7ad33f9d3b2c8fc7966104f9f642386a006d",
  "kind": "def",
  "lexical_name": "getRawProjections",
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
  "slug": "getrawprojections--349e655f13c643ef03361970",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 865,
    "line": 810,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:349e655f13c643ef033619708ddc4adcb675a113c2b607d23dff1fad899dff73",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:494d24a7c90ab9f5c44ad9a4ff0f7ad33f9d3b2c8fc7966104f9f642386a006d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–865.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getRawProjections (stx : Syntax) (str : Name) (traceIfExists : Bool := false)
    (rules : Array ProjectionRule := #[]) (trc := false) :
    CoreM (List Name × Array ProjectionData) := do
  withOptions (fun o => if trc then o.set `trace.simps.verbose true else o) do
  let env ← getEnv
  if let some data := structureExt.find? env str then
    -- We always print the projections when they already exists and are called by
    -- `initialize_simps_projections`.
    withOptions (fun o => if traceIfExists then o.set `trace.simps.verbose true else o) do
      trace[simps.verbose]
        projectionsInfo data.2.toList "The projections for this structure have already been \
        initialized by a previous invocation of `initialize_simps_projections` or `@[simps]`.\n\
        Generated projections for" str
    return data
  trace[simps.verbose] "generating projection information for structure {str}."
  trace[simps.debug] "Applying the rules {rules}."
  let strDecl ← getConstInfo str
  let rawLevels := strDecl.levelParams
  let rawUnivs := rawLevels.map Level.param
  let projs ← mkParsedProjectionData str
  let projs ← applyProjectionRules projs rules
  let projs ← projs.mapM fun proj ↦ findProjection str proj rawUnivs
  checkForUnusedCustomProjs stx str projs
  let projs ← findAutomaticProjections str projs
  let projs := projs.map (·.toProjectionData)
  -- make all proofs non-default.
  let projs ← projs.mapM fun proj ↦ do
    match (← MetaM.run' <| isProof proj.expr) with
    | true => pure { proj with isDefault := false }
    | false => pure proj
  trace[simps.verbose] projectionsInfo projs.toList "generated projections for" str
  structureExt.add str (rawLevels, projs)
  trace[simps.debug] "Generated raw projection data:{indentD <| toMessageData (rawLevels, projs)}"
  pure (rawLevels, projs)

library_note «custom simps projection» /--
You can specify custom projections for the `@[simps]` attribute.
To do this for the projection `MyStructure.originalProjection` by adding a declaration
`MyStructure.Simps.myProjection` that is definitionally equal to
`MyStructure.originalProjection` but has the projection in the desired (simp-normal) form.
Then you can call
```
initialize_simps_projections (originalProjection → myProjection, ...)
```
to register this projection. See `elabInitializeSimpsProjections` for more information.

You can also specify custom projections that are definitionally equal to a composite of multiple
projections. This is often desirable when extending structures (without `oldStructureCmd`).

`CoeFun` and notation class (like `Mul`) instances will be automatically used, if they
are definitionally equal to a projection of the structure (but not when they are equal to the
composite of multiple projections).
-/

/-- Parse a rule for `initialize_simps_projections`. It is `<name>→<name>`, `-<name>`, `+<name>`
or `as_prefix <name>`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
