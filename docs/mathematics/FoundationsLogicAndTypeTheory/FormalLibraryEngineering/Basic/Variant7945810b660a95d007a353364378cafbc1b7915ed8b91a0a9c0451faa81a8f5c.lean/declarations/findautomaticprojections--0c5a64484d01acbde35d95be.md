# findAutomaticProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dcdaebb5d968930ef4634125254c746a263bdd7bfb710dacc83c526734d88e1",
  "kind": "def",
  "lexical_name": "findAutomaticProjections",
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
  "slug": "findautomaticprojections--0c5a64484d01acbde35d95be",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 751,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c5a64484d01acbde35d95be9c77c32a13a3dc2fd748968471b80e96a06e70a6",
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

Occurrence: `declaration:0dcdaebb5d968930ef4634125254c746a263bdd7bfb710dacc83c526734d88e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def findAutomaticProjections (str : Name) (projs : Array ParsedProjectionData) :
    CoreM (Array ParsedProjectionData) := do
  let strDecl ← getConstInfo str
  trace[simps.debug] "debug: {projs}"
  MetaM.run' <| TermElabM.run' (s := {levelNames := strDecl.levelParams}) <|
  forallTelescope strDecl.type fun args _ ↦ do
  let projs ← projs.mapM fun proj => do
    if let some (projExpr, projName) ← findAutomaticProjectionsAux str proj args then
      unless ← isDefEq projExpr proj.expr?.get! do
        throwError "The projection {proj.newName} is not definitionally equal to an application \
          of {projName}:{indentExpr proj.expr?.get!}\nvs{indentExpr projExpr}"
      if proj.isCustom then
        trace[simps.verbose] "Warning: Projection {proj.newName} is given manually by the user, \
          but it can be generated automatically."
        return proj
      trace[simps.verbose] "Using {indentExpr projExpr}\nfor projection {proj.newName}."
      return { proj with expr? := some projExpr }
    return proj
  return projs

/--
Get the projections used by `simps` associated to a given structure `str`.

The returned information is also stored in the environment extension `Simps.structureExt`, which
is given to `str`. If `str` already has this attribute, the information is read from this
extension instead. See the documentation for this extension for the data this tactic returns.

The returned universe levels are the universe levels of the structure. For the projections there
are three cases
* If the declaration `{StructureName}.Simps.{projectionName}` has been declared, then the value
  of this declaration is used (after checking that it is definitionally equal to the actual
  projection). If you rename the projection name, the declaration should have the *new* projection
  name.
* You can also declare a custom projection that is a composite of multiple projections.
* Otherwise, for every class with the `notation_class` attribute, and the structure has an
  instance of that notation class, then the projection of that notation class is used for the
  projection that is definitionally equal to it (if there is such a projection).
  This means in practice that coercions to function types and sorts will be used instead of
  a projection, if this coercion is definitionally equal to a projection. Furthermore, for
  notation classes like `Mul` and `Zero` those projections are used instead of the
  corresponding projection.
  Projections for coercions and notation classes are not automatically generated if they are
  composites of multiple projections (for example when you use `extend` without the
  `oldStructureCmd` (does this exist?)).
* Otherwise, the projection of the structure is chosen.
  For example: ``getRawProjections env `Prod`` gives the default projections.
  ```
  ([u, v], [(`fst, `(Prod.fst.{u v}), [0], true, false),
     (`snd, `(@Prod.snd.{u v}), [1], true, false)])
  ```

Optionally, this command accepts three optional arguments:
* If `traceIfExists` the command will always generate a trace message when the structure already
  has an entry in `structureExt`.
* The `rules` argument specifies whether projections should be added, renamed, used as prefix, and
  not used by default.
* if `trc` is true, this tactic will trace information just as if
  `set_option trace.simps.verbose true` was set.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
