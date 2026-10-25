# overlappingInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeaa53bbe222c30d67da86b4afc69195fada141f0fd9a66ca2146e477f7a8503",
  "kind": "def",
  "lexical_name": "overlappingInstances",
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
  "slug": "overlappinginstances--cd439ee7cfcf90031d552926",
  "source": {
    "blob": "6996c342822a6715f14c5f3db575c9b76c02e205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd439ee7cfcf90031d552926289ec2f2c2677c5d7f508d4a13fe3727cc0701b8",
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

Occurrence: `declaration:aeaa53bbe222c30d67da86b4afc69195fada141f0fd9a66ca2146e477f7a8503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overlappingInstances : Linter where
  run := UnusedInstancesInType.withSetBoolOptionIn fun cmd => do
    unless getLinterValue linter.overlappingInstances (← getLinterOptions) do
      return
    -- Note: we don't break on errors; we want to lint even on partial declarations
    profileitM Exception "overlappingInstancesLinter" (← getOptions) do
    for t in ← getInfoTrees do
      for (ref, ctx, info) in t.getDeclBodyInfos do
        let some (lctx, expectedType?) := info.getLCtx? | pure ()
        withTraceNode `overlappingInstances
          (fun _ ↦ return m!"linting `{.ofConstName <| ctx.parentDecl?.getD .anonymous}`") do
        let some msg ← runLinter ctx lctx expectedType? | pure ()
        /- Log the warning from the declaration's selection range (usually the declaration name,
        or `instance`) to the body if possible. This underlines the hypotheses and type,
        and makes the warning visible in the infoview when the cursor is within the body. -/
        let declRange? ← ctx.parentDecl?.bindM findDeclarationSyntaxRange?
        let ref := declRange?.elim ref (mkNullNode #[.ofRange ·, ref])
        logLint linter.overlappingInstances ref msg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OverlappingInstances/Variantd4faebc9f331ba7b46410df93babadd243e942b6dc73d9ea06a17849fbd06674.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6996c342822a6715f14c5f3db575c9b76c02e205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
