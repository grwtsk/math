# checkImpossibleInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20627fb553ee141d49553fbe3b5ea784dd5af31bbfefcbdb71bd398782dc3ece",
  "kind": "def",
  "lexical_name": "checkImpossibleInstance",
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
  "slug": "checkimpossibleinstance--df1fee7ab5e51fa32dd38e96",
  "source": {
    "blob": "98ed55bb22bb9d5af101bc354753b0b7f629b730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df1fee7ab5e51fa32dd38e968dd8e55edca5733b87270277e6e28b94750920ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20627fb553ee141d49553fbe3b5ea784dd5af31bbfefcbdb71bd398782dc3ece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkImpossibleInstance (cinfo : ConstantInfo): MetaM Unit := do
  -- Performantly check if any non-instance binder is unused.
  if cinfo.type.hasUnusedForallBindersWhere fun bi _ => !bi.isInstImplicit then do
    forallTelescope cinfo.type fun args ty => do
      -- Find the fvars used in the type and any instance implicit argument, transitively.
      let getInitialPossibleFVars := do
        ty.collectFVars
        for arg in args do
          if (← arg.fvarId!.getBinderInfo).isInstImplicit then
            /- The fvarIds in the `CollectFVars.State` should be our possible args. As such, we
            start by adding the instance arguments to the state, rather than computing the
            dependencies of their types. -/
            modifyThe CollectFVars.State (·.add arg.fvarId!)
      let possibleFVars ← (·.2) <$> getInitialPossibleFVars.run {}
      -- Transitively include dependencies.
      let possibleFVars ← possibleFVars.addDependencies
      let mut impossibleArgMsgs := #[]
      for arg in args, i in 1...* do
        unless possibleFVars.fvarSet.contains arg.fvarId! do
          let some binder ← arg.fvarId!.ppAsBinder | continue
          impossibleArgMsgs := impossibleArgMsgs.push <|
            indentD m!"argument {i}: `{binder}`"
      if impossibleArgMsgs.isEmpty then return -- Should not be reachable.
      let msg := m!"\
        This instance has {impossibleArgMsgs.size} \
        argument{if impossibleArgMsgs.size = 1 then "" else "s"} that cannot be \
        inferred using typeclass synthesis. Specifically\n\
        {.joinSep impossibleArgMsgs.toList .nil}\n\n\
        These arguments are not instance-implicit and appear neither in another \
        instance-implicit argument nor the return type, so they cannot be inferred using \
        typeclass synthesis."
      if cinfo.type.hasSorry then logWarning msg else throwError msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variant45f04383778249a03aac8ab44b08ee15513a1e511c04f724a8ff71d29c93ffbf.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ed55bb22bb9d5af101bc354753b0b7f629b730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
