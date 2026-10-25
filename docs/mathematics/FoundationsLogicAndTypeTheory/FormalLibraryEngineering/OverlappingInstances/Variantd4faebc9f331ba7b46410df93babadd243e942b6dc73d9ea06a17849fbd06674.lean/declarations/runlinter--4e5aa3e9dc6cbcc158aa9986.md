# runLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17ac8634edced9b874fa856e017d77293e6c6f2b9f15a4424e954d0d34ab82f3",
  "kind": "def",
  "lexical_name": "runLinter",
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
  "slug": "runlinter--4e5aa3e9dc6cbcc158aa9986",
  "source": {
    "blob": "6996c342822a6715f14c5f3db575c9b76c02e205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e5aa3e9dc6cbcc158aa99865f3833c33527555f5db4a92284df193f0f0ddbe0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17ac8634edced9b874fa856e017d77293e6c6f2b9f15a4424e954d0d34ab82f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runLinter (ctx : ContextInfo) (lctx : LocalContext) (expectedType? : Option Expr) :
    IO (Option MessageData) := do
  ctx.runMetaM lctx do
  -- Add the hypotheses of the expected type to the local context, as it may have more instances.
  expectedType?.elim id (forallTelescope · fun _ _ => ·) do
  let overlaps ← findOverlappingInstances
  if overlaps.isEmpty then
    return none
  -- Sort the suggestions in a (somewhat) deterministic way.
  let overlaps := overlaps.toArray.qsort (·.1.lt ·.1)
  let sortedOverlaps : Std.HashMap (Array FVarId) (Array Expr) :=
    overlaps.foldl (init := {}) fun s (overlap, fvars) ↦ s.alter fvars (·.getD #[] |>.push overlap)
  let sortedOverlaps := sortedOverlaps.toArray.qsort (Array.lex ·.2 ·.2 Expr.lt)
  let mut msgs := #[]
  let mut needsDiamondMsg := false
  for (fvars, overlaps) in sortedOverlaps do
    let fvarTypes ← fvars.mapM (do instantiateMVars <| ← ·.getType)
    -- If the overlapping instances are the same, use a simple message.
    if fvarTypes.all (· == fvarTypes[0]!) then
      msgs := msgs.push <|
        m!"There are {fvarTypes.size} `{.sbracket fvarTypes[0]!}` instances; one is sufficient."
    else
      let propOverlap ← overlaps.allM isProp
      unless propOverlap do
        needsDiamondMsg := true
      -- Ignore `Prop` overlaps when data conflicts are present.
      let overlaps ← if propOverlap then pure overlaps else overlaps.filterM (notM <| isProp ·)
      let localInsts := (← getLCtx).decls.toList.reduceOption
      -- Otherwise, figure out which instances can be synthesized from the other instances
      let mut redundant := #[]
      for fvar in fvars, type in fvarTypes do
        let localInsts := localInsts.filter (·.fvarId != fvar)
        if (← withLocalInstances localInsts (trySynthInstance type)) matches .some _ then
          redundant := redundant.push type
      -- For `Prop` overlaps, only warn if there is an instance that can be removed.
      if propOverlap && redundant.isEmpty then
        continue
      let fvarTypes := .andList <| fvarTypes.toList.map (m!"`{.sbracket ·}`")
      let overlaps := .andList <| overlaps.toList.map (m!"`{.sbracket ·}`")
      let mut msg :=
        m!"{fvarTypes} {if propOverlap then "each imply" else
          "can be used to infer conflicting versions of"} {overlaps}."
      unless redundant.isEmpty do
        let redundant' := .andList <| redundant.toList.map (m!"`{.sbracket ·}`")
        msg := m!"{msg}\n💡️ Of these, {redundant'} may be removed."
      msgs := msgs.push msg
  if msgs.isEmpty then
    return none
  let inDecl ← if let some decl := ctx.parentDecl? then
    pure m!" in `{← addMessageContextPartial (.ofConstName decl)}`" else pure ""
  let mut msg := m!"Overlapping instance parameters{inDecl}:\n"
  for overlapMsg in msgs do
    msg := msg ++ m!"\n⚠️ {overlapMsg}"
  if needsDiamondMsg then
    msg := msg ++ m!"\n\n\
      When a data-carrying type class has multiple potential instances coming from different \
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6996c342822a6715f14c5f3db575c9b76c02e205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
